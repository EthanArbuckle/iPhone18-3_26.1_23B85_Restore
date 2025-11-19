@interface MTLCountersRenderCommandEncoder
- (MTLCountersRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4;
- (MTLCountersRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5;
- (void)dealloc;
- (void)dispatchThreadsPerTile:(id *)a3;
- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9;
- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8;
- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7;
- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)a3;
- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4 afterStages:(unint64_t)a5 beforeStages:(unint64_t)a6;
- (void)memoryBarrierWithScope:(unint64_t)a3 afterStages:(unint64_t)a4 beforeStages:(unint64_t)a5;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 atIndex:(unint64_t)a7;
- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setCullMode:(unint64_t)a3;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setDepthClipMode:(unint64_t)a3;
- (void)setDepthResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6;
- (void)setDepthStencilState:(id)a3;
- (void)setDepthStoreAction:(unint64_t)a3;
- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6;
- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFrontFacingWinding:(unint64_t)a3;
- (void)setLabel:(id)a3;
- (void)setLineWidth:(float)a3;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setStencilResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6;
- (void)setStencilStoreAction:(unint64_t)a3;
- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5;
- (void)setTessellationFactorScale:(float)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setTileSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setTileSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setTileSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTriangleFillMode:(unint64_t)a3;
- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4;
- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setVertexBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setVertexBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6;
- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setViewport:(id *)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4;
- (void)updateFence:(id)a3 afterStages:(unint64_t)a4;
- (void)useHeap:(id)a3;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6;
- (void)waitForFence:(id)a3 beforeStages:(unint64_t)a4;
@end

@implementation MTLCountersRenderCommandEncoder

- (MTLCountersRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTLCountersRenderCommandEncoder;
  v5 = [(MTLToolsRenderCommandEncoder *)&v7 initWithRenderCommandEncoder:a3 parent:?];
  if (v5)
  {
    -[MTLCountersRenderCommandEncoder _initWithCommandBuffer:](v5, "_initWithCommandBuffer:", [a4 commandBuffer]);
  }

  return v5;
}

- (MTLCountersRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5
{
  v9.receiver = self;
  v9.super_class = MTLCountersRenderCommandEncoder;
  v6 = [(MTLToolsRenderCommandEncoder *)&v9 initWithRenderCommandEncoder:a3 parent:a4 descriptor:a5];
  v7 = v6;
  if (v6)
  {
    [(MTLCountersRenderCommandEncoder *)v6 _initWithCommandBuffer:a4];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCountersRenderCommandEncoder;
  [(MTLToolsObject *)&v3 dealloc];
}

- (void)insertDebugSignpost:(id)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceCommandEncoder *)v9 insertDebugSignpost:a3];
}

- (void)pushDebugGroup:(id)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceCommandEncoder *)v9 pushDebugGroup:a3];
}

- (void)popDebugGroup
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v3 = mach_absolute_time();
  }

  else
  {
    v3 = 0;
  }

  self->_traceEncoder->super._timer = v3;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v4 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v6 = v4 - traceEncoder->super._timer;
  }

  else
  {
    v6 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v6;
  v7 = self->_traceEncoder;

  [(MTLCountersTraceCommandEncoder *)v7 popDebugGroup];
}

- (void)setLabel:(id)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceCommandEncoder *)v9 setLabel:a3];
}

- (void)setRenderPipelineState:(id)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v9 setRenderPipelineState:a3];
}

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v13 setVertexBytes:a3 length:a4 atIndex:a5];
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v13 setVertexBuffer:a3 offset:a4 atIndex:a5];
}

- (void)setVertexBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 setVertexBufferOffset:a3 atIndex:a4];
}

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
  }

  else
  {
    v10 = 0;
  }

  self->_traceEncoder->super._timer = v10;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v13 = v11 - traceEncoder->super._timer;
  }

  else
  {
    v13 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v13;
  v14 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v14 setVertexBuffers:a3 offsets:a4 withRange:location, length];
}

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
  }

  else
  {
    v11 = 0;
  }

  self->_traceEncoder->super._timer = v11;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v12 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v14 = v12 - traceEncoder->super._timer;
  }

  else
  {
    v14 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v14;
  v15 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v15 setVertexBytes:a3 length:a4 attributeStride:a5 atIndex:a6];
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
  }

  else
  {
    v11 = 0;
  }

  self->_traceEncoder->super._timer = v11;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v12 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v14 = v12 - traceEncoder->super._timer;
  }

  else
  {
    v14 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v14;
  v15 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v15 setVertexBuffer:a3 offset:a4 attributeStride:a5 atIndex:a6];
}

- (void)setVertexBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v13 setVertexBufferOffset:a3 attributeStride:a4 atIndex:a5];
}

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v12 = mach_absolute_time();
  }

  else
  {
    v12 = 0;
  }

  self->_traceEncoder->super._timer = v12;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v13 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v15 = v13 - traceEncoder->super._timer;
  }

  else
  {
    v15 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v15;
  v16 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v16 setVertexBuffers:a3 offsets:a4 attributeStrides:a5 withRange:location, length];
}

- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 setVertexTexture:a3 atIndex:a4];
}

- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
  }

  else
  {
    v8 = 0;
  }

  self->_traceEncoder->super._timer = v8;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v11 = v9 - traceEncoder->super._timer;
  }

  else
  {
    v11 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v11;
  v12 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v12 setVertexTextures:a3 withRange:location, length];
}

- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 setVertexSamplerState:a3 atIndex:a4];
}

- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
  }

  else
  {
    v8 = 0;
  }

  self->_traceEncoder->super._timer = v8;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v11 = v9 - traceEncoder->super._timer;
  }

  else
  {
    v11 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v11;
  v12 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v12 setVertexSamplerStates:a3 withRange:location, length];
}

- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
  }

  else
  {
    v11 = 0;
  }

  self->_traceEncoder->super._timer = v11;
  v12 = [(MTLToolsObject *)self baseObject];
  *&v13 = a4;
  *&v14 = a5;
  [v12 setVertexSamplerState:a3 lodMinClamp:a6 lodMaxClamp:v13 atIndex:v14];
  if (*(&self->_APITimingEnabled + 4))
  {
    v17 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v19 = v17 - traceEncoder->super._timer;
  }

  else
  {
    v19 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v19;
  v20 = self->_traceEncoder;
  *&v15 = a4;
  *&v16 = a5;

  [(MTLCountersTraceRenderCommandEncoder *)v20 setVertexSamplerState:a3 lodMinClamp:a6 lodMaxClamp:v15 atIndex:v16];
}

- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v12 = mach_absolute_time();
  }

  else
  {
    v12 = 0;
  }

  self->_traceEncoder->super._timer = v12;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v13 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v15 = v13 - traceEncoder->super._timer;
  }

  else
  {
    v15 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v15;
  v16 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v16 setVertexSamplerStates:a3 lodMinClamps:a4 lodMaxClamps:a5 withRange:location, length];
}

- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v13 setFragmentBytes:a3 length:a4 atIndex:a5];
}

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v13 setFragmentBuffer:a3 offset:a4 atIndex:a5];
}

- (void)setFragmentBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 setFragmentBufferOffset:a3 atIndex:a4];
}

- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
  }

  else
  {
    v10 = 0;
  }

  self->_traceEncoder->super._timer = v10;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v13 = v11 - traceEncoder->super._timer;
  }

  else
  {
    v13 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v13;
  v14 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v14 setFragmentBuffers:a3 offsets:a4 withRange:location, length];
}

- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 setFragmentTexture:a3 atIndex:a4];
}

- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
  }

  else
  {
    v8 = 0;
  }

  self->_traceEncoder->super._timer = v8;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v11 = v9 - traceEncoder->super._timer;
  }

  else
  {
    v11 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v11;
  v12 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v12 setFragmentTextures:a3 withRange:location, length];
}

- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 setFragmentSamplerState:a3 atIndex:a4];
}

- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
  }

  else
  {
    v8 = 0;
  }

  self->_traceEncoder->super._timer = v8;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v11 = v9 - traceEncoder->super._timer;
  }

  else
  {
    v11 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v11;
  v12 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v12 setFragmentSamplerStates:a3 withRange:location, length];
}

- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
  }

  else
  {
    v11 = 0;
  }

  self->_traceEncoder->super._timer = v11;
  v12 = [(MTLToolsObject *)self baseObject];
  *&v13 = a4;
  *&v14 = a5;
  [v12 setFragmentSamplerState:a3 lodMinClamp:a6 lodMaxClamp:v13 atIndex:v14];
  if (*(&self->_APITimingEnabled + 4))
  {
    v17 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v19 = v17 - traceEncoder->super._timer;
  }

  else
  {
    v19 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v19;
  v20 = self->_traceEncoder;
  *&v15 = a4;
  *&v16 = a5;

  [(MTLCountersTraceRenderCommandEncoder *)v20 setFragmentSamplerState:a3 lodMinClamp:a6 lodMaxClamp:v15 atIndex:v16];
}

- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v12 = mach_absolute_time();
  }

  else
  {
    v12 = 0;
  }

  self->_traceEncoder->super._timer = v12;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v13 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v15 = v13 - traceEncoder->super._timer;
  }

  else
  {
    v15 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v15;
  v16 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v16 setFragmentSamplerStates:a3 lodMinClamps:a4 lodMaxClamps:a5 withRange:location, length];
}

- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  [v10 setFragmentTexture:a3 atTextureIndex:a4 samplerState:a5 atSamplerIndex:a6];
}

- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v13 setTileBytes:a3 length:a4 atIndex:a5];
}

- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v13 setTileBuffer:a3 offset:a4 atIndex:a5];
}

- (void)setTileBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 setTileBufferOffset:a3 atIndex:a4];
}

- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
  }

  else
  {
    v10 = 0;
  }

  self->_traceEncoder->super._timer = v10;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v13 = v11 - traceEncoder->super._timer;
  }

  else
  {
    v13 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v13;
  v14 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v14 setTileBuffers:a3 offsets:a4 withRange:location, length];
}

- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setTileTexture:a3 atIndex:a4];
}

- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(MTLToolsObject *)self baseObject];

  [v7 setTileTextures:a3 withRange:{location, length}];
}

- (void)setTileSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setTileSamplerState:a3 atIndex:a4];
}

- (void)setTileSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(MTLToolsObject *)self baseObject];

  [v7 setTileSamplerStates:a3 withRange:{location, length}];
}

- (void)setTileSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  *&v11 = a4;
  *&v12 = a5;

  [v10 setTileSamplerState:a3 lodMinClamp:a6 lodMaxClamp:v11 atIndex:v12];
}

- (void)setTileSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v11 = [(MTLToolsObject *)self baseObject];

  [v11 setTileSamplerStates:a3 lodMinClamps:a4 lodMaxClamps:a5 withRange:{location, length}];
}

- (void)dispatchThreadsPerTile:(id *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = *a3;
  [v4 dispatchThreadsPerTile:&v5];
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setThreadgroupMemoryLength:a3 offset:a4 atIndex:a5];
}

- (void)useResource:(id)a3 usage:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 useResource:a3 usage:a4];
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v13 useResources:a3 count:a4 usage:a5];
}

- (void)useResource:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v13 useResource:a3 usage:a4 stages:a5];
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
  }

  else
  {
    v11 = 0;
  }

  self->_traceEncoder->super._timer = v11;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v12 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v14 = v12 - traceEncoder->super._timer;
  }

  else
  {
    v14 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v14;
  v15 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v15 useResources:a3 count:a4 usage:a5 stages:a6];
}

- (void)useHeap:(id)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v9 useHeap:a3];
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 useHeaps:a3 count:a4];
}

- (void)setViewport:(id *)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = *&a3->var2;
  v13 = *&a3->var0;
  v14 = v7;
  v15 = *&a3->var4;
  [v6 setViewport:&v13];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;
  v12 = *&a3->var2;
  v13 = *&a3->var0;
  v14 = v12;
  v15 = *&a3->var4;
  [(MTLCountersTraceRenderCommandEncoder *)v11 setViewport:&v13];
}

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 setViewports:a3 count:a4];
}

- (void)setFrontFacingWinding:(unint64_t)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v9 setFrontFacingWinding:a3];
}

- (void)setCullMode:(unint64_t)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v9 setCullMode:a3];
}

- (void)setDepthClipMode:(unint64_t)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v9 setDepthClipMode:a3];
}

- (void)setLineWidth:(float)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  *&v5 = a3;

  [v4 setLineWidth:v5];
}

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  v10 = [(MTLToolsObject *)self baseObject];
  *&v11 = a3;
  *&v12 = a4;
  *&v13 = a5;
  [v10 setDepthBias:v11 slopeScale:v12 clamp:v13];
  if (*(&self->_APITimingEnabled + 4))
  {
    v17 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v19 = v17 - traceEncoder->super._timer;
  }

  else
  {
    v19 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v19;
  v20 = self->_traceEncoder;
  *&v14 = a3;
  *&v15 = a4;
  *&v16 = a5;

  [(MTLCountersTraceRenderCommandEncoder *)v20 setDepthBias:v14 slopeScale:v15 clamp:v16];
}

- (void)setScissorRect:(id *)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = *&a3->var2;
  v13 = *&a3->var0;
  v14 = v7;
  [v6 setScissorRect:&v13];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;
  v12 = *&a3->var2;
  v13 = *&a3->var0;
  v14 = v12;
  [(MTLCountersTraceRenderCommandEncoder *)v11 setScissorRect:&v13];
}

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 setScissorRects:a3 count:a4];
}

- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setVertexAmplificationMode:a3 value:a4];
}

- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setVertexAmplificationCount:a3 viewMappings:a4];
}

- (void)setTriangleFillMode:(unint64_t)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v9 setTriangleFillMode:a3];
}

- (void)setDepthStencilState:(id)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v9 setDepthStencilState:a3];
}

- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 setColorStoreAction:a3 atIndex:a4];
}

- (void)setDepthStoreAction:(unint64_t)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v9 setDepthStoreAction:a3];
}

- (void)setStencilStoreAction:(unint64_t)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v9 setStencilStoreAction:a3];
}

- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 setVisibilityResultMode:a3 offset:a4];
}

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
  }

  else
  {
    v11 = 0;
  }

  self->_traceEncoder->super._timer = v11;
  v12 = [(MTLToolsObject *)self baseObject];
  *&v13 = a3;
  *&v14 = a4;
  *&v15 = a5;
  *&v16 = a6;
  [v12 setBlendColorRed:v13 green:v14 blue:v15 alpha:v16];
  if (*(&self->_APITimingEnabled + 4))
  {
    v21 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v23 = v21 - traceEncoder->super._timer;
  }

  else
  {
    v23 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v23;
  v24 = self->_traceEncoder;
  *&v17 = a3;
  *&v18 = a4;
  *&v19 = a5;
  *&v20 = a6;

  [(MTLCountersTraceRenderCommandEncoder *)v24 setBlendColorRed:v17 green:v18 blue:v19 alpha:v20];
}

- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 atIndex:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];

  [v12 setColorResolveTexture:a3 slice:a4 depthPlane:a5 level:a6 atIndex:a7];
}

- (void)setDepthResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  [v10 setDepthResolveTexture:a3 slice:a4 depthPlane:a5 level:a6];
}

- (void)setStencilResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  [v10 setStencilResolveTexture:a3 slice:a4 depthPlane:a5 level:a6];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
  }

  else
  {
    v11 = 0;
  }

  self->_traceEncoder->super._timer = v11;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v12 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v14 = v12 - traceEncoder->super._timer;
  }

  else
  {
    v14 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v14;
  v15 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v15 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v13 drawPrimitives:a3 vertexStart:a4 vertexCount:a5];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v15 = mach_absolute_time();
  }

  else
  {
    v15 = 0;
  }

  self->_traceEncoder->super._timer = v15;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v16 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v18 = v16 - traceEncoder->super._timer;
  }

  else
  {
    v18 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v18;
  v19 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v19 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferOffset:a7 instanceCount:a8];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v13 = mach_absolute_time();
  }

  else
  {
    v13 = 0;
  }

  self->_traceEncoder->super._timer = v13;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v14 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v16 = v14 - traceEncoder->super._timer;
  }

  else
  {
    v16 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v16;
  v17 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v17 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferOffset:a7];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v13 = mach_absolute_time();
  }

  else
  {
    v13 = 0;
  }

  self->_traceEncoder->super._timer = v13;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v14 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v16 = v14 - traceEncoder->super._timer;
  }

  else
  {
    v16 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v16;
  v17 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v17 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6 baseInstance:a7];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v16 = mach_absolute_time();
  }

  else
  {
    v16 = 0;
  }

  self->_traceEncoder->super._timer = v16;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v17 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v19 = v17 - traceEncoder->super._timer;
  }

  else
  {
    v19 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v19;
  v20 = self->_traceEncoder;

  [MTLCountersTraceRenderCommandEncoder drawIndexedPrimitives:v20 indexCount:"drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:instanceCount:baseVertex:baseInstance:" indexType:a3 indexBuffer:a4 indexBufferOffset:a5 instanceCount:a6 baseVertex:a7 baseInstance:a8];
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v13 drawPrimitives:a3 indirectBuffer:a4 indirectBufferOffset:a5];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v15 = mach_absolute_time();
  }

  else
  {
    v15 = 0;
  }

  self->_traceEncoder->super._timer = v15;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v16 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v18 = v16 - traceEncoder->super._timer;
  }

  else
  {
    v18 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v18;
  v19 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v19 drawIndexedPrimitives:a3 indexType:a4 indexBuffer:a5 indexBufferOffset:a6 indirectBuffer:a7 indirectBufferOffset:a8];
}

- (void)updateFence:(id)a3 afterStages:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 updateFence:a3 afterStages:a4];
}

- (void)waitForFence:(id)a3 beforeStages:(unint64_t)a4
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v11 waitForFence:a3 beforeStages:a4];
}

- (void)endEncoding
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v3 = mach_absolute_time();
  }

  else
  {
    v3 = 0;
  }

  self->_traceEncoder->super._timer = v3;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v4 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v6 = v4 - traceEncoder->super._timer;
  }

  else
  {
    v6 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v6;
  v7 = self->_traceEncoder;

  [(MTLCountersTraceCommandEncoder *)v7 endEncoding];
}

- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v13 setTessellationFactorBuffer:a3 offset:a4 instanceStride:a5];
}

- (void)setTessellationFactorScale:(float)a3
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  v6 = [(MTLToolsObject *)self baseObject];
  *&v7 = a3;
  [v6 setTessellationFactorScale:v7];
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v11 = v9 - traceEncoder->super._timer;
  }

  else
  {
    v11 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v11;
  v12 = self->_traceEncoder;
  *&v8 = a3;

  [(MTLCountersTraceRenderCommandEncoder *)v12 setTessellationFactorScale:v8];
}

- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v15 = mach_absolute_time();
  }

  else
  {
    v15 = 0;
  }

  self->_traceEncoder->super._timer = v15;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v16 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v18 = v16 - traceEncoder->super._timer;
  }

  else
  {
    v18 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v18;
  v19 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v19 drawPatches:a3 patchStart:a4 patchCount:a5 patchIndexBuffer:a6 patchIndexBufferOffset:a7 instanceCount:a8 baseInstance:?];
}

- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v13 = mach_absolute_time();
  }

  else
  {
    v13 = 0;
  }

  self->_traceEncoder->super._timer = v13;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v14 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v16 = v14 - traceEncoder->super._timer;
  }

  else
  {
    v16 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v16;
  v17 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v17 drawPatches:a3 patchIndexBuffer:a4 patchIndexBufferOffset:a5 indirectBuffer:a6 indirectBufferOffset:a7];
}

- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v16 = mach_absolute_time();
  }

  else
  {
    v16 = 0;
  }

  self->_traceEncoder->super._timer = v16;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v17 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v19 = v17 - traceEncoder->super._timer;
  }

  else
  {
    v19 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v19;
  v20 = self->_traceEncoder;

  [MTLCountersTraceRenderCommandEncoder drawIndexedPatches:v20 patchStart:"drawIndexedPatches:patchStart:patchCount:patchIndexBuffer:patchIndexBufferOffset:controlPointIndexBuffer:controlPointIndexBufferOffset:instanceCount:baseInstance:" patchCount:a3 patchIndexBuffer:a4 patchIndexBufferOffset:a5 controlPointIndexBuffer:a6 controlPointIndexBufferOffset:a7 instanceCount:a8 baseInstance:?];
}

- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v15 = mach_absolute_time();
  }

  else
  {
    v15 = 0;
  }

  self->_traceEncoder->super._timer = v15;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v16 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v18 = v16 - traceEncoder->super._timer;
  }

  else
  {
    v18 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v18;
  v19 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v19 drawIndexedPatches:a3 patchIndexBuffer:a4 patchIndexBufferOffset:a5 controlPointIndexBuffer:a6 controlPointIndexBufferOffset:a7 indirectBuffer:a8 indirectBufferOffset:?];
}

- (void)memoryBarrierWithScope:(unint64_t)a3 afterStages:(unint64_t)a4 beforeStages:(unint64_t)a5
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v13 memoryBarrierWithScope:a3 afterStages:a4 beforeStages:a5];
}

- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4 afterStages:(unint64_t)a5 beforeStages:(unint64_t)a6
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
  }

  else
  {
    v11 = 0;
  }

  self->_traceEncoder->super._timer = v11;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v12 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v14 = v12 - traceEncoder->super._timer;
  }

  else
  {
    v14 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v14;
  v15 = self->_traceEncoder;

  [(MTLCountersTraceRenderCommandEncoder *)v15 memoryBarrierWithResources:a3 count:a4 afterStages:a5 beforeStages:a6];
}

@end