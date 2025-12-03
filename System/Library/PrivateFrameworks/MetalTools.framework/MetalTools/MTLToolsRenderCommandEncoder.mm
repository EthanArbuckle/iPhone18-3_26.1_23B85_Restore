@interface MTLToolsRenderCommandEncoder
- (BOOL)isMemorylessRender;
- (MTLToolsRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent;
- (MTLToolsRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (unint64_t)tileHeight;
- (unint64_t)tileWidth;
- (void)addSplitHandler:(id)handler;
- (void)dispatchThreadsPerTile:(id *)tile;
- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region;
- (void)dispatchThreadsPerTile:(id *)tile withCondition:(int64_t)condition;
- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset;
- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)resetTileCondition;
- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index stage:(unint64_t)stage;
- (void)setAlphaTestReferenceValue:(float)value;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setClipPlane:(float)plane p2:(float)p2 p3:(float)p3 p4:(float)p4 atIndex:(unint64_t)index;
- (void)setColorAttachmentMap:(id)map;
- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level atIndex:(unint64_t)index;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index;
- (void)setCommandDataCorruptModeSPI:(unint64_t)i;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthCleared;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthClipModeSPI:(unint64_t)i;
- (void)setDepthResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level;
- (void)setDepthStencilState:(id)state;
- (void)setDepthStoreAction:(unint64_t)action;
- (void)setDepthStoreActionOptions:(unint64_t)options;
- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound;
- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index;
- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index;
- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex;
- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setFragmentVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setFragmentVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index stage:(unint64_t)stage;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range stage:(unint64_t)stage;
- (void)setLineWidth:(float)width;
- (void)setMeshAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setMeshBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setMeshBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setMeshBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setMeshIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setMeshSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setMeshSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setMeshSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setMeshSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setMeshTexture:(id)texture atIndex:(unint64_t)index;
- (void)setMeshTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setMeshVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setMeshVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setObjectAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setObjectBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setObjectIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setObjectIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setObjectSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setObjectSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setObjectSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setObjectSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setObjectTexture:(id)texture atIndex:(unint64_t)index;
- (void)setObjectTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setObjectVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setObjectVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setPointSize:(float)size;
- (void)setProvokingVertexMode:(unint64_t)mode;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setStencilCleared;
- (void)setStencilResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level;
- (void)setStencilStoreAction:(unint64_t)action;
- (void)setStencilStoreActionOptions:(unint64_t)options;
- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride;
- (void)setTessellationFactorScale:(float)scale;
- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTileTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setTileVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setTileVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setToolsDispatchBufferSPI:(unint64_t)i atIndex:(unint64_t)index stages:(unint64_t)stages;
- (void)setTransformFeedbackState:(unint64_t)state;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setTriangleFrontFillMode:(unint64_t)mode backFillMode:(unint64_t)fillMode;
- (void)setVertexAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
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
- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index;
- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index;
- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setVertexVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVertexVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index stage:(unint64_t)stage;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range stage:(unint64_t)stage;
- (void)updateFence:(id)fence afterStages:(unint64_t)stages;
- (void)useHeap:(id)heap;
- (void)useHeap:(id)heap stages:(unint64_t)stages;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages;
- (void)useRenderPipelineState:(id)state;
- (void)useRenderPipelineStates:(const void *)states count:(unint64_t)count;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResource:(id)resource usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)useResourceGroup:(id)group usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages;
@end

@implementation MTLToolsRenderCommandEncoder

- (MTLToolsRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTLToolsRenderCommandEncoder;
  return [(MTLToolsCommandEncoder *)&v5 initWithBaseObject:encoder parallelRenderCommandEncoder:parent];
}

- (MTLToolsRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor
{
  v9.receiver = self;
  v9.super_class = MTLToolsRenderCommandEncoder;
  v7 = [(MTLToolsCommandEncoder *)&v9 initWithBaseObject:encoder parent:?];
  if (v7)
  {
    [parent retainObjectsFromRenderPassDescriptor:descriptor];
  }

  return v7;
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v11 = red;
  *&v12 = green;
  *&v13 = blue;
  *&v14 = alpha;

  [baseObject setBlendColorRed:v11 green:v12 blue:v13 alpha:v14];
}

- (void)setRenderPipelineState:(id)state
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setRenderPipelineState:baseObject2];
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setVertexBytes:bytes length:length atIndex:index];
}

- (void)setVertexBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setVertexBufferOffset:offset atIndex:index];
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setVertexBuffer:baseObject2 offset:offset atIndex:index];
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setVertexBuffer:baseObject2 offset:offset attributeStride:stride atIndex:index];
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v17 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    buffersCopy = buffers;
    v12 = v16;
    v13 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*buffersCopy];
      v14 = *buffersCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setVertexBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setVertexBufferOffset:offset attributeStride:stride atIndex:index];
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setVertexBytes:bytes length:length attributeStride:stride atIndex:index];
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject executeCommandsInBuffer:baseObject2 withRange:{location, length}];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [indirectBuffer baseObject];

  [baseObject executeCommandsInBuffer:baseObject2 indirectBuffer:baseObject3 indirectBufferOffset:offset];
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v15 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    buffersCopy = buffers;
    v10 = v14;
    v11 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*buffersCopy];
      v12 = *buffersCopy++;
      *v10++ = [v12 baseObject];
      --v11;
    }

    while (v11);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject setVertexTexture:baseObject2 atIndex:index];
}

- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    texturesCopy = textures;
    v8 = v12;
    v9 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*texturesCopy];
      v10 = *texturesCopy++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setVertexSamplerState:baseObject2 atIndex:index];
}

- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    statesCopy = states;
    v8 = v12;
    v9 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*statesCopy];
      v10 = *statesCopy++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v13 = clamp;
  *&v14 = maxClamp;

  [baseObject setVertexSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v13 atIndex:v14];
}

- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v14 = clamp;
  *&v15 = maxClamp;
  *&v16 = bias;

  [baseObject setVertexSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v14 lodBias:v15 atIndex:v16];
}

- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v17 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    statesCopy = states;
    v12 = v16;
    v13 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*statesCopy];
      v14 = *statesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setViewport:(id *)viewport
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v5 = *&viewport->var2;
  v6[0] = *&viewport->var0;
  v6[1] = v5;
  v6[2] = *&viewport->var4;
  [baseObject setViewport:v6];
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setViewports:viewports count:count];
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setScissorRects:rects count:count];
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setFrontFacingWinding:winding];
}

- (void)setCullMode:(unint64_t)mode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setCullMode:mode];
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v9 = bias;
  *&v10 = scale;
  *&v11 = clamp;

  [baseObject setDepthBias:v9 slopeScale:v10 clamp:v11];
}

- (void)setScissorRect:(id *)rect
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v5 = *&rect->var2;
  v6[0] = *&rect->var0;
  v6[1] = v5;
  [baseObject setScissorRect:v6];
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setTriangleFillMode:mode];
}

- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v7 = bound;
  *&v8 = maxBound;

  [baseObject setDepthTestMinBound:v7 maxBound:v8];
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

- (void)setDepthClipMode:(unint64_t)mode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthClipModeSPI:mode];
}

- (void)setDepthClipModeSPI:(unint64_t)i
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthClipModeSPI:i];
}

- (void)setCommandDataCorruptModeSPI:(unint64_t)i
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setCommandDataCorruptModeSPI:i];
}

- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setFragmentBytes:bytes length:length atIndex:index];
}

- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setFragmentBufferOffset:offset atIndex:index];
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setFragmentBuffer:baseObject2 offset:offset atIndex:index];
}

- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14[31] = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    buffersCopy = buffers;
    v10 = v14;
    v11 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*buffersCopy];
      v12 = *buffersCopy++;
      *v10++ = [v12 baseObject];
      --v11;
    }

    while (v11);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject setFragmentTexture:baseObject2 atIndex:index];
}

- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    texturesCopy = textures;
    v8 = v12;
    v9 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*texturesCopy];
      v10 = *texturesCopy++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setFragmentSamplerState:baseObject2 atIndex:index];
}

- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    statesCopy = states;
    v8 = v12;
    v9 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*statesCopy];
      v10 = *statesCopy++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v13 = clamp;
  *&v14 = maxClamp;

  [baseObject setFragmentSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v13 atIndex:v14];
}

- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v14 = clamp;
  *&v15 = maxClamp;
  *&v16 = bias;

  [baseObject setFragmentSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v14 lodBias:v15 atIndex:v16];
}

- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v17 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    statesCopy = states;
    v12 = v16;
    v13 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*statesCopy];
      v14 = *statesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setDepthStencilState:(id)state
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setDepthStencilState:baseObject2];
}

- (void)setDepthCleared
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthCleared];
}

- (void)setStencilCleared
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setStencilCleared];
}

- (void)setAlphaTestReferenceValue:(float)value
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v5 = value;

  [baseObject setAlphaTestReferenceValue:v5];
}

- (void)setPointSize:(float)size
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v5 = size;

  [baseObject setPointSize:v5];
}

- (void)setClipPlane:(float)plane p2:(float)p2 p3:(float)p3 p4:(float)p4 atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v13 = plane;
  *&v14 = p2;
  *&v15 = p3;
  *&v16 = p4;

  [baseObject setClipPlane:index p2:v13 p3:v14 p4:v15 atIndex:v16];
}

- (void)setProvokingVertexMode:(unint64_t)mode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setProvokingVertexMode:mode];
}

- (void)setTriangleFrontFillMode:(unint64_t)mode backFillMode:(unint64_t)fillMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setTriangleFrontFillMode:mode backFillMode:fillMode];
}

- (void)setTransformFeedbackState:(unint64_t)state
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setTransformFeedbackState:state];
}

- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject setColorResolveTexture:baseObject2 slice:slice depthPlane:plane level:level atIndex:index];
}

- (void)setDepthResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject setDepthResolveTexture:baseObject2 slice:slice depthPlane:plane level:level];
}

- (void)setStencilResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject setStencilResolveTexture:baseObject2 slice:slice depthPlane:plane level:level];
}

- (BOOL)isMemorylessRender
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isMemorylessRender];
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v7 = *&tile->var0;
  var2 = tile->var2;
  v8 = *&region->var0.var2;
  v9[0] = *&region->var0.var0;
  v9[1] = v8;
  v9[2] = *&region->var1.var1;
  v10 = v7;
  [baseObject dispatchThreadsPerTile:&v10 inRegion:v9];
}

- (void)resetTileCondition
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject resetTileCondition];
}

- (void)dispatchThreadsPerTile:(id *)tile withCondition:(int64_t)condition
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v7 = *tile;
  [baseObject dispatchThreadsPerTile:&v7 withCondition:condition];
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setColorStoreAction:action atIndex:index];
}

- (void)setDepthStoreAction:(unint64_t)action
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthStoreAction:action];
}

- (void)setStencilStoreAction:(unint64_t)action
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setStencilStoreAction:action];
}

- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setColorStoreActionOptions:options atIndex:index];
}

- (void)setDepthStoreActionOptions:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthStoreActionOptions:options];
}

- (void)setStencilStoreActionOptions:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setStencilStoreActionOptions:options];
}

- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setVisibilityResultMode:mode offset:offset];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawPrimitives:primitives vertexStart:start vertexCount:count];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject2 indexBufferOffset:offset instanceCount:instanceCount];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject2 indexBufferOffset:offset];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject2 indexBufferOffset:offset instanceCount:instanceCount baseVertex:? baseInstance:?];
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject drawPrimitives:primitives indirectBuffer:baseObject2 indirectBufferOffset:offset];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  [(MTLToolsCommandEncoder *)self addRetainedObject:indirectBuffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [indirectBuffer baseObject];

  [baseObject drawIndexedPrimitives:primitives indexType:type indexBuffer:baseObject2 indexBufferOffset:offset indirectBuffer:baseObject3 indirectBufferOffset:bufferOffset];
}

- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setTessellationFactorBuffer:baseObject2 offset:offset instanceStride:stride];
}

- (void)setTessellationFactorScale:(float)scale
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v5 = scale;

  [baseObject setTessellationFactorScale:v5];
}

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject drawPatches:patches patchStart:start patchCount:count patchIndexBuffer:baseObject2 patchIndexBufferOffset:offset instanceCount:instanceCount baseInstance:?];
}

- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  [(MTLToolsCommandEncoder *)self addRetainedObject:indirectBuffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [indirectBuffer baseObject];

  [baseObject drawPatches:patches patchIndexBuffer:baseObject2 patchIndexBufferOffset:offset indirectBuffer:baseObject3 indirectBufferOffset:bufferOffset];
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  [(MTLToolsCommandEncoder *)self addRetainedObject:indexBuffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [indexBuffer baseObject];

  [baseObject drawIndexedPatches:patches patchStart:start patchCount:count patchIndexBuffer:baseObject2 patchIndexBufferOffset:offset controlPointIndexBuffer:baseObject3 controlPointIndexBufferOffset:? instanceCount:? baseInstance:?];
}

- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  [(MTLToolsCommandEncoder *)self addRetainedObject:indexBuffer];
  [(MTLToolsCommandEncoder *)self addRetainedObject:indirectBuffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [indexBuffer baseObject];
  baseObject4 = [indirectBuffer baseObject];

  [baseObject drawIndexedPatches:patches patchIndexBuffer:baseObject2 patchIndexBufferOffset:offset controlPointIndexBuffer:baseObject3 controlPointIndexBufferOffset:bufferOffset indirectBuffer:baseObject4 indirectBufferOffset:?];
}

- (void)setLineWidth:(float)width
{
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v5 = width;

  [baseObject setLineWidth:v5];
}

- (void)addSplitHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject addSplitHandler:handler];
}

- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:state];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  baseObject3 = [state baseObject];

  [baseObject setFragmentTexture:baseObject2 atTextureIndex:index samplerState:baseObject3 atSamplerIndex:samplerIndex];
}

- (void)updateFence:(id)fence afterStages:(unint64_t)stages
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [fence baseObject];

  [baseObject updateFence:baseObject2 afterStages:stages];
}

- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [fence baseObject];

  [baseObject waitForFence:baseObject2 beforeStages:stages];
}

- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setTileBytes:bytes length:length atIndex:index];
}

- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setTileBuffer:baseObject2 offset:offset atIndex:index];
}

- (void)setTileBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setTileBufferOffset:offset atIndex:index];
}

- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v15[1] = *MEMORY[0x277D85DE8];
  v9 = v15 - ((8 * range.length + 15) & 0xFFFFFFFFFFFFFFF0);
  if (range.length)
  {
    buffersCopy = buffers;
    v11 = (v15 - ((8 * range.length + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*buffersCopy];
      v13 = *buffersCopy++;
      *v11++ = [v13 baseObject];
      --v12;
    }

    while (v12);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)setTileTexture:(id)texture atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject setTileTexture:baseObject2 atIndex:index];
}

- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = v13 - ((8 * range.length + 15) & 0xFFFFFFFFFFFFFFF0);
  if (range.length)
  {
    texturesCopy = textures;
    v9 = (v13 - ((8 * range.length + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*texturesCopy];
      v11 = *texturesCopy++;
      *v9++ = [v11 baseObject];
      --v10;
    }

    while (v10);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setTileSamplerState:baseObject2 atIndex:index];
}

- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = v13 - ((8 * range.length + 15) & 0xFFFFFFFFFFFFFFF0);
  if (range.length)
  {
    statesCopy = states;
    v9 = (v13 - ((8 * range.length + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*statesCopy];
      v11 = *statesCopy++;
      *v9++ = [v11 baseObject];
      --v10;
    }

    while (v10);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v13 = clamp;
  *&v14 = maxClamp;

  [baseObject setTileSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v13 atIndex:v14];
}

- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v17[1] = *MEMORY[0x277D85DE8];
  v11 = v17 - ((8 * range.length + 15) & 0xFFFFFFFFFFFFFFF0);
  if (range.length)
  {
    statesCopy = states;
    v13 = (v17 - ((8 * range.length + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*statesCopy];
      v15 = *statesCopy++;
      *v13++ = [v15 baseObject];
      --v14;
    }

    while (v14);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v16 = *MEMORY[0x277D85DE8];
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
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [resource baseObject];

  [baseObject useResource:baseObject2 usage:usage];
}

- (void)useResource:(id)resource usage:(unint64_t)usage stages:(unint64_t)stages
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [resource baseObject];

  [baseObject useResource:baseObject2 usage:usage stages:stages];
}

- (void)useRenderPipelineState:(id)state
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject useRenderPipelineState:baseObject2];
}

- (void)useRenderPipelineStates:(const void *)states count:(unint64_t)count
{
  std::vector<objc_object  {objcproto22MTLRenderPipelineState}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      baseObject = [states[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useRenderPipelineStates:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v9 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:resources[v9]];
      baseObject = [resources[v9] baseObject];
      *(__p[0] + v9++) = baseObject;
    }

    while (count != v9);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useResources:__p[0] count:count usage:usage];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages
{
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v11 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:resources[v11]];
      baseObject = [resources[v11] baseObject];
      *(__p[0] + v11++) = baseObject;
    }

    while (count != v11);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useResources:__p[0] count:count usage:usage stages:stages];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useHeap:(id)heap
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [heap baseObject];

  [baseObject useHeap:baseObject2];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:heaps[v7]];
      baseObject = [heaps[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useHeaps:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useHeap:(id)heap stages:(unint64_t)stages
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [heap baseObject];

  [baseObject useHeap:baseObject2 stages:stages];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages
{
  std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v9 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:heaps[v9]];
      baseObject = [heaps[v9] baseObject];
      *(__p[0] + v9++) = baseObject;
    }

    while (count != v9);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useHeaps:__p[0] count:count stages:stages];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (unint64_t)tileWidth
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject tileWidth];
}

- (unint64_t)tileHeight
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject tileHeight];
}

- (void)setObjectBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setObjectBytes:bytes length:length atIndex:index];
}

- (void)setObjectBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setObjectBufferOffset:offset atIndex:index];
}

- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setObjectBuffer:baseObject2 offset:offset atIndex:index];
}

- (void)setObjectBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14[31] = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    buffersCopy = buffers;
    v10 = v14;
    v11 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*buffersCopy];
      v12 = *buffersCopy++;
      *v10++ = [v12 baseObject];
      --v11;
    }

    while (v11);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setObjectTexture:(id)texture atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject setObjectTexture:baseObject2 atIndex:index];
}

- (void)setObjectTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    texturesCopy = textures;
    v8 = v12;
    v9 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*texturesCopy];
      v10 = *texturesCopy++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setObjectSamplerState:(id)state atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setObjectSamplerState:baseObject2 atIndex:index];
}

- (void)setObjectSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    statesCopy = states;
    v8 = v12;
    v9 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*statesCopy];
      v10 = *statesCopy++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setObjectSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v13 = clamp;
  *&v14 = maxClamp;

  [baseObject setObjectSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v13 atIndex:v14];
}

- (void)setObjectSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v17 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    statesCopy = states;
    v12 = v16;
    v13 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*statesCopy];
      v14 = *statesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setObjectThreadgroupMemoryLength:length atIndex:index];
}

- (void)setMeshBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setMeshBytes:bytes length:length atIndex:index];
}

- (void)setMeshBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setMeshBufferOffset:offset atIndex:index];
}

- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setMeshBuffer:baseObject2 offset:offset atIndex:index];
}

- (void)setMeshBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14[31] = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    buffersCopy = buffers;
    v10 = v14;
    v11 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*buffersCopy];
      v12 = *buffersCopy++;
      *v10++ = [v12 baseObject];
      --v11;
    }

    while (v11);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setMeshTexture:(id)texture atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject setMeshTexture:baseObject2 atIndex:index];
}

- (void)setMeshTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    texturesCopy = textures;
    v8 = v12;
    v9 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*texturesCopy];
      v10 = *texturesCopy++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setMeshSamplerState:(id)state atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setMeshSamplerState:baseObject2 atIndex:index];
}

- (void)setMeshSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    statesCopy = states;
    v8 = v12;
    v9 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*statesCopy];
      v10 = *statesCopy++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setMeshSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v13 = clamp;
  *&v14 = maxClamp;

  [baseObject setMeshSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v13 atIndex:v14];
}

- (void)setMeshSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v17 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    statesCopy = states;
    v12 = v16;
    v13 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*statesCopy];
      v14 = *statesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v11 = *threadgroups;
  v10 = *threadgroup;
  v9 = *meshThreadgroup;
  [baseObject drawMeshThreadgroups:&v11 threadsPerObjectThreadgroup:&v10 threadsPerMeshThreadgroup:&v9];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  v14 = *threadgroup;
  v13 = *meshThreadgroup;
  [baseObject drawMeshThreadgroupsWithIndirectBuffer:baseObject2 indirectBufferOffset:offset threadsPerObjectThreadgroup:&v14 threadsPerMeshThreadgroup:&v13];
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v11 = *threads;
  v10 = *threadgroup;
  v9 = *meshThreadgroup;
  [baseObject drawMeshThreads:&v11 threadsPerObjectThreadgroup:&v10 threadsPerMeshThreadgroup:&v9];
}

- (void)useResourceGroup:(id)group usage:(unint64_t)usage stages:(unint64_t)stages
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject useResourceGroup:group usage:usage stages:stages];
}

- (void)setVertexVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setVertexVisibleFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setVertexVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [tables[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setVertexVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setFragmentVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setFragmentVisibleFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setFragmentVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [tables[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setFragmentVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setTileVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setTileVisibleFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setTileVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [tables[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setTileVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setObjectVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setObjectVisibleFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setObjectVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [tables[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setObjectVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setMeshVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setMeshVisibleFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setMeshVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [tables[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setMeshVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index stage:(unint64_t)stage
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setVisibleFunctionTable:baseObject2 atBufferIndex:index stage:stage];
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range stage:(unint64_t)stage
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [tables[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setVisibleFunctionTables:__p[0] withBufferRange:location stage:{length, stage}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setVertexIntersectionFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  buildBaseVector(tables, range.length, __p);
  baseObject = [(MTLToolsObject *)self baseObject];
  [baseObject setVertexIntersectionFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setFragmentIntersectionFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  buildBaseVector(tables, range.length, __p);
  baseObject = [(MTLToolsObject *)self baseObject];
  [baseObject setFragmentIntersectionFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setTileIntersectionFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  buildBaseVector(tables, range.length, __p);
  baseObject = [(MTLToolsObject *)self baseObject];
  [baseObject setTileIntersectionFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setVertexAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  [baseObject setVertexAccelerationStructure:baseObject2 atBufferIndex:index];
}

- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  [baseObject setFragmentAccelerationStructure:baseObject2 atBufferIndex:index];
}

- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  [baseObject setTileAccelerationStructure:baseObject2 atBufferIndex:index];
}

- (void)setObjectIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setObjectIntersectionFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setObjectIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  buildBaseVector(tables, range.length, __p);
  baseObject = [(MTLToolsObject *)self baseObject];
  [baseObject setObjectIntersectionFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setObjectAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  [baseObject setObjectAccelerationStructure:baseObject2 atBufferIndex:index];
}

- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setMeshIntersectionFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setMeshIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  buildBaseVector(tables, range.length, __p);
  baseObject = [(MTLToolsObject *)self baseObject];
  [baseObject setMeshIntersectionFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setMeshAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  [baseObject setMeshAccelerationStructure:baseObject2 atBufferIndex:index];
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index stage:(unint64_t)stage
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setIntersectionFunctionTable:baseObject2 atBufferIndex:index stage:stage];
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range stage:(unint64_t)stage
{
  length = range.length;
  location = range.location;
  buildBaseVector(tables, range.length, __p);
  baseObject = [(MTLToolsObject *)self baseObject];
  [baseObject setIntersectionFunctionTables:__p[0] withBufferRange:location stage:{length, stage}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index stage:(unint64_t)stage
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  [baseObject setAccelerationStructure:baseObject2 atBufferIndex:index stage:stage];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject endEncodingAndRetrieveProgramAddressTable];
}

- (void)useResidencySet:(id)set
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [set baseObject];

  [baseObject useResidencySet:baseObject2];
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:sets[v7]];
      baseObject = [sets[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useResidencySets:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setColorAttachmentMap:(id)map
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setColorAttachmentMap:map];
}

- (void)setToolsDispatchBufferSPI:(unint64_t)i atIndex:(unint64_t)index stages:(unint64_t)stages
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setToolsDispatchBufferSPI:i atIndex:index stages:stages];
}

@end