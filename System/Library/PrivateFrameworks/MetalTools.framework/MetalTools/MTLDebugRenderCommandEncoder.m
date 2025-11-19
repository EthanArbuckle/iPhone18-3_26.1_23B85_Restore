@interface MTLDebugRenderCommandEncoder
- ($3CC19D079FD0B010EE84973AA846B91B)scissorRect;
- ($54B668FA3CFF7C50914A1C899F2834C0)viewport;
- (MTLDebugFunctionArgument)tessellationFactorBufferArgument;
- (MTLDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parallelRenderCommandEncoder:(id)a4 descriptor:(id)a5;
- (MTLDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5;
- (id).cxx_construct;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (id)formattedDescription:(unint64_t)a3;
- (void)_dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int *)a5;
- (void)_dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int *)a5 withCondition:(int64_t)a6;
- (void)_init;
- (void)_setDefaults;
- (void)_validateAllFunctionArguments:(_MTLMessageContext *)a3;
- (void)_validateDispatchThreadsPerTile:(id *)a3 context:(_MTLMessageContext *)a4;
- (void)_validateLBRT:(_MTLMessageContext *)a3;
- (void)_validateTessellationWithMetal4;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4;
- (void)dealloc;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int)a5;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int)a5 withCondition:(int64_t)a6;
- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9;
- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7;
- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)endEncoding;
- (void)endEncoding_private;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4 afterStages:(unint64_t)a5 beforeStages:(unint64_t)a6;
- (void)memoryBarrierWithScope:(unint64_t)a3 afterStages:(unint64_t)a4 beforeStages:(unint64_t)a5;
- (void)resetTileCondition;
- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4 maxBuffers:(unint64_t)a5 buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)a7 stage:(unint64_t)a8;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setColorAttachmentMap:(id)a3;
- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 atIndex:(unint64_t)a7;
- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 yInvert:(BOOL)a7 atIndex:(unint64_t)a8;
- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setCullMode:(unint64_t)a3;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setDepthClipMode:(unint64_t)a3;
- (void)setDepthResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6;
- (void)setDepthResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 yInvert:(BOOL)a7;
- (void)setDepthStencilState:(id)a3;
- (void)setDepthStoreAction:(unint64_t)a3;
- (void)setDepthStoreActionOptions:(unint64_t)a3;
- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4;
- (void)setFragmentAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 lodBias:(float)a6 atIndex:(unint64_t)a7;
- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6;
- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFrontFacingWinding:(unint64_t)a3;
- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4 maxBuffers:(unint64_t)a5 buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)a7 stage:(unint64_t)a8;
- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4 maxBuffers:(unint64_t)a5 buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)a7 stage:(unint64_t)a8;
- (void)setLineWidth:(float)a3;
- (void)setMeshAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setMeshBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setMeshBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setMeshBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setMeshIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setMeshSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setMeshSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setMeshSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setMeshTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setMeshTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setMeshVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setObjectBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setObjectBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setObjectSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setObjectSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setObjectSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setObjectTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setObjectTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setObjectVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setStencilResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6;
- (void)setStencilResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 yInvert:(BOOL)a7;
- (void)setStencilStoreAction:(unint64_t)a3;
- (void)setStencilStoreActionOptions:(unint64_t)a3;
- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5;
- (void)setTessellationFactorScale:(float)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setTileSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setTileSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setTileSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTileVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTransformFeedbackState:(unint64_t)a3;
- (void)setTriangleFillMode:(unint64_t)a3;
- (void)setTriangleFrontFillMode:(unint64_t)a3 backFillMode:(unint64_t)a4;
- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4;
- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setVertexBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6;
- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 lodBias:(float)a6 atIndex:(unint64_t)a7;
- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setViewport:(id *)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4 maxBuffers:(unint64_t)a5 buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)a7 stage:(unint64_t)a8;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4 maxBuffers:(unint64_t)a5 buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)a7 stage:(unint64_t)a8;
- (void)updateFence:(id)a3 afterStages:(unint64_t)a4;
- (void)useHeap:(id)a3;
- (void)useHeap:(id)a3 stages:(unint64_t)a4;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4 stages:(unint64_t)a5;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6;
- (void)validateCommonDrawErrors:(unint64_t)a3;
- (void)validateCommonDrawErrors:(unint64_t)a3 instanceCount:(unint64_t)a4 baseInstance:(unint64_t)a5 maxVertexID:(unint64_t)a6;
- (void)validateDrawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 function:(const char *)a9;
- (void)validateDrawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 function:(const char *)a7;
- (void)validateFramebufferWithRenderPipelineState:(id)a3 context:(_MTLMessageContext *)a4;
- (void)validateFunctionTableUseResource:(id)a3 stages:(unint64_t)a4 context:(_MTLMessageContext *)a5 selectorName:(id)a6;
- (void)waitForFence:(id)a3 beforeStages:(unint64_t)a4;
@end

@implementation MTLDebugRenderCommandEncoder

- ($54B668FA3CFF7C50914A1C899F2834C0)viewport
{
  var3 = self[1732].var3;
  if (*&self[1732].var4 == *&var3)
  {
    std::vector<MTLViewport>::__throw_out_of_range[abi:ne200100]();
  }

  v4 = *(*&var3 + 16);
  *&retstr->var0 = **&var3;
  *&retstr->var2 = v4;
  *&retstr->var4 = *(*&var3 + 32);
  return self;
}

- ($3CC19D079FD0B010EE84973AA846B91B)scissorRect
{
  var2 = self[2599].var2;
  if (self[2599].var3 == var2)
  {
    std::vector<MTLViewport>::__throw_out_of_range[abi:ne200100]();
  }

  v4 = var2[1];
  *&retstr->var0 = *var2;
  *&retstr->var2 = v4;
  return self;
}

- (void)_setDefaults
{
  self->_peakPerSampleStorage = 0;
  self->_defaultDepthStencilDescriptor = 0;
  self->_commandBuffer = 0;
  begin = self->_viewports.__begin_;
  if (begin)
  {
    std::__tree<unsigned int>::destroy(self->_viewports.__begin_, *(begin + 1));
    MEMORY[0x2318E4940](begin, 0x1020C4062D53EE8);
    self->_viewports.__begin_ = 0;
  }

  bzero(&self->_vertexBuffers[0].type, 0xC60uLL);
  bzero(&self->_vertexTextures[0].type, 0x2C00uLL);
  bzero(&self->_vertexSamplers[0].type, 0x580uLL);
  bzero(&self->_fragmentBuffers[0].type, 0xAA8uLL);
  bzero(&self->_fragmentTextures[0].type, 0x2C00uLL);
  bzero(&self->_fragmentSamplers[0].type, 0x580uLL);
  bzero(&self->_tileBuffers[0].type, 0xAA8uLL);
  bzero(&self->_tileTextures[0].type, 0x2C00uLL);
  bzero(&self->_tileSamplers[0].type, 0x580uLL);
  bzero(&self->_threadgroupMemoryArguments[0].type, 0xAA8uLL);
  LODWORD(self->_visibilityOffsets) = -2147418116;
  [self->_frontFacingWinding validate:self->super.super.super._device width:&self->_height height:&self->_tessellationFactorBufferInstanceStride];
  v4 = [self->_frontFacingWinding rasterizationRateMap];
  if (v4)
  {
    v5 = v4;
    v6 = [self->_frontFacingWinding renderTargetWidth];
    v7 = [self->_frontFacingWinding renderTargetHeight];
    tessellationFactorBufferInstanceStride = v7;
    if (v6)
    {
      if (v7)
      {
LABEL_6:
        self->_height = v6;
        self->_tessellationFactorBufferInstanceStride = tessellationFactorBufferInstanceStride;
        goto LABEL_8;
      }
    }

    else
    {
      [v5 screenSize];
      v6 = v20;
      if (tessellationFactorBufferInstanceStride)
      {
        goto LABEL_6;
      }
    }

    [v5 screenSize];
    tessellationFactorBufferInstanceStride = *(&v20 + 1);
    goto LABEL_6;
  }

  tessellationFactorBufferInstanceStride = self->_tessellationFactorBufferInstanceStride;
LABEL_8:
  height = self->_height;
  v20 = 0uLL;
  v21 = height;
  v22 = tessellationFactorBufferInstanceStride;
  v23 = xmmword_22E27C190;
  std::vector<MTLViewport>::assign(&self->_viewports.__end_, 1uLL, &v20);
  self->_cullMode = 0;
  self->_depthClipMode = 0;
  self->_triangleFillMode = 0;
  self->_depthBiasSlopeScale = 1.0;
  self->_depthBiasClamp = 0.0;
  self->_frontStencilRef = 0;
  self->_backStencilRef = 0;
  v17 = 0uLL;
  v10 = self->_tessellationFactorBufferInstanceStride;
  v18 = self->_height;
  v19 = v10;
  std::vector<MTLScissorRect>::assign(&self->_scissorRects.__end_, 1uLL, &v17);
  self->_renderPipelineState = 0;
  self->_lineWidth = 0.0;
  self->_depthBias = 1.0;
  self->_amplificationValue = 0;
  self->_vertexAmplificationCount = 1;
  self->_updatedFences.__map_.__first_ = 1;

  self->_visibilityResultMode = objc_opt_new();
  self->_blendColorRed = 0.0;
  self->_blendColorGreen = 0.0;
  self->_visibilityResultOffset = 0;
  self->_width = 0;
  self->_blendColorBlue = 0.0;
  self->_blendColorAlpha = 0.0;
  self->_tessellationFactorScale = 0.0;
  *(&self->_tessellationFactorScale + 1) = 0;
  LOBYTE(self->_tessellationFactorBufferArgument.type) = 0;
  *&self->_tessellationFactorBufferArgument.isValid = 0;
  LODWORD(self->_descriptor) = 1065353216;
  LOBYTE(self->_colorAttachmentMap) = 0;
  p_var0 = &self->_updatedFences.__map_.var0;
  v12 = p_var0[1];
  v13 = p_var0[2];
  p_var0[5] = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = p_var0[2];
      v12 = (p_var0[1] + 1);
      p_var0[1] = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 256;
  }

  else
  {
    if (v14 != 2)
    {
      return;
    }

    v16 = 512;
  }

  p_var0[4] = v16;
}

- (MTLDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5
{
  v10.receiver = self;
  v10.super_class = MTLDebugRenderCommandEncoder;
  v7 = [MTLToolsRenderCommandEncoder initWithRenderCommandEncoder:sel_initWithRenderCommandEncoder_parent_descriptor_ parent:a3 descriptor:?];
  v8 = v7;
  if (v7)
  {
    v7->_maxVertexBuffers = a4;
    v7->_frontFacingWinding = [a5 copy];
    [(MTLDebugRenderCommandEncoder *)v8 _init];
  }

  return v8;
}

- (MTLDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parallelRenderCommandEncoder:(id)a4 descriptor:(id)a5
{
  v9.receiver = self;
  v9.super_class = MTLDebugRenderCommandEncoder;
  v7 = [(MTLToolsRenderCommandEncoder *)&v9 initWithRenderCommandEncoder:a3 parent:?];
  if (v7)
  {
    v7->_maxVertexBuffers = [a4 commandBuffer];
    v7->_frontFacingWinding = a5;
    *&v7->_minBound = objc_opt_new();
    [(MTLDebugRenderCommandEncoder *)v7 _init];
  }

  return v7;
}

- (void)_init
{
  v27[64] = *MEMORY[0x277D85DE8];
  if (hasMemorylessAttachments(self->_frontFacingWinding))
  {
    [(MTLToolsRenderCommandEncoder *)self addSplitHandler:&__block_literal_global_3];
  }

  *&self->_openGLModeEnabled = 0x7FFF;
  frontFacingWinding = self->_frontFacingWinding;
  if (frontFacingWinding)
  {
    v4 = [frontFacingWinding colorAttachments];
    v26 = 0uLL;
    v25 = 0;
    v5 = 0;
    v6 = 0;
    v7 = self;
    do
    {
      v8 = [v4 _descriptorAtIndex:v6];
      v7->_attachmentInfo[0].sampleCount = 0;
      v7->_attachmentInfo[1].pixelFormat = 0;
      if (v8)
      {
        v9 = v8;
        v10 = [v8 texture];
        if (v10)
        {
          v11 = v10;
          if ([v9 storeAction] == 4)
          {
            HIDWORD(self->_visibilityOffsets) |= 1 << v6;
          }

          v7->_attachmentInfo[1].pixelFormat = [v11 sampleCount];
          v7->_attachmentInfo[0].sampleCount = [v11 pixelFormat];
          if (v6 > 7)
          {
            if (v6 == 8)
            {
              v16 = v26;
            }

            else
            {
              v16 = v11;
            }

            v17 = *(&v26 + 1);
            if (v6 == 8)
            {
              v17 = v11;
            }

            *&v26 = v16;
            *(&v26 + 1) = v17;
          }

          else
          {
            v25 = [v11 sampleCount];
            v27[v5] = [v11 pixelFormat];
            v12 = &v27[7 * v5++ + 8];
            v14 = *(v11 + 88);
            v13 = *(v11 + 104);
            v15 = *(v11 + 72);
            v12[6] = *(v11 + 120);
            *(v12 + 1) = v14;
            *(v12 + 2) = v13;
            *v12 = v15;
          }

          [self->_maxVertexBuffers addObject:v11 retained:1 purgeable:1];
          [self->_maxVertexBuffers addObject:objc_msgSend(v9 retained:"resolveTexture") purgeable:{1, 1}];
        }
      }

      ++v6;
      v7 = (v7 + 16);
    }

    while (v6 != 10);
    [self->_maxVertexBuffers addObject:objc_msgSend(self->_frontFacingWinding retained:"visibilityResultBuffer") purgeable:{1, 1}];
    [self->_maxVertexBuffers addObject:objc_msgSend(self->_frontFacingWinding retained:"rasterizationRateMap") purgeable:{1, 0}];
    for (i = 0; i != 4; ++i)
    {
      [self->_maxVertexBuffers addObject:objc_msgSend(objc_msgSend(objc_msgSend(self->_frontFacingWinding retained:"sampleBufferAttachments") purgeable:{"objectAtIndexedSubscript:", i), "sampleBuffer"), 1, 0}];
    }

    v19 = *(&v26 + 1);
    v20 = v25;
    if (v26 == 0)
    {
      v21 = 0;
    }

    else
    {
      if (!*(&v26 + 1))
      {
        v19 = v26;
      }

      v21 = [v19 sampleCount];
    }

    if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget])
    {
      if (!v25)
      {
        v20 = [self->_frontFacingWinding defaultColorSampleCount];
        if (!v20)
        {
          v20 = [self->_frontFacingWinding defaultRasterSampleCount];
        }
      }

      if (!v21)
      {
        v21 = [self->_frontFacingWinding defaultRasterSampleCount];
      }

      if (!v21 || !v20)
      {
        if (!v20)
        {
          v20 = v21;
        }

        v21 = v20;
      }
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  [(MTLDebugRenderCommandEncoder *)self _setDefaults];
  self->_commandBuffer = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:10];
  *&self->_vertexBuffers[0].isValid = v21;
  self->_depthStencilState = v20;
  v22 = MTLPixelFormatComputeTotalSizeUsed();
  if (v22 <= [self->_frontFacingWinding imageblockSampleLength])
  {
    v22 = [self->_frontFacingWinding imageblockSampleLength];
  }

  self->_resolvedSampleCount = v22;
  self->_attachmentWriteMask = [(MTLToolsDevice *)self->super.super.super._device maxVertexBuffers];
  if ([self->_frontFacingWinding openGLModeEnabled])
  {
    attachmentWriteMask = self->_attachmentWriteMask;
    if (attachmentWriteMask <= 0x24)
    {
      attachmentWriteMask = 36;
    }

    self->_attachmentWriteMask = attachmentWriteMask;
    LOBYTE(self->_vertexBuiltinArguments) = 1;
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __37__MTLDebugRenderCommandEncoder__init__block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    result = MTLReportFailure();
    if ((a3 & 2) == 0)
    {
LABEL_3:
      if ((a3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = MTLReportFailure();
      if ((a3 & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = MTLReportFailure();
  if ((a3 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((a3 & 8) == 0)
  {
    return result;
  }

LABEL_9:

  return MTLReportFailure();
}

- (void)dealloc
{
  var1 = self->_updatedFences.__map_.var1;
  var2 = self->_updatedFences.__map_.var2;
  self->_storingRenderTargets = 0;
  v5 = (var2 - var1) >> 3;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*var1);
      v6 = self->_updatedFences.__map_.var2;
      var1 = self->_updatedFences.__map_.var1 + 1;
      self->_updatedFences.__map_.var1 = var1;
      v5 = (v6 - var1) >> 3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v7 = 256;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v7 = 512;
  }

  self->_updatedFences.__size_ = v7;
LABEL_8:
  begin = self->_viewports.__begin_;
  if (begin)
  {
    std::__tree<unsigned int>::destroy(self->_viewports.__begin_, *(begin + 1));
    MEMORY[0x2318E4940](begin, 0x1020C4062D53EE8);
    self->_viewports.__begin_ = 0;
  }

  if (self->_visibilityOffsets)
  {
    v9.receiver = self;
    v9.super_class = MTLDebugRenderCommandEncoder;
    [(MTLToolsObject *)&v9 dealloc];
  }

  else
  {
    [-[MTLToolsObject baseObject](self "baseObject")];
    v9.receiver = self;
    v9.super_class = MTLDebugRenderCommandEncoder;
    [(MTLToolsObject *)&v9 dealloc];
    MTLReportFailure();
  }
}

- (id)formattedDescription:(unint64_t)a3
{
  v81[8] = *MEMORY[0x277D85DE8];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = [@"\n" stringByPaddingToLength:a3 + 8 withString:@" " startingAtIndex:0];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:128];
  v81[0] = v5;
  v81[1] = @"descriptor =";
  frontFacingWinding = self->_frontFacingWinding;
  if (frontFacingWinding)
  {
    v9 = [frontFacingWinding formattedDescription:a3 + 4];
  }

  else
  {
    v9 = @"<null>";
  }

  v81[2] = v9;
  v81[3] = v5;
  v81[4] = @"viewportCount =";
  v56 = self;
  p_end = &self->_viewports.__end_;
  v81[5] = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0xAAAAAAAAAAAAAAABLL * ((self->_viewports.__cap_ - self->_viewports.__end_) >> 4)];
  v81[6] = v5;
  v57 = v5;
  v81[7] = @"viewports:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v81, 8)}];
  if (self->_viewports.__cap_ != self->_viewports.__end_)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v80[0] = v6;
      v80[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Viewport %lu:", v13];
      if (0xAAAAAAAAAAAAAAABLL * ((p_end[1] - *p_end) >> 4) <= v13)
      {
        std::vector<MTLViewport>::__throw_out_of_range[abi:ne200100]();
      }

      v14 = *p_end;
      v80[2] = [MEMORY[0x277CCACA8] stringWithFormat:@"%g %g %g %g %g %g", *(v14 + v12), *(v14 + v12 + 8), *(v14 + v12 + 16), *(v14 + v12 + 24), *(v14 + v12 + 32), *(v14 + v12 + 40)];
      [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v80, 3)}];
      ++v13;
      v12 += 48;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((p_end[1] - *p_end) >> 4));
  }

  cullMode = v56->_cullMode;
  v16 = @"Unknown";
  v79[0] = v57;
  v79[1] = @"frontFacingWinding =";
  if (cullMode == 1)
  {
    v17 = @"MTLWindingCounterClockwise";
  }

  else
  {
    v17 = @"Unknown";
  }

  if (!cullMode)
  {
    v17 = @"MTLWindingClockwise";
  }

  v79[2] = v17;
  v79[3] = v57;
  v79[4] = @"cullMode =";
  depthClipMode = v56->_depthClipMode;
  v19 = @"Unknown";
  if (depthClipMode <= 2)
  {
    v19 = off_2787B4FB0[depthClipMode];
  }

  v79[5] = v19;
  v79[6] = v57;
  triangleFillMode = v56->_triangleFillMode;
  if (triangleFillMode == 1)
  {
    v16 = @"MTLDepthClipModeClamp";
  }

  if (!triangleFillMode)
  {
    v16 = @"MTLDepthClipModeClip";
  }

  v79[7] = @"depthClipMode =";
  v79[8] = v16;
  v79[9] = v57;
  v79[10] = @"lineWidth =";
  *&v11 = v56->_depthBiasSlopeScale;
  v79[11] = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v79[12] = v57;
  v79[13] = @"depthBias =";
  *&v21 = v56->_depthBiasClamp;
  v79[14] = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v79[15] = v57;
  v79[16] = @"depthBiasSlopeScale =";
  LODWORD(v22) = v56->_frontStencilRef;
  v79[17] = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v79[18] = v57;
  v79[19] = @"depthBiasClamp =";
  LODWORD(v23) = v56->_backStencilRef;
  v79[20] = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v79[21] = v57;
  v79[22] = @"scissorRectCount =";
  v79[23] = [MEMORY[0x277CCABB0] numberWithUnsignedLong:(v56->_scissorRects.__cap_ - v56->_scissorRects.__end_) >> 5];
  v79[24] = v57;
  v79[25] = @"scissorRects:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v79, 26)}];
  if (v56->_scissorRects.__cap_ != v56->_scissorRects.__end_)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v78[0] = v6;
      v78[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Scissor %lu:", v26];
      if (v26 >= (v56->_scissorRects.__cap_ - v56->_scissorRects.__end_) >> 5)
      {
        std::vector<MTLViewport>::__throw_out_of_range[abi:ne200100]();
      }

      v78[2] = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu %lu %lu %lu", *(v56->_scissorRects.__end_ + v25), *(v56->_scissorRects.__end_ + v25 + 8), *(v56->_scissorRects.__end_ + v25 + 16), *(v56->_scissorRects.__end_ + v25 + 24)];
      [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v78, 3)}];
      ++v26;
      v25 += 32;
    }

    while (v26 < (v56->_scissorRects.__cap_ - v56->_scissorRects.__end_) >> 5);
  }

  v77[0] = v57;
  v77[1] = @"minBound =";
  *&v24 = v56->_lineWidth;
  v77[2] = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v77[3] = v57;
  v77[4] = @"maxBound =";
  *&v27 = v56->_depthBias;
  v77[5] = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v77[6] = v57;
  v77[7] = @"amplificationMode =";
  amplificationValue = v56->_amplificationValue;
  v77[8] = MTLVertexAmplificationModeString();
  v77[9] = v57;
  v77[10] = @"amplificationValue =";
  v77[11] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56->_vertexAmplificationCount];
  v77[12] = v57;
  v77[13] = @"vertexAmplificationCount =";
  v77[14] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56->_updatedFences.__map_.__first_];
  v77[15] = v57;
  v77[16] = @"triangleFillMode =";
  renderPipelineState = v56->_renderPipelineState;
  if (renderPipelineState > 2)
  {
    v30 = @"Unknown";
  }

  else
  {
    v30 = off_2787B4FC8[renderPipelineState];
  }

  v77[17] = v30;
  v77[18] = v57;
  v77[19] = @"renderPipelineState =";
  peakPerSampleStorage = v56->_peakPerSampleStorage;
  if (!peakPerSampleStorage)
  {
    peakPerSampleStorage = [MEMORY[0x277CBEB68] null];
  }

  v77[20] = peakPerSampleStorage;
  v77[21] = v57;
  v77[22] = @"depthStencilState =";
  defaultDepthStencilDescriptor = v56->_defaultDepthStencilDescriptor;
  if (!defaultDepthStencilDescriptor)
  {
    defaultDepthStencilDescriptor = v56->_visibilityResultMode;
    if (!defaultDepthStencilDescriptor)
    {
      defaultDepthStencilDescriptor = [MEMORY[0x277CBEB68] null];
    }
  }

  v77[23] = defaultDepthStencilDescriptor;
  v77[24] = v57;
  v77[25] = @"frontStencilRef =";
  v77[26] = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", LODWORD(v56->_blendColorRed)];
  v77[27] = v57;
  v77[28] = @"backStencilRef =";
  v77[29] = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", LODWORD(v56->_blendColorGreen)];
  v77[30] = v57;
  v77[31] = @"visibilityResultMode =";
  visibilityResultOffset = v56->_visibilityResultOffset;
  if (visibilityResultOffset > 2)
  {
    v34 = @"Unknown";
  }

  else
  {
    v34 = off_2787B4FE0[visibilityResultOffset];
  }

  v77[32] = v34;
  v77[33] = v57;
  v77[34] = @"visibilityResultOffset =";
  v77[35] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56->_width];
  v77[36] = v57;
  v77[37] = @"Blend Color =";
  v77[38] = [MEMORY[0x277CCACA8] stringWithFormat:@"%g %g %g %g", v56->_blendColorBlue, v56->_blendColorAlpha, v56->_tessellationFactorScale, *(&v56->_tessellationFactorScale + 1)];
  v77[39] = v57;
  v77[40] = @"Set Vertex Buffers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v77, 41)}];
  v35 = 0;
  v36 = v56;
  do
  {
    v76[0] = v6;
    v76[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer %lu:", v35];
    v76[2] = argumentFormattedDescription(a3 + 8, &v36->_vertexBuffers[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v76, 3)}];
    ++v35;
    v36 = (v36 + 88);
  }

  while (v35 != 36);
  v75[0] = v57;
  v75[1] = @"Set Vertex Textures:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v75, 2)}];
  v37 = 0;
  v38 = v56;
  do
  {
    v74[0] = v6;
    v74[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Texture %lu:", v37];
    v74[2] = argumentFormattedDescription(a3 + 8, &v38->_vertexTextures[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v74, 3)}];
    ++v37;
    v38 = (v38 + 88);
  }

  while (v37 != 128);
  v73[0] = v57;
  v73[1] = @"Set Vertex Samplers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v73, 2)}];
  v39 = 0;
  v40 = v56;
  do
  {
    v72[0] = v6;
    v72[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Sampler %lu:", v39];
    v72[2] = argumentFormattedDescription(a3 + 8, &v40->_vertexSamplers[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v72, 3)}];
    ++v39;
    v40 = (v40 + 88);
  }

  while (v39 != 16);
  v71[0] = v57;
  v71[1] = @"Set Fragment Buffers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v71, 2)}];
  v41 = 0;
  v42 = v56;
  do
  {
    v70[0] = v6;
    v70[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer %lu:", v41];
    v70[2] = argumentFormattedDescription(a3 + 8, &v42->_fragmentBuffers[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v70, 3)}];
    ++v41;
    v42 = (v42 + 88);
  }

  while (v41 != 31);
  v69[0] = v57;
  v69[1] = @"Set Fragment Textures:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v69, 2)}];
  v43 = 0;
  v44 = v56;
  do
  {
    v68[0] = v6;
    v68[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Texture %lu:", v43];
    v68[2] = argumentFormattedDescription(a3 + 8, &v44->_fragmentTextures[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v68, 3)}];
    ++v43;
    v44 = (v44 + 88);
  }

  while (v43 != 128);
  v67[0] = v57;
  v67[1] = @"Set Fragment Samplers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v67, 2)}];
  v45 = 0;
  v46 = v56;
  do
  {
    v66[0] = v6;
    v66[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Sampler %lu:", v45];
    v66[2] = argumentFormattedDescription(a3 + 8, &v46->_fragmentSamplers[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v66, 3)}];
    ++v45;
    v46 = (v46 + 88);
  }

  while (v45 != 16);
  v65[0] = v57;
  v65[1] = @"Set Tile Buffers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v65, 2)}];
  v47 = 0;
  v48 = v56;
  do
  {
    v64[0] = v6;
    v64[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer %lu:", v47];
    v64[2] = argumentFormattedDescription(a3 + 8, &v48->_tileBuffers[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v64, 3)}];
    ++v47;
    v48 = (v48 + 88);
  }

  while (v47 != 31);
  v63[0] = v57;
  v63[1] = @"Set Tile Textures:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v63, 2)}];
  v49 = 0;
  v50 = v56;
  do
  {
    v62[0] = v6;
    v62[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Texture %lu:", v49];
    v62[2] = argumentFormattedDescription(a3 + 8, &v50->_tileTextures[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v62, 3)}];
    ++v49;
    v50 = (v50 + 88);
  }

  while (v49 != 128);
  v61[0] = v57;
  v61[1] = @"Set Tile Samplers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v61, 2)}];
  v51 = 0;
  v52 = v56;
  do
  {
    v60[0] = v6;
    v60[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Sampler %lu:", v51];
    v60[2] = argumentFormattedDescription(a3 + 8, &v52->_tileSamplers[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v60, 3)}];
    ++v51;
    v52 = (v52 + 88);
  }

  while (v51 != 16);
  v59[0] = v57;
  v59[1] = @"Set Tessellation Factor Buffer =";
  v59[2] = argumentFormattedDescription(a3 + 8, &v56->_tessellationFactorBufferArgument.type);
  v59[3] = v57;
  v59[4] = @"tessellationFactorBufferInstanceStride =";
  v59[5] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*&v56->_tessellationFactorBufferArgument.isValid];
  v59[6] = v57;
  v59[7] = @"tessellationFactorScale =";
  LODWORD(v53) = v56->_descriptor;
  v59[8] = [MEMORY[0x277CCABB0] numberWithFloat:v53];
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v59, 9)}];
  v58.receiver = v56;
  v58.super_class = MTLDebugRenderCommandEncoder;
  result = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", -[MTLToolsObject description](&v58, sel_description), objc_msgSend(v7, "componentsJoinedByString:", @" "];
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setColorAttachmentMap:(id)a3
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();

  if (a3)
  {
    v6 = [a3 copy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  *&self->_minBound = v6;
  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)validateFramebufferWithRenderPipelineState:(id)a3 context:(_MTLMessageContext *)a4
{
  v6 = *(a3 + 8);
  if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget])
  {
    v7 = [objc_msgSend(a3 "descriptor")];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v9 = [objc_msgSend(a3 "descriptor")];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    v11 = [objc_msgSend(a3 "meshDescriptor")];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8;
    }

    v13 = [objc_msgSend(a3 "meshDescriptor")];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v10;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  if (![a3 rasterizationEnabled])
  {
    goto LABEL_50;
  }

  v15 = 0;
  v16 = &self->_attachmentInfo[1];
  do
  {
    v17 = *(a3 + v15 + 9);
    sampleCount = v16[-1].sampleCount;
    if (sampleCount)
    {
      pixelFormat = v16->pixelFormat;
      if (v14)
      {
        if (v14 != pixelFormat)
        {
          Name = v16->pixelFormat;
          v33 = v14;
          v29 = v15;
LABEL_32:
          _MTLMessageContextPush_();
        }
      }

      else if (v6 != pixelFormat)
      {
        Name = v16->pixelFormat;
        v33 = v6;
        v29 = v15;
        goto LABEL_32;
      }

      if (([(MTLRenderPassDescriptor *)[(MTLDebugRenderCommandEncoder *)self descriptor:v29] supportColorAttachmentMapping]& 1) == 0 && v17 != sampleCount)
      {
        Name = MTLPixelFormatGetName();
        v33 = MTLPixelFormatGetName();
        v29 = v15;
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    if (([(MTLRenderPassDescriptor *)[(MTLDebugRenderCommandEncoder *)self descriptor] supportColorAttachmentMapping]& 1) == 0 && v17)
    {
      v29 = v15;
LABEL_30:
      _MTLMessageContextPush_();
    }

LABEL_27:
    ++v16;
    ++v15;
  }

  while (v15 != 8);
  if ([a3 tileDescriptor])
  {
    goto LABEL_50;
  }

  v20 = self->_attachmentInfo[8].sampleCount;
  v21 = *(a3 + 17);
  if (!v20)
  {
    if (!v21)
    {
      goto LABEL_42;
    }

    goto LABEL_65;
  }

  v22 = self->_attachmentInfo[9].pixelFormat;
  if (v12)
  {
    if (v12 != v22)
    {
      v29 = self->_attachmentInfo[9].pixelFormat;
      Name = v12;
      goto LABEL_69;
    }
  }

  else if (v6 != v22)
  {
    v29 = self->_attachmentInfo[9].pixelFormat;
    Name = v6;
LABEL_69:
    _MTLMessageContextPush_();
  }

  if (v21 != v20)
  {
    v29 = MTLPixelFormatGetName();
    Name = MTLPixelFormatGetName();
LABEL_65:
    _MTLMessageContextPush_();
  }

LABEL_42:
  v23 = self->_attachmentInfo[9].sampleCount;
  v24 = *(a3 + 18);
  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_50;
    }

    goto LABEL_67;
  }

  previousRenderPipelineStateWithWritesToImageBlock = self->_previousRenderPipelineStateWithWritesToImageBlock;
  if (v12)
  {
    if (v12 != previousRenderPipelineStateWithWritesToImageBlock)
    {
      v29 = self->_previousRenderPipelineStateWithWritesToImageBlock;
      Name = v12;
      goto LABEL_71;
    }
  }

  else if (v6 != previousRenderPipelineStateWithWritesToImageBlock)
  {
    v29 = self->_previousRenderPipelineStateWithWritesToImageBlock;
    Name = v6;
LABEL_71:
    _MTLMessageContextPush_();
  }

  if (v24 != v23)
  {
    v29 = MTLPixelFormatGetName();
    Name = MTLPixelFormatGetName();
LABEL_67:
    _MTLMessageContextPush_();
  }

LABEL_50:
  if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget:v29])
  {
    v26 = [(MTLToolsDevice *)self->super.super.super._device supportsSeparateVisibilityAndShadingRate];
    depthStencilState = self->_depthStencilState;
    if (v26)
    {
      if (depthStencilState != v14)
      {
        v31 = self->_depthStencilState;
        _MTLMessageContextPush_();
      }

      if (*&self->_vertexBuffers[0].isValid != v12)
      {
        v30 = *&self->_vertexBuffers[0].isValid;
        goto LABEL_63;
      }
    }

    else
    {
      if (depthStencilState != *&self->_vertexBuffers[0].isValid || v14 != v12)
      {
        _MTLMessageContextPush_();
        depthStencilState = self->_depthStencilState;
      }

      if (depthStencilState != v14)
      {
LABEL_63:
        _MTLMessageContextPush_();
      }
    }
  }
}

- (void)setRenderPipelineState:(id)a3
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_35:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  if (!a3)
  {
    goto LABEL_35;
  }

LABEL_3:
  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x20000) != 0 && self->_peakPerSampleStorage == a3)
  {
    _MTLMessageContextPush_();
    if ((self->_visibilityOffsets & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  else if ((visibilityOffsets & 4) != 0)
  {
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
LABEL_6:
  _MTLMessageContextEnd();
  if (self->_peakPerSampleStorage != a3)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v7 = self->super.super.super._device;
    _MTLMessageContextBegin_();
    if (a3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = self->super.super.super._device;
        if (v8 != [a3 device])
        {
          _MTLMessageContextPush_();
        }

        if (((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled()) && ![a3 mtl4Descriptor] && !objc_msgSend(a3, "mtl4MeshDescriptor") && !objc_msgSend(a3, "mtl4TileDescriptor"))
        {
          [(MTLDebugRenderCommandEncoder *)self validateFramebufferWithRenderPipelineState:a3 context:&v25];
        }
      }

      else
      {
        _MTLMessageContextPush_();
      }
    }

    v9 = self->_visibilityOffsets;
    LODWORD(self->_visibilityOffsets) = v9 | 0x20000;
    peakPerSampleStorage = self->_peakPerSampleStorage;
    if (peakPerSampleStorage && (v9 & 4) != 0 && [peakPerSampleStorage outputImageBlockData])
    {
      self->_resolvedRasterSampleCount = self->_peakPerSampleStorage;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [a3 imageblockSampleLength];
      if (v11 > self->_resolvedSampleCount)
      {
        v21 = v11;
        resolvedSampleCount = self->_resolvedSampleCount;
        _MTLMessageContextPush_();
      }
    }

    v12 = [self->_frontFacingWinding tileWidth];
    v13 = [self->_frontFacingWinding tileHeight] * v12 * self->_depthStencilState;
    v14 = self->_resolvedSampleCount;
    v15 = [self->_frontFacingWinding threadgroupMemoryLength] + v13 * v14;
    if (v15 > [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength])
    {
      [MTLDebugRenderCommandEncoder setRenderPipelineState:?];
    }

    _MTLMessageContextEnd();
    LODWORD(self->_visibilityOffsets) &= ~4u;
    [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
    [-[MTLToolsObject baseObject](self "baseObject")];
    self->_peakPerSampleStorage = a3;
    *&self->_openGLModeEnabled |= 0x7FFFu;
    p_height = &self->_objectThreadsPerTG.height;
    self->_objectThreadsPerTG.depth = 0;
    self->_meshThreadsPerTG.width = 0;
    self->_objectThreadsPerTG.height = 0;
    v17 = &self->_meshThreadsPerTG.height;
    self->_meshThreadsPerTG.depth = 0;
    *&self->_allowsNullBufferBinds = 0;
    self->_meshThreadsPerTG.height = 0;
    v18 = self->_peakPerSampleStorage;
    if (![v18 mtl4Descriptor] && !objc_msgSend(v18, "mtl4MeshDescriptor") && !objc_msgSend(v18, "mtl4TileDescriptor") && objc_msgSend(self->_peakPerSampleStorage, "isMeshShaderPipeline"))
    {
      v19 = [self->_peakPerSampleStorage descriptor];
      if (v19)
      {
        v20 = v19;
        [v19 objectThreadsPerThreadgroup];
        *p_height = v23;
        p_height[2] = v24;
        [v20 meshThreadsPerThreadgroup];
        *v17 = v23;
        v17[2] = v24;
      }
    }
  }
}

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  memset(&v17, 0, sizeof(v17));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (self->_attachmentWriteMask <= a6)
  {
    v15 = a6;
    attachmentWriteMask = self->_attachmentWriteMask;
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxVertexInlineDataSize:v15]< a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxVertexInlineDataSize];
    _MTLMessageContextPush_();
  }

  if (a6 <= 0x23)
  {
    validateArg(0, a6, &self->_vertexBuffers[a6].type, &v17);
  }

  _MTLMessageContextEnd();
  v12 = [(MTLToolsDevice *)self->super.super.super._device supportsDynamicAttributeStride];
  v13 = [(MTLToolsObject *)self baseObject];
  if (v12)
  {
    [v13 setVertexBytes:a3 length:a4 attributeStride:a5 atIndex:a6];
  }

  else
  {
    [v13 setVertexBytes:a3 length:a4 atIndex:a6];
  }

  MTLReportFailureTypeEnabled();
  p_type = &self->_vertexBuffers[a6].type;
  *p_type = a4 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = 0;
  p_type[3] = 0;
  p_type[4] = a4;
  p_type[5] = 0;
  p_type[6] = a5;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 2u;
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  memset(&v18, 0, sizeof(v18));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (self->_attachmentWriteMask > a6)
  {
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  _MTLMessageContextPush_();
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    _MTLMessageContextPush_();
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v12 = self->super.super.super._device;
  if (v12 != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  v13 = *(a3 + 8);
  if (v13 <= a4)
  {
    _MTLMessageContextPush_();
  }

LABEL_14:
  if (a6 <= 0x23)
  {
    validateArg(0, a6, &self->_vertexBuffers[a6].type, &v18);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  v14 = [(MTLToolsDevice *)self->super.super.super._device supportsDynamicAttributeStride];
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a3 baseObject];
  if (v14)
  {
    [v15 setVertexBuffer:v16 offset:a4 attributeStride:a5 atIndex:a6];
  }

  else
  {
    [v15 setVertexBuffer:v16 offset:a4 atIndex:a6];
  }

  p_type = &self->_vertexBuffers[a6].type;
  if (MTLReportFailureTypeEnabled() && a3 && (p_type[9] & 1) == 0 && p_type[6] == a5 && p_type[5] == a4 && p_type[4] == v13 && p_type[2] == a3 && !(p_type[3] | p_type[1]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = v13 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = v13;
  p_type[5] = a4;
  p_type[6] = a5;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 2u;
}

- (void)setVertexBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5
{
  memset(&v19, 0, sizeof(v19));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (self->_attachmentWriteMask <= a5)
  {
    v17 = a5;
    attachmentWriteMask = self->_attachmentWriteMask;
    _MTLMessageContextPush_();
  }

  if (a5 <= 0x23)
  {
    p_type = &self->_vertexBuffers[a5].type;
    validateArg(0, a5, p_type, &v19);
    object = p_type->object;
    if (object)
    {
      if ([(baseLevel *)object length]> a3)
      {
        goto LABEL_11;
      }

      v17 = a3;
      attachmentWriteMask = [(baseLevel *)p_type->object length];
    }

    else
    {
      v17 = a5;
    }

    _MTLMessageContextPush_();
  }

LABEL_11:
  _MTLMessageContextEnd();
  v12 = [(MTLToolsDevice *)self->super.super.super._device supportsDynamicAttributeStride];
  v13 = [(MTLToolsObject *)self baseObject];
  if (v12)
  {
    [v13 setVertexBufferOffset:a3 attributeStride:a4 atIndex:a5];
  }

  else
  {
    [v13 setVertexBufferOffset:a3 atIndex:a5];
  }

  v14 = &self->_vertexBuffers[a5].type;
  v15 = v14[2];
  v16 = [v15 length];
  if (MTLReportFailureTypeEnabled() && v15 && (v14[9] & 1) == 0 && v14[6] == a4 && v14[5] == a3 && v14[4] == v16 && v14[2] == v15 && !(v14[3] | v14[1]) && *(v14 + 7) == 0 && !*(v14 + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *v14 = v16 != 0;
  *(v14 + 1) = 0;
  v14[1] = 0;
  v14[2] = v15;
  v14[3] = 0;
  v14[4] = v16;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = 0;
  v14[8] = 0;
  *(v14 + 72) = 0;
  *(v14 + 19) = 0;
  *(v14 + 20) = 0;
  *&self->_openGLModeEnabled |= 2u;
}

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  std::vector<unsigned long>::vector[abi:ne200100](__b, a5.length);
  v10 = __b[0];
  if (length)
  {
    memset(__b[0], 255, 8 * length);
  }

  [(MTLDebugRenderCommandEncoder *)self setVertexBuffers:a3 offsets:a4 attributeStrides:v10 withRange:location, length];
  if (__b[0])
  {
    __b[1] = __b[0];
    operator delete(__b[0]);
  }
}

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v48 = *MEMORY[0x277D85DE8];
  memset(&v46, 0, sizeof(v46));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > self->_attachmentWriteMask)
  {
    v36 = location + length;
    attachmentWriteMask = self->_attachmentWriteMask;
    _MTLMessageContextPush_();
  }

  v43 = a4;
  v44 = self;
  v40 = location;
  v41 = length;
  if (!length)
  {
    _MTLMessageContextEnd();
    goto LABEL_50;
  }

  v12 = 0;
  v13 = self + 88 * location;
  do
  {
    if (!a3[v12])
    {
      if (!a4[v12])
      {
        goto LABEL_17;
      }

      v36 = v12;
      attachmentWriteMask = a4[v12];
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v36 = v12;
      goto LABEL_16;
    }

    v14 = self->super.super.super._device;
    if (v14 != [a3[v12] device])
    {
      v36 = v12;
      _MTLMessageContextPush_();
    }

    a4 = v43;
    if (v43[v12] >= *(a3[v12] + 8))
    {
      v38 = v12;
      v39 = *(a3[v12] + 8);
      v36 = v12;
      attachmentWriteMask = v43[v12];
LABEL_16:
      _MTLMessageContextPush_();
    }

LABEL_17:
    if (location + v12 <= 0x23)
    {
      validateArg(0, location + v12, (v13 + 248), &v46);
    }

    ++v12;
    v13 += 88;
  }

  while (length != v12);
  _MTLMessageContextEnd();
  v15 = &self->_attachmentInfo[1] + 88 * location;
  v16 = v47;
  v17 = length;
  v18 = a4;
  v19 = a5;
  do
  {
    if (*a3)
    {
      v20 = *(*a3 + 8);
    }

    else
    {
      v20 = 0;
    }

    [v44->_maxVertexBuffers addObject:v36 retained:attachmentWriteMask purgeable:{v38, v39}];
    *v16 = [*a3 baseObject];
    v21 = v15 + 248;
    v45 = a3;
    v22 = *a3;
    v23 = *v18;
    v24 = *v19;
    v25 = MTLReportFailureTypeEnabled();
    v26 = v24;
    if (v25 && v22 && (v15[240] & 1) == 0)
    {
      v27 = *(v15 + 27) == v24 && *(v15 + 26) == v23;
      v28 = v27 && *(v15 + 25) == v20;
      v29 = v28 && *(v15 + 23) == v22;
      v30 = v29 && (*(v15 + 24) | *(v15 + 22)) == 0;
      v31 = v30 && *(v15 + 14) == 0;
      if (v31 && *(v15 + 244) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        v26 = v24;
      }
    }

    v15[168] = v20 != 0;
    v15[169] = 0;
    *(v15 + 22) = 0;
    *(v15 + 23) = v22;
    *(v15 + 24) = 0;
    *(v15 + 25) = v20;
    *(v15 + 26) = v23;
    *(v15 + 27) = v26;
    *(v15 + 28) = 0;
    *(v15 + 29) = 0;
    ++v19;
    v15[240] = 0;
    ++v18;
    ++v16;
    a3 = v45 + 1;
    v15 += 88;
    *(v21 - 1) = 0;
    *v21 = 0;
    --v17;
  }

  while (v17);
LABEL_50:
  v33 = [(MTLToolsDevice *)v44->super.super.super._device supportsDynamicAttributeStride];
  v34 = [(MTLToolsObject *)v44 baseObject];
  if (v33)
  {
    [v34 setVertexBuffers:v47 offsets:v43 attributeStrides:a5 withRange:{v40, v41}];
  }

  else
  {
    [v34 setVertexBuffers:v47 offsets:v43 withRange:{v40, v41}];
  }

  *&v44->_openGLModeEnabled |= 2u;
  v35 = *MEMORY[0x277D85DE8];
}

- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4
{
  memset(&v12, 0, sizeof(v12));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxVertexTextures]<= a4)
  {
    v10 = a4;
    v11 = [(MTLToolsDevice *)self->super.super.super._device maxVertexTextures];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else if (!a3)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = self->super.super.super._device;
  if (v8 != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 storageMode] == 3)
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

LABEL_10:
  if (a4 <= 0x7F)
  {
    validateArg(2, a4, &self->_vertexTextures[a4].type, &v12);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_vertexTextures[a4].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 1 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 1;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 4u;
}

- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v28 = *MEMORY[0x277D85DE8];
  memset(&v26, 0, sizeof(v26));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxVertexTextures])
  {
    v22 = location + length;
    v23 = [(MTLToolsDevice *)self->super.super.super._device maxVertexTextures];
    _MTLMessageContextPush_();
  }

  v24 = length;
  v25 = location;
  if (length)
  {
    v8 = 0;
    v9 = self + 88 * location;
    do
    {
      if (a3[v8])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        device = self->super.super.super._device;
        if (device != [a3[v8] device])
        {
          v22 = v8;
          _MTLMessageContextPush_();
        }

        length = v24;
        if ([a3[v8] storageMode] == 3)
        {
LABEL_12:
          v22 = v8;
          _MTLMessageContextPush_();
        }
      }

      if (location + v8 <= 0x7F)
      {
        validateArg(2, location + v8, (v9 + 3416), &v26);
      }

      ++v8;
      v9 += 88;
    }

    while (length != v8);
    _MTLMessageContextEnd();
    v11 = &self->_attachmentInfo[1] + 88 * location;
    v12 = v27;
    v13 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{1, v22}];
      *v12 = [*a3 baseObject];
      v14 = v11 + 3416;
      v15 = *a3;
      if (MTLReportFailureTypeEnabled() && (v11[3408] & 1) == 0 && *(v11 + 423) == -1 && *(v11 + 418) == 1 && *(v11 + 419) == v15 && (*(v11 + 421) | *(v11 + 420) | *(v11 + 422)) == 0 && *(v11 + 212) == 0 && *(v11 + 3412) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
      }

      *(v11 + 1668) = v15 != 0;
      *(v11 + 418) = 1;
      *(v11 + 419) = v15;
      *(v11 + 420) = 0;
      *(v11 + 421) = 0;
      *(v11 + 422) = 0;
      *(v11 + 423) = -1;
      *(v11 + 424) = 0;
      *(v11 + 425) = 0;
      v11[3408] = 0;
      v11 += 88;
      ++v12;
      ++a3;
      *(v14 - 1) = 0;
      *v14 = 0;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 4u;
  v21 = *MEMORY[0x277D85DE8];
}

- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  memset(&v9, 0, sizeof(v9));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers]<= a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (a4 <= 0xF)
  {
    validateArg(3, a4, &self->_vertexSamplers[a4].type, &v9);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_vertexSamplers[a4].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 8u;
}

- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v28 = *MEMORY[0x277D85DE8];
  memset(&v26, 0, sizeof(v26));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers])
  {
    v23 = location + length;
    v24 = [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
    _MTLMessageContextPush_();
  }

  v25 = length;
  v8 = location;
  if (length)
  {
    v9 = 0;
    v10 = self + 88 * location;
    do
    {
      if (a3[v9])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, v17 = device == [a3[v9] device], length = v25, !v17))
        {
          v23 = v9;
          _MTLMessageContextPush_();
        }
      }

      if (location + v9 <= 0xF)
      {
        validateArg(3, location + v9, (v10 + 14680), &v26);
      }

      ++v9;
      v10 += 88;
    }

    while (length != v9);
    _MTLMessageContextEnd();
    v12 = &self->_attachmentInfo[1] + 88 * location;
    v13 = v27;
    v14 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{0, v23, v24}];
      *v13 = [*a3 baseObject];
      v15 = v12 + 14680;
      v16 = *a3;
      if (MTLReportFailureTypeEnabled() && (v12[14672] & 1) == 0)
      {
        v17 = *(v12 + 1831) == -1 && *(v12 + 1826) == 2;
        if (v17 && *(v12 + 1827) == v16 && (*(v12 + 1829) | *(v12 + 1828) | *(v12 + 1830)) == 0 && *(v12 + 916) == 0 && *(v12 + 14676) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }

      v12[14600] = v16 != 0;
      v12[14601] = 0;
      *(v12 + 1826) = 2;
      *(v12 + 1827) = v16;
      *(v12 + 1828) = 0;
      *(v12 + 1829) = 0;
      *(v12 + 1830) = 0;
      *(v12 + 1831) = -1;
      *(v12 + 1832) = 0;
      *(v12 + 1833) = 0;
      v12[14672] = 0;
      v12 += 88;
      ++v13;
      ++a3;
      *(v15 - 1) = 0;
      *v15 = 0;
      --v14;
    }

    while (v14);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 8u;
  v22 = *MEMORY[0x277D85DE8];
}

- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  memset(&v17, 0, sizeof(v17));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers]<= a6)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (a6 <= 0xF)
  {
    validateArg(3, a6, &self->_vertexSamplers[a6].type, &v17);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  *&v14 = a4;
  *&v15 = a5;
  [v12 setVertexSamplerState:v13 lodMinClamp:a6 lodMaxClamp:v14 atIndex:v15];
  p_type = &self->_vertexSamplers[a6].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(a5) && *(p_type + 19) == LODWORD(a4) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = a4;
  *(p_type + 20) = a5;
  *&self->_openGLModeEnabled |= 8u;
}

- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 lodBias:(float)a6 atIndex:(unint64_t)a7
{
  memset(&v20, 0, sizeof(v20));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers]<= a7)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (a7 <= 0xF)
  {
    validateArg(3, a7, &self->_vertexSamplers[a7].type, &v20);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  v14 = [(MTLToolsObject *)self baseObject];
  v15 = [a3 baseObject];
  *&v16 = a4;
  *&v17 = a5;
  *&v18 = a6;
  [v14 setVertexSamplerState:v15 lodMinClamp:a7 lodMaxClamp:v16 lodBias:v17 atIndex:v18];
  p_type = &self->_vertexSamplers[a7].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(a5) && *(p_type + 19) == LODWORD(a4) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = a4;
  *(p_type + 20) = a5;
  *&self->_openGLModeEnabled |= 8u;
}

- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v38 = *MEMORY[0x277D85DE8];
  memset(&v36, 0, sizeof(v36));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers])
  {
    v30 = location + length;
    v31 = [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
    _MTLMessageContextPush_();
  }

  v35 = location;
  v32 = length;
  if (length)
  {
    v10 = 0;
    v11 = self + 88 * location;
    do
    {
      if (a3[v10])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3[v10] device]))
        {
          v30 = v10;
          _MTLMessageContextPush_();
        }
      }

      if (v35 + v10 <= 0xF)
      {
        validateArg(3, v35 + v10, (v11 + 14680), &v36);
      }

      ++v10;
      v11 += 88;
    }

    while (length != v10);
    _MTLMessageContextEnd();
    v13 = length;
    v14 = &self->_attachmentInfo[1] + 88 * v35;
    v15 = v37;
    v16 = a4;
    v17 = a5;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{0, v30, v31}];
      *v15 = [*a3 baseObject];
      v18 = v14 + 14680;
      v19 = *a3;
      v20 = *v16;
      v21 = *v17;
      if (MTLReportFailureTypeEnabled())
      {
        if (*v18 == v21 && *(v14 + 3669) == v20 && v14[14672] != 0 && *(v14 + 1831) == -1 && *(v14 + 1826) == 2 && *(v14 + 1827) == v19 && (*(v14 + 1829) | *(v14 + 1828) | *(v14 + 1830)) == 0 && *(v14 + 916) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }

      v14[14600] = v19 != 0;
      v14[14601] = 0;
      *(v14 + 1826) = 2;
      *(v14 + 1827) = v19;
      *(v14 + 1828) = 0;
      *(v14 + 1829) = 0;
      *(v14 + 1830) = 0;
      *(v14 + 1831) = -1;
      *(v14 + 1832) = 0;
      *(v14 + 1833) = 0;
      v14 += 88;
      *(v18 - 8) = 1;
      ++v17;
      ++v16;
      ++v15;
      ++a3;
      *(v18 - 1) = v20;
      *v18 = v21;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 8u;
  v29 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers]<= a5)
  {
    v10 = a5;
    v11 = [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentInlineDataSize:v10]< a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxFragmentInlineDataSize];
    _MTLMessageContextPush_();
  }

  if (a5 <= 0x1E)
  {
    validateArg(0, a5, &self->_fragmentBuffers[a5].type, &v12);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  MTLReportFailureTypeEnabled();
  p_type = &self->_fragmentBuffers[a5].type;
  *p_type = a4 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = 0;
  p_type[3] = 0;
  p_type[4] = a4;
  *(p_type + 5) = xmmword_22E27C260;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x10u;
}

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  memset(&v13, 0, sizeof(v13));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers]> a5)
  {
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
  _MTLMessageContextPush_();
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    _MTLMessageContextPush_();
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  v10 = *(a3 + 8);
  if (v10 <= a4)
  {
    v12 = *(a3 + 8);
    _MTLMessageContextPush_();
  }

LABEL_14:
  if (a5 <= 0x1E)
  {
    validateArg(0, a5, &self->_fragmentBuffers[a5].type, &v13);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_fragmentBuffers[a5].type;
  if (MTLReportFailureTypeEnabled() && a3 && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[5] == a4 && p_type[4] == v10 && p_type[2] == a3 && !(p_type[3] | p_type[1]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = v10 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = v10;
  p_type[5] = a4;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x10u;
}

- (void)setFragmentBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers]<= a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
    _MTLMessageContextPush_();
  }

  if (a4 <= 0x1E)
  {
    p_type = &self->_fragmentBuffers[a4].type;
    validateArg(0, a4, p_type, &v12);
    object = p_type->object;
    if (!object)
    {
LABEL_9:
      _MTLMessageContextPush_();
      goto LABEL_10;
    }

    if ([(baseLevel *)object length]<= a3)
    {
      [(baseLevel *)p_type->object length];
      goto LABEL_9;
    }
  }

LABEL_10:
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v9 = &self->_fragmentBuffers[a4].type;
  v10 = v9[2];
  v11 = [v10 length];
  if (MTLReportFailureTypeEnabled() && v10 && (v9[9] & 1) == 0 && v9[6] == -1 && v9[5] == a3 && v9[4] == v11 && v9[2] == v10 && !(v9[3] | v9[1]) && *(v9 + 7) == 0 && !*(v9 + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *v9 = v11 != 0;
  *(v9 + 1) = 0;
  v9[1] = 0;
  v9[2] = v10;
  v9[3] = 0;
  v9[4] = v11;
  v9[5] = a3;
  v9[6] = -1;
  v9[7] = 0;
  v9[8] = 0;
  *(v9 + 72) = 0;
  *(v9 + 19) = 0;
  *(v9 + 20) = 0;
  *&self->_openGLModeEnabled |= 0x10u;
}

- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v38 = *MEMORY[0x277D85DE8];
  memset(&v36, 0, sizeof(v36));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers])
  {
    v29 = location + length;
    v30 = [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
    _MTLMessageContextPush_();
  }

  v33 = location;
  v34 = length;
  if (!length)
  {
    v13 = self;
    _MTLMessageContextEnd();
    goto LABEL_50;
  }

  v9 = 0;
  v10 = self + 88 * location;
  v11 = a4;
  do
  {
    if (!a3[v9])
    {
      if (!v11[v9])
      {
        goto LABEL_17;
      }

      v29 = v9;
      v30 = v11[v9];
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = v9;
      goto LABEL_16;
    }

    device = self->super.super.super._device;
    if (device != [a3[v9] device])
    {
      v29 = v9;
      _MTLMessageContextPush_();
    }

    v11 = a4;
    if (a4[v9] >= *(a3[v9] + 8))
    {
      v31 = v9;
      v32 = *(a3[v9] + 8);
      v29 = v9;
      v30 = a4[v9];
LABEL_16:
      _MTLMessageContextPush_();
    }

LABEL_17:
    if (location + v9 <= 0x1E)
    {
      validateArg(0, location + v9, (v10 + 16088), &v36);
    }

    ++v9;
    v10 += 88;
  }

  while (length != v9);
  _MTLMessageContextEnd();
  v13 = self;
  v14 = &self->_attachmentInfo[1] + 88 * location;
  v15 = v37;
  v16 = v11;
  v17 = length;
  do
  {
    if (*a3)
    {
      v18 = *(*a3 + 8);
    }

    else
    {
      v18 = 0;
    }

    [v13->_maxVertexBuffers addObject:v29 retained:v30 purgeable:{v31, v32}];
    *v15 = [*a3 baseObject];
    v19 = v14 + 16088;
    v20 = *a3;
    v21 = *v16;
    if (MTLReportFailureTypeEnabled() && v20 && (v14[16080] & 1) == 0 && *(v14 + 2007) == -1 && *(v14 + 2006) == v21 && *(v14 + 2005) == v18 && *(v14 + 2003) == v20 && (*(v14 + 2004) | *(v14 + 2002)) == 0 && *(v14 + 1004) == 0 && *(v14 + 16084) == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }

    v14[16008] = v18 != 0;
    v14[16009] = 0;
    *(v14 + 2002) = 0;
    *(v14 + 2003) = v20;
    *(v14 + 2004) = 0;
    *(v14 + 2005) = v18;
    *(v14 + 2006) = v21;
    *(v14 + 2007) = -1;
    *(v14 + 2008) = 0;
    *(v14 + 2009) = 0;
    v14[16080] = 0;
    v14 += 88;
    ++v16;
    ++v15;
    ++a3;
    *(v19 - 1) = 0;
    *v19 = 0;
    --v17;
  }

  while (v17);
LABEL_50:
  [-[MTLToolsObject baseObject](v13 baseObject];
  *&v13->_openGLModeEnabled |= 0x10u;
  v28 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4
{
  memset(&v11, 0, sizeof(v11));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures]<= a4)
  {
    v9 = a4;
    v10 = [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else if (!a3)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 storageMode] == 3)
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

LABEL_10:
  if (a4 <= 0x7F)
  {
    validateArg(2, a4, &self->_fragmentTextures[a4].type, &v11);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_fragmentTextures[a4].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 1 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 1;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x20u;
}

- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v28 = *MEMORY[0x277D85DE8];
  memset(&v26, 0, sizeof(v26));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures])
  {
    v22 = location + length;
    v23 = [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
    _MTLMessageContextPush_();
  }

  v24 = length;
  v25 = location;
  if (length)
  {
    v8 = 0;
    v9 = self + 88 * location;
    do
    {
      if (a3[v8])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        device = self->super.super.super._device;
        if (device != [a3[v8] device])
        {
          v22 = v8;
          _MTLMessageContextPush_();
        }

        length = v24;
        if ([a3[v8] storageMode] == 3)
        {
LABEL_12:
          v22 = v8;
          _MTLMessageContextPush_();
        }
      }

      if (location + v8 <= 0x7F)
      {
        validateArg(2, location + v8, (v9 + 18816), &v26);
      }

      ++v8;
      v9 += 88;
    }

    while (length != v8);
    _MTLMessageContextEnd();
    v11 = &self->_attachmentInfo[1] + 88 * location;
    v12 = v27;
    v13 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{1, v22}];
      *v12 = [*a3 baseObject];
      v14 = v11 + 18816;
      v15 = *a3;
      if (MTLReportFailureTypeEnabled() && (v11[18808] & 1) == 0 && *(v11 + 2348) == -1 && *(v11 + 2343) == 1 && *(v11 + 2344) == v15 && (*(v11 + 2346) | *(v11 + 2345) | *(v11 + 2347)) == 0 && *(v11 + 18792) == 0 && *(v11 + 18812) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
      }

      *(v11 + 9368) = v15 != 0;
      *(v11 + 2343) = 1;
      *(v11 + 2344) = v15;
      *(v11 + 2345) = 0;
      *(v11 + 2346) = 0;
      *(v11 + 2347) = 0;
      *(v11 + 2348) = -1;
      *(v11 + 2349) = 0;
      *(v11 + 2350) = 0;
      v11[18808] = 0;
      v11 += 88;
      ++v12;
      ++a3;
      *(v14 - 1) = 0;
      *v14 = 0;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x20u;
  v21 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  memset(&v9, 0, sizeof(v9));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers]<= a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (a4 <= 0xF)
  {
    validateArg(3, a4, &self->_fragmentSamplers[a4].type, &v9);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_fragmentSamplers[a4].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x40u;
}

- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v28 = *MEMORY[0x277D85DE8];
  memset(&v26, 0, sizeof(v26));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers])
  {
    v23 = location + length;
    v24 = [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
    _MTLMessageContextPush_();
  }

  v25 = length;
  v8 = location;
  if (length)
  {
    v9 = 0;
    v10 = self + 88 * location;
    do
    {
      if (a3[v9])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, v17 = device == [a3[v9] device], length = v25, !v17))
        {
          v23 = v9;
          _MTLMessageContextPush_();
        }
      }

      if (location + v9 <= 0xF)
      {
        validateArg(3, location + v9, (v10 + 30080), &v26);
      }

      ++v9;
      v10 += 88;
    }

    while (length != v9);
    _MTLMessageContextEnd();
    v12 = &self->_attachmentInfo[1] + 88 * location;
    v13 = v27;
    v14 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{0, v23, v24}];
      *v13 = [*a3 baseObject];
      v15 = v12 + 30080;
      v16 = *a3;
      if (MTLReportFailureTypeEnabled() && (v12[30072] & 1) == 0)
      {
        v17 = *(v12 + 3756) == -1 && *(v12 + 3751) == 2;
        if (v17 && *(v12 + 3752) == v16 && (*(v12 + 3754) | *(v12 + 3753) | *(v12 + 3755)) == 0 && *(v12 + 30056) == 0 && *(v12 + 30076) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }

      v12[30000] = v16 != 0;
      v12[30001] = 0;
      *(v12 + 3751) = 2;
      *(v12 + 3752) = v16;
      *(v12 + 3753) = 0;
      *(v12 + 3754) = 0;
      *(v12 + 3755) = 0;
      *(v12 + 3756) = -1;
      *(v12 + 3757) = 0;
      *(v12 + 3758) = 0;
      v12[30072] = 0;
      v12 += 88;
      ++v13;
      ++a3;
      *(v15 - 1) = 0;
      *v15 = 0;
      --v14;
    }

    while (v14);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x40u;
  v22 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  memset(&v17, 0, sizeof(v17));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers]<= a6)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (a6 <= 0xF)
  {
    validateArg(3, a6, &self->_fragmentSamplers[a6].type, &v17);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  *&v14 = a4;
  *&v15 = a5;
  [v12 setFragmentSamplerState:v13 lodMinClamp:a6 lodMaxClamp:v14 atIndex:v15];
  p_type = &self->_fragmentSamplers[a6].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(a5) && *(p_type + 19) == LODWORD(a4) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = a4;
  *(p_type + 20) = a5;
  *&self->_openGLModeEnabled |= 0x40u;
}

- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 lodBias:(float)a6 atIndex:(unint64_t)a7
{
  memset(&v20, 0, sizeof(v20));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers]<= a7)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (a7 <= 0xF)
  {
    validateArg(3, a7, &self->_fragmentSamplers[a7].type, &v20);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  v14 = [(MTLToolsObject *)self baseObject];
  v15 = [a3 baseObject];
  *&v16 = a4;
  *&v17 = a5;
  *&v18 = a6;
  [v14 setFragmentSamplerState:v15 lodMinClamp:a7 lodMaxClamp:v16 lodBias:v17 atIndex:v18];
  p_type = &self->_fragmentSamplers[a7].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(a5) && *(p_type + 19) == LODWORD(a4) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = a4;
  *(p_type + 20) = a5;
  *&self->_openGLModeEnabled |= 0x40u;
}

- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v38 = *MEMORY[0x277D85DE8];
  memset(&v36, 0, sizeof(v36));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers])
  {
    v30 = location + length;
    v31 = [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
    _MTLMessageContextPush_();
  }

  v35 = location;
  v32 = length;
  if (length)
  {
    v10 = 0;
    v11 = self + 88 * location;
    do
    {
      if (a3[v10])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3[v10] device]))
        {
          v30 = v10;
          _MTLMessageContextPush_();
        }
      }

      if (v35 + v10 <= 0xF)
      {
        validateArg(3, v35 + v10, (v11 + 30080), &v36);
      }

      ++v10;
      v11 += 88;
    }

    while (length != v10);
    _MTLMessageContextEnd();
    v13 = length;
    v14 = &self->_attachmentInfo[1] + 88 * v35;
    v15 = v37;
    v16 = a4;
    v17 = a5;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{0, v30, v31}];
      *v15 = [*a3 baseObject];
      v18 = v14 + 30080;
      v19 = *a3;
      v20 = *v16;
      v21 = *v17;
      if (MTLReportFailureTypeEnabled())
      {
        if (*v18 == v21 && *(v14 + 7519) == v20 && v14[30072] != 0 && *(v14 + 3756) == -1 && *(v14 + 3751) == 2 && *(v14 + 3752) == v19 && (*(v14 + 3754) | *(v14 + 3753) | *(v14 + 3755)) == 0 && *(v14 + 30056) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }

      v14[30000] = v19 != 0;
      v14[30001] = 0;
      *(v14 + 3751) = 2;
      *(v14 + 3752) = v19;
      *(v14 + 3753) = 0;
      *(v14 + 3754) = 0;
      *(v14 + 3755) = 0;
      *(v14 + 3756) = -1;
      *(v14 + 3757) = 0;
      *(v14 + 3758) = 0;
      v14 += 88;
      *(v18 - 8) = 1;
      ++v17;
      ++v16;
      ++v15;
      ++a3;
      *(v18 - 1) = v20;
      *v18 = v21;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x40u;
  v29 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6
{
  memset(&v17, 0, sizeof(v17));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures]<= a4)
  {
    v15 = a4;
    v16 = [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else if (!a3)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 storageMode] == 3)
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

LABEL_10:
  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers:v15]<= a6)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
    _MTLMessageContextPush_();
    if (!a5)
    {
      goto LABEL_15;
    }
  }

  else if (!a5)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v12 = self->super.super.super._device, v12 != [a5 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_15:
  if (a4 <= 0x7F)
  {
    validateArg(2, a4, &self->_fragmentTextures[a4].type, &v17);
  }

  if (a6 <= 0xF)
  {
    validateArg(3, a6, &self->_fragmentSamplers[a6].type, &v17);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [self->_maxVertexBuffers addObject:a5 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_fragmentTextures[a4].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 1 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 1;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  v14 = &self->_fragmentSamplers[a6].type;
  if (MTLReportFailureTypeEnabled() && (v14[9] & 1) == 0 && v14[6] == -1 && v14[1] == 2 && v14[2] == a5 && !(v14[4] | v14[3] | v14[5]) && *(v14 + 7) == 0 && !*(v14 + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *v14 = a5 != 0;
  *(v14 + 1) = 0;
  v14[1] = 2;
  v14[2] = a5;
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = 0;
  v14[6] = -1;
  v14[7] = 0;
  v14[8] = 0;
  *(v14 + 72) = 0;
  *(v14 + 19) = 0;
  *(v14 + 20) = 0;
  *&self->_openGLModeEnabled |= 0x20u;
}

- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileBuffers]<= a5)
  {
    v10 = a5;
    v11 = [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileInlineDataSize:v10]< a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxTileInlineDataSize];
    _MTLMessageContextPush_();
  }

  if (a5 <= 0x1E)
  {
    validateArg(0, a5, &self->_tileBuffers[a5].type, &v12);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  MTLReportFailureTypeEnabled();
  p_type = &self->_tileBuffers[a5].type;
  *p_type = a4 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = 0;
  p_type[3] = 0;
  p_type[4] = a4;
  *(p_type + 5) = xmmword_22E27C260;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
}

- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  memset(&v14, 0, sizeof(v14));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileBuffers]<= a5)
  {
    v12 = a5;
    v13 = [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];
    _MTLMessageContextPush_();
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (a4)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    _MTLMessageContextPush_();
    goto LABEL_13;
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 length] <= a4)
  {
    [a3 length];
    goto LABEL_10;
  }

LABEL_13:
  if (a5 <= 0x1E)
  {
    validateArg(0, a5, &self->_tileBuffers[a5].type, &v14);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_tileBuffers[a5].type;
  v11 = [a3 length];
  if (MTLReportFailureTypeEnabled() && a3 && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[5] == a4 && p_type[4] == v11 && p_type[2] == a3 && !(p_type[3] | p_type[1]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = v11 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = v11;
  p_type[5] = a4;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
}

- (void)setTileBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileBuffers]<= a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];
    _MTLMessageContextPush_();
  }

  if (a4 <= 0x1E)
  {
    p_type = &self->_tileBuffers[a4].type;
    validateArg(0, a4, p_type, &v12);
    object = p_type->object;
    if (!object)
    {
LABEL_9:
      _MTLMessageContextPush_();
      goto LABEL_10;
    }

    if ([(baseLevel *)object length]<= a3)
    {
      [(baseLevel *)p_type->object length];
      goto LABEL_9;
    }
  }

LABEL_10:
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v9 = &self->_tileBuffers[a4].type;
  v10 = v9[2];
  v11 = [v10 length];
  if (MTLReportFailureTypeEnabled() && v10 && (v9[9] & 1) == 0 && v9[6] == -1 && v9[5] == a3 && v9[4] == v11 && v9[2] == v10 && !(v9[3] | v9[1]) && *(v9 + 7) == 0 && !*(v9 + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *v9 = v11 != 0;
  *(v9 + 1) = 0;
  v9[1] = 0;
  v9[2] = v10;
  v9[3] = 0;
  v9[4] = v11;
  v9[5] = a3;
  v9[6] = -1;
  v9[7] = 0;
  v9[8] = 0;
  *(v9 + 72) = 0;
  *(v9 + 19) = 0;
  *(v9 + 20) = 0;
}

- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v41 = *MEMORY[0x277D85DE8];
  memset(&v39, 0, sizeof(v39));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers])
  {
    v31 = location + length;
    v32 = [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];
    _MTLMessageContextPush_();
  }

  v36 = location;
  v37 = length;
  v35 = a4;
  p_isa = &self->super.super.super.super.isa;
  if (!length)
  {
    _MTLMessageContextEnd();
    goto LABEL_47;
  }

  v10 = 0;
  v11 = self + 88 * location;
  do
  {
    if (!a3[v10])
    {
      if (!a4[v10])
      {
        goto LABEL_17;
      }

      v31 = v10;
      v32 = a4[v10];
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = v10;
      goto LABEL_16;
    }

    device = self->super.super.super._device;
    if (device != [a3[v10] device])
    {
      v31 = v10;
      _MTLMessageContextPush_();
    }

    v13 = a4[v10];
    if (v13 >= [a3[v10] length])
    {
      v14 = a4[v10];
      v33 = v10;
      v34 = [a3[v10] length];
      v31 = v10;
      v32 = v14;
LABEL_16:
      _MTLMessageContextPush_();
    }

LABEL_17:
    if (location + v10 <= 0x1E)
    {
      validateArg(0, location + v10, (v11 + 31488), &v39);
    }

    ++v10;
    v11 += 88;
  }

  while (length != v10);
  _MTLMessageContextEnd();
  v15 = &self->_attachmentInfo[1] + 88 * location;
  v16 = v40;
  v17 = a4;
  v18 = length;
  do
  {
    [p_isa[10411] addObject:*a3 retained:1 purgeable:{1, v31}];
    *v16 = [*a3 baseObject];
    v19 = v15 + 31488;
    v20 = *a3;
    v21 = [*a3 length];
    v23 = *v17++;
    v22 = v23;
    if (MTLReportFailureTypeEnabled() && v20 && (v15[31480] & 1) == 0 && *(v15 + 3932) == -1 && *(v15 + 3931) == v22 && *(v15 + 3930) == v21 && *(v15 + 3928) == v20 && (*(v15 + 3929) | *(v15 + 3927)) == 0 && *(v15 + 31464) == 0 && *(v15 + 31484) == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }

    v15[31408] = v21 != 0;
    v15[31409] = 0;
    *(v15 + 3927) = 0;
    *(v15 + 3928) = v20;
    *(v15 + 3929) = 0;
    *(v15 + 3930) = v21;
    *(v15 + 3931) = v22;
    *(v15 + 3932) = -1;
    *(v15 + 3933) = 0;
    *(v15 + 3934) = 0;
    v15[31480] = 0;
    v15 += 88;
    ++v16;
    ++a3;
    *(v19 - 1) = 0;
    *v19 = 0;
    --v18;
  }

  while (v18);
LABEL_47:
  [objc_msgSend(p_isa baseObject];
  v30 = *MEMORY[0x277D85DE8];
}

- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4
{
  memset(&v9, 0, sizeof(v9));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileTextures]<= a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxTileTextures];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (a4 <= 0x7F)
  {
    validateArg(2, a4, &self->_tileTextures[a4].type, &v9);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_tileTextures[a4].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 1 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 1;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
}

- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v28 = *MEMORY[0x277D85DE8];
  memset(&v26, 0, sizeof(v26));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxTileTextures])
  {
    v23 = location + length;
    v24 = [(MTLToolsDevice *)self->super.super.super._device maxTileTextures];
    _MTLMessageContextPush_();
  }

  v25 = length;
  v8 = location;
  if (length)
  {
    v9 = 0;
    v10 = self + 88 * location;
    do
    {
      if (a3[v9])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, v17 = device == [a3[v9] device], length = v25, !v17))
        {
          v23 = v9;
          _MTLMessageContextPush_();
        }
      }

      if (location + v9 <= 0x7F)
      {
        validateArg(2, location + v9, (v10 + 34216), &v26);
      }

      ++v9;
      v10 += 88;
    }

    while (length != v9);
    _MTLMessageContextEnd();
    v12 = &self->_attachmentInfo[1] + 88 * location;
    v13 = v27;
    v14 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{1, v23, v24}];
      *v13 = [*a3 baseObject];
      v15 = v12 + 34216;
      v16 = *a3;
      if (MTLReportFailureTypeEnabled() && (v12[34208] & 1) == 0)
      {
        v17 = *(v12 + 4273) == -1 && *(v12 + 4268) == 1;
        if (v17 && *(v12 + 4269) == v16 && (*(v12 + 4271) | *(v12 + 4270) | *(v12 + 4272)) == 0 && *(v12 + 2137) == 0 && *(v12 + 34212) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }

      v12[34136] = v16 != 0;
      v12[34137] = 0;
      *(v12 + 4268) = 1;
      *(v12 + 4269) = v16;
      *(v12 + 4270) = 0;
      *(v12 + 4271) = 0;
      *(v12 + 4272) = 0;
      *(v12 + 4273) = -1;
      *(v12 + 4274) = 0;
      *(v12 + 4275) = 0;
      v12[34208] = 0;
      v12 += 88;
      ++v13;
      ++a3;
      *(v15 - 1) = 0;
      *v15 = 0;
      --v14;
    }

    while (v14);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)setTileSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  memset(&v9, 0, sizeof(v9));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileSamplers]<= a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxTileSamplers];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (a4 <= 0xF)
  {
    validateArg(3, a4, &self->_tileSamplers[a4].type, &v9);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_tileSamplers[a4].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
}

- (void)setTileSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v28 = *MEMORY[0x277D85DE8];
  memset(&v26, 0, sizeof(v26));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxTileSamplers])
  {
    v23 = location + length;
    v24 = [(MTLToolsDevice *)self->super.super.super._device maxTileSamplers];
    _MTLMessageContextPush_();
  }

  v25 = length;
  v8 = location;
  if (length)
  {
    v9 = 0;
    v10 = self + 88 * location;
    do
    {
      if (a3[v9])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, v17 = device == [a3[v9] device], length = v25, !v17))
        {
          v23 = v9;
          _MTLMessageContextPush_();
        }
      }

      if (location + v9 <= 0xF)
      {
        validateArg(3, location + v9, (v10 + 45480), &v26);
      }

      ++v9;
      v10 += 88;
    }

    while (length != v9);
    _MTLMessageContextEnd();
    v12 = &self->_attachmentInfo[1] + 88 * location;
    v13 = v27;
    v14 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{0, v23, v24}];
      *v13 = [*a3 baseObject];
      v15 = v12 + 45480;
      v16 = *a3;
      if (MTLReportFailureTypeEnabled() && (v12[45472] & 1) == 0)
      {
        v17 = *(v12 + 5681) == -1 && *(v12 + 5676) == 2;
        if (v17 && *(v12 + 5677) == v16 && (*(v12 + 5679) | *(v12 + 5678) | *(v12 + 5680)) == 0 && *(v12 + 2841) == 0 && *(v12 + 45476) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }

      v12[45400] = v16 != 0;
      v12[45401] = 0;
      *(v12 + 5676) = 2;
      *(v12 + 5677) = v16;
      *(v12 + 5678) = 0;
      *(v12 + 5679) = 0;
      *(v12 + 5680) = 0;
      *(v12 + 5681) = -1;
      *(v12 + 5682) = 0;
      *(v12 + 5683) = 0;
      v12[45472] = 0;
      v12 += 88;
      ++v13;
      ++a3;
      *(v15 - 1) = 0;
      *v15 = 0;
      --v14;
    }

    while (v14);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)setTileSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  memset(&v17, 0, sizeof(v17));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileSamplers]<= a6)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxTileSamplers];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (a6 <= 0xF)
  {
    validateArg(3, a6, &self->_tileSamplers[a6].type, &v17);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  *&v14 = a4;
  *&v15 = a5;
  [v12 setTileSamplerState:v13 lodMinClamp:a6 lodMaxClamp:v14 atIndex:v15];
  p_type = &self->_tileSamplers[a6].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(a5) && *(p_type + 19) == LODWORD(a4) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = a4;
  *(p_type + 20) = a5;
}

- (void)setTileSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v38 = *MEMORY[0x277D85DE8];
  memset(&v36, 0, sizeof(v36));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxTileSamplers])
  {
    v30 = location + length;
    v31 = [(MTLToolsDevice *)self->super.super.super._device maxTileSamplers];
    _MTLMessageContextPush_();
  }

  v35 = location;
  v32 = length;
  if (length)
  {
    v10 = 0;
    v11 = self + 88 * location;
    do
    {
      if (a3[v10])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3[v10] device]))
        {
          v30 = v10;
          _MTLMessageContextPush_();
        }
      }

      if (v35 + v10 <= 0xF)
      {
        validateArg(3, v35 + v10, (v11 + 45480), &v36);
      }

      ++v10;
      v11 += 88;
    }

    while (length != v10);
    _MTLMessageContextEnd();
    v13 = length;
    v14 = &self->_attachmentInfo[1] + 88 * v35;
    v15 = v37;
    v16 = a4;
    v17 = a5;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{0, v30, v31}];
      *v15 = [*a3 baseObject];
      v18 = v14 + 45480;
      v19 = *a3;
      v20 = *v16;
      v21 = *v17;
      if (MTLReportFailureTypeEnabled())
      {
        if (*v18 == v21 && *(v14 + 11369) == v20 && v14[45472] != 0 && *(v14 + 5681) == -1 && *(v14 + 5676) == 2 && *(v14 + 5677) == v19 && (*(v14 + 5679) | *(v14 + 5678) | *(v14 + 5680)) == 0 && *(v14 + 2841) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }

      v14[45400] = v19 != 0;
      v14[45401] = 0;
      *(v14 + 5676) = 2;
      *(v14 + 5677) = v19;
      *(v14 + 5678) = 0;
      *(v14 + 5679) = 0;
      *(v14 + 5680) = 0;
      *(v14 + 5681) = -1;
      *(v14 + 5682) = 0;
      *(v14 + 5683) = 0;
      v14 += 88;
      *(v18 - 8) = 1;
      ++v17;
      ++v16;
      ++v15;
      ++a3;
      *(v18 - 1) = v20;
      *v18 = v21;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v29 = *MEMORY[0x277D85DE8];
}

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int)a5
{
  v6 = a5;
  v5 = *a3;
  [(MTLDebugRenderCommandEncoder *)self _dispatchThreadsPerTile:&v5 inRegion:a4 withRenderTargetArrayIndex:&v6];
}

- (void)resetTileCondition
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLToolsDevice *)self->super.super.super._device supportsConditionalTileDispatch])
  {
    [-[MTLToolsObject baseObject](self "baseObject")];
  }

  else
  {
    _MTLMessageContextPush_();
    _MTLMessageContextEnd();
  }
}

- (void)_dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int *)a5 withCondition:(int64_t)a6
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (a6 && ![(MTLToolsDevice *)self->super.super.super._device supportsConditionalTileDispatch])
  {
    _MTLMessageContextPush_();
    _MTLMessageContextEnd();
  }

  else
  {
    v14 = *&a3->var0;
    *&v15 = a3->var2;
    [(MTLDebugRenderCommandEncoder *)self _validateDispatchThreadsPerTile:&v14 context:v19];
    _MTLMessageContextEnd();
    v11 = [(MTLToolsObject *)self baseObject];
    if (a4 && a5)
    {
      v12 = *&a3->var0;
      var2 = a3->var2;
      v13 = *&a4->var0.var2;
      v14 = *&a4->var0.var0;
      v15 = v13;
      v16 = *&a4->var1.var1;
      v17 = v12;
      [v11 dispatchThreadsPerTile:&v17 inRegion:&v14 withRenderTargetArrayIndex:*a5 withCondition:a6];
    }

    else
    {
      v14 = *&a3->var0;
      *&v15 = a3->var2;
      [v11 dispatchThreadsPerTile:&v14 withCondition:a6];
    }

    LODWORD(self->_visibilityOffsets) |= 0x80000006;
  }
}

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int)a5 withCondition:(int64_t)a6
{
  v7 = a5;
  v6 = *a3;
  [(MTLDebugRenderCommandEncoder *)self _dispatchThreadsPerTile:&v6 inRegion:a4 withRenderTargetArrayIndex:&v7 withCondition:a6];
}

- (void)_validateDispatchThreadsPerTile:(id *)a3 context:(_MTLMessageContext *)a4
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    if (BYTE2(self->_visibilityOffsets))
    {
      _MTLMessageContextPush_();
    }

    if ([self->_peakPerSampleStorage tileDescriptor] || objc_msgSend(self->_peakPerSampleStorage, "mtl4TileDescriptor"))
    {
      if ([(MTLRenderPipelineState *)[(MTLDebugRenderCommandEncoder *)self renderPipelineState] threadgroupSizeMatchesTileSize])
      {
        var0 = a3->var0;
        if (var0 != [(MTLToolsRenderCommandEncoder *)self tileWidth]|| (var1 = a3->var1, var1 != [(MTLToolsRenderCommandEncoder *)self tileHeight]))
        {
          [MTLDebugRenderCommandEncoder _validateDispatchThreadsPerTile:context:];
        }
      }

      if (![(MTLToolsDevice *)self->super.super.super._device supportsNonSquareTileShaders]&& ([(MTLRenderPipelineState *)[(MTLDebugRenderCommandEncoder *)self renderPipelineState] threadgroupSizeMatchesTileSize]& 1) == 0)
      {
        v9 = a3->var0;
        if (v9 != [(MTLToolsRenderCommandEncoder *)self tileWidth]|| (v10 = a3->var1, v10 != [(MTLToolsRenderCommandEncoder *)self tileHeight]))
        {
          if (a3->var0 != a3->var1)
          {
            v26 = a3->var0;
            v28 = a3->var1;
            v19 = a3->var0;
            v23 = v28;
            _MTLMessageContextPush_();
          }
        }
      }

      v11 = vaddq_s64(vandq_s8(*&a3->var0, vdupq_n_s64(1uLL)), *&a3->var0);
      v12 = a3->var2 * v11.i64[0] * v11.i64[1];
      if (v12 > [(MTLRenderPipelineState *)[(MTLDebugRenderCommandEncoder *)self renderPipelineState:v19] maxTotalThreadsPerThreadgroup])
      {
        v32 = *&a3->var0;
        var2 = a3->var2;
        v29 = [(MTLRenderPipelineState *)[(MTLDebugRenderCommandEncoder *)self renderPipelineState] maxTotalThreadsPerThreadgroup];
        v20 = v32;
        _MTLMessageContextPush_();
      }

      v33 = *&a3->var0;
      v34 = a3->var2;
      peakPerSampleStorage = self->_peakPerSampleStorage;
      if (peakPerSampleStorage)
      {
        [peakPerSampleStorage requiredThreadsPerTileThreadgroup];
      }

      validateDispatchThreadsPerThreadgroupWithRTPTG();
      v14 = self->_peakPerSampleStorage;
      if (v14 && self->_resolvedRasterSampleCount && ([v14 isImageBlockLayoutInputCompatibleWithOutputOf:?] & 1) == 0)
      {
        _MTLMessageContextPush_();
      }

      v15 = a3->var0;
      if (!(a3->var1 * a3->var0 * a3->var2))
      {
        v20 = *&a3->var0;
        var2 = a3->var2;
        _MTLMessageContextPush_();
        v15 = a3->var0;
      }

      if (v15 > [(MTLToolsRenderCommandEncoder *)self tileWidth:v20])
      {
        v21 = a3->var0;
        v24 = [(MTLToolsRenderCommandEncoder *)self tileWidth];
        _MTLMessageContextPush_();
      }

      v16 = a3->var1;
      if (v16 > [(MTLToolsRenderCommandEncoder *)self tileHeight:v21])
      {
        v22 = a3->var1;
        v25 = [(MTLToolsRenderCommandEncoder *)self tileHeight];
        _MTLMessageContextPush_();
      }

      if (a3->var2 != 1)
      {
        v22 = a3->var2;
        _MTLMessageContextPush_();
      }

      v17 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer:v22] protectionOptions];
      if ([self->_peakPerSampleStorage tileDescriptor])
      {
        device = self->super.super.super._device;
        v30 = [objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "tileDescriptor")];
        v18 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
        [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
        [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
        [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
        validateFunctionArguments(device, @"Tile", v30, v18, &self->_tileBuffers[0].type, &self->_tileTextures[0].type, &self->_tileSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, v17, &self->_threadgroupMemoryArguments[0].type, [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes], 1, 0, a4, self->_colorAttachmentMap);
      }
    }

    else
    {
      _MTLMessageContextPush_();

      _MTLMessageContextEnd();
    }
  }
}

- (void)_dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int *)a5
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v13 = *&a3->var0;
  *&v14 = a3->var2;
  [(MTLDebugRenderCommandEncoder *)self _validateDispatchThreadsPerTile:&v13 context:v18];
  _MTLMessageContextEnd();
  if (a4)
  {
    v9 = [(MTLToolsObject *)self baseObject];
    v10 = *&a3->var0;
    var2 = a3->var2;
    v11 = *&a4->var0.var2;
    v13 = *&a4->var0.var0;
    v14 = v11;
    v15 = *&a4->var1.var1;
    v16 = v10;
    if (a5)
    {
      [v9 dispatchThreadsPerTile:&v16 inRegion:&v13 withRenderTargetArrayIndex:*a5];
    }

    else
    {
      [v9 dispatchThreadsPerTile:&v16 inRegion:&v13];
    }
  }

  else
  {
    v12 = [(MTLToolsObject *)self baseObject];
    v13 = *&a3->var0;
    *&v14 = a3->var2;
    [v12 dispatchThreadsPerTile:&v13];
  }

  LODWORD(self->_visibilityOffsets) |= 0x80000006;
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  memset(&v17, 0, sizeof(v17));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (a5 <= 0x1E)
  {
    p_type = &self->_threadgroupMemoryArguments[a5].type;
    if (p_type->isValid && p_type->hasBeenUsed && (self->_visibilityOffsets & 0x80000000) == 0)
    {
      _MTLMessageContextPush_();
      p_type = &self->_threadgroupMemoryArguments[a5].type;
    }

    validateArg(1, a5, p_type, &v17);
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes]<= a5)
  {
    v11 = a5;
    v14 = [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes];
    _MTLMessageContextPush_();
  }

  if (a4 + a3 > [self->_frontFacingWinding threadgroupMemoryLength])
  {
    v12 = a4 + a3;
    v15 = [self->_frontFacingWinding threadgroupMemoryLength];
    _MTLMessageContextPush_();
  }

  if (a3 % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:v12])
  {
    v13 = a3;
    v16 = [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (a4 % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:v13])
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v10 = &self->_threadgroupMemoryArguments[a5].type;
  if (MTLReportFailureTypeEnabled() && (v10[9] & 1) == 0 && v10[8] == a4 && v10[7] == a3 && v10[6] == -1 && v10[1] == 3 && !v10[2] && !(v10[4] | v10[3] | v10[5]) && !*(v10 + 76))
  {
    [MTLDebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  *v10 = a3 != 0;
  *(v10 + 1) = 0;
  v10[1] = 3;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  v10[6] = -1;
  v10[7] = a3;
  v10[8] = a4;
  *(v10 + 72) = 0;
  *(v10 + 19) = 0;
  *(v10 + 20) = 0;
}

- (void)useResource:(id)a3 usage:(unint64_t)a4
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if ([a3 storageMode] == 3)
  {
    _MTLMessageContextPush_();
  }

  if (a4 >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)validateFunctionTableUseResource:(id)a3 stages:(unint64_t)a4 context:(_MTLMessageContext *)a5 selectorName:(id)a6
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !MTLDebugStageIsRenderStage([a3 stage], a4))
  {
    [MTLDebugRenderCommandEncoder validateFunctionTableUseResource:a3 stages:a6 context:a4 selectorName:?];
  }
}

- (void)useResource:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if ([a3 storageMode] == 3)
  {
    _MTLMessageContextPush_();
  }

  if (a4 >= 8)
  {
    v9 = a4;
    _MTLMessageContextPush_();
  }

  if (a5 >= 0x20)
  {
    v9 = a5;
LABEL_12:
    _MTLMessageContextPush_();
    goto LABEL_9;
  }

  if (!a5)
  {
    goto LABEL_12;
  }

LABEL_9:
  [(MTLDebugRenderCommandEncoder *)self validateFunctionTableUseResource:a3 stages:a5 context:v10 selectorName:@"useResource:usage:stages:", v9];
  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (a5 < 8)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_13:
    _MTLMessageContextEnd();
    std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, a4);
    goto LABEL_14;
  }

  v14 = a5;
  _MTLMessageContextPush_();
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v9 = 0;
  do
  {
    v10 = a3[v9];
    if (!v10)
    {
      v14 = v9;
      _MTLMessageContextPush_();
      v10 = a3[v9];
    }

    if ([v10 storageMode] == 3)
    {
      v14 = v9;
      _MTLMessageContextPush_();
    }

    ++v9;
  }

  while (a4 != v9);
  _MTLMessageContextEnd();
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, a4);
  v11 = 0;
  do
  {
    v12 = [a3[v11] baseObject];
    *(__p[0] + v11) = v12;
    [self->_maxVertexBuffers addObject:a3[v11++] retained:1 purgeable:1];
  }

  while (a4 != v11);
LABEL_14:
  v13 = [(MTLToolsObject *)self baseObject];
  [v13 useResources:__p[0] count:a4 usage:a5];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (a5 >= 8)
  {
    v16 = a5;
    _MTLMessageContextPush_();
  }

  if (a6 >= 0x20)
  {
    v16 = a6;
  }

  else if (a6)
  {
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_18:
    std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, a4);
    goto LABEL_19;
  }

  _MTLMessageContextPush_();
  if (!a4)
  {
    goto LABEL_18;
  }

LABEL_6:
  v11 = 0;
  do
  {
    v12 = a3[v11];
    if (!v12)
    {
      v16 = v11;
      _MTLMessageContextPush_();
      v12 = a3[v11];
    }

    if ([v12 storageMode] == 3)
    {
      v16 = v11;
      _MTLMessageContextPush_();
    }

    ++v11;
  }

  while (a4 != v11);
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, a4);
  v13 = 0;
  do
  {
    -[MTLDebugRenderCommandEncoder validateFunctionTableUseResource:stages:context:selectorName:](self, "validateFunctionTableUseResource:stages:context:selectorName:", a3[v13], a6, v18, [MEMORY[0x277CCACA8] stringWithFormat:@"useResources:count:usage:stages: (index = %lu)", v13]);
    v14 = [a3[v13] baseObject];
    *(__p[0] + v13) = v14;
    [self->_maxVertexBuffers addObject:a3[v13++] retained:1 purgeable:1];
  }

  while (a4 != v13);
LABEL_19:
  _MTLMessageContextEnd();
  v15 = [(MTLToolsObject *)self baseObject];
  [v15 useResources:__p[0] count:a4 usage:a5 stages:a6];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useHeap:(id)a3
{
  if (!a3)
  {
    [MTLDebugRenderCommandEncoder useHeap:];
  }

  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 useHeap:v6];
}

- (void)useHeap:(id)a3 stages:(unint64_t)a4
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if (a4 >= 0x20 || !a4)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (a4)
  {
    v7 = 0;
    do
    {
      if (!a3[v7])
      {
        v11 = v7;
        _MTLMessageContextPush_();
      }

      ++v7;
    }

    while (a4 != v7);
    _MTLMessageContextEnd();
    std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, a4);
    v8 = 0;
    do
    {
      v9 = [a3[v8] baseObject];
      *(__p[0] + v8) = v9;
      [self->_maxVertexBuffers addObject:a3[v8++] retained:1 purgeable:1];
    }

    while (a4 != v8);
  }

  else
  {
    _MTLMessageContextEnd();
    std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, 0);
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 useHeaps:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4 stages:(unint64_t)a5
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (a5 >= 0x20)
  {
    v13 = a5;
  }

  else if (a5)
  {
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_14:
    _MTLMessageContextEnd();
    std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, a4);
    goto LABEL_15;
  }

  _MTLMessageContextPush_();
  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_4:
  v9 = 0;
  do
  {
    if (!a3[v9])
    {
      v13 = v9;
      _MTLMessageContextPush_();
    }

    ++v9;
  }

  while (a4 != v9);
  _MTLMessageContextEnd();
  std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, a4);
  v10 = 0;
  do
  {
    v11 = [a3[v10] baseObject];
    *(__p[0] + v10) = v11;
    [self->_maxVertexBuffers addObject:a3[v10++] retained:1 purgeable:1];
  }

  while (a4 != v10);
LABEL_15:
  v12 = [(MTLToolsObject *)self baseObject];
  [v12 useHeaps:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setViewport:(id *)a3
{
  v17 = 0;
  memset(&v16, 0, sizeof(v16));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  v7 = *&a3->var2;
  v13 = *&a3->var0;
  v14 = v7;
  v15 = *&a3->var4;
  validateMTLViewport(&v13, &v16, v6);
  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x40000) != 0)
  {
    end = self->_viewports.__end_;
    if ((self->_viewports.__cap_ - end) == 48 && !memcmp(end, a3, 0x30uLL))
    {
      _MTLMessageContextPush_();
      visibilityOffsets = self->_visibilityOffsets;
    }
  }

  v10 = visibilityOffsets | 0x40000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x40000;
  if ((visibilityOffsets & 8) == 0)
  {
    _MTLMessageContextPush_();
    v10 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v10 & 0xFFFFFFF7;
  _MTLMessageContextEnd();
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = *&a3->var2;
  v13 = *&a3->var0;
  v14 = v12;
  v15 = *&a3->var4;
  [v11 setViewport:&v13];
  std::vector<MTLViewport>::assign(&self->_viewports.__end_, 1uLL, a3);
}

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  v22 = 0;
  memset(&v21, 0, sizeof(v21));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ((BYTE2(self->_visibilityOffsets) & 1) == 0)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_8:
    _MTLMessageContextPush_();
    goto LABEL_9;
  }

  _MTLMessageContextPush_();
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_3:
  v9 = a4 != 0;
  if (!a4)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v10 = 0;
  v11 = a3;
  do
  {
    v12 = v11[1];
    v18 = *v11;
    v19 = v12;
    v20 = v11[2];
    validateMTLViewport(&v18, &v21, v8);
    ++v10;
    v11 += 3;
  }

  while (v10 < a4);
LABEL_10:
  v13 = [self->_frontFacingWinding rasterizationRateMap] != 0;
  if (a4 - 1 >= [(MTLToolsDevice *)self->super.super.super._device maxViewportCount]>> v13)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x40000) != 0)
  {
    if (a3)
    {
      end = self->_viewports.__end_;
      v16 = self->_viewports.__cap_ - end;
      if (0xAAAAAAAAAAAAAAABLL * (v16 >> 4) == a4 && !memcmp(end, a3, v16))
      {
        _MTLMessageContextPush_();
        visibilityOffsets = self->_visibilityOffsets;
      }
    }
  }

  v17 = visibilityOffsets | 0x40000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x40000;
  if ((visibilityOffsets & 8) == 0)
  {
    _MTLMessageContextPush_();
    v17 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v17 & 0xFFFFFFF7;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (v9)
  {
    std::vector<MTLViewport>::__assign_with_size[abi:ne200100]<MTLViewport const*,MTLViewport const*>(&self->_viewports.__end_, a3, &a3[a4], a4);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    *&v20 = 0;
    *(&v20 + 1) = 0x3FF0000000000000;
    std::vector<MTLViewport>::assign(&self->_viewports.__end_, 1uLL, &v18);
  }
}

- (void)setFrontFacingWinding:(unint64_t)a3
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 2)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x80000) != 0 && self->_cullMode == a3)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v7 = visibilityOffsets | 0x80000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x80000;
  if ((visibilityOffsets & 0x10) == 0)
  {
    _MTLMessageContextPush_();
    v7 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v7 & 0xFFFFFFEF;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
  self->_cullMode = a3;
}

- (void)setCullMode:(unint64_t)a3
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 3)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x100000) != 0 && self->_depthClipMode == a3)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v7 = visibilityOffsets | 0x100000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x100000;
  if ((visibilityOffsets & 0x20) == 0)
  {
    _MTLMessageContextPush_();
    v7 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v7 & 0xFFFFFFDF;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
  self->_depthClipMode = a3;
}

- (void)setDepthClipMode:(unint64_t)a3
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 2)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x200000) != 0 && self->_triangleFillMode == a3)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v7 = visibilityOffsets | 0x200000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x200000;
  if ((visibilityOffsets & 0x40) == 0)
  {
    _MTLMessageContextPush_();
    v7 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v7 & 0xFFFFFFBF;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
  self->_triangleFillMode = a3;
}

- (void)setLineWidth:(float)a3
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (a3 < 1.0 || a3 > 16.0)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x400000) != 0 && LODWORD(self->_depthBiasSlopeScale) == LODWORD(a3))
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v8 = visibilityOffsets | 0x400000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x400000;
  if ((visibilityOffsets & 0x80) == 0)
  {
    _MTLMessageContextPush_();
    v8 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v8 & 0xFFFFFF7F;
  _MTLMessageContextEnd();
  v9 = [(MTLToolsObject *)self baseObject];
  *&v10 = a3;
  [v9 setLineWidth:v10];
  self->_depthBiasSlopeScale = a3;
}

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (MTLReportFailureTypeEnabled())
  {
    visibilityOffsets = self->_visibilityOffsets;
    if ((visibilityOffsets & 0x800000) != 0)
    {
      v11 = LODWORD(self->_depthBiasClamp) == LODWORD(a3) && self->_frontStencilRef == LODWORD(a4);
      if (v11 && self->_backStencilRef == LODWORD(a5))
      {
        _MTLMessageContextPush_();
        visibilityOffsets = self->_visibilityOffsets;
      }
    }

    v13 = visibilityOffsets | 0x800000;
    LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x800000;
    if ((visibilityOffsets & 0x100) == 0)
    {
      _MTLMessageContextPush_();
      v13 = self->_visibilityOffsets;
    }

    LODWORD(self->_visibilityOffsets) = v13 & 0xFFFFFEFF;
  }

  _MTLMessageContextEnd();
  v14 = [(MTLToolsObject *)self baseObject:0];
  *&v15 = a3;
  *&v16 = a4;
  *&v17 = a5;
  [v14 setDepthBias:v15 slopeScale:v16 clamp:v17];
  self->_depthBiasClamp = a3;
  *&self->_frontStencilRef = a4;
  *&self->_backStencilRef = a5;
}

- (void)setScissorRect:(id *)a3
{
  memset(&v19, 0, sizeof(v19));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  validateMTLScissorRect(self, a3, &v19);
  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x1000000) != 0)
  {
    end = self->_scissorRects.__end_;
    if ((self->_scissorRects.__cap_ - end) == 32)
    {
      v8 = *end;
      v9 = *(end + 1);
      v11 = *(end + 2);
      v10 = *(end + 3);
      v12 = v8 == a3->var0 && v9 == a3->var1;
      v13 = v12 && v11 == a3->var2;
      if (v13 && v10 == a3->var3)
      {
        _MTLMessageContextPush_();
        visibilityOffsets = self->_visibilityOffsets;
      }
    }
  }

  v15 = visibilityOffsets | 0x1000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x1000000;
  if ((visibilityOffsets & 0x200) == 0)
  {
    _MTLMessageContextPush_();
    v15 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v15 & 0xFFFFFDFF;
  _MTLMessageContextEnd();
  v16 = [(MTLToolsObject *)self baseObject];
  v17 = *&a3->var2;
  v18[0] = *&a3->var0;
  v18[1] = v17;
  [v16 setScissorRect:v18];
  std::vector<MTLScissorRect>::assign(&self->_scissorRects.__end_, 1uLL, a3);
}

- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLToolsDevice *)self->super.super.super._device supportsDepthBoundsTesting])
  {
    _MTLMessageContextPush_();
  }

  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (a3 < 0.0 || a3 > 1.0)
  {
    _MTLMessageContextPush_();
  }

  if (a4 < 0.0 || a4 > 1.0)
  {
    _MTLMessageContextPush_();
  }

  if (a3 > a4)
  {
    _MTLMessageContextPush_();
  }

  if (self->_lineWidth == a3 && self->_depthBias == a4)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v8 = [(MTLToolsObject *)self baseObject];
  *&v9 = a3;
  *&v10 = a4;
  [v8 setDepthTestMinBound:v9 maxBound:v10];
  self->_lineWidth = a3;
  self->_depthBias = a4;
}

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  memset(&v19, 0, sizeof(v19));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_26:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  if (!a3)
  {
    goto LABEL_26;
  }

LABEL_3:
  v8 = [self->_frontFacingWinding rasterizationRateMap] != 0;
  v9 = [(MTLToolsDevice *)self->super.super.super._device maxViewportCount]>> v8;
  if (!a4 || v9 < a4)
  {
    _MTLMessageContextPush_();
  }

  if (a3)
  {
    v10 = a4 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (!v10 && v9 >= a4)
  {
    v12 = a3;
    v13 = a4;
    do
    {
      validateMTLScissorRect(self, v12++, &v19);
      --v13;
    }

    while (v13);
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x1000000) != 0)
  {
    if (a3)
    {
      end = self->_scissorRects.__end_;
      v16 = self->_scissorRects.__cap_ - end;
      if (v16 >> 5 == a4 && !memcmp(end, a3, v16))
      {
        _MTLMessageContextPush_();
        visibilityOffsets = self->_visibilityOffsets;
      }
    }
  }

  v17 = visibilityOffsets | 0x1000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x1000000;
  if ((visibilityOffsets & 0x200) == 0)
  {
    _MTLMessageContextPush_();
    v17 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v17 & 0xFFFFFDFF;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (v11)
  {
    std::vector<MTLScissorRect>::__assign_with_size[abi:ne200100]<MTLScissorRect const*,MTLScissorRect const*>(&self->_scissorRects.__end_, a3, &a3[a4], a4);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    std::vector<MTLScissorRect>::assign(&self->_scissorRects.__end_, 1uLL, v18);
  }
}

- (void)setTransformFeedbackState:(unint64_t)a3
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (a3 >= 2)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  amplificationValue = self->_amplificationValue;
  v9 = a4;
  if (!amplificationValue)
  {
LABEL_6:
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (amplificationValue == 1)
  {
    v10 = vcnt_s8(a4);
    v10.i16[0] = vaddlv_u8(v10);
    v9 = v10.u32[0];
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  v9 = a4;
  if (!a4)
  {
LABEL_10:
    v11 = self->_amplificationValue;
    [(MTLToolsDevice *)self->super.super.super._device maxVertexAmplificationFactor];
    _MTLMessageContextPush_();
    goto LABEL_11;
  }

LABEL_9:
  if (v9 > [(MTLToolsDevice *)self->super.super.super._device maxVertexAmplificationFactor])
  {
    goto LABEL_10;
  }

LABEL_11:
  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x40000000) != 0 && self->_vertexAmplificationCount == a4)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v13 = visibilityOffsets | 0x40000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x40000000;
  if ((visibilityOffsets & 0x8000) == 0)
  {
    _MTLMessageContextPush_();
    v13 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v13 & 0xFFFF7FFF;
  _MTLMessageContextEnd();
  self->_amplificationValue = a3;
  self->_vertexAmplificationCount = a4;
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (([(MTLDevice *)[(MTLToolsObject *)self device] supportsVertexAmplification]& 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (([(MTLDevice *)[(MTLToolsObject *)self device] supportsVertexAmplificationCount:a3]& 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x40000000) != 0 && self->_updatedFences.__map_.__first_ == a3)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v9 = visibilityOffsets | 0x40000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x40000000;
  if ((visibilityOffsets & 0x8000) == 0)
  {
    _MTLMessageContextPush_();
    v9 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v9 & 0xFFFF7FFF;
  _MTLMessageContextEnd();
  self->_updatedFences.__map_.__first_ = a3;
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setTriangleFrontFillMode:(unint64_t)a3 backFillMode:(unint64_t)a4
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 3)
  {
    _MTLMessageContextPush_();
  }

  if (a4 >= 3)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
  self->_renderPipelineState = a3;
}

- (void)setTriangleFillMode:(unint64_t)a3
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 3)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x2000000) != 0 && self->_renderPipelineState == a3)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v7 = visibilityOffsets | 0x2000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x2000000;
  if ((visibilityOffsets & 0x400) == 0)
  {
    _MTLMessageContextPush_();
    v7 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v7 & 0xFFFFFBFF;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
  self->_renderPipelineState = a3;
}

- (void)setDepthStencilState:(id)a3
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = self->super.super.super._device;
  if (v6 != [a3 device])
  {
    goto LABEL_5;
  }

LABEL_6:
  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x4000000) != 0 && self->_defaultDepthStencilDescriptor == a3)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v8 = visibilityOffsets | 0x4000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x4000000;
  if ((visibilityOffsets & 0x800) == 0)
  {
    _MTLMessageContextPush_();
    v8 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v8 & 0xFFFFF7FF;
  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  self->_defaultDepthStencilDescriptor = a3;
  *&self->_openGLModeEnabled |= 0x80u;
}

- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  parent = self->super.super.super._parent;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (a4 >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v9 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
  _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, a3, v9, a4, HIDWORD(self->_visibilityOffsets));
  [v9 setStoreAction:a3];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setDepthStoreAction:(unint64_t)a3
{
  parent = self->super.super.super._parent;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugRenderCommandEncoder setDepthStoreAction:];
  }

  v6 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
  _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, a3, v6, 8uLL, HIDWORD(self->_visibilityOffsets));
  [v6 setStoreAction:a3];
  v7 = [(MTLToolsObject *)self baseObject];

  [v7 setDepthStoreAction:a3];
}

- (void)setStencilStoreAction:(unint64_t)a3
{
  parent = self->super.super.super._parent;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugRenderCommandEncoder setStencilStoreAction:];
  }

  v6 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
  _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, a3, v6, 9uLL, HIDWORD(self->_visibilityOffsets));
  [v6 setStoreAction:a3];
  v7 = [(MTLToolsObject *)self baseObject];

  [v7 setStencilStoreAction:a3];
}

- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  parent = self->super.super.super._parent;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (a4 >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v9 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
  _MTLDebugValidateDeferredStoreActionOptionsOnDevice(self->super.super.super._device, a3, v9, a4, HIDWORD(self->_visibilityOffsets));
  [v9 setStoreActionOptions:a3];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setDepthStoreActionOptions:(unint64_t)a3
{
  parent = self->super.super.super._parent;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugRenderCommandEncoder setDepthStoreActionOptions:];
  }

  v6 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
  _MTLDebugValidateDeferredStoreActionOptionsOnDevice(self->super.super.super._device, a3, v6, 8, HIDWORD(self->_visibilityOffsets));
  [v6 setStoreActionOptions:a3];
  v7 = [(MTLToolsObject *)self baseObject];

  [v7 setDepthStoreActionOptions:a3];
}

- (void)setStencilStoreActionOptions:(unint64_t)a3
{
  parent = self->super.super.super._parent;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugRenderCommandEncoder setStencilStoreActionOptions:];
  }

  v6 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
  _MTLDebugValidateDeferredStoreActionOptionsOnDevice(self->super.super.super._device, a3, v6, 9, HIDWORD(self->_visibilityOffsets));
  [v6 setStoreActionOptions:a3];
  v7 = [(MTLToolsObject *)self baseObject];

  [v7 setStencilStoreActionOptions:a3];
}

- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4
{
  if (a3 == 2)
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 3)
  {
    _MTLMessageContextPush_();
  }

  if ((a4 & 7) != 0)
  {
    v22 = a4;
    v24 = 8;
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxVisibilityQueryOffset:v22]< a4)
  {
    v23 = a4;
    v25 = [(MTLToolsDevice *)self->super.super.super._device maxVisibilityQueryOffset];
    _MTLMessageContextPush_();
  }

  if (a3)
  {
    begin = self->_viewports.__begin_;
    if (!begin)
    {
      operator new();
    }

    v11 = *(begin + 1);
    v9 = begin + 8;
    v10 = v11;
    if (v11)
    {
      v12 = v9;
      do
      {
        v13 = *(v10 + 7);
        v14 = v13 >= a4;
        v15 = v13 < a4;
        if (v14)
        {
          v12 = v10;
        }

        v10 = *&v10[8 * v15];
      }

      while (v10);
      if (v12 != v9 && *(v12 + 7) <= a4)
      {
        v23 = a4;
        _MTLMessageContextPush_();
      }
    }

    v16 = [self->_frontFacingWinding _descriptorPrivate];
    v17 = *(v16 + 8);
    if (!v17)
    {
      _MTLMessageContextPush_();
      v17 = *(v16 + 8);
    }

    if (a4 + 8 > [v17 length])
    {
      [*(v16 + 8) length];
      _MTLMessageContextPush_();
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    visibilityOffsets = self->_visibilityOffsets;
    if ((visibilityOffsets & 0x10000000) != 0 && self->_visibilityResultOffset == a3 && self->_width == a4)
    {
      _MTLMessageContextPush_();
      visibilityOffsets = self->_visibilityOffsets;
    }

    v20 = visibilityOffsets | 0x10000000;
    LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x10000000;
    if ((visibilityOffsets & 0x2000) == 0)
    {
      _MTLMessageContextPush_();
      v20 = self->_visibilityOffsets;
    }

    LODWORD(self->_visibilityOffsets) = v20 & 0xFFFFDFFF;
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (a3)
  {
    v21 = self->_viewports.__begin_;
    v26 = a4;
    std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int>(v21, v21 + 1, &v26);
  }

  self->_visibilityResultOffset = a3;
  self->_width = a4;
}

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (MTLReportFailureTypeEnabled())
  {
    visibilityOffsets = self->_visibilityOffsets;
    if ((visibilityOffsets & 0x20000000) != 0)
    {
      v13 = LODWORD(self->_blendColorBlue) == LODWORD(a3) && LODWORD(self->_blendColorAlpha) == LODWORD(a4);
      v14 = v13 && LODWORD(self->_tessellationFactorScale) == LODWORD(a5);
      if (v14 && *(&self->_tessellationFactorScale + 1) == LODWORD(a6))
      {
        _MTLMessageContextPush_();
        visibilityOffsets = self->_visibilityOffsets;
      }
    }

    v16 = visibilityOffsets | 0x20000000;
    LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x20000000;
    if ((visibilityOffsets & 0x4000) == 0)
    {
      _MTLMessageContextPush_();
      v16 = self->_visibilityOffsets;
    }

    LODWORD(self->_visibilityOffsets) = v16 & 0xFFFFBFFF;
  }

  _MTLMessageContextEnd();
  v17 = [(MTLToolsObject *)self baseObject:0];
  *&v18 = a3;
  *&v19 = a4;
  *&v20 = a5;
  *&v21 = a6;
  [v17 setBlendColorRed:v18 green:v19 blue:v20 alpha:v21];
  self->_blendColorBlue = a3;
  self->_blendColorAlpha = a4;
  self->_tessellationFactorScale = a5;
  *(&self->_tessellationFactorScale + 1) = a6;
}

- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 atIndex:(unint64_t)a7
{
  if (a7 >= 8)
  {
    [MTLDebugRenderCommandEncoder setColorResolveTexture:slice:depthPlane:level:atIndex:];
  }

  v13 = [*objc_msgSend(self->_frontFacingWinding "_descriptorPrivate")];
  v14 = [v13 _descriptorPrivate];
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  _MTLValidateResolveTextureWithContext([(MTLToolsObject *)self device], a3, a7, [(MTLDebugRenderCommandEncoder *)self width], [(MTLDebugRenderCommandEncoder *)self height], a4, a5, a6, *v14, self->_vertexBuiltinArguments);
  _MTLMessageContextEnd();
  [v13 setResolveTexture:a3];
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 yInvert:(BOOL)a7 atIndex:(unint64_t)a8
{
  v17 = a7;
  if (a8 >= 8)
  {
    [MTLDebugRenderCommandEncoder setColorResolveTexture:slice:depthPlane:level:yInvert:atIndex:];
  }

  v14 = [*objc_msgSend(self->_frontFacingWinding "_descriptorPrivate")];
  v15 = [v14 _descriptorPrivate];
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  _MTLValidateResolveTextureWithContext([(MTLToolsObject *)self device], a3, a8, [(MTLDebugRenderCommandEncoder *)self width], [(MTLDebugRenderCommandEncoder *)self height], a4, a5, a6, *v15, self->_vertexBuiltinArguments);
  _MTLMessageContextEnd();
  [v14 setResolveTexture:a3];
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setDepthResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6
{
  v11 = [*objc_msgSend(self->_frontFacingWinding "_descriptorPrivate")];
  v12 = [v11 _descriptorPrivate];
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  _MTLValidateResolveTextureWithContext([(MTLToolsObject *)self device], a3, 8uLL, [(MTLDebugRenderCommandEncoder *)self width], [(MTLDebugRenderCommandEncoder *)self height], a4, a5, a6, *v12, self->_vertexBuiltinArguments);
  _MTLMessageContextEnd();
  [v11 setResolveTexture:a3];
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setDepthResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 yInvert:(BOOL)a7
{
  v15 = a7;
  v12 = [*objc_msgSend(self->_frontFacingWinding "_descriptorPrivate")];
  v13 = [v12 _descriptorPrivate];
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  _MTLValidateResolveTextureWithContext([(MTLToolsObject *)self device], a3, 8uLL, [(MTLDebugRenderCommandEncoder *)self width], [(MTLDebugRenderCommandEncoder *)self height], a4, a5, a6, *v13, self->_vertexBuiltinArguments);
  _MTLMessageContextEnd();
  [v12 setResolveTexture:a3];
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setStencilResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6
{
  v11 = [*objc_msgSend(self->_frontFacingWinding "_descriptorPrivate")];
  v12 = [v11 _descriptorPrivate];
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  _MTLValidateResolveTextureWithContext([(MTLToolsObject *)self device], a3, 9uLL, [(MTLDebugRenderCommandEncoder *)self width], [(MTLDebugRenderCommandEncoder *)self height], a4, a5, a6, *v12, self->_vertexBuiltinArguments);
  _MTLMessageContextEnd();
  [v11 setResolveTexture:a3];
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setStencilResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 yInvert:(BOOL)a7
{
  v15 = a7;
  v12 = [*objc_msgSend(self->_frontFacingWinding "_descriptorPrivate")];
  v13 = [v12 _descriptorPrivate];
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  _MTLValidateResolveTextureWithContext([(MTLToolsObject *)self device], a3, 9uLL, [(MTLDebugRenderCommandEncoder *)self width], [(MTLDebugRenderCommandEncoder *)self height], a4, a5, a6, *v13, self->_vertexBuiltinArguments);
  _MTLMessageContextEnd();
  [v12 setResolveTexture:a3];
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)_validateLBRT:(_MTLMessageContext *)a3
{
  for (i = 0; i != 8; ++i)
  {
    v5 = [objc_msgSend(objc_msgSend(objc_msgSend(self->_peakPerSampleStorage descriptor];
    if (v5)
    {
      v6 = v5;
      v7 = [self->_frontFacingWinding colorAttachments];
      v8 = *&self->_minBound;
      v9 = i;
      if (v8)
      {
        v9 = [v8 getPhysicalIndexForLogicalIndex:i];
      }

      if (v6 != [objc_msgSend(objc_msgSend(v7 objectAtIndexedSubscript:{v9), "texture"), "pixelFormat"}])
      {
        Name = MTLPixelFormatGetName();
        v11 = MTLPixelFormatGetName();
        _MTLMessageContextPush_();
      }
    }
  }
}

- (void)validateCommonDrawErrors:(unint64_t)a3 instanceCount:(unint64_t)a4 baseInstance:(unint64_t)a5 maxVertexID:(unint64_t)a6
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v11 = a3 - 5;
  if (a3 >= 5 && (v11 > 4 || (self->_vertexBuiltinArguments & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  v12 = [self->_frontFacingWinding rasterizationRateMap];
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && v12)
  {
    _MTLMessageContextPush_();
  }

  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
    if (a4)
    {
      goto LABEL_10;
    }
  }

  else if (a4)
  {
    goto LABEL_10;
  }

  v28 = 0;
  _MTLMessageContextPush_();
LABEL_10:
  peakPerSampleStorage = self->_peakPerSampleStorage;
  if (peakPerSampleStorage)
  {
    if (![self->_peakPerSampleStorage mtl4Descriptor] && !objc_msgSend(peakPerSampleStorage, "mtl4MeshDescriptor") && !objc_msgSend(peakPerSampleStorage, "mtl4TileDescriptor"))
    {
      if (![self->_peakPerSampleStorage descriptor])
      {
        _MTLMessageContextPush_();
      }

      if ([objc_msgSend(self->_peakPerSampleStorage descriptor] == 1)
      {
        [(MTLDebugRenderCommandEncoder *)self _validateLBRT:&v31];
      }
    }
  }

  else
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v14 = self->_peakPerSampleStorage;
  if ([v14 mtl4Descriptor] || objc_msgSend(v14, "mtl4MeshDescriptor") || objc_msgSend(v14, "mtl4TileDescriptor"))
  {
    goto LABEL_62;
  }

  v15 = [self->_peakPerSampleStorage descriptor];
  v16 = [self->_peakPerSampleStorage attachmentWriteMask];
  self->_objectThreadsPerTG.width |= (([(MTLDepthStencilDescriptor *)self->_defaultDepthStencilDescriptor attachmentWriteMask]<< 32) | 0xFFFFFFFFLL) & v16;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v17 = [v15 inputPrimitiveTopology];
  if (v17 <= 1)
  {
    if (!v17)
    {
      goto LABEL_32;
    }

    if (v17 == 1)
    {
      if (a3)
      {
        goto LABEL_65;
      }

      goto LABEL_32;
    }

LABEL_66:
    abort();
  }

  if (v17 != 2)
  {
    if (v17 == 3)
    {
      if (v11 < 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_65;
      }

      goto LABEL_32;
    }

    goto LABEL_66;
  }

  if (a3 - 3 < 0xFFFFFFFFFFFFFFFELL)
  {
LABEL_65:
    _MTLMessageContextPush_();
  }

LABEL_32:
  v18 = self->_peakPerSampleStorage;
  v19 = a5 + a4;
  if (*(v18 + 40) < a6)
  {
    v28 = a6;
    _MTLMessageContextPush_();
  }

  if (*(v18 + 48) < v19)
  {
    v28 = v19;
    _MTLMessageContextPush_();
  }

  if ((self->_openGLModeEnabled & 3) != 0)
  {
    v20 = self->_peakPerSampleStorage;
    v30 = [(MTLToolsObject *)self device];
    if (*(v20 + 152))
    {
      v21 = 0;
      v22 = v20;
      do
      {
        v23 = *(v22 + 160);
        p_type = &self->_vertexBuffers[v23].type;
        if (*p_type != 1 || p_type[1])
        {
          v28 = MTLArgumentTypeToString(0);
          v29 = v23;
          _MTLMessageContextPush_();
          v25 = *p_type;
          *(p_type + 1) = 1;
          if ((v25 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          *(p_type + 1) = 1;
        }

        if (!p_type[1])
        {
          v26 = *(v22 + 168);
          if (v26 == -1)
          {
            goto LABEL_50;
          }

          if (v26)
          {
            if (p_type[6] != -1)
            {
              v28 = p_type[6];
              v29 = *(v22 + 160);
              _MTLMessageContextPush_();
              v26 = *(v22 + 168);
              if (v26 == -1)
              {
LABEL_50:
                v26 = p_type[6];
                if (v26 == -1)
                {
                  v28 = *(v22 + 160);
                  _MTLMessageContextPush_();
                  v26 = *(v22 + 168);
                  if (v26 == -1)
                  {
                    v26 = p_type[6];
                  }
                }
              }
            }

            if (([(MTLDevice *)v30 supportsUnalignedVertexFetch:v28]& 1) == 0 && v26 + 1 >= 2 && (v26 & 3) != 0)
            {
              v28 = v26;
              v29 = *(v22 + 160);
              _MTLMessageContextPush_();
            }
          }
        }

LABEL_44:
        ++v21;
        v22 += 16;
      }

      while (*(v20 + 152) > v21);
    }
  }

  [self->_peakPerSampleStorage validationReflection];
  [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
  [(MTLToolsDevice *)self->super.super.super._device maxVertexTextures];
  [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
  if ([self->_peakPerSampleStorage isMeshShaderPipeline])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
LABEL_62:
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:3, v28];
}

- (void)validateCommonDrawErrors:(unint64_t)a3
{
  v3 = a3;
  v85[2] = *MEMORY[0x277D85DE8];
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v5 = [self->_peakPerSampleStorage descriptor];
  v6 = [self->_peakPerSampleStorage mtl4Descriptor];
  v75 = [self->_peakPerSampleStorage mtl4MeshDescriptor];
  v7 = self->_scissorRects.__cap_ - self->_scissorRects.__end_;
  if (v7 != 32 && 0xAAAAAAAAAAAAAAABLL * ((self->_viewports.__cap_ - self->_viewports.__end_) >> 4) != v7 >> 5)
  {
    v58 = v7 >> 5;
    v60 = 0xAAAAAAAAAAAAAAABLL * ((self->_viewports.__cap_ - self->_viewports.__end_) >> 4);
    _MTLMessageContextPush_();
  }

  peakPerSampleStorage = self->_peakPerSampleStorage;
  if (![peakPerSampleStorage mtl4Descriptor] && !objc_msgSend(peakPerSampleStorage, "mtl4MeshDescriptor") && !objc_msgSend(peakPerSampleStorage, "mtl4TileDescriptor") && self->_openGLModeEnabled)
  {
    [(MTLDebugRenderCommandEncoder *)self updatePipelineData];
    v10 = self->_peakPerSampleStorage;
    if (v10 && self->_resolvedRasterSampleCount && ([v10 isImageBlockLayoutInputCompatibleWithOutputOf:?] & 1) == 0)
    {
      _MTLMessageContextPush_();
      if (!v5)
      {
        goto LABEL_17;
      }
    }

    else if (!v5)
    {
      goto LABEL_17;
    }

    if ([objc_msgSend(v5 "vertexFunction")] && !objc_msgSend(self->_frontFacingWinding, "renderTargetArrayLength"))
    {
      _MTLMessageContextPush_();
    }
  }

LABEL_17:
  v80 = [(MTLDepthStencilDescriptor *)self->_defaultDepthStencilDescriptor descriptor];
  v81 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] protectionOptions];
  v11 = self->_peakPerSampleStorage;
  if ([v11 mtl4Descriptor] || objc_msgSend(v11, "mtl4MeshDescriptor") || objc_msgSend(v11, "mtl4TileDescriptor"))
  {
    if ((v3 & 1) != 0 && (self->_openGLModeEnabled & 0xE) != 0)
    {
      v84 = 0uLL;
      memset(v85, 0, 15);
      v12 = self->_peakPerSampleStorage;
      if ([(MTLToolsDevice *)self->super.super.super._device supportsUnalignedVertexFetch])
      {
        v13 = *(v12 + 152);
        if (v13)
        {
          v14 = (v12 + 160);
          do
          {
            v15 = *v14;
            v14 += 2;
            *(&v85[-2] + v15) = 1;
            --v13;
          }

          while (v13);
        }
      }

      v16 = _MTL4DebugFunctionDescriptorName([v6 vertexFunctionDescriptor]);
      device = self->super.super.super._device;
      v68 = v16;
      v17 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
      [(MTLToolsDevice *)self->super.super.super._device maxVertexTextures];
      [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
      validateFunctionArguments(device, @"Vertex", v68, v17, &self->_vertexBuffers[0].type, &self->_vertexTextures[0].type, &self->_vertexSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, v81, &self->_threadgroupMemoryArguments[0].type, [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes], 1, &v84, v82, self->_colorAttachmentMap);
    }

    if ((v3 & 2) != 0 && (self->_openGLModeEnabled & 0x70) != 0)
    {
      if (v6)
      {
        v18 = v6;
      }

      else
      {
        v18 = v75;
      }

      v69 = _MTL4DebugFunctionDescriptorName([v18 fragmentFunctionDescriptor]);
      v65 = self->super.super.super._device;
      v62 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
      [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
      [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
      [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
      validateFunctionArguments(v65, @"Fragment", v69, v62, &self->_fragmentBuffers[0].type, &self->_fragmentTextures[0].type, &self->_fragmentSamplers[0].type, [self->_frontFacingWinding colorAttachments], objc_msgSend(objc_msgSend(self->_peakPerSampleStorage, "descriptor"), "colorAttachments"), objc_msgSend(self->_frontFacingWinding, "renderTargetArrayLength"), v80, self->_commandBuffer, v81, &self->_threadgroupMemoryArguments[0].type, -[MTLToolsDevice maxComputeLocalMemorySizes](self->super.super.super._device, "maxComputeLocalMemorySizes"), 1, 0, v82, self->_colorAttachmentMap);
    }

    if ((v3 & 8) != 0 && (*(&self->_openGLModeEnabled + 1) & 7) != 0)
    {
      v70 = _MTL4DebugFunctionDescriptorName([v75 objectFunctionDescriptor]);
      v66 = self->super.super.super._device;
      v63 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
      [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
      [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
      [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
      validateFunctionArguments(v66, @"Object", v70, v63, &self->_objectBuffers[0].type, &self->_objectTextures[0].type, &self->_objectSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, v81, &self->_objectThreadgroupMemoryLengths[0].type, [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes], 0, 0, v82, self->_colorAttachmentMap);
    }

    if ((v3 & 0x10) != 0)
    {
      if ((*(&self->_openGLModeEnabled + 1) & 0x70) != 0)
      {
        v19 = _MTL4DebugFunctionDescriptorName([v75 meshFunctionDescriptor]);
        v20 = self->super.super.super._device;
        v21 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
        validateFunctionArguments(v20, @"Mesh", v19, v21, &self->_meshBuffers[0].type, &self->_meshTextures[0].type, &self->_meshSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, v81, 0, 0, 0, 0, v82, self->_colorAttachmentMap);
      }

LABEL_39:
      if (([self->_peakPerSampleStorage isMeshShaderPipeline] & 1) == 0)
      {
        _MTLMessageContextPush_();
      }
    }
  }

  else
  {
    v74 = v3;
    if ((v3 & 1) != 0 && (self->_openGLModeEnabled & 0xE) != 0)
    {
      v84 = 0uLL;
      memset(v85, 0, 15);
      v44 = self->_peakPerSampleStorage;
      if ([(MTLToolsDevice *)self->super.super.super._device supportsUnalignedVertexFetch])
      {
        v45 = *(v44 + 152);
        if (v45)
        {
          v46 = (v44 + 160);
          do
          {
            v47 = *v46;
            v46 += 2;
            *(&v85[-2] + v47) = 1;
            --v45;
          }

          while (v45);
        }
      }

      v76 = self->super.super.super._device;
      v71 = [objc_msgSend(v5 "vertexFunction")];
      v48 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
      [(MTLToolsDevice *)self->super.super.super._device maxVertexTextures];
      [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
      validateFunctionArguments(v76, @"Vertex", v71, v48, &self->_vertexBuffers[0].type, &self->_vertexTextures[0].type, &self->_vertexSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, v81, &self->_threadgroupMemoryArguments[0].type, [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes], 1, &v84, v82, self->_colorAttachmentMap);
      v3 = v74;
    }

    if ((v3 & 2) != 0 && (self->_openGLModeEnabled & 0x70) != 0)
    {
      v77 = self->super.super.super._device;
      v49 = [v5 fragmentFunction];
      if (!v49)
      {
        v49 = [objc_msgSend(self->_peakPerSampleStorage "meshDescriptor")];
      }

      v72 = [v49 name];
      v67 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
      [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
      [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
      [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
      validateFunctionArguments(v77, @"Fragment", v72, v67, &self->_fragmentBuffers[0].type, &self->_fragmentTextures[0].type, &self->_fragmentSamplers[0].type, [self->_frontFacingWinding colorAttachments], objc_msgSend(objc_msgSend(self->_peakPerSampleStorage, "descriptor"), "colorAttachments"), objc_msgSend(self->_frontFacingWinding, "renderTargetArrayLength"), v80, self->_commandBuffer, v81, &self->_threadgroupMemoryArguments[0].type, -[MTLToolsDevice maxComputeLocalMemorySizes](self->super.super.super._device, "maxComputeLocalMemorySizes"), 1, 0, v82, self->_colorAttachmentMap);
      v3 = v74;
    }

    v50 = &OBJC_IVAR___MTLGPUDebugComputePipelineState__threadgroupArgumentOffset;
    if ((v3 & 8) != 0)
    {
      if ((*(&self->_openGLModeEnabled + 1) & 7) != 0)
      {
        v78 = self->super.super.super._device;
        v73 = [objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "meshDescriptor")];
        v51 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
        v50 = &OBJC_IVAR___MTLGPUDebugComputePipelineState__threadgroupArgumentOffset;
        validateFunctionArguments(v78, @"Object", v73, v51, &self->_objectBuffers[0].type, &self->_objectTextures[0].type, &self->_objectSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, v81, &self->_objectThreadgroupMemoryLengths[0].type, [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes], 0, 0, v82, self->_colorAttachmentMap);
      }

      v52 = self + v50[297];
      [self->_peakPerSampleStorage _validateThreadgroupSize:v52 stage:8 context:v82];
      v84 = *v52;
      v85[0] = *(v52 + 2);
      v53 = self->_peakPerSampleStorage;
      if (v53)
      {
        [v53 requiredThreadsPerObjectThreadgroup];
      }

      v3 = v74;
      validateDispatchThreadsPerThreadgroupWithRTPTG();
    }

    if ((v3 & 0x10) != 0)
    {
      if ((*(&self->_openGLModeEnabled + 1) & 0x70) != 0)
      {
        v79 = self->super.super.super._device;
        v54 = [objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "meshDescriptor")];
        v55 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
        validateFunctionArguments(v79, @"Mesh", v54, v55, &self->_meshBuffers[0].type, &self->_meshTextures[0].type, &self->_meshSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, v81, 0, 0, 0, 0, v82, self->_colorAttachmentMap);
      }

      [self->_peakPerSampleStorage _validateThreadgroupSize:&self->_meshThreadsPerTG.height stage:16 context:v82];
      v56 = self + v50[297];
      v84 = *v56;
      v85[0] = *(v56 + 2);
      v57 = self->_peakPerSampleStorage;
      if (v57)
      {
        [v57 requiredThreadsPerObjectThreadgroup];
      }

      validateDispatchThreadsPerThreadgroupWithRTPTG();
      goto LABEL_39;
    }
  }

  v22 = self->_peakPerSampleStorage;
  if (![v22 mtl4Descriptor] && !objc_msgSend(v22, "mtl4MeshDescriptor") && !objc_msgSend(v22, "mtl4TileDescriptor"))
  {
    v23 = [objc_msgSend(self->_peakPerSampleStorage "descriptor")];
    v24 = [self->_peakPerSampleStorage meshDescriptor];
    if (v24)
    {
      v23 = [v24 maxVertexAmplificationCount];
    }

    first = self->_updatedFences.__map_.__first_;
    if (!first || v23 && v23 < first)
    {
      v59 = self->_updatedFences.__map_.__first_;
      v61 = v23;
      _MTLMessageContextPush_();
    }
  }

  frontFacingWinding = self->_frontFacingWinding;
  v27 = [(MTLDepthStencilDescriptor *)self->_defaultDepthStencilDescriptor descriptor:v59];
  if (v27)
  {
    v28 = v27;
    if ([v27 depthCompareFunction] != 7 && objc_msgSend(v28, "depthCompareFunction") && !objc_msgSend(objc_msgSend(frontFacingWinding, "depthAttachment"), "texture"))
    {
      _MTLMessageContextPush_();
    }

    if ([v28 isDepthWriteEnabled] && !objc_msgSend(objc_msgSend(frontFacingWinding, "depthAttachment"), "texture"))
    {
      _MTLMessageContextPush_();
    }

    if (usesStencilTexture([v28 frontFaceStencil]) && !objc_msgSend(objc_msgSend(frontFacingWinding, "stencilAttachment"), "texture"))
    {
      _MTLMessageContextPush_();
    }

    if (usesStencilTexture([v28 backFaceStencil]) && !objc_msgSend(objc_msgSend(frontFacingWinding, "stencilAttachment"), "texture"))
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  LODWORD(self->_visibilityOffsets) = self->_visibilityOffsets & 0x7FFF0001 | 0xFFFE;
  if (self->_openGLModeEnabled < 0)
  {
    v29 = [self->_frontFacingWinding renderTargetArrayLength];
    v30 = [objc_msgSend(self->_peakPerSampleStorage "descriptor")];
    if (!v30)
    {
      v30 = [objc_msgSend(self->_peakPerSampleStorage "meshDescriptor")];
    }

    for (i = 0; i != 8; ++i)
    {
      v32 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
      if (v32)
      {
        v33 = v32;
        if ([v32 texture])
        {
          if ([v33 storeAction] == 1 && objc_msgSend(objc_msgSend(v30, "objectAtIndexedSubscript:", i), "writeMask"))
          {
            v34 = -[MTLDebugRenderTargetAttachmentInfo initWithDesc:renderTargetArrayLength:]([MTLDebugRenderTargetAttachmentInfo alloc], "initWithDesc:renderTargetArrayLength:", [v33 _descriptorPrivate], v29);
            [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:v34];
          }
        }
      }
    }

    v35 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
    v36 = v35;
    if (v35 && [v35 texture])
    {
      v37 = [v36 storeAction] != 1 || v80 == 0;
      if (!v37 && [v80 isDepthWriteEnabled])
      {
        v38 = -[MTLDebugRenderTargetAttachmentInfo initWithDesc:renderTargetArrayLength:]([MTLDebugRenderTargetAttachmentInfo alloc], "initWithDesc:renderTargetArrayLength:", [v36 _descriptorPrivate], v29);
        [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:v38];
      }
    }

    v39 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
    if (v39)
    {
      v40 = v39;
      if ([v39 texture])
      {
        if ([v40 storeAction] == 1)
        {
          v41 = [v40 texture];
          if (v41 != [v36 texture] && v80 && (writesStencilTexture(objc_msgSend(v80, "backFaceStencil")) || writesStencilTexture(objc_msgSend(v80, "frontFaceStencil"))))
          {
            v42 = -[MTLDebugRenderTargetAttachmentInfo initWithDesc:renderTargetArrayLength:]([MTLDebugRenderTargetAttachmentInfo alloc], "initWithDesc:renderTargetArrayLength:", [v40 _descriptorPrivate], v29);
            [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:v42];
          }
        }
      }
    }

    [self->_maxVertexBuffers addActiveRenderTargets:self->_commandBuffer];
  }

  *&self->_openGLModeEnabled = 0;
  v43 = *MEMORY[0x277D85DE8];
}

- (void)_validateAllFunctionArguments:(_MTLMessageContext *)a3
{
  v5 = 0;
  p_type = &self->_vertexBuffers[0].type;
  do
  {
    validateArg(0, v5++, p_type, a3);
    p_type += 11;
  }

  while (v5 != 36);
  v7 = 0;
  v8 = &self->_vertexTextures[0].type;
  do
  {
    validateArg(2, v7++, v8, a3);
    v8 += 11;
  }

  while (v7 != 128);
  v9 = 0;
  v10 = &self->_vertexSamplers[0].type;
  do
  {
    validateArg(3, v9++, v10, a3);
    v10 += 11;
  }

  while (v9 != 16);
  v11 = 0;
  v12 = &self->_fragmentBuffers[0].type;
  do
  {
    validateArg(0, v11++, v12, a3);
    v12 += 11;
  }

  while (v11 != 31);
  v13 = 0;
  v14 = &self->_fragmentTextures[0].type;
  do
  {
    validateArg(2, v13++, v14, a3);
    v14 += 11;
  }

  while (v13 != 128);
  v15 = 0;
  v16 = &self->_fragmentSamplers[0].type;
  do
  {
    validateArg(3, v15++, v16, a3);
    v16 += 11;
  }

  while (v15 != 16);
  v17 = 0;
  v18 = &self->_threadgroupMemoryArguments[0].type;
  do
  {
    validateArg(1, v17++, v18, a3);
    v18 += 11;
  }

  while (v17 != 31);
  v19 = 0;
  v20 = &self->_objectBuffers[0].type;
  do
  {
    validateArg(0, v19++, v20, a3);
    v20 += 11;
  }

  while (v19 != 31);
  v21 = 0;
  v22 = &self->_objectTextures[0].type;
  do
  {
    validateArg(2, v21++, v22, a3);
    v22 += 11;
  }

  while (v21 != 128);
  v23 = 0;
  v24 = &self->_objectSamplers[0].type;
  do
  {
    validateArg(3, v23++, v24, a3);
    v24 += 11;
  }

  while (v23 != 16);
  v25 = 0;
  v26 = &self->_objectThreadgroupMemoryLengths[0].type;
  do
  {
    validateArg(1, v25++, v26, a3);
    v26 += 11;
  }

  while (v25 != 31);
  v27 = 0;
  v28 = &self->_meshBuffers[0].type;
  do
  {
    validateArg(0, v27++, v28, a3);
    v28 += 11;
  }

  while (v27 != 31);
  v29 = 0;
  v30 = &self->_meshTextures[0].type;
  do
  {
    validateArg(2, v29++, v30, a3);
    v30 += 11;
  }

  while (v29 != 128);
  v31 = 0;
  v32 = &self->_meshSamplers[0].type;
  do
  {
    validateArg(3, v31++, v32, a3);
    v32 += 11;
  }

  while (v31 != 16);
}

- (void)validateDrawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 function:(const char *)a7
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    if (a5 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a5;
    }

    [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:a3 instanceCount:a6 baseInstance:0 maxVertexID:a4 + v12 - 1];
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if ([objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "descriptor")])
    {
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
  }
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6
{
  [(MTLDebugRenderCommandEncoder *)self validateDrawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6 function:"[MTLDebugRenderCommandEncoder drawPrimitives:vertexStart:vertexCount:instanceCount:]"];
  v11 = [(MTLToolsObject *)self baseObject];

  [v11 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  [(MTLDebugRenderCommandEncoder *)self validateDrawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:1 function:"[MTLDebugRenderCommandEncoder drawPrimitives:vertexStart:vertexCount:]"];
  v9 = [(MTLToolsObject *)self baseObject];

  [v9 drawPrimitives:a3 vertexStart:a4 vertexCount:a5];
}

- (void)validateDrawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 function:(const char *)a9
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    _MTLDebugValidateIndexBufferWithContext(self->super.super.super._device, a5, a6, "indexBuffer", a7, 1, a4, &v18);
    if (a5)
    {
      if (a5 == 1)
      {
        v16 = 32;
      }

      else
      {
        _MTLMessageContextPush_();
        v16 = 0;
      }
    }

    else
    {
      v16 = 16;
    }

    v17 = -1 << v16;
    _MTLMessageContextEnd();
    [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:a3 instanceCount:a8 baseInstance:0 maxVertexID:~v17];
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if ([objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "descriptor")])
    {
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
  }
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  [MTLDebugRenderCommandEncoder validateDrawIndexedPrimitives:"validateDrawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:instanceCount:function:" indexCount:"[MTLDebugRenderCommandEncoder drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:instanceCount:]" indexType:? indexBuffer:? indexBufferOffset:? instanceCount:? function:?];
  [self->_maxVertexBuffers addObject:a6 retained:1 purgeable:1];
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a6 baseObject];

  [v15 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:v16 indexBufferOffset:a7 instanceCount:a8];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7
{
  [(MTLDebugRenderCommandEncoder *)self validateDrawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferOffset:a7 instanceCount:1 function:"[MTLDebugRenderCommandEncoder drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:]"];
  [self->_maxVertexBuffers addObject:a6 retained:1 purgeable:1];
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a6 baseObject];

  [v13 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:v14 indexBufferOffset:a7];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
    if (a5 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a5;
    }

    [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:a3 instanceCount:a6 baseInstance:a7 maxVertexID:a4 + v13 - 1];
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if ([objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "descriptor")])
    {
      v14 = "[MTLDebugRenderCommandEncoder drawPrimitives:vertexStart:vertexCount:instanceCount:baseInstance:]";
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    _MTLDebugValidateIndexBufferWithContext(self->super.super.super._device, a5, a6, "indexBuffer", a7, 1, a4, &v20);
    if (a5)
    {
      if (a5 == 1)
      {
        v17 = 32;
      }

      else
      {
        _MTLMessageContextPush_();
        v17 = 0;
      }
    }

    else
    {
      v17 = 16;
    }

    v18 = -1 << v17;
    _MTLMessageContextEnd();
    [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:a3 instanceCount:a8 baseInstance:a10 maxVertexID:~v18];
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if ([objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "descriptor")])
    {
      v19 = "[MTLDebugRenderCommandEncoder drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:instanceCount:baseVertex:baseInstance:]";
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
  }

  [self->_maxVertexBuffers addObject:a6 retained:1 purgeable:{1, v19}];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    validateIndirectBuffer(self->super.super.super._device, a4, a5, 16, "sizeof(MTLDrawPrimitivesIndirectArguments)", &v10);
    _MTLMessageContextEnd();
    [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:a3 instanceCount:1 baseInstance:0 maxVertexID:1];
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if ([objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "descriptor")])
    {
      v9 = "[MTLDebugRenderCommandEncoder drawPrimitives:indirectBuffer:indirectBufferOffset:]";
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
  }

  [self->_maxVertexBuffers addObject:a4 retained:1 purgeable:{1, v9}];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    validateIndirectBuffer(self->super.super.super._device, a7, a8, 20, "sizeof(MTLDrawIndexedPrimitivesIndirectArguments)", &v18);
    _MTLDebugValidateIndexBufferWithContext(self->super.super.super._device, a4, a5, "indexBuffer", a6, 0, 0, &v18);
    if (a4)
    {
      if (a4 == 1)
      {
        v15 = 32;
      }

      else
      {
        _MTLMessageContextPush_();
        v15 = 0;
      }
    }

    else
    {
      v15 = 16;
    }

    v16 = -1 << v15;
    _MTLMessageContextEnd();
    [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:a3 instanceCount:1 baseInstance:0 maxVertexID:~v16];
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if ([objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "descriptor")])
    {
      v17 = "[MTLDebugRenderCommandEncoder drawIndexedPrimitives:indexType:indexBuffer:indexBufferOffset:indirectBuffer:indirectBufferOffset:]";
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
  }

  [self->_maxVertexBuffers addObject:a5 retained:1 purgeable:{1, v17}];
  [self->_maxVertexBuffers addObject:a7 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setObjectBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= a5)
  {
    v10 = a5;
    v11 = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeInlineDataSize:v10]< a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeInlineDataSize];
    _MTLMessageContextPush_();
  }

  if (a5 <= 0x1E)
  {
    validateArg(0, a5, &self->_objectBuffers[a5].type, &v12);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  MTLReportFailureTypeEnabled();
  p_type = &self->_objectBuffers[a5].type;
  *p_type = a4 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = 0;
  p_type[3] = 0;
  p_type[4] = a4;
  *(p_type + 5) = xmmword_22E27C260;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x100u;
}

- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v13, 0, sizeof(v13));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]> a5)
  {
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
  _MTLMessageContextPush_();
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    _MTLMessageContextPush_();
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  v10 = *(a3 + 8);
  if (v10 <= a4)
  {
    v12 = *(a3 + 8);
    _MTLMessageContextPush_();
  }

LABEL_14:
  if (a5 <= 0x1E)
  {
    validateArg(0, a5, &self->_objectBuffers[a5].type, &v13);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_objectBuffers[a5].type;
  if (MTLReportFailureTypeEnabled() && a3 && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[5] == a4 && p_type[4] == v10 && p_type[2] == a3 && !(p_type[3] | p_type[1]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = v10 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = v10;
  p_type[5] = a4;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x100u;
}

- (void)setObjectBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
    _MTLMessageContextPush_();
  }

  if (a4 <= 0x1E)
  {
    p_type = &self->_objectBuffers[a4].type;
    validateArg(0, a4, p_type, &v12);
    object = p_type->object;
    if (!object)
    {
LABEL_9:
      _MTLMessageContextPush_();
      goto LABEL_10;
    }

    if ([(baseLevel *)object length]<= a3)
    {
      [(baseLevel *)p_type->object length];
      goto LABEL_9;
    }
  }

LABEL_10:
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v9 = &self->_objectBuffers[a4].type;
  v10 = v9[2];
  v11 = [v10 length];
  if (MTLReportFailureTypeEnabled() && v10 && (v9[9] & 1) == 0 && v9[6] == -1 && v9[5] == a3 && v9[4] == v11 && v9[2] == v10 && !(v9[3] | v9[1]) && *(v9 + 7) == 0 && !*(v9 + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *v9 = v11 != 0;
  *(v9 + 1) = 0;
  v9[1] = 0;
  v9[2] = v10;
  v9[3] = 0;
  v9[4] = v11;
  v9[5] = a3;
  v9[6] = -1;
  v9[7] = 0;
  v9[8] = 0;
  *(v9 + 72) = 0;
  *(v9 + 19) = 0;
  *(v9 + 20) = 0;
  *&self->_openGLModeEnabled |= 0x100u;
}

- (void)setObjectBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = self;
  v36 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v34, 0, sizeof(v34));
  [(MTLToolsObject *)v9 device];
  _MTLMessageContextBegin_();
  if (BYTE2(v9->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)v9->super.super.super._device maxComputeBuffers])
  {
    v27 = location + length;
    v28 = [(MTLToolsDevice *)v9->super.super.super._device maxComputeBuffers];
    _MTLMessageContextPush_();
  }

  v32 = location;
  v33 = length;
  v31 = a4;
  if (!length)
  {
    _MTLMessageContextEnd();
    goto LABEL_50;
  }

  v10 = 0;
  v11 = v9 + 88 * location;
  do
  {
    if (!a3[v10])
    {
      if (!a4[v10])
      {
        goto LABEL_17;
      }

      v27 = v10;
      v28 = a4[v10];
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = v10;
      goto LABEL_16;
    }

    device = v9->super.super.super._device;
    if (device != [a3[v10] device])
    {
      v27 = v10;
      _MTLMessageContextPush_();
    }

    if (a4[v10] >= *(a3[v10] + 8))
    {
      v29 = v10;
      v30 = *(a3[v10] + 8);
      v27 = v10;
      v28 = a4[v10];
LABEL_16:
      _MTLMessageContextPush_();
    }

LABEL_17:
    if (location + v10 <= 0x1E)
    {
      validateArg(0, location + v10, (v11 + 49616), &v34);
    }

    ++v10;
    v11 += 88;
  }

  while (length != v10);
  _MTLMessageContextEnd();
  v13 = &v9->_attachmentInfo[1] + 88 * location;
  v14 = v35;
  do
  {
    if (*a3)
    {
      v15 = *(*a3 + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = v9;
    [v9->_maxVertexBuffers addObject:v27 retained:v28 purgeable:{v29, v30}];
    *v14 = [*a3 baseObject];
    v17 = (v13 + 49616);
    v18 = *a3;
    v19 = *a4;
    if (MTLReportFailureTypeEnabled() && v18 && (*(v13 + 49608) & 1) == 0 && *(v13 + 49584) == -1 && *(v13 + 49576) == v19 && *(v13 + 49568) == v15 && *(v13 + 49552) == v18 && (*(v13 + 49560) | *(v13 + 49544)) == 0 && *(v13 + 49592) == 0 && *(v13 + 49612) == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }

    *(v13 + 49536) = v15 != 0;
    *(v13 + 49537) = 0;
    *(v13 + 49544) = 0;
    *(v13 + 49552) = v18;
    *(v13 + 49560) = 0;
    *(v13 + 49568) = v15;
    *(v13 + 49576) = v19;
    *(v13 + 49584) = -1;
    *(v13 + 49592) = 0;
    *(v13 + 49600) = 0;
    *(v13 + 49608) = 0;
    v13 += 88;
    ++a4;
    ++v14;
    ++a3;
    *(v17 - 1) = 0;
    *v17 = 0;
    --length;
    v9 = v16;
  }

  while (length);
LABEL_50:
  [-[MTLToolsObject baseObject](v9 baseObject];
  *&v9->_openGLModeEnabled |= 0x100u;
  v26 = *MEMORY[0x277D85DE8];
}

- (void)setObjectTexture:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v11, 0, sizeof(v11));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeTextures]<= a4)
  {
    v9 = a4;
    v10 = [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else if (!a3)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 storageMode] == 3)
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

LABEL_10:
  if (a4 <= 0x7F)
  {
    validateArg(2, a4, &self->_objectTextures[a4].type, &v11);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_objectTextures[a4].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 1 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 1;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x200u;
}

- (void)setObjectTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v28 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v26, 0, sizeof(v26));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures])
  {
    v22 = location + length;
    v23 = [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
    _MTLMessageContextPush_();
  }

  v24 = length;
  v25 = location;
  if (length)
  {
    v8 = 0;
    v9 = self + 88 * location;
    do
    {
      if (a3[v8])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        device = self->super.super.super._device;
        if (device != [a3[v8] device])
        {
          v22 = v8;
          _MTLMessageContextPush_();
        }

        length = v24;
        if ([a3[v8] storageMode] == 3)
        {
LABEL_12:
          v22 = v8;
          _MTLMessageContextPush_();
        }
      }

      if (location + v8 <= 0x7F)
      {
        validateArg(2, location + v8, (v9 + 52344), &v26);
      }

      ++v8;
      v9 += 88;
    }

    while (length != v8);
    _MTLMessageContextEnd();
    v11 = &self->_attachmentInfo[1] + 88 * location;
    v12 = v27;
    v13 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{1, v22}];
      *v12 = [*a3 baseObject];
      v14 = v11 + 52344;
      v15 = *a3;
      if (MTLReportFailureTypeEnabled() && (v11[52336] & 1) == 0 && *(v11 + 6539) == -1 && *(v11 + 6534) == 1 && *(v11 + 6535) == v15 && (*(v11 + 6537) | *(v11 + 6536) | *(v11 + 6538)) == 0 && *(v11 + 3270) == 0 && *(v11 + 52340) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
      }

      *(v11 + 26132) = v15 != 0;
      *(v11 + 6534) = 1;
      *(v11 + 6535) = v15;
      *(v11 + 6536) = 0;
      *(v11 + 6537) = 0;
      *(v11 + 6538) = 0;
      *(v11 + 6539) = -1;
      *(v11 + 6540) = 0;
      *(v11 + 6541) = 0;
      v11[52336] = 0;
      v11 += 88;
      ++v12;
      ++a3;
      *(v14 - 1) = 0;
      *v14 = 0;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x200u;
  v21 = *MEMORY[0x277D85DE8];
}

- (void)setObjectSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v9, 0, sizeof(v9));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers]<= a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (a4 <= 0xF)
  {
    validateArg(3, a4, &self->_objectSamplers[a4].type, &v9);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_objectSamplers[a4].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x400u;
}

- (void)setObjectSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v28 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v26, 0, sizeof(v26));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers])
  {
    v23 = location + length;
    v24 = [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
  }

  v25 = length;
  v8 = location;
  if (length)
  {
    v9 = 0;
    v10 = self + 88 * location;
    do
    {
      if (a3[v9])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, v17 = device == [a3[v9] device], length = v25, !v17))
        {
          v23 = v9;
          _MTLMessageContextPush_();
        }
      }

      if (location + v9 <= 0xF)
      {
        validateArg(3, location + v9, (v10 + 63608), &v26);
      }

      ++v9;
      v10 += 88;
    }

    while (length != v9);
    _MTLMessageContextEnd();
    v12 = &self->_attachmentInfo[1] + 88 * location;
    v13 = v27;
    v14 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{0, v23, v24}];
      *v13 = [*a3 baseObject];
      v15 = v12 + 63608;
      v16 = *a3;
      if (MTLReportFailureTypeEnabled() && (v12[63600] & 1) == 0)
      {
        v17 = *(v12 + 7947) == -1 && *(v12 + 7942) == 2;
        if (v17 && *(v12 + 7943) == v16 && (*(v12 + 7945) | *(v12 + 7944) | *(v12 + 7946)) == 0 && *(v12 + 3974) == 0 && *(v12 + 63604) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }

      v12[63528] = v16 != 0;
      v12[63529] = 0;
      *(v12 + 7942) = 2;
      *(v12 + 7943) = v16;
      *(v12 + 7944) = 0;
      *(v12 + 7945) = 0;
      *(v12 + 7946) = 0;
      *(v12 + 7947) = -1;
      *(v12 + 7948) = 0;
      *(v12 + 7949) = 0;
      v12[63600] = 0;
      v12 += 88;
      ++v13;
      ++a3;
      *(v15 - 1) = 0;
      *v15 = 0;
      --v14;
    }

    while (v14);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x400u;
  v22 = *MEMORY[0x277D85DE8];
}

- (void)setObjectSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v17, 0, sizeof(v17));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers]<= a6)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (a6 <= 0xF)
  {
    validateArg(3, a6, &self->_objectSamplers[a6].type, &v17);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  *&v14 = a4;
  *&v15 = a5;
  [v12 setObjectSamplerState:v13 lodMinClamp:a6 lodMaxClamp:v14 atIndex:v15];
  p_type = &self->_objectSamplers[a6].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(a5) && *(p_type + 19) == LODWORD(a4) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = a4;
  *(p_type + 20) = a5;
  *&self->_openGLModeEnabled |= 0x400u;
}

- (void)setObjectSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v38 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v36, 0, sizeof(v36));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers])
  {
    v30 = location + length;
    v31 = [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
  }

  v35 = location;
  v32 = length;
  if (length)
  {
    v10 = 0;
    v11 = self + 88 * location;
    do
    {
      if (a3[v10])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3[v10] device]))
        {
          v30 = v10;
          _MTLMessageContextPush_();
        }
      }

      if (v35 + v10 <= 0xF)
      {
        validateArg(3, v35 + v10, (v11 + 63608), &v36);
      }

      ++v10;
      v11 += 88;
    }

    while (length != v10);
    _MTLMessageContextEnd();
    v13 = length;
    v14 = &self->_attachmentInfo[1] + 88 * v35;
    v15 = v37;
    v16 = a4;
    v17 = a5;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{0, v30, v31}];
      *v15 = [*a3 baseObject];
      v18 = v14 + 63608;
      v19 = *a3;
      v20 = *v16;
      v21 = *v17;
      if (MTLReportFailureTypeEnabled())
      {
        if (*v18 == v21 && *(v14 + 15901) == v20 && v14[63600] != 0 && *(v14 + 7947) == -1 && *(v14 + 7942) == 2 && *(v14 + 7943) == v19 && (*(v14 + 7945) | *(v14 + 7944) | *(v14 + 7946)) == 0 && *(v14 + 3974) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }

      v14[63528] = v19 != 0;
      v14[63529] = 0;
      *(v14 + 7942) = 2;
      *(v14 + 7943) = v19;
      *(v14 + 7944) = 0;
      *(v14 + 7945) = 0;
      *(v14 + 7946) = 0;
      *(v14 + 7947) = -1;
      *(v14 + 7948) = 0;
      *(v14 + 7949) = 0;
      v14 += 88;
      *(v18 - 8) = 1;
      ++v17;
      ++v16;
      ++v15;
      ++a3;
      *(v18 - 1) = v20;
      *v18 = v21;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x400u;
  v29 = *MEMORY[0x277D85DE8];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes]<= a4)
  {
    v8 = a4;
    v10 = [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength:v8]< a3)
  {
    v9 = a3;
    v11 = [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength];
    _MTLMessageContextPush_();
  }

  if (a3 % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:v9])
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (a4 <= 0x1E)
  {
    validateArg(1, a4, &self->_objectThreadgroupMemoryLengths[a4].type, &v12);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_objectThreadgroupMemoryLengths[a4].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && !p_type[8] && p_type[7] == a3 && p_type[6] == -1 && p_type[1] == 3 && !p_type[2] && !(p_type[4] | p_type[3] | p_type[5]) && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 3;
  *(p_type + 1) = 0u;
  *(p_type + 2) = 0u;
  p_type[6] = -1;
  p_type[7] = a3;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x800u;
}

- (void)setMeshBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= a5)
  {
    v10 = a5;
    v11 = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeInlineDataSize:v10]< a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeInlineDataSize];
    _MTLMessageContextPush_();
  }

  if (a5 <= 0x1E)
  {
    validateArg(0, a5, &self->_meshBuffers[a5].type, &v12);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  MTLReportFailureTypeEnabled();
  p_type = &self->_meshBuffers[a5].type;
  *p_type = a4 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = 0;
  p_type[3] = 0;
  p_type[4] = a4;
  *(p_type + 5) = xmmword_22E27C260;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x1000u;
}

- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v13, 0, sizeof(v13));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]> a5)
  {
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
  _MTLMessageContextPush_();
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    _MTLMessageContextPush_();
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  v10 = *(a3 + 8);
  if (v10 <= a4)
  {
    v12 = *(a3 + 8);
    _MTLMessageContextPush_();
  }

LABEL_14:
  if (a5 <= 0x1E)
  {
    validateArg(0, a5, &self->_meshBuffers[a5].type, &v13);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_meshBuffers[a5].type;
  if (MTLReportFailureTypeEnabled() && a3 && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[5] == a4 && p_type[4] == v10 && p_type[2] == a3 && !(p_type[3] | p_type[1]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = v10 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = v10;
  p_type[5] = a4;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x1000u;
}

- (void)setMeshBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
    _MTLMessageContextPush_();
  }

  if (a4 <= 0x1E)
  {
    p_type = &self->_meshBuffers[a4].type;
    validateArg(0, a4, p_type, &v12);
    object = p_type->object;
    if (!object)
    {
LABEL_9:
      _MTLMessageContextPush_();
      goto LABEL_10;
    }

    if ([(baseLevel *)object length]<= a3)
    {
      [(baseLevel *)p_type->object length];
      goto LABEL_9;
    }
  }

LABEL_10:
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v9 = &self->_meshBuffers[a4].type;
  v10 = v9[2];
  v11 = [v10 length];
  if (MTLReportFailureTypeEnabled() && v10 && (v9[9] & 1) == 0 && v9[6] == -1 && v9[5] == a3 && v9[4] == v11 && v9[2] == v10 && !(v9[3] | v9[1]) && *(v9 + 7) == 0 && !*(v9 + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *v9 = v11 != 0;
  *(v9 + 1) = 0;
  v9[1] = 0;
  v9[2] = v10;
  v9[3] = 0;
  v9[4] = v11;
  v9[5] = a3;
  v9[6] = -1;
  v9[7] = 0;
  v9[8] = 0;
  *(v9 + 72) = 0;
  *(v9 + 19) = 0;
  *(v9 + 20) = 0;
  *&self->_openGLModeEnabled |= 0x1000u;
}

- (void)setMeshBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = self;
  v36 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v34, 0, sizeof(v34));
  [(MTLToolsObject *)v9 device];
  _MTLMessageContextBegin_();
  if (BYTE2(v9->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)v9->super.super.super._device maxComputeBuffers])
  {
    v27 = location + length;
    v28 = [(MTLToolsDevice *)v9->super.super.super._device maxComputeBuffers];
    _MTLMessageContextPush_();
  }

  v32 = location;
  v33 = length;
  v31 = a4;
  if (!length)
  {
    _MTLMessageContextEnd();
    goto LABEL_50;
  }

  v10 = 0;
  v11 = v9 + 88 * location;
  do
  {
    if (!a3[v10])
    {
      if (!a4[v10])
      {
        goto LABEL_15;
      }

      v27 = v10;
      v28 = a4[v10];
      goto LABEL_20;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = v10;
      _MTLMessageContextPush_();
    }

    device = v9->super.super.super._device;
    if (device != [a3[v10] device])
    {
      v27 = v10;
      _MTLMessageContextPush_();
    }

    if (a4[v10] >= *(a3[v10] + 8))
    {
      v29 = v10;
      v30 = *(a3[v10] + 8);
      v27 = v10;
      v28 = a4[v10];
LABEL_20:
      _MTLMessageContextPush_();
    }

LABEL_15:
    if (location + v10 <= 0x1E)
    {
      validateArg(0, location + v10, (v11 + 67744), &v34);
    }

    ++v10;
    v11 += 88;
  }

  while (length != v10);
  _MTLMessageContextEnd();
  v13 = &v9->_attachmentInfo[1] + 88 * location;
  v14 = v35;
  do
  {
    if (*a3)
    {
      v15 = *(*a3 + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = v9;
    [v9->_maxVertexBuffers addObject:v27 retained:? purgeable:?];
    *v14 = [*a3 baseObject];
    v17 = (v13 + 67744);
    v18 = *a3;
    v19 = *a4;
    if (MTLReportFailureTypeEnabled() && v18 && (*(v13 + 67736) & 1) == 0 && *(v13 + 67712) == -1 && *(v13 + 67704) == v19 && *(v13 + 67696) == v15 && *(v13 + 67680) == v18 && (*(v13 + 67688) | *(v13 + 67672)) == 0 && *(v13 + 67720) == 0 && *(v13 + 67740) == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }

    *(v13 + 67664) = v15 != 0;
    *(v13 + 67665) = 0;
    *(v13 + 67672) = 0;
    *(v13 + 67680) = v18;
    *(v13 + 67688) = 0;
    *(v13 + 67696) = v15;
    *(v13 + 67704) = v19;
    *(v13 + 67712) = -1;
    *(v13 + 67720) = 0;
    *(v13 + 67728) = 0;
    *(v13 + 67736) = 0;
    v13 += 88;
    ++a4;
    ++v14;
    ++a3;
    *(v17 - 1) = 0;
    *v17 = 0;
    --length;
    v9 = v16;
  }

  while (length);
LABEL_50:
  [-[MTLToolsObject baseObject](v9 baseObject];
  *&v9->_openGLModeEnabled |= 0x1000u;
  v26 = *MEMORY[0x277D85DE8];
}

- (void)setMeshTexture:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v11, 0, sizeof(v11));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeTextures]<= a4)
  {
    v9 = a4;
    v10 = [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else if (!a3)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 storageMode] == 3)
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

LABEL_10:
  if (a4 <= 0x7F)
  {
    validateArg(2, a4, &self->_meshTextures[a4].type, &v11);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_meshTextures[a4].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 1 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 1;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x2000u;
}

- (void)setMeshTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v28 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v26, 0, sizeof(v26));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures])
  {
    v22 = location + length;
    v23 = [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
    _MTLMessageContextPush_();
  }

  v24 = length;
  v25 = location;
  if (length)
  {
    v8 = 0;
    v9 = self + 88 * location;
    do
    {
      if (a3[v8])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        device = self->super.super.super._device;
        if (device != [a3[v8] device])
        {
          v22 = v8;
          _MTLMessageContextPush_();
        }

        length = v24;
        if ([a3[v8] storageMode] == 3)
        {
LABEL_12:
          v22 = v8;
          _MTLMessageContextPush_();
        }
      }

      if (location + v8 <= 0x7F)
      {
        validateArg(2, location + v8, (v9 + 70472), &v26);
      }

      ++v8;
      v9 += 88;
    }

    while (length != v8);
    _MTLMessageContextEnd();
    v11 = &self->_attachmentInfo[1] + 88 * location;
    v12 = v27;
    v13 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{1, v22}];
      *v12 = [*a3 baseObject];
      v14 = v11 + 70472;
      v15 = *a3;
      if (MTLReportFailureTypeEnabled() && (v11[70464] & 1) == 0 && *(v11 + 8805) == -1 && *(v11 + 8800) == 1 && *(v11 + 8801) == v15 && (*(v11 + 8803) | *(v11 + 8802) | *(v11 + 8804)) == 0 && *(v11 + 4403) == 0 && *(v11 + 70468) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
      }

      *(v11 + 35196) = v15 != 0;
      *(v11 + 8800) = 1;
      *(v11 + 8801) = v15;
      *(v11 + 8802) = 0;
      *(v11 + 8803) = 0;
      *(v11 + 8804) = 0;
      *(v11 + 8805) = -1;
      *(v11 + 8806) = 0;
      *(v11 + 8807) = 0;
      v11[70464] = 0;
      v11 += 88;
      ++v12;
      ++a3;
      *(v14 - 1) = 0;
      *v14 = 0;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x2000u;
  v21 = *MEMORY[0x277D85DE8];
}

- (void)setMeshSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v9, 0, sizeof(v9));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers]<= a4)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (a4 <= 0xF)
  {
    validateArg(3, a4, &self->_meshSamplers[a4].type, &v9);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_meshSamplers[a4].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x4000u;
}

- (void)setMeshSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v28 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v26, 0, sizeof(v26));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers])
  {
    v23 = location + length;
    v24 = [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
  }

  v25 = length;
  v8 = location;
  if (length)
  {
    v9 = 0;
    v10 = self + 88 * location;
    do
    {
      if (a3[v9])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, v17 = device == [a3[v9] device], length = v25, !v17))
        {
          v23 = v9;
          _MTLMessageContextPush_();
        }
      }

      if (location + v9 <= 0xF)
      {
        validateArg(3, location + v9, (v10 + 81736), &v26);
      }

      ++v9;
      v10 += 88;
    }

    while (length != v9);
    _MTLMessageContextEnd();
    v12 = &self->_attachmentInfo[1] + 88 * location;
    v13 = v27;
    v14 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{0, v23, v24}];
      *v13 = [*a3 baseObject];
      v15 = v12 + 81736;
      v16 = *a3;
      if (MTLReportFailureTypeEnabled() && (v12[81728] & 1) == 0)
      {
        v17 = *(v12 + 10213) == -1 && *(v12 + 10208) == 2;
        if (v17 && *(v12 + 10209) == v16 && (*(v12 + 10211) | *(v12 + 10210) | *(v12 + 10212)) == 0 && *(v12 + 5107) == 0 && *(v12 + 81732) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }

      v12[81656] = v16 != 0;
      v12[81657] = 0;
      *(v12 + 10208) = 2;
      *(v12 + 10209) = v16;
      *(v12 + 10210) = 0;
      *(v12 + 10211) = 0;
      *(v12 + 10212) = 0;
      *(v12 + 10213) = -1;
      *(v12 + 10214) = 0;
      *(v12 + 10215) = 0;
      v12[81728] = 0;
      v12 += 88;
      ++v13;
      ++a3;
      *(v15 - 1) = 0;
      *v15 = 0;
      --v14;
    }

    while (v14);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x4000u;
  v22 = *MEMORY[0x277D85DE8];
}

- (void)setMeshSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v17, 0, sizeof(v17));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers]<= a6)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3 device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (a6 <= 0xF)
  {
    validateArg(3, a6, &self->_meshSamplers[a6].type, &v17);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  *&v14 = a4;
  *&v15 = a5;
  [v12 setMeshSamplerState:v13 lodMinClamp:a6 lodMaxClamp:v14 atIndex:v15];
  p_type = &self->_meshSamplers[a6].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(a5) && *(p_type + 19) == LODWORD(a4) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == a3 && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  *p_type = a3 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = a3;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = a4;
  *(p_type + 20) = a5;
  *&self->_openGLModeEnabled |= 0x4000u;
}

- (void)setMeshSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v38 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v36, 0, sizeof(v36));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers])
  {
    v30 = location + length;
    v31 = [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
  }

  v35 = location;
  v32 = length;
  if (length)
  {
    v10 = 0;
    v11 = self + 88 * location;
    do
    {
      if (a3[v10])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [a3[v10] device]))
        {
          v30 = v10;
          _MTLMessageContextPush_();
        }
      }

      if (v35 + v10 <= 0xF)
      {
        validateArg(3, v35 + v10, (v11 + 81736), &v36);
      }

      ++v10;
      v11 += 88;
    }

    while (length != v10);
    _MTLMessageContextEnd();
    v13 = length;
    v14 = &self->_attachmentInfo[1] + 88 * v35;
    v15 = v37;
    v16 = a4;
    v17 = a5;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:{0, v30, v31}];
      *v15 = [*a3 baseObject];
      v18 = v14 + 81736;
      v19 = *a3;
      v20 = *v16;
      v21 = *v17;
      if (MTLReportFailureTypeEnabled())
      {
        if (*v18 == v21 && *(v14 + 20433) == v20 && v14[81728] != 0 && *(v14 + 10213) == -1 && *(v14 + 10208) == 2 && *(v14 + 10209) == v19 && (*(v14 + 10211) | *(v14 + 10210) | *(v14 + 10212)) == 0 && *(v14 + 5107) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }

      v14[81656] = v19 != 0;
      v14[81657] = 0;
      *(v14 + 10208) = 2;
      *(v14 + 10209) = v19;
      *(v14 + 10210) = 0;
      *(v14 + 10211) = 0;
      *(v14 + 10212) = 0;
      *(v14 + 10213) = -1;
      *(v14 + 10214) = 0;
      *(v14 + 10215) = 0;
      v14 += 88;
      *(v18 - 8) = 1;
      ++v17;
      ++v16;
      ++v15;
      ++a3;
      *(v18 - 1) = v20;
      *v18 = v21;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x4000u;
  v29 = *MEMORY[0x277D85DE8];
}

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  var2 = a4->var2;
  *&self->_objectThreadsPerTG.height = *&a4->var0;
  self->_meshThreadsPerTG.width = var2;
  v10 = a5->var2;
  *&self->_meshThreadsPerTG.height = *&a5->var0;
  *&self->_allowsNullBufferBinds = v10;
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:26];
  v11 = [(MTLToolsObject *)self baseObject];
  v14 = *a3;
  v13 = *a4;
  v12 = *a5;
  [v11 drawMeshThreadgroups:&v14 threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v12];
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  var2 = a4->var2;
  *&self->_objectThreadsPerTG.height = *&a4->var0;
  self->_meshThreadsPerTG.width = var2;
  v10 = a5->var2;
  *&self->_meshThreadsPerTG.height = *&a5->var0;
  *&self->_allowsNullBufferBinds = v10;
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:26];
  v11 = [(MTLToolsObject *)self baseObject];
  v14 = *a3;
  v13 = *a4;
  v12 = *a5;
  [v11 drawMeshThreads:&v14 threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v12];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6
{
  var2 = a5->var2;
  *&self->_objectThreadsPerTG.height = *&a5->var0;
  self->_meshThreadsPerTG.width = var2;
  v12 = a6->var2;
  *&self->_meshThreadsPerTG.height = *&a6->var0;
  *&self->_allowsNullBufferBinds = v12;
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:26];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  validateIndirectBuffer(self->super.super.super._device, a3, a4, 12, "sizeof(MTLDispatchThreadgroupsIndirectArguments)", v17);
  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a3 baseObject];
  v16 = *a5;
  v15 = *a6;
  [v13 drawMeshThreadgroupsWithIndirectBuffer:v14 indirectBufferOffset:a4 threadsPerObjectThreadgroup:&v16 threadsPerMeshThreadgroup:&v15];
}

- (void)updateFence:(id)a3 afterStages:(unint64_t)a4
{
  if (!a4)
  {
    [MTLDebugRenderCommandEncoder updateFence:afterStages:];
  }

  v7 = a3;
  std::deque<objc_object *>::push_back(&self->_updatedFences.__map_.var0, &v7);
  LODWORD(self->_visibilityOffsets) |= 2u;
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)waitForFence:(id)a3 beforeStages:(unint64_t)a4
{
  if (!a4)
  {
    [MTLDebugRenderCommandEncoder waitForFence:beforeStages:];
  }

  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  storingRenderTargets = self->_storingRenderTargets;
  if (storingRenderTargets)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      if ((*(self->_updatedFences.__map_.var1 + (((self->_updatedFences.__size_ + v8) >> 6) & 0x3FFFFFFFFFFFFF8)))[(self->_updatedFences.__size_ + v8) & 0x1FF] == a3)
      {
        _MTLMessageContextPush_();
        storingRenderTargets = self->_storingRenderTargets;
      }

      v8 = v9;
    }

    while (storingRenderTargets > v9++);
  }

  _MTLMessageContextEnd();
  LODWORD(self->_visibilityOffsets) |= 2u;
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)endEncoding_private
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (self->_commandBuffer)
  {
    [self->_maxVertexBuffers addActiveRenderTargets:?];

    self->_commandBuffer = 0;
  }

  frontFacingWinding = self->_frontFacingWinding;
  if (!frontFacingWinding)
  {
    goto LABEL_46;
  }

  v4 = [frontFacingWinding colorAttachments];
  for (i = 0; i != 10; ++i)
  {
    v6 = [v4 _descriptorAtIndex:i];
    if (!v6)
    {
      continue;
    }

    v7 = v6;
    v8 = [v6 texture];
    if (!v8)
    {
      continue;
    }

    v9 = v8;
    parent = self->super.super.super._parent;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (i > 7)
      {
        v11 = [v7 storeAction];
        if (i == 8)
        {
          if (v11 != 4)
          {
            goto LABEL_15;
          }
        }

        else if (v11 != 4)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if ([v7 storeAction] != 4)
        {
          goto LABEL_15;
        }

        v23 = i;
      }

      _MTLMessageContextPush_();
LABEL_15:
      if ([v9 storageMode] == 3 && objc_msgSend(v7, "storeAction") && objc_msgSend(v7, "storeAction") != 2)
      {
        _MTLMessageContextPush_();
      }

      v12 = MTLReportFailureTypeEnabled();
      if (i <= 7 && v12 && ((HIDWORD(self->_visibilityOffsets) >> i) & 1) != 0)
      {
        -[MTLToolsRetainingContainer validateStoreLoadTransition:atIndex:renderTargetArrayLength:](-[MTLToolsCommandEncoder commandBuffer](self, "commandBuffer"), "validateStoreLoadTransition:atIndex:renderTargetArrayLength:", v7, i, [self->_frontFacingWinding renderTargetArrayLength]);
      }

      v13 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] protectionOptions];
      v14 = [v9 protectionOptions];
      if (([v7 loadAction] == 1 || objc_msgSend(v7, "storeAction") != 4 && objc_msgSend(v7, "storeAction")) && (v14 & ~v13) != 0)
      {
        v25 = [v9 protectionOptions];
        v26 = v13;
        v24 = i;
        _MTLMessageContextPush_();
      }

      if ([v7 storeAction] != 4 && objc_msgSend(v7, "storeAction") && (v13 & ~v14) != 0)
      {
        v25 = [v9 protectionOptions];
        v26 = v13;
        v23 = i;
        _MTLMessageContextPush_();
      }
    }

    if ([v7 loadAction] == 2 && objc_msgSend(v7, "storeAction"))
    {
      LODWORD(self->_visibilityOffsets) |= 2u;
    }
  }

  v15 = [v4 _descriptorAtIndex:8];
  v16 = [v4 _descriptorAtIndex:9];
  if (v15)
  {
    v17 = v16;
    if (v16)
    {
      v18 = self->super.super.super._parent;
      objc_opt_class();
      LOBYTE(v18) = objc_opt_isKindOfClass();
      _MTLValidateDepthStencilStoreStateWithContext([v15 storeAction], objc_msgSend(v17, "storeAction"), *(objc_msgSend(v17, "_descriptorPrivate") + 104), v18 & 1);
    }
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x10000) != 0)
  {
    _MTLMessageContextPush_();
    if ((self->_visibilityOffsets & 2) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if ((visibilityOffsets & 2) != 0)
    {
      goto LABEL_43;
    }

LABEL_55:
    _MTLMessageContextPush_();
  }

LABEL_43:
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    [(MTLDebugRenderCommandEncoder *)self _validateAllFunctionArguments:v27];
  }

LABEL_46:
  _MTLMessageContextEnd();
  [(MTLDebugRenderCommandEncoder *)self _setDefaults];
  LODWORD(self->_visibilityOffsets) |= 0x10001u;
  peakPerSampleStorage = self->_peakPerSampleStorage;
  if (![peakPerSampleStorage mtl4Descriptor] && !objc_msgSend(peakPerSampleStorage, "mtl4MeshDescriptor") && !objc_msgSend(peakPerSampleStorage, "mtl4TileDescriptor") && -[MTLToolsDevice storeValidationEnabled](self->super.super.super._device, "storeValidationEnabled"))
  {
    v21 = self->super.super.super._parent;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTLToolsObject *)self->super.super.super._parent mergeAttachmentWriteMask:self->_objectThreadsPerTG.width];
    }

    else
    {
      v29[0] = xmmword_22E27C320;
      v29[1] = unk_22E27C330;
      [(MTLDevice *)[(MTLToolsObject *)self device] clearRenderEncoder:self writeMask:self->_objectThreadsPerTG.width withCheckerboard:v29];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)endEncoding
{
  [(MTLDebugRenderCommandEncoder *)self endEncoding_private];
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 endEncoding];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  [(MTLDebugRenderCommandEncoder *)self endEncoding_private];
  v3 = [(MTLToolsObject *)self baseObject];

  return [v3 endEncodingAndRetrieveProgramAddressTable];
}

- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5
{
  device = self->super.super.super._device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MTLToolsObject *)device originalObject];
  }

  MTLValidateFeatureSupport();
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (a3)
  {
    _MTLDebugValidateBuffer(self->super.super.super._device, a3);
    if ((a4 & 3) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!a4)
  {
    goto LABEL_7;
  }

  v11 = a4;
  _MTLMessageContextPush_();
LABEL_7:
  if ((a5 & 3) != 0)
  {
    v11 = a5;
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v10 = [a3 length];
  if (MTLReportFailureTypeEnabled() && a3 && (LOBYTE(self->_tessellationFactorBufferArgument.lodMaxClamp) & 1) == 0 && self->_tessellationFactorBufferArgument.threadgroupMemoryLength == -1 && self->_tessellationFactorBufferArgument.bufferAttributeStride == a4 && self->_tessellationFactorBufferArgument.bufferOffset == v10 && self->_tessellationFactorBufferArgument.var0 == a3 && !(self->_tessellationFactorBufferArgument.bufferLength | self->_tessellationFactorBufferArgument.object) && *&self->_tessellationFactorBufferArgument.threadgroupMemoryOffset == 0 && !*(&self->_tessellationFactorBufferArgument.lodMaxClamp + 1))
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  LOBYTE(self->_tessellationFactorBufferArgument.type) = v10 != 0;
  BYTE1(self->_tessellationFactorBufferArgument.type) = 0;
  self->_tessellationFactorBufferArgument.object = 0;
  self->_tessellationFactorBufferArgument.var0 = a3;
  self->_tessellationFactorBufferArgument.bufferLength = 0;
  self->_tessellationFactorBufferArgument.bufferOffset = v10;
  self->_tessellationFactorBufferArgument.bufferAttributeStride = a4;
  self->_tessellationFactorBufferArgument.threadgroupMemoryLength = -1;
  self->_tessellationFactorBufferArgument.threadgroupMemoryOffset = 0;
  *&self->_tessellationFactorBufferArgument.hasLodClamp = 0;
  LOBYTE(self->_tessellationFactorBufferArgument.lodMaxClamp) = 0;
  *(&self->_tessellationFactorBufferArgument.lodMaxClamp + 1) = 0;
  LODWORD(self[1].super.super.super.super.isa) = 0;
  *&self->_tessellationFactorBufferArgument.isValid = a5;
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:{1, v11}];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setTessellationFactorScale:(float)a3
{
  device = self->super.super.super._device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MTLToolsObject *)device originalObject];
  }

  MTLValidateFeatureSupport();
  if (SLODWORD(a3) <= -1 || ((LODWORD(a3) & 0x7FFFFFFFu) - 0x800000) >> 24 >= 0x7F)
  {
    [MTLDebugRenderCommandEncoder setTessellationFactorScale:];
  }

  *&self->_descriptor = a3;
  v7 = [(MTLToolsObject *)self baseObject];
  *&v8 = a3;

  [v7 setTessellationFactorScale:v8];
}

- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9
{
  [(MTLDebugRenderCommandEncoder *)self _validateTessellationWithMetal4];
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:3 instanceCount:a8 baseInstance:a9 maxVertexID:1];
  v16 = [self->_peakPerSampleStorage descriptor];
  if ((self->_vertexBuiltinArguments & 1) == 0)
  {
    validateCommonTessellationErrors(self->super.super.super._device, v16, &self->_tessellationFactorBufferArgument.type, *&self->_tessellationFactorBufferArgument.isValid, a3, 0, 0, "[MTLDebugRenderCommandEncoder drawPatches:patchStart:patchCount:patchIndexBuffer:patchIndexBufferOffset:instanceCount:baseInstance:]", a4, a5, a9, a8);
  }

  _MTLDebugValidatePatchIndexBuffer(self->super.super.super._device, a6, "patchIndexBuffer", a7, 1, a4, a5, v17, a8);
  [self->_maxVertexBuffers addObject:a6 retained:1 purgeable:1];
  v18 = [(MTLToolsObject *)self baseObject];
  v19 = [a6 baseObject];

  [v18 drawPatches:a3 patchStart:a4 patchCount:a5 patchIndexBuffer:v19 patchIndexBufferOffset:a7 instanceCount:a8 baseInstance:?];
}

- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7
{
  [(MTLDebugRenderCommandEncoder *)self _validateTessellationWithMetal4];
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:3 instanceCount:1 baseInstance:0 maxVertexID:1];
  v13 = [self->_peakPerSampleStorage descriptor];
  if ((self->_vertexBuiltinArguments & 1) == 0)
  {
    validateCommonTessellationErrors(self->super.super.super._device, v13, &self->_tessellationFactorBufferArgument.type, *&self->_tessellationFactorBufferArgument.isValid, a3, 1, 0, "[MTLDebugRenderCommandEncoder drawPatches:patchIndexBuffer:patchIndexBufferOffset:indirectBuffer:indirectBufferOffset:]", 0, 0, 0, 0);
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  _MTLDebugValidatePatchIndexBufferWithContext(self->super.super.super._device, a4, "patchIndexBuffer", a5, 0, 0, 0, v14, 0, v15);
  validateIndirectBuffer(self->super.super.super._device, a6, a7, 16, "sizeof(MTLDrawPatchIndirectArguments)", v15);
  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a4 retained:1 purgeable:1];
  [self->_maxVertexBuffers addObject:a6 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11
{
  [(MTLDebugRenderCommandEncoder *)self _validateTessellationWithMetal4];
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:3 instanceCount:a10 baseInstance:a11 maxVertexID:1];
  v16 = [self->_peakPerSampleStorage descriptor];
  if ((self->_vertexBuiltinArguments & 1) == 0)
  {
    validateCommonTessellationErrors(self->super.super.super._device, v16, &self->_tessellationFactorBufferArgument.type, *&self->_tessellationFactorBufferArgument.isValid, a3, 0, 1, "[MTLDebugRenderCommandEncoder drawIndexedPatches:patchStart:patchCount:patchIndexBuffer:patchIndexBufferOffset:controlPointIndexBuffer:controlPointIndexBufferOffset:instanceCount:baseInstance:]", a4, a5, a11, a10);
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  _MTLDebugValidatePatchIndexBufferWithContext(self->super.super.super._device, a6, "patchIndexBuffer", a7, 1, a4, a5, v18, a10, v22);
  if (a3)
  {
    v19 = _MTLTessellationControlPointIndexTypeToMTLIndexType([v16 tessellationControlPointIndexType]);
    _MTLDebugValidateIndexBufferWithContext(self->super.super.super._device, v19, a8, "controlPointIndexBuffer", a9, a6 == 0, (a5 + a4) * a3, v22);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a6 retained:1 purgeable:1];
  [self->_maxVertexBuffers addObject:a8 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9
{
  [(MTLDebugRenderCommandEncoder *)self _validateTessellationWithMetal4];
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:3 instanceCount:1 baseInstance:0 maxVertexID:1];
  v15 = [self->_peakPerSampleStorage descriptor];
  if ((self->_vertexBuiltinArguments & 1) == 0)
  {
    validateCommonTessellationErrors(self->super.super.super._device, v15, &self->_tessellationFactorBufferArgument.type, *&self->_tessellationFactorBufferArgument.isValid, a3, 1, 1, "[MTLDebugRenderCommandEncoder drawIndexedPatches:patchIndexBuffer:patchIndexBufferOffset:controlPointIndexBuffer:controlPointIndexBufferOffset:indirectBuffer:indirectBufferOffset:]", 0, 0, 0, 0);
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  _MTLDebugValidatePatchIndexBufferWithContext(self->super.super.super._device, a4, "patchIndexBuffer", a5, 0, 0, 0, v17, 0, v20);
  validateIndirectBuffer(self->super.super.super._device, a8, a9, 16, "sizeof(MTLDrawPatchIndirectArguments)", v20);
  if (a3)
  {
    v18 = _MTLTessellationControlPointIndexTypeToMTLIndexType([v15 tessellationControlPointIndexType]);
    _MTLDebugValidateIndexBufferWithContext(self->super.super.super._device, v18, a6, "controlPointIndexBuffer", a7, 0, 0, v20);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a4 retained:1 purgeable:1];
  [self->_maxVertexBuffers addObject:a6 retained:1 purgeable:1];
  [self->_maxVertexBuffers addObject:a8 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)memoryBarrierWithScope:(unint64_t)a3 afterStages:(unint64_t)a4 beforeStages:(unint64_t)a5
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  validateCommonBarrier(self->super.super.super._device, v10, a3, a4, a5);
  if (![(MTLToolsDevice *)self->super.super.super._device supportsPartialRenderMemoryBarrier])
  {
    goto LABEL_5;
  }

  if ((a3 & 4) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ((a4 & 6) != 0)
  {
LABEL_5:
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4 afterStages:(unint64_t)a5 beforeStages:(unint64_t)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  validateCommonBarrier(self->super.super.super._device, v32, 3uLL, a5, a6);
  if (!a3 || !a4)
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device supportsPartialRenderMemoryBarrier])
  {
    if ((a5 & 6) != 0)
    {
      v23 = a5;
      _MTLMessageContextPush_();
    }
  }

  else
  {
    _MTLMessageContextPush_();
  }

  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, a4);
  v24 = a5;
  v25 = a6;
  if (a4)
  {
    v11 = 0;
    do
    {
      v12 = a3[v11];
      if (!v12)
      {
        v23 = v11;
        MTLReportFailure();
        v12 = a3[v11];
      }

      v13 = [v12 baseObject];
      *(__p[0] + v11) = v13;
      v14 = a3[v11];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = a3[v11];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = [(MTLDebugCommandBuffer *)self->_commandBuffer allObjects];
        v17 = [v16 countByEnumeratingWithState:&v27 objects:v34 count:16];
        if (v17)
        {
          v18 = *v28;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v28 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v27 + 1) + 8 * i);
              if ([v20 attachmentTexture] == v15)
              {
                [(MTLDebugCommandBuffer *)self->_commandBuffer removeObject:v20];
              }
            }

            v17 = [v16 countByEnumeratingWithState:&v27 objects:v34 count:16];
          }

          while (v17);
        }
      }

      ++v11;
    }

    while (v11 != a4);
  }

  _MTLMessageContextEnd();
  v21 = [(MTLToolsObject *)self baseObject];
  [v21 memoryBarrierWithResources:__p[0] count:a4 afterStages:v24 beforeStages:v25];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  v19.length = [a3 size];
  v18.location = location;
  v18.length = length;
  v19.location = 0;
  v9 = NSIntersectionRange(v18, v19);
  if (v9.location != location || v9.length != length)
  {
    v11 = length;
    v12 = [a3 size];
    v10 = location;
    _MTLMessageContextPush_();
  }

  if ([objc_msgSend(a3 descriptor] && (-[MTLRenderPipelineState supportIndirectCommandBuffers](-[MTLDebugRenderCommandEncoder renderPipelineState](self, "renderPipelineState"), "supportIndirectCommandBuffers") & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v13.receiver = self;
  v13.super_class = MTLDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v13 executeCommandsInBuffer:a3 withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  if ([objc_msgSend(a3 "descriptor")] && (-[MTLRenderPipelineState supportIndirectCommandBuffers](-[MTLDebugRenderCommandEncoder renderPipelineState](self, "renderPipelineState"), "supportIndirectCommandBuffers") & 1) == 0)
  {
    [MTLDebugRenderCommandEncoder executeCommandsInBuffer:indirectBuffer:indirectBufferOffset:];
  }

  v9.receiver = self;
  v9.super_class = MTLDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 executeCommandsInBuffer:a3 indirectBuffer:a4 indirectBufferOffset:a5];
}

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4 maxBuffers:(unint64_t)a5 buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)a7 stage:(unint64_t)a8
{
  memset(&v22, 0, sizeof(v22));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (a4 >= a5)
  {
    v20 = a4;
    v21 = a5;
    _MTLMessageContextPush_();
  }

  if ([-[MTLDevice baseObject](-[MTLToolsObject device](self device])
  {
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  if (![a3 conformsToProtocol:&unk_284225958] || (v16 = self->super.super.super._device, v16 != objc_msgSend(a3, "device")))
  {
    _MTLMessageContextPush_();
  }

LABEL_10:
  if (a4 < a7)
  {
    validateArg(24, a4, &a6[a4], &v22);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  if (a8 <= 3)
  {
    if (a8 == 2)
    {
      [-[MTLToolsObject baseObject](self "baseObject")];
    }

    else if (a8 == 3)
    {
      [-[MTLToolsObject baseObject](self "baseObject")];
    }
  }

  else
  {
    switch(a8)
    {
      case 4uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
      case 5uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
      case 6uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
    }
  }

  v17 = &a6[a4];
  v18 = [a3 functionCount];
  if (MTLReportFailureTypeEnabled())
  {
    v19.i64[0] = 0;
    v19.i64[1] = v18;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v17->var0, v19), vceqq_s64(*&v17->bufferOffset, xmmword_22E27C260))))) & 1) == 0 && v17->type == 5 && *&v17->threadgroupMemoryLength == 0 && v17->object == a3 && a3 && !*&v17->lodMinClamp && !v17->hasLodClamp)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }
  }

  v17->isValid = v18 != 0;
  v17->hasBeenUsed = 0;
  v17->type = 5;
  v17->object = a3;
  v17->var0 = 0;
  v17->bufferLength = v18;
  *&v17->bufferOffset = xmmword_22E27C260;
  v17->threadgroupMemoryLength = 0;
  v17->threadgroupMemoryOffset = 0;
  v17->hasLodClamp = 0;
  v17->lodMinClamp = 0.0;
  v17->lodMaxClamp = 0.0;
}

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4 maxBuffers:(unint64_t)a5 buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)a7 stage:(unint64_t)a8
{
  v39.i64[0] = a6;
  length = a4.length;
  location = a4.location;
  v41 = *MEMORY[0x277D85DE8];
  memset(&v40, 0, sizeof(v40));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > a5)
  {
    _MTLMessageContextPush_();
  }

  v36 = a5;
  if (([-[MTLDevice baseObject](-[MTLToolsObject device](self "device")] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v37 = a8;
  v38 = location;
  if (length)
  {
    v15 = 0;
    v16 = (v39.i64[0] + 88 * location);
    v17 = a3;
    do
    {
      if (*v17)
      {
        if ([*v17 conformsToProtocol:&unk_284225958])
        {
          v18 = self->super.super.super._device;
          if (v18 != [*v17 device])
          {
            _MTLMessageContextPush_();
          }

          location = v38;
          if ([*v17 stage] && objc_msgSend(*v17, "stage") != v37)
          {
            [MTLDebugRenderCommandEncoder setVisibleFunctionTables:withBufferRange:maxBuffers:buffers:buffersLength:stage:];
          }
        }

        else
        {
          _MTLMessageContextPush_();
        }
      }

      if (location + v15 < a7)
      {
        validateArg(24, location + v15, v16, &v40);
      }

      ++v15;
      ++v17;
      ++v16;
    }

    while (length != v15);
  }

  v19 = _MTLMessageContextEnd();
  v35 = &v35;
  MEMORY[0x28223BE20](v19);
  v36 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (length)
  {
    v21 = (v39.i64[0] + 88 * v38 + 80);
    v39 = xmmword_22E27C260;
    v22 = v36;
    v23 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:1];
      *v22 = [*a3 baseObject];
      v24 = *a3;
      v25 = [*a3 functionCount];
      if (MTLReportFailureTypeEnabled())
      {
        v26.i64[0] = 0;
        v26.i64[1] = v25;
        if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v21 - 14), v26), vceqq_s64(*(v21 - 10), v39))))) & 1) == 0 && *(v21 - 9) == 5 && *(v21 - 6) == 0 && *(v21 - 8) == v24 && v24 && !*(v21 - 1) && (*(v21 - 2) & 1) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }

      *(v21 - 40) = v25 != 0;
      *(v21 - 9) = 5;
      *(v21 - 8) = v24;
      *(v21 - 7) = 0;
      *(v21 - 6) = v25;
      *(v21 - 10) = v39;
      *(v21 - 3) = 0;
      *(v21 - 2) = 0;
      *(v21 - 8) = 0;
      v22 += 8;
      ++a3;
      *(v21 - 1) = 0;
      *v21 = 0;
      v21 += 22;
      --v23;
    }

    while (v23);
  }

  if (v37 <= 3)
  {
    v29 = v38;
    if (v37 == 2)
    {
      v33 = [(MTLToolsObject *)self baseObject];
      [v33 setVertexVisibleFunctionTables:v36 withBufferRange:{v29, length}];
    }

    else if (v37 == 3)
    {
      v30 = [(MTLToolsObject *)self baseObject];
      [v30 setFragmentVisibleFunctionTables:v36 withBufferRange:{v29, length}];
    }
  }

  else
  {
    v27 = v38;
    switch(v37)
    {
      case 4:
        v31 = [(MTLToolsObject *)self baseObject];
        [v31 setTileVisibleFunctionTables:v36 withBufferRange:{v27, length}];
        break;
      case 5:
        v32 = [(MTLToolsObject *)self baseObject];
        [v32 setObjectVisibleFunctionTables:v36 withBufferRange:{v27, length}];
        break;
      case 6:
        v28 = [(MTLToolsObject *)self baseObject];
        [v28 setMeshVisibleFunctionTables:v36 withBufferRange:{v27, length}];
        break;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];

  [(MTLDebugRenderCommandEncoder *)self setVisibleFunctionTable:a3 atBufferIndex:a4 maxBuffers:v7 buffers:&self->_fragmentBuffers[0].type buffersLength:31 stage:3];
}

- (void)setTileVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];

  [(MTLDebugRenderCommandEncoder *)self setVisibleFunctionTable:a3 atBufferIndex:a4 maxBuffers:v7 buffers:&self->_tileBuffers[0].type buffersLength:31 stage:4];
}

- (void)setObjectVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];

  [(MTLDebugRenderCommandEncoder *)self setVisibleFunctionTable:a3 atBufferIndex:a4 maxBuffers:v7 buffers:&self->_objectBuffers[0].type buffersLength:31 stage:5];
}

- (void)setMeshVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];

  [(MTLDebugRenderCommandEncoder *)self setVisibleFunctionTable:a3 atBufferIndex:a4 maxBuffers:v7 buffers:&self->_meshBuffers[0].type buffersLength:31 stage:6];
}

- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4 maxBuffers:(unint64_t)a5 buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)a7 stage:(unint64_t)a8
{
  memset(&v22, 0, sizeof(v22));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (a4 >= a5)
  {
    v20 = a4;
    v21 = a5;
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  else if (!a3)
  {
    goto LABEL_12;
  }

  if ([a3 conformsToProtocol:{&unk_28423AC08, v20, v21, v22.var0, v22.var1, *&v22.var2, v22.var3, v22.var4, v22.var5, v22.var6}])
  {
    v16 = self->super.super.super._device;
    if (v16 != [a3 device])
    {
      _MTLMessageContextPush_();
    }

    if ([a3 stage] && objc_msgSend(a3, "stage") != a8)
    {
      [MTLDebugRenderCommandEncoder setIntersectionFunctionTable:atBufferIndex:maxBuffers:buffers:buffersLength:stage:];
    }
  }

  else
  {
    _MTLMessageContextPush_();
  }

LABEL_12:
  if (a4 < a7)
  {
    validateArg(0, a4, &a6[a4], &v22);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  if (a8 <= 3)
  {
    if (a8 == 2)
    {
      [-[MTLToolsObject baseObject](self "baseObject")];
    }

    else if (a8 == 3)
    {
      [-[MTLToolsObject baseObject](self "baseObject")];
    }
  }

  else
  {
    switch(a8)
    {
      case 4uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
      case 5uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
      case 6uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
    }
  }

  v17 = &a6[a4];
  v18 = [a3 functionCount];
  if (MTLReportFailureTypeEnabled())
  {
    v19.i64[0] = 0;
    v19.i64[1] = v18;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v17->var0, v19), vceqq_s64(*&v17->bufferOffset, xmmword_22E27C260))))) & 1) == 0 && v17->type == 6 && *&v17->threadgroupMemoryLength == 0 && v17->object == a3 && a3 && !*&v17->lodMinClamp && !v17->hasLodClamp)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }
  }

  v17->isValid = v18 != 0;
  v17->hasBeenUsed = 0;
  v17->type = 6;
  v17->object = a3;
  v17->var0 = 0;
  v17->bufferLength = v18;
  *&v17->bufferOffset = xmmword_22E27C260;
  v17->threadgroupMemoryLength = 0;
  v17->threadgroupMemoryOffset = 0;
  v17->hasLodClamp = 0;
  v17->lodMinClamp = 0.0;
  v17->lodMaxClamp = 0.0;
}

- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4 maxBuffers:(unint64_t)a5 buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)a7 stage:(unint64_t)a8
{
  v39.i64[0] = a6;
  length = a4.length;
  location = a4.location;
  v41 = *MEMORY[0x277D85DE8];
  memset(&v40, 0, sizeof(v40));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > a5)
  {
    _MTLMessageContextPush_();
  }

  v36 = a5;
  v37 = a8;
  v38 = location;
  if (length)
  {
    v15 = 0;
    v16 = (v39.i64[0] + 88 * location);
    v17 = a3;
    do
    {
      if (*v17)
      {
        if ([*v17 conformsToProtocol:&unk_28423AC08])
        {
          v18 = self->super.super.super._device;
          if (v18 != [*v17 device])
          {
            _MTLMessageContextPush_();
          }

          location = v38;
          if ([*v17 stage] && objc_msgSend(*v17, "stage") != v37)
          {
            [MTLDebugRenderCommandEncoder setVisibleFunctionTables:withBufferRange:maxBuffers:buffers:buffersLength:stage:];
          }
        }

        else
        {
          _MTLMessageContextPush_();
        }
      }

      if (location + v15 < a7)
      {
        validateArg(0, location + v15, v16, &v40);
      }

      ++v15;
      ++v17;
      ++v16;
    }

    while (length != v15);
  }

  v19 = _MTLMessageContextEnd();
  v35 = &v35;
  MEMORY[0x28223BE20](v19);
  v36 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (length)
  {
    v21 = (v39.i64[0] + 88 * v38 + 80);
    v39 = xmmword_22E27C260;
    v22 = v36;
    v23 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*a3 retained:1 purgeable:1];
      *v22 = [*a3 baseObject];
      v24 = *a3;
      v25 = [*a3 functionCount];
      if (MTLReportFailureTypeEnabled())
      {
        v26.i64[0] = 0;
        v26.i64[1] = v25;
        if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v21 - 14), v26), vceqq_s64(*(v21 - 10), v39))))) & 1) == 0 && *(v21 - 9) == 6 && *(v21 - 6) == 0 && *(v21 - 8) == v24 && v24 && !*(v21 - 1) && (*(v21 - 2) & 1) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }

      *(v21 - 40) = v25 != 0;
      *(v21 - 9) = 6;
      *(v21 - 8) = v24;
      *(v21 - 7) = 0;
      *(v21 - 6) = v25;
      *(v21 - 10) = v39;
      *(v21 - 3) = 0;
      *(v21 - 2) = 0;
      *(v21 - 8) = 0;
      v22 += 8;
      ++a3;
      *(v21 - 1) = 0;
      *v21 = 0;
      v21 += 22;
      --v23;
    }

    while (v23);
  }

  if (v37 <= 3)
  {
    v29 = v38;
    if (v37 == 2)
    {
      v33 = [(MTLToolsObject *)self baseObject];
      [v33 setVertexIntersectionFunctionTables:v36 withBufferRange:{v29, length}];
    }

    else if (v37 == 3)
    {
      v30 = [(MTLToolsObject *)self baseObject];
      [v30 setFragmentIntersectionFunctionTables:v36 withBufferRange:{v29, length}];
    }
  }

  else
  {
    v27 = v38;
    switch(v37)
    {
      case 4:
        v31 = [(MTLToolsObject *)self baseObject];
        [v31 setTileIntersectionFunctionTables:v36 withBufferRange:{v27, length}];
        break;
      case 5:
        v32 = [(MTLToolsObject *)self baseObject];
        [v32 setObjectIntersectionFunctionTables:v36 withBufferRange:{v27, length}];
        break;
      case 6:
        v28 = [(MTLToolsObject *)self baseObject];
        [v28 setMeshIntersectionFunctionTables:v36 withBufferRange:{v27, length}];
        break;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];

  [(MTLDebugRenderCommandEncoder *)self setIntersectionFunctionTable:a3 atBufferIndex:a4 maxBuffers:v7 buffers:&self->_fragmentBuffers[0].type buffersLength:31 stage:3];
}

- (void)setTileIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];

  [(MTLDebugRenderCommandEncoder *)self setIntersectionFunctionTable:a3 atBufferIndex:a4 maxBuffers:v7 buffers:&self->_tileBuffers[0].type buffersLength:31 stage:4];
}

- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4 maxBuffers:(unint64_t)a5 buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)a7 stage:(unint64_t)a8
{
  memset(&v21, 0, sizeof(v21));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (a4 >= a5)
  {
    v19 = a4;
    v20 = a5;
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 1);
  if (a4 < a7)
  {
    validateArg(25, a4, &a6[a4], &v21);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:a3 retained:1 purgeable:1];
  if (a8 <= 3)
  {
    if (a8 == 2)
    {
      [-[MTLToolsObject baseObject](self "baseObject")];
    }

    else if (a8 == 3)
    {
      [-[MTLToolsObject baseObject](self "baseObject")];
    }
  }

  else
  {
    switch(a8)
    {
      case 4uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
      case 5uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
      case 6uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
    }
  }

  v16 = &a6[a4];
  v17 = [a3 size];
  if (MTLReportFailureTypeEnabled())
  {
    v18.i64[0] = 0;
    v18.i64[1] = v17;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v16->var0, v18), vceqq_s64(*&v16->bufferOffset, xmmword_22E27C260))))) & 1) == 0 && v16->type == 4 && *&v16->threadgroupMemoryLength == 0 && v16->object == a3 && a3 && !*&v16->lodMinClamp && !v16->hasLodClamp)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }
  }

  v16->isValid = v17 != 0;
  v16->hasBeenUsed = 0;
  v16->type = 4;
  v16->object = a3;
  v16->var0 = 0;
  v16->bufferLength = v17;
  *&v16->bufferOffset = xmmword_22E27C260;
  v16->threadgroupMemoryLength = 0;
  v16->threadgroupMemoryOffset = 0;
  v16->hasLodClamp = 0;
  v16->lodMinClamp = 0.0;
  v16->lodMaxClamp = 0.0;
}

- (void)setFragmentAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];

  [(MTLDebugRenderCommandEncoder *)self setAccelerationStructure:a3 atBufferIndex:a4 maxBuffers:v7 buffers:&self->_fragmentBuffers[0].type buffersLength:31 stage:3];
}

- (void)setTileAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];

  [(MTLDebugRenderCommandEncoder *)self setAccelerationStructure:a3 atBufferIndex:a4 maxBuffers:v7 buffers:&self->_tileBuffers[0].type buffersLength:31 stage:4];
}

- (void)setObjectIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];

  [(MTLDebugRenderCommandEncoder *)self setIntersectionFunctionTable:a3 atBufferIndex:a4 maxBuffers:v7 buffers:&self->_objectBuffers[0].type buffersLength:31 stage:5];
}

- (void)setObjectAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];

  [(MTLDebugRenderCommandEncoder *)self setAccelerationStructure:a3 atBufferIndex:a4 maxBuffers:v7 buffers:&self->_objectBuffers[0].type buffersLength:31 stage:5];
}

- (void)setMeshIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];

  [(MTLDebugRenderCommandEncoder *)self setIntersectionFunctionTable:a3 atBufferIndex:a4 maxBuffers:v7 buffers:&self->_meshBuffers[0].type buffersLength:31 stage:6];
}

- (void)setMeshAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];

  [(MTLDebugRenderCommandEncoder *)self setAccelerationStructure:a3 atBufferIndex:a4 maxBuffers:v7 buffers:&self->_meshBuffers[0].type buffersLength:31 stage:6];
}

- (void)useResidencySet:(id)a3
{
  if (!a3)
  {
    [MTLDebugRenderCommandEncoder useResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v5 useResidencySet:a3];
}

- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      if (!a3[i])
      {
        [MTLDebugRenderCommandEncoder useResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v8 useResidencySets:a3 count:a4];
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4
{
  if (BYTE2(self->_visibilityOffsets))
  {
    [MTLDebugRenderCommandEncoder barrierAfterQueueStages:beforeStages:];
  }

  v7 = [(MTLToolsObject *)self baseObject];

  [v7 barrierAfterQueueStages:a3 beforeStages:a4];
}

- (void)_validateTessellationWithMetal4
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  peakPerSampleStorage = self->_peakPerSampleStorage;
  if ([peakPerSampleStorage mtl4Descriptor] || objc_msgSend(peakPerSampleStorage, "mtl4MeshDescriptor") || objc_msgSend(peakPerSampleStorage, "mtl4TileDescriptor"))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
}

- (MTLDebugFunctionArgument)tessellationFactorBufferArgument
{
  v3 = *&self[950].isValid;
  *&retstr->bufferLength = *&self[949].hasLodClamp;
  *&retstr->bufferAttributeStride = v3;
  *&retstr->threadgroupMemoryOffset = *&self[950].object;
  *&retstr->lodMaxClamp = self[950].bufferLength;
  v4 = *&self[949].threadgroupMemoryLength;
  *&retstr->isValid = *&self[949].bufferOffset;
  *&retstr->object = v4;
  return self;
}

- (id).cxx_construct
{
  v2 = 248;
  v3 = 3168;
  do
  {
    v4 = self + v2;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
    *(v4 + 5) = 0;
    *(v4 + 6) = -1;
    *(v4 + 19) = 0;
    *(v4 + 20) = 0;
    *(v4 + 7) = 0;
    *(v4 + 8) = 0;
    v2 += 88;
    v4[72] = 0;
    v3 -= 88;
  }

  while (v3);
  v5 = 3416;
  v6 = 11264;
  do
  {
    v7 = self + v5;
    *(v7 + 3) = 0;
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = -1;
    *(v7 + 19) = 0;
    *(v7 + 20) = 0;
    *(v7 + 7) = 0;
    *(v7 + 8) = 0;
    v5 += 88;
    v7[72] = 0;
    v6 -= 88;
  }

  while (v6);
  v8 = 14680;
  v9 = 1408;
  do
  {
    v10 = self + v8;
    *(v10 + 3) = 0;
    *(v10 + 4) = 0;
    *(v10 + 5) = 0;
    *(v10 + 6) = -1;
    *(v10 + 19) = 0;
    *(v10 + 20) = 0;
    *(v10 + 7) = 0;
    *(v10 + 8) = 0;
    v8 += 88;
    v10[72] = 0;
    v9 -= 88;
  }

  while (v9);
  v11 = 16088;
  v12 = 2728;
  do
  {
    v13 = self + v11;
    *(v13 + 3) = 0;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0;
    *(v13 + 6) = -1;
    *(v13 + 19) = 0;
    *(v13 + 20) = 0;
    *(v13 + 7) = 0;
    *(v13 + 8) = 0;
    v11 += 88;
    v13[72] = 0;
    v12 -= 88;
  }

  while (v12);
  v14 = 18816;
  v15 = 11264;
  do
  {
    v16 = self + v14;
    *(v16 + 3) = 0;
    *(v16 + 4) = 0;
    *(v16 + 5) = 0;
    *(v16 + 6) = -1;
    *(v16 + 19) = 0;
    *(v16 + 20) = 0;
    *(v16 + 7) = 0;
    *(v16 + 8) = 0;
    v14 += 88;
    v16[72] = 0;
    v15 -= 88;
  }

  while (v15);
  v17 = 30080;
  v18 = 1408;
  do
  {
    v19 = self + v17;
    *(v19 + 3) = 0;
    *(v19 + 4) = 0;
    *(v19 + 5) = 0;
    *(v19 + 6) = -1;
    *(v19 + 19) = 0;
    *(v19 + 20) = 0;
    *(v19 + 7) = 0;
    *(v19 + 8) = 0;
    v17 += 88;
    v19[72] = 0;
    v18 -= 88;
  }

  while (v18);
  v20 = 31488;
  v21 = 2728;
  do
  {
    v22 = self + v20;
    *(v22 + 3) = 0;
    *(v22 + 4) = 0;
    *(v22 + 5) = 0;
    *(v22 + 6) = -1;
    *(v22 + 19) = 0;
    *(v22 + 20) = 0;
    *(v22 + 7) = 0;
    *(v22 + 8) = 0;
    v20 += 88;
    v22[72] = 0;
    v21 -= 88;
  }

  while (v21);
  v23 = 34216;
  v24 = 11264;
  do
  {
    v25 = self + v23;
    *(v25 + 3) = 0;
    *(v25 + 4) = 0;
    *(v25 + 5) = 0;
    *(v25 + 6) = -1;
    *(v25 + 19) = 0;
    *(v25 + 20) = 0;
    *(v25 + 7) = 0;
    *(v25 + 8) = 0;
    v23 += 88;
    v25[72] = 0;
    v24 -= 88;
  }

  while (v24);
  v26 = 45480;
  v27 = 1408;
  do
  {
    v28 = self + v26;
    *(v28 + 3) = 0;
    *(v28 + 4) = 0;
    *(v28 + 5) = 0;
    *(v28 + 6) = -1;
    *(v28 + 19) = 0;
    *(v28 + 20) = 0;
    *(v28 + 7) = 0;
    *(v28 + 8) = 0;
    v26 += 88;
    v28[72] = 0;
    v27 -= 88;
  }

  while (v27);
  v29 = 46888;
  v30 = 2728;
  do
  {
    v31 = self + v29;
    *(v31 + 3) = 0;
    *(v31 + 4) = 0;
    *(v31 + 5) = 0;
    *(v31 + 6) = -1;
    *(v31 + 19) = 0;
    *(v31 + 20) = 0;
    *(v31 + 7) = 0;
    *(v31 + 8) = 0;
    v29 += 88;
    v31[72] = 0;
    v30 -= 88;
  }

  while (v30);
  v32 = 49616;
  v33 = 2728;
  do
  {
    v34 = self + v32;
    *(v34 + 3) = 0;
    *(v34 + 4) = 0;
    *(v34 + 5) = 0;
    *(v34 + 6) = -1;
    *(v34 + 19) = 0;
    *(v34 + 20) = 0;
    *(v34 + 7) = 0;
    *(v34 + 8) = 0;
    v32 += 88;
    v34[72] = 0;
    v33 -= 88;
  }

  while (v33);
  v35 = 52344;
  v36 = 11264;
  do
  {
    v37 = self + v35;
    *(v37 + 3) = 0;
    *(v37 + 4) = 0;
    *(v37 + 5) = 0;
    *(v37 + 6) = -1;
    *(v37 + 19) = 0;
    *(v37 + 20) = 0;
    *(v37 + 7) = 0;
    *(v37 + 8) = 0;
    v35 += 88;
    v37[72] = 0;
    v36 -= 88;
  }

  while (v36);
  v38 = 63608;
  v39 = 1408;
  do
  {
    v40 = self + v38;
    *(v40 + 3) = 0;
    *(v40 + 4) = 0;
    *(v40 + 5) = 0;
    *(v40 + 6) = -1;
    *(v40 + 19) = 0;
    *(v40 + 20) = 0;
    *(v40 + 7) = 0;
    *(v40 + 8) = 0;
    v38 += 88;
    v40[72] = 0;
    v39 -= 88;
  }

  while (v39);
  v41 = 65016;
  v42 = 2728;
  do
  {
    v43 = self + v41;
    *(v43 + 3) = 0;
    *(v43 + 4) = 0;
    *(v43 + 5) = 0;
    *(v43 + 6) = -1;
    *(v43 + 19) = 0;
    *(v43 + 20) = 0;
    *(v43 + 7) = 0;
    *(v43 + 8) = 0;
    v41 += 88;
    v43[72] = 0;
    v42 -= 88;
  }

  while (v42);
  v44 = 67744;
  v45 = 2728;
  do
  {
    v46 = self + v44;
    *(v46 + 3) = 0;
    *(v46 + 4) = 0;
    *(v46 + 5) = 0;
    *(v46 + 6) = -1;
    *(v46 + 19) = 0;
    *(v46 + 20) = 0;
    *(v46 + 7) = 0;
    *(v46 + 8) = 0;
    v44 += 88;
    v46[72] = 0;
    v45 -= 88;
  }

  while (v45);
  v47 = 70472;
  v48 = 11264;
  do
  {
    v49 = self + v47;
    *(v49 + 3) = 0;
    *(v49 + 4) = 0;
    *(v49 + 5) = 0;
    *(v49 + 6) = -1;
    *(v49 + 19) = 0;
    *(v49 + 20) = 0;
    *(v49 + 7) = 0;
    *(v49 + 8) = 0;
    v47 += 88;
    v49[72] = 0;
    v48 -= 88;
  }

  while (v48);
  v50 = 81736;
  v51 = 1408;
  do
  {
    v52 = self + v50;
    *(v52 + 3) = 0;
    *(v52 + 4) = 0;
    *(v52 + 5) = 0;
    *(v52 + 6) = -1;
    *(v52 + 19) = 0;
    *(v52 + 20) = 0;
    *(v52 + 7) = 0;
    *(v52 + 8) = 0;
    v50 += 88;
    v52[72] = 0;
    v51 -= 88;
  }

  while (v51);
  *(self + 10396) = 0;
  *(self + 10397) = 0;
  *(self + 10395) = 0;
  *(self + 10399) = 0;
  *(self + 10400) = 0;
  *(self + 10398) = 0;
  *(self + 5202) = 0u;
  *(self + 5203) = 0u;
  *(self + 5204) = 0u;
  *(self + 10447) = 0;
  *(self + 10448) = 0;
  *(self + 10449) = 0;
  *(self + 10450) = -1;
  *(self + 20907) = 0;
  *(self + 20908) = 0;
  *(self + 83624) = 0;
  *(self + 10451) = 0;
  *(self + 10452) = 0;
  return self;
}

- (uint64_t)setRenderPipelineState:(id *)a1 .cold.1(id *a1)
{
  [*a1 maxThreadgroupMemoryLength];
  OUTLINED_FUNCTION_1_3();
  return _MTLMessageContextPush_();
}

- (uint64_t)_validateDispatchThreadsPerTile:context:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *v0;
  v2 = v0[1];
  [v3 tileWidth];
  [OUTLINED_FUNCTION_6() tileHeight];
  OUTLINED_FUNCTION_1_3();
  return _MTLMessageContextPush_();
}

- (uint64_t)validateFunctionTableUseResource:(uint64_t)a3 stages:context:selectorName:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  [MEMORY[0x277CCACA8] stringWithFormat:@"%@ called with stages (0x%lx), but %s resource was created for stage %@", a2, a3, "MTLVisibleFunctionTable", MTLDebugStageToString(objc_msgSend(a1, "stage"))];
  OUTLINED_FUNCTION_1_3();

  return _MTLMessageContextPush_();
}

- (uint64_t)setVisibleFunctionTables:withBufferRange:maxBuffers:buffers:buffersLength:stage:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  MTLDebugStageToString([*v0 stage]);
  v1 = OUTLINED_FUNCTION_6();
  MTLDebugStageToString(v1);
  OUTLINED_FUNCTION_1_3();
  return _MTLMessageContextPush_();
}

- (uint64_t)setIntersectionFunctionTable:atBufferIndex:maxBuffers:buffers:buffersLength:stage:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  MTLDebugStageToString([v0 stage]);
  v1 = OUTLINED_FUNCTION_6();
  MTLDebugStageToString(v1);
  OUTLINED_FUNCTION_1_3();
  return _MTLMessageContextPush_();
}

@end