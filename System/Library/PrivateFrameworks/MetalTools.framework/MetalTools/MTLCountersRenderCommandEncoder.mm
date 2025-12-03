@interface MTLCountersRenderCommandEncoder
- (MTLCountersRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent;
- (MTLCountersRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor;
- (void)dealloc;
- (void)dispatchThreadsPerTile:(id *)tile;
- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset;
- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)signpost;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)memoryBarrierWithScope:(unint64_t)scope afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level atIndex:(unint64_t)index;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level;
- (void)setDepthStencilState:(id)state;
- (void)setDepthStoreAction:(unint64_t)action;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index;
- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex;
- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setLabel:(id)label;
- (void)setLineWidth:(float)width;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setStencilResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level;
- (void)setStencilStoreAction:(unint64_t)action;
- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride;
- (void)setTessellationFactorScale:(float)scale;
- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTileTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings;
- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index;
- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset;
- (void)updateFence:(id)fence afterStages:(unint64_t)stages;
- (void)useHeap:(id)heap;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResource:(id)resource usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages;
@end

@implementation MTLCountersRenderCommandEncoder

- (MTLCountersRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent
{
  v7.receiver = self;
  v7.super_class = MTLCountersRenderCommandEncoder;
  v5 = [(MTLToolsRenderCommandEncoder *)&v7 initWithRenderCommandEncoder:encoder parent:?];
  if (v5)
  {
    -[MTLCountersRenderCommandEncoder _initWithCommandBuffer:](v5, "_initWithCommandBuffer:", [parent commandBuffer]);
  }

  return v5;
}

- (MTLCountersRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor
{
  v9.receiver = self;
  v9.super_class = MTLCountersRenderCommandEncoder;
  v6 = [(MTLToolsRenderCommandEncoder *)&v9 initWithRenderCommandEncoder:encoder parent:parent descriptor:descriptor];
  v7 = v6;
  if (v6)
  {
    [(MTLCountersRenderCommandEncoder *)v6 _initWithCommandBuffer:parent];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCountersRenderCommandEncoder;
  [(MTLToolsObject *)&v3 dealloc];
}

- (void)insertDebugSignpost:(id)signpost
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

  [(MTLCountersTraceCommandEncoder *)v9 insertDebugSignpost:signpost];
}

- (void)pushDebugGroup:(id)group
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

  [(MTLCountersTraceCommandEncoder *)v9 pushDebugGroup:group];
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

- (void)setLabel:(id)label
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

  [(MTLCountersTraceCommandEncoder *)v9 setLabel:label];
}

- (void)setRenderPipelineState:(id)state
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

  [(MTLCountersTraceRenderCommandEncoder *)v9 setRenderPipelineState:state];
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v13 setVertexBytes:bytes length:length atIndex:index];
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v13 setVertexBuffer:buffer offset:offset atIndex:index];
}

- (void)setVertexBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 setVertexBufferOffset:offset atIndex:index];
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  [(MTLCountersTraceRenderCommandEncoder *)v14 setVertexBuffers:buffers offsets:offsets withRange:location, length];
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v15 setVertexBytes:bytes length:length attributeStride:stride atIndex:index];
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v15 setVertexBuffer:buffer offset:offset attributeStride:stride atIndex:index];
}

- (void)setVertexBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v13 setVertexBufferOffset:offset attributeStride:stride atIndex:index];
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  [(MTLCountersTraceRenderCommandEncoder *)v16 setVertexBuffers:buffers offsets:offsets attributeStrides:strides withRange:location, length];
}

- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 setVertexTexture:texture atIndex:index];
}

- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  [(MTLCountersTraceRenderCommandEncoder *)v12 setVertexTextures:textures withRange:location, length];
}

- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 setVertexSamplerState:state atIndex:index];
}

- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  [(MTLCountersTraceRenderCommandEncoder *)v12 setVertexSamplerStates:states withRange:location, length];
}

- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
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
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v13 = clamp;
  *&v14 = maxClamp;
  [baseObject setVertexSamplerState:state lodMinClamp:index lodMaxClamp:v13 atIndex:v14];
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
  *&v15 = clamp;
  *&v16 = maxClamp;

  [(MTLCountersTraceRenderCommandEncoder *)v20 setVertexSamplerState:state lodMinClamp:index lodMaxClamp:v15 atIndex:v16];
}

- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  [(MTLCountersTraceRenderCommandEncoder *)v16 setVertexSamplerStates:states lodMinClamps:clamps lodMaxClamps:maxClamps withRange:location, length];
}

- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v13 setFragmentBytes:bytes length:length atIndex:index];
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v13 setFragmentBuffer:buffer offset:offset atIndex:index];
}

- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 setFragmentBufferOffset:offset atIndex:index];
}

- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  [(MTLCountersTraceRenderCommandEncoder *)v14 setFragmentBuffers:buffers offsets:offsets withRange:location, length];
}

- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 setFragmentTexture:texture atIndex:index];
}

- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  [(MTLCountersTraceRenderCommandEncoder *)v12 setFragmentTextures:textures withRange:location, length];
}

- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 setFragmentSamplerState:state atIndex:index];
}

- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  [(MTLCountersTraceRenderCommandEncoder *)v12 setFragmentSamplerStates:states withRange:location, length];
}

- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
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
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v13 = clamp;
  *&v14 = maxClamp;
  [baseObject setFragmentSamplerState:state lodMinClamp:index lodMaxClamp:v13 atIndex:v14];
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
  *&v15 = clamp;
  *&v16 = maxClamp;

  [(MTLCountersTraceRenderCommandEncoder *)v20 setFragmentSamplerState:state lodMinClamp:index lodMaxClamp:v15 atIndex:v16];
}

- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  [(MTLCountersTraceRenderCommandEncoder *)v16 setFragmentSamplerStates:states lodMinClamps:clamps lodMaxClamps:maxClamps withRange:location, length];
}

- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setFragmentTexture:texture atTextureIndex:index samplerState:state atSamplerIndex:samplerIndex];
}

- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v13 setTileBytes:bytes length:length atIndex:index];
}

- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v13 setTileBuffer:buffer offset:offset atIndex:index];
}

- (void)setTileBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 setTileBufferOffset:offset atIndex:index];
}

- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  [(MTLCountersTraceRenderCommandEncoder *)v14 setTileBuffers:buffers offsets:offsets withRange:location, length];
}

- (void)setTileTexture:(id)texture atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setTileTexture:texture atIndex:index];
}

- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setTileTextures:textures withRange:{location, length}];
}

- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setTileSamplerState:state atIndex:index];
}

- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setTileSamplerStates:states withRange:{location, length}];
}

- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v11 = clamp;
  *&v12 = maxClamp;

  [baseObject setTileSamplerState:state lodMinClamp:index lodMaxClamp:v11 atIndex:v12];
}

- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setTileSamplerStates:states lodMinClamps:clamps lodMaxClamps:maxClamps withRange:{location, length}];
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v5 = *tile;
  [baseObject dispatchThreadsPerTile:&v5];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setThreadgroupMemoryLength:length offset:offset atIndex:index];
}

- (void)useResource:(id)resource usage:(unint64_t)usage
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 useResource:resource usage:usage];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
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

  [(MTLCountersTraceRenderCommandEncoder *)v13 useResources:resources count:count usage:usage];
}

- (void)useResource:(id)resource usage:(unint64_t)usage stages:(unint64_t)stages
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

  [(MTLCountersTraceRenderCommandEncoder *)v13 useResource:resource usage:usage stages:stages];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages
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

  [(MTLCountersTraceRenderCommandEncoder *)v15 useResources:resources count:count usage:usage stages:stages];
}

- (void)useHeap:(id)heap
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

  [(MTLCountersTraceRenderCommandEncoder *)v9 useHeap:heap];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 useHeaps:heaps count:count];
}

- (void)setViewport:(id *)viewport
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
  baseObject = [(MTLToolsObject *)self baseObject];
  v7 = *&viewport->var2;
  v13 = *&viewport->var0;
  v14 = v7;
  v15 = *&viewport->var4;
  [baseObject setViewport:&v13];
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
  v12 = *&viewport->var2;
  v13 = *&viewport->var0;
  v14 = v12;
  v15 = *&viewport->var4;
  [(MTLCountersTraceRenderCommandEncoder *)v11 setViewport:&v13];
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 setViewports:viewports count:count];
}

- (void)setFrontFacingWinding:(unint64_t)winding
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

  [(MTLCountersTraceRenderCommandEncoder *)v9 setFrontFacingWinding:winding];
}

- (void)setCullMode:(unint64_t)mode
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

  [(MTLCountersTraceRenderCommandEncoder *)v9 setCullMode:mode];
}

- (void)setDepthClipMode:(unint64_t)mode
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

  [(MTLCountersTraceRenderCommandEncoder *)v9 setDepthClipMode:mode];
}

- (void)setLineWidth:(float)width
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v5 = width;

  [baseObject setLineWidth:v5];
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
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
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v11 = bias;
  *&v12 = scale;
  *&v13 = clamp;
  [baseObject setDepthBias:v11 slopeScale:v12 clamp:v13];
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
  *&v14 = bias;
  *&v15 = scale;
  *&v16 = clamp;

  [(MTLCountersTraceRenderCommandEncoder *)v20 setDepthBias:v14 slopeScale:v15 clamp:v16];
}

- (void)setScissorRect:(id *)rect
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
  baseObject = [(MTLToolsObject *)self baseObject];
  v7 = *&rect->var2;
  v13 = *&rect->var0;
  v14 = v7;
  [baseObject setScissorRect:&v13];
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
  v12 = *&rect->var2;
  v13 = *&rect->var0;
  v14 = v12;
  [(MTLCountersTraceRenderCommandEncoder *)v11 setScissorRect:&v13];
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 setScissorRects:rects count:count];
}

- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setVertexAmplificationMode:mode value:value];
}

- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setVertexAmplificationCount:count viewMappings:mappings];
}

- (void)setTriangleFillMode:(unint64_t)mode
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

  [(MTLCountersTraceRenderCommandEncoder *)v9 setTriangleFillMode:mode];
}

- (void)setDepthStencilState:(id)state
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

  [(MTLCountersTraceRenderCommandEncoder *)v9 setDepthStencilState:state];
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 setColorStoreAction:action atIndex:index];
}

- (void)setDepthStoreAction:(unint64_t)action
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

  [(MTLCountersTraceRenderCommandEncoder *)v9 setDepthStoreAction:action];
}

- (void)setStencilStoreAction:(unint64_t)action
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

  [(MTLCountersTraceRenderCommandEncoder *)v9 setStencilStoreAction:action];
}

- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 setVisibilityResultMode:mode offset:offset];
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
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
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v13 = red;
  *&v14 = green;
  *&v15 = blue;
  *&v16 = alpha;
  [baseObject setBlendColorRed:v13 green:v14 blue:v15 alpha:v16];
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
  *&v17 = red;
  *&v18 = green;
  *&v19 = blue;
  *&v20 = alpha;

  [(MTLCountersTraceRenderCommandEncoder *)v24 setBlendColorRed:v17 green:v18 blue:v19 alpha:v20];
}

- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setColorResolveTexture:texture slice:slice depthPlane:plane level:level atIndex:index];
}

- (void)setDepthResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthResolveTexture:texture slice:slice depthPlane:plane level:level];
}

- (void)setStencilResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setStencilResolveTexture:texture slice:slice depthPlane:plane level:level];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
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

  [(MTLCountersTraceRenderCommandEncoder *)v15 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
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

  [(MTLCountersTraceRenderCommandEncoder *)v13 drawPrimitives:primitives vertexStart:start vertexCount:count];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount
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

  [(MTLCountersTraceRenderCommandEncoder *)v19 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferOffset:offset instanceCount:instanceCount];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset
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

  [(MTLCountersTraceRenderCommandEncoder *)v17 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferOffset:offset];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
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

  [(MTLCountersTraceRenderCommandEncoder *)v17 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
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

  [MTLCountersTraceRenderCommandEncoder drawIndexedPrimitives:v20 indexCount:"drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:instanceCount:baseVertex:baseInstance:" indexType:primitives indexBuffer:count indexBufferOffset:type instanceCount:buffer baseVertex:offset baseInstance:instanceCount];
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
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

  [(MTLCountersTraceRenderCommandEncoder *)v13 drawPrimitives:primitives indirectBuffer:buffer indirectBufferOffset:offset];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
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

  [(MTLCountersTraceRenderCommandEncoder *)v19 drawIndexedPrimitives:primitives indexType:type indexBuffer:buffer indexBufferOffset:offset indirectBuffer:indirectBuffer indirectBufferOffset:bufferOffset];
}

- (void)updateFence:(id)fence afterStages:(unint64_t)stages
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 updateFence:fence afterStages:stages];
}

- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages
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

  [(MTLCountersTraceRenderCommandEncoder *)v11 waitForFence:fence beforeStages:stages];
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

- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride
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

  [(MTLCountersTraceRenderCommandEncoder *)v13 setTessellationFactorBuffer:buffer offset:offset instanceStride:stride];
}

- (void)setTessellationFactorScale:(float)scale
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
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v7 = scale;
  [baseObject setTessellationFactorScale:v7];
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
  *&v8 = scale;

  [(MTLCountersTraceRenderCommandEncoder *)v12 setTessellationFactorScale:v8];
}

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
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

  [(MTLCountersTraceRenderCommandEncoder *)v19 drawPatches:patches patchStart:start patchCount:count patchIndexBuffer:buffer patchIndexBufferOffset:offset instanceCount:instanceCount baseInstance:?];
}

- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
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

  [(MTLCountersTraceRenderCommandEncoder *)v17 drawPatches:patches patchIndexBuffer:buffer patchIndexBufferOffset:offset indirectBuffer:indirectBuffer indirectBufferOffset:bufferOffset];
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1
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

  [MTLCountersTraceRenderCommandEncoder drawIndexedPatches:v20 patchStart:"drawIndexedPatches:patchStart:patchCount:patchIndexBuffer:patchIndexBufferOffset:controlPointIndexBuffer:controlPointIndexBufferOffset:instanceCount:baseInstance:" patchCount:patches patchIndexBuffer:start patchIndexBufferOffset:count controlPointIndexBuffer:buffer controlPointIndexBufferOffset:offset instanceCount:indexBuffer baseInstance:?];
}

- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset
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

  [(MTLCountersTraceRenderCommandEncoder *)v19 drawIndexedPatches:patches patchIndexBuffer:buffer patchIndexBufferOffset:offset controlPointIndexBuffer:indexBuffer controlPointIndexBufferOffset:bufferOffset indirectBuffer:indirectBuffer indirectBufferOffset:?];
}

- (void)memoryBarrierWithScope:(unint64_t)scope afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
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

  [(MTLCountersTraceRenderCommandEncoder *)v13 memoryBarrierWithScope:scope afterStages:stages beforeStages:beforeStages];
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
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

  [(MTLCountersTraceRenderCommandEncoder *)v15 memoryBarrierWithResources:resources count:count afterStages:stages beforeStages:beforeStages];
}

@end