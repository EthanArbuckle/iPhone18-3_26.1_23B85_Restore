@interface MTLToolsRenderCommandEncoder
- (BOOL)isMemorylessRender;
- (MTLToolsRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4;
- (MTLToolsRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (unint64_t)tileHeight;
- (unint64_t)tileWidth;
- (void)addSplitHandler:(id)a3;
- (void)dispatchThreadsPerTile:(id *)a3;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4;
- (void)dispatchThreadsPerTile:(id *)a3 withCondition:(int64_t)a4;
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
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)resetTileCondition;
- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4 stage:(unint64_t)a5;
- (void)setAlphaTestReferenceValue:(float)a3;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setClipPlane:(float)a3 p2:(float)a4 p3:(float)a5 p4:(float)a6 atIndex:(unint64_t)a7;
- (void)setColorAttachmentMap:(id)a3;
- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 atIndex:(unint64_t)a7;
- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setCommandDataCorruptModeSPI:(unint64_t)a3;
- (void)setCullMode:(unint64_t)a3;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setDepthCleared;
- (void)setDepthClipMode:(unint64_t)a3;
- (void)setDepthClipModeSPI:(unint64_t)a3;
- (void)setDepthResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6;
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
- (void)setFragmentIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 lodBias:(float)a6 atIndex:(unint64_t)a7;
- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6;
- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setFrontFacingWinding:(unint64_t)a3;
- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4 stage:(unint64_t)a5;
- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4 stage:(unint64_t)a5;
- (void)setLineWidth:(float)a3;
- (void)setMeshAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setMeshBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setMeshBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setMeshBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setMeshIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setMeshSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setMeshSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setMeshSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setMeshSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setMeshTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setMeshTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setMeshVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setObjectAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setObjectBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setObjectBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setObjectSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setObjectSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setObjectSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setObjectSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setObjectTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setObjectTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setObjectVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setPointSize:(float)a3;
- (void)setProvokingVertexMode:(unint64_t)a3;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setStencilCleared;
- (void)setStencilResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6;
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
- (void)setTileIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setTileSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setTileSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setTileSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setTileSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTileVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4 stages:(unint64_t)a5;
- (void)setTransformFeedbackState:(unint64_t)a3;
- (void)setTriangleFillMode:(unint64_t)a3;
- (void)setTriangleFrontFillMode:(unint64_t)a3 backFillMode:(unint64_t)a4;
- (void)setVertexAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
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
- (void)setVertexIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVertexIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 lodBias:(float)a6 atIndex:(unint64_t)a7;
- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVertexVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVertexVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setViewport:(id *)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4 stage:(unint64_t)a5;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4 stage:(unint64_t)a5;
- (void)updateFence:(id)a3 afterStages:(unint64_t)a4;
- (void)useHeap:(id)a3;
- (void)useHeap:(id)a3 stages:(unint64_t)a4;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4 stages:(unint64_t)a5;
- (void)useRenderPipelineState:(id)a3;
- (void)useRenderPipelineStates:(const void *)a3 count:(unint64_t)a4;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5;
- (void)useResourceGroup:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6;
- (void)waitForFence:(id)a3 beforeStages:(unint64_t)a4;
@end

@implementation MTLToolsRenderCommandEncoder

- (MTLToolsRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLToolsRenderCommandEncoder;
  return [(MTLToolsCommandEncoder *)&v5 initWithBaseObject:a3 parallelRenderCommandEncoder:a4];
}

- (MTLToolsRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5
{
  v9.receiver = self;
  v9.super_class = MTLToolsRenderCommandEncoder;
  v7 = [(MTLToolsCommandEncoder *)&v9 initWithBaseObject:a3 parent:?];
  if (v7)
  {
    [a4 retainObjectsFromRenderPassDescriptor:a5];
  }

  return v7;
}

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  *&v11 = a3;
  *&v12 = a4;
  *&v13 = a5;
  *&v14 = a6;

  [v10 setBlendColorRed:v11 green:v12 blue:v13 alpha:v14];
}

- (void)setRenderPipelineState:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 setRenderPipelineState:v6];
}

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setVertexBytes:a3 length:a4 atIndex:a5];
}

- (void)setVertexBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setVertexBufferOffset:a3 atIndex:a4];
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 setVertexBuffer:v10 offset:a4 atIndex:a5];
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];

  [v11 setVertexBuffer:v12 offset:a4 attributeStride:a5 atIndex:a6];
}

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v17 = *MEMORY[0x277D85DE8];
  if (a6.length)
  {
    v11 = a3;
    v12 = v16;
    v13 = a6.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v11];
      v14 = *v11++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setVertexBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setVertexBufferOffset:a3 attributeStride:a4 atIndex:a5];
}

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  [v10 setVertexBytes:a3 length:a4 attributeStride:a5 atIndex:a6];
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 executeCommandsInBuffer:v9 withRange:{location, length}];
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11 = [a4 baseObject];

  [v9 executeCommandsInBuffer:v10 indirectBuffer:v11 indirectBufferOffset:a5];
}

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v15 = *MEMORY[0x277D85DE8];
  if (a5.length)
  {
    v9 = a3;
    v10 = v14;
    v11 = a5.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v9];
      v12 = *v9++;
      *v10++ = [v12 baseObject];
      --v11;
    }

    while (v11);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setVertexTexture:v8 atIndex:a4];
}

- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v13 = *MEMORY[0x277D85DE8];
  if (a4.length)
  {
    v7 = a3;
    v8 = v12;
    v9 = a4.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v7];
      v10 = *v7++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setVertexSamplerState:v8 atIndex:a4];
}

- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v13 = *MEMORY[0x277D85DE8];
  if (a4.length)
  {
    v7 = a3;
    v8 = v12;
    v9 = a4.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v7];
      v10 = *v7++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  *&v13 = a4;
  *&v14 = a5;

  [v11 setVertexSamplerState:v12 lodMinClamp:a6 lodMaxClamp:v13 atIndex:v14];
}

- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 lodBias:(float)a6 atIndex:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  *&v14 = a4;
  *&v15 = a5;
  *&v16 = a6;

  [v12 setVertexSamplerState:v13 lodMinClamp:a7 lodMaxClamp:v14 lodBias:v15 atIndex:v16];
}

- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v17 = *MEMORY[0x277D85DE8];
  if (a6.length)
  {
    v11 = a3;
    v12 = v16;
    v13 = a6.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v11];
      v14 = *v11++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setViewport:(id *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = *&a3->var2;
  v6[0] = *&a3->var0;
  v6[1] = v5;
  v6[2] = *&a3->var4;
  [v4 setViewport:v6];
}

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setViewports:a3 count:a4];
}

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setScissorRects:a3 count:a4];
}

- (void)setFrontFacingWinding:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setFrontFacingWinding:a3];
}

- (void)setCullMode:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setCullMode:a3];
}

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  *&v9 = a3;
  *&v10 = a4;
  *&v11 = a5;

  [v8 setDepthBias:v9 slopeScale:v10 clamp:v11];
}

- (void)setScissorRect:(id *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = *&a3->var2;
  v6[0] = *&a3->var0;
  v6[1] = v5;
  [v4 setScissorRect:v6];
}

- (void)setTriangleFillMode:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setTriangleFillMode:a3];
}

- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  *&v7 = a3;
  *&v8 = a4;

  [v6 setDepthTestMinBound:v7 maxBound:v8];
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

- (void)setDepthClipMode:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setDepthClipModeSPI:a3];
}

- (void)setDepthClipModeSPI:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setDepthClipModeSPI:a3];
}

- (void)setCommandDataCorruptModeSPI:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setCommandDataCorruptModeSPI:a3];
}

- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setFragmentBytes:a3 length:a4 atIndex:a5];
}

- (void)setFragmentBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setFragmentBufferOffset:a3 atIndex:a4];
}

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 setFragmentBuffer:v10 offset:a4 atIndex:a5];
}

- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v14[31] = *MEMORY[0x277D85DE8];
  if (a5.length)
  {
    v9 = a3;
    v10 = v14;
    v11 = a5.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v9];
      v12 = *v9++;
      *v10++ = [v12 baseObject];
      --v11;
    }

    while (v11);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setFragmentTexture:v8 atIndex:a4];
}

- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v13 = *MEMORY[0x277D85DE8];
  if (a4.length)
  {
    v7 = a3;
    v8 = v12;
    v9 = a4.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v7];
      v10 = *v7++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setFragmentSamplerState:v8 atIndex:a4];
}

- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v13 = *MEMORY[0x277D85DE8];
  if (a4.length)
  {
    v7 = a3;
    v8 = v12;
    v9 = a4.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v7];
      v10 = *v7++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  *&v13 = a4;
  *&v14 = a5;

  [v11 setFragmentSamplerState:v12 lodMinClamp:a6 lodMaxClamp:v13 atIndex:v14];
}

- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 lodBias:(float)a6 atIndex:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  *&v14 = a4;
  *&v15 = a5;
  *&v16 = a6;

  [v12 setFragmentSamplerState:v13 lodMinClamp:a7 lodMaxClamp:v14 lodBias:v15 atIndex:v16];
}

- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v17 = *MEMORY[0x277D85DE8];
  if (a6.length)
  {
    v11 = a3;
    v12 = v16;
    v13 = a6.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v11];
      v14 = *v11++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setDepthStencilState:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 setDepthStencilState:v6];
}

- (void)setDepthCleared
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 setDepthCleared];
}

- (void)setStencilCleared
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 setStencilCleared];
}

- (void)setAlphaTestReferenceValue:(float)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  *&v5 = a3;

  [v4 setAlphaTestReferenceValue:v5];
}

- (void)setPointSize:(float)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  *&v5 = a3;

  [v4 setPointSize:v5];
}

- (void)setClipPlane:(float)a3 p2:(float)a4 p3:(float)a5 p4:(float)a6 atIndex:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];
  *&v13 = a3;
  *&v14 = a4;
  *&v15 = a5;
  *&v16 = a6;

  [v12 setClipPlane:a7 p2:v13 p3:v14 p4:v15 atIndex:v16];
}

- (void)setProvokingVertexMode:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setProvokingVertexMode:a3];
}

- (void)setTriangleFrontFillMode:(unint64_t)a3 backFillMode:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setTriangleFrontFillMode:a3 backFillMode:a4];
}

- (void)setTransformFeedbackState:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setTransformFeedbackState:a3];
}

- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 atIndex:(unint64_t)a7
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a3 baseObject];

  [v13 setColorResolveTexture:v14 slice:a4 depthPlane:a5 level:a6 atIndex:a7];
}

- (void)setDepthResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];

  [v11 setDepthResolveTexture:v12 slice:a4 depthPlane:a5 level:a6];
}

- (void)setStencilResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];

  [v11 setStencilResolveTexture:v12 slice:a4 depthPlane:a5 level:a6];
}

- (BOOL)isMemorylessRender
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isMemorylessRender];
}

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = *&a3->var0;
  var2 = a3->var2;
  v8 = *&a4->var0.var2;
  v9[0] = *&a4->var0.var0;
  v9[1] = v8;
  v9[2] = *&a4->var1.var1;
  v10 = v7;
  [v6 dispatchThreadsPerTile:&v10 inRegion:v9];
}

- (void)resetTileCondition
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 resetTileCondition];
}

- (void)dispatchThreadsPerTile:(id *)a3 withCondition:(int64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = *a3;
  [v6 dispatchThreadsPerTile:&v7 withCondition:a4];
}

- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setColorStoreAction:a3 atIndex:a4];
}

- (void)setDepthStoreAction:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setDepthStoreAction:a3];
}

- (void)setStencilStoreAction:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setStencilStoreAction:a3];
}

- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setColorStoreActionOptions:a3 atIndex:a4];
}

- (void)setDepthStoreActionOptions:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setDepthStoreActionOptions:a3];
}

- (void)setStencilStoreActionOptions:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setStencilStoreActionOptions:a3];
}

- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setVisibilityResultMode:a3 offset:a4];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  [v10 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 drawPrimitives:a3 vertexStart:a4 vertexCount:a5];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:a6];
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a6 baseObject];

  [v15 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:v16 indexBufferOffset:a7 instanceCount:a8];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:a6];
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a6 baseObject];

  [v13 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:v14 indexBufferOffset:a7];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];

  [v12 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6 baseInstance:a7];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:a6];
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a6 baseObject];

  [v17 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:v18 indexBufferOffset:a7 instanceCount:a8 baseVertex:? baseInstance:?];
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:a4];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a4 baseObject];

  [v9 drawPrimitives:a3 indirectBuffer:v10 indirectBufferOffset:a5];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:a5];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a7];
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a5 baseObject];
  v17 = [a7 baseObject];

  [v15 drawIndexedPrimitives:a3 indexType:a4 indexBuffer:v16 indexBufferOffset:a6 indirectBuffer:v17 indirectBufferOffset:a8];
}

- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 setTessellationFactorBuffer:v9 offset:a4 instanceStride:a5];
}

- (void)setTessellationFactorScale:(float)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  *&v5 = a3;

  [v4 setTessellationFactorScale:v5];
}

- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:a6];
  v16 = [(MTLToolsObject *)self baseObject];
  v17 = [a6 baseObject];

  [v16 drawPatches:a3 patchStart:a4 patchCount:a5 patchIndexBuffer:v17 patchIndexBufferOffset:a7 instanceCount:a8 baseInstance:?];
}

- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:a4];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a6];
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a4 baseObject];
  v15 = [a6 baseObject];

  [v13 drawPatches:a3 patchIndexBuffer:v14 patchIndexBufferOffset:a5 indirectBuffer:v15 indirectBufferOffset:a7];
}

- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:a6];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a8];
  v18 = [(MTLToolsObject *)self baseObject];
  v19 = [a6 baseObject];
  v20 = [a8 baseObject];

  [v18 drawIndexedPatches:a3 patchStart:a4 patchCount:a5 patchIndexBuffer:v19 patchIndexBufferOffset:a7 controlPointIndexBuffer:v20 controlPointIndexBufferOffset:? instanceCount:? baseInstance:?];
}

- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:a4];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a6];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a8];
  v16 = [(MTLToolsObject *)self baseObject];
  v17 = [a4 baseObject];
  v18 = [a6 baseObject];
  v19 = [a8 baseObject];

  [v16 drawIndexedPatches:a3 patchIndexBuffer:v17 patchIndexBufferOffset:a5 controlPointIndexBuffer:v18 controlPointIndexBufferOffset:a7 indirectBuffer:v19 indirectBufferOffset:?];
}

- (void)setLineWidth:(float)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  *&v5 = a3;

  [v4 setLineWidth:v5];
}

- (void)addSplitHandler:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 addSplitHandler:a3];
}

- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a5];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  v13 = [a5 baseObject];

  [v11 setFragmentTexture:v12 atTextureIndex:a4 samplerState:v13 atSamplerIndex:a6];
}

- (void)updateFence:(id)a3 afterStages:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 updateFence:v8 afterStages:a4];
}

- (void)waitForFence:(id)a3 beforeStages:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 waitForFence:v8 beforeStages:a4];
}

- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setTileBytes:a3 length:a4 atIndex:a5];
}

- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 setTileBuffer:v10 offset:a4 atIndex:a5];
}

- (void)setTileBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setTileBufferOffset:a3 atIndex:a4];
}

- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v15[1] = *MEMORY[0x277D85DE8];
  v9 = v15 - ((8 * a5.length + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5.length)
  {
    v10 = a3;
    v11 = (v15 - ((8 * a5.length + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = a5.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v10];
      v13 = *v10++;
      *v11++ = [v13 baseObject];
      --v12;
    }

    while (v12);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setTileTexture:v8 atIndex:a4];
}

- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = v13 - ((8 * a4.length + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4.length)
  {
    v8 = a3;
    v9 = (v13 - ((8 * a4.length + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = a4.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v8];
      v11 = *v8++;
      *v9++ = [v11 baseObject];
      --v10;
    }

    while (v10);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setTileSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setTileSamplerState:v8 atIndex:a4];
}

- (void)setTileSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = v13 - ((8 * a4.length + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4.length)
  {
    v8 = a3;
    v9 = (v13 - ((8 * a4.length + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = a4.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v8];
      v11 = *v8++;
      *v9++ = [v11 baseObject];
      --v10;
    }

    while (v10);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setTileSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  *&v13 = a4;
  *&v14 = a5;

  [v11 setTileSamplerState:v12 lodMinClamp:a6 lodMaxClamp:v13 atIndex:v14];
}

- (void)setTileSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v17[1] = *MEMORY[0x277D85DE8];
  v11 = v17 - ((8 * a6.length + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6.length)
  {
    v12 = a3;
    v13 = (v17 - ((8 * a6.length + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = a6.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v12];
      v15 = *v12++;
      *v13++ = [v15 baseObject];
      --v14;
    }

    while (v14);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v16 = *MEMORY[0x277D85DE8];
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
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 useResource:v8 usage:a4];
}

- (void)useResource:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 useResource:v10 usage:a4 stages:a5];
}

- (void)useRenderPipelineState:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 useRenderPipelineState:v5];
}

- (void)useRenderPipelineStates:(const void *)a3 count:(unint64_t)a4
{
  std::vector<objc_object  {objcproto22MTLRenderPipelineState}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
    }

    while (a4 != v7);
  }

  v9 = [(MTLToolsObject *)self baseObject];
  [v9 useRenderPipelineStates:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v9 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:a3[v9]];
      v10 = [a3[v9] baseObject];
      *(__p[0] + v9++) = v10;
    }

    while (a4 != v9);
  }

  v11 = [(MTLToolsObject *)self baseObject];
  [v11 useResources:__p[0] count:a4 usage:a5];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6
{
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v11 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:a3[v11]];
      v12 = [a3[v11] baseObject];
      *(__p[0] + v11++) = v12;
    }

    while (a4 != v11);
  }

  v13 = [(MTLToolsObject *)self baseObject];
  [v13 useResources:__p[0] count:a4 usage:a5 stages:a6];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useHeap:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 useHeap:v6];
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
{
  std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:a3[v7]];
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
    }

    while (a4 != v7);
  }

  v9 = [(MTLToolsObject *)self baseObject];
  [v9 useHeaps:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useHeap:(id)a3 stages:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 useHeap:v8 stages:a4];
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4 stages:(unint64_t)a5
{
  std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v9 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:a3[v9]];
      v10 = [a3[v9] baseObject];
      *(__p[0] + v9++) = v10;
    }

    while (a4 != v9);
  }

  v11 = [(MTLToolsObject *)self baseObject];
  [v11 useHeaps:__p[0] count:a4 stages:a5];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (unint64_t)tileWidth
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 tileWidth];
}

- (unint64_t)tileHeight
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 tileHeight];
}

- (void)setObjectBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setObjectBytes:a3 length:a4 atIndex:a5];
}

- (void)setObjectBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setObjectBufferOffset:a3 atIndex:a4];
}

- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 setObjectBuffer:v10 offset:a4 atIndex:a5];
}

- (void)setObjectBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v14[31] = *MEMORY[0x277D85DE8];
  if (a5.length)
  {
    v9 = a3;
    v10 = v14;
    v11 = a5.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v9];
      v12 = *v9++;
      *v10++ = [v12 baseObject];
      --v11;
    }

    while (v11);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setObjectTexture:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setObjectTexture:v8 atIndex:a4];
}

- (void)setObjectTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v13 = *MEMORY[0x277D85DE8];
  if (a4.length)
  {
    v7 = a3;
    v8 = v12;
    v9 = a4.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v7];
      v10 = *v7++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setObjectSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setObjectSamplerState:v8 atIndex:a4];
}

- (void)setObjectSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v13 = *MEMORY[0x277D85DE8];
  if (a4.length)
  {
    v7 = a3;
    v8 = v12;
    v9 = a4.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v7];
      v10 = *v7++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setObjectSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  *&v13 = a4;
  *&v14 = a5;

  [v11 setObjectSamplerState:v12 lodMinClamp:a6 lodMaxClamp:v13 atIndex:v14];
}

- (void)setObjectSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v17 = *MEMORY[0x277D85DE8];
  if (a6.length)
  {
    v11 = a3;
    v12 = v16;
    v13 = a6.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v11];
      v14 = *v11++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setObjectThreadgroupMemoryLength:a3 atIndex:a4];
}

- (void)setMeshBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setMeshBytes:a3 length:a4 atIndex:a5];
}

- (void)setMeshBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setMeshBufferOffset:a3 atIndex:a4];
}

- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 setMeshBuffer:v10 offset:a4 atIndex:a5];
}

- (void)setMeshBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v14[31] = *MEMORY[0x277D85DE8];
  if (a5.length)
  {
    v9 = a3;
    v10 = v14;
    v11 = a5.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v9];
      v12 = *v9++;
      *v10++ = [v12 baseObject];
      --v11;
    }

    while (v11);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setMeshTexture:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setMeshTexture:v8 atIndex:a4];
}

- (void)setMeshTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v13 = *MEMORY[0x277D85DE8];
  if (a4.length)
  {
    v7 = a3;
    v8 = v12;
    v9 = a4.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v7];
      v10 = *v7++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setMeshSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setMeshSamplerState:v8 atIndex:a4];
}

- (void)setMeshSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v13 = *MEMORY[0x277D85DE8];
  if (a4.length)
  {
    v7 = a3;
    v8 = v12;
    v9 = a4.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v7];
      v10 = *v7++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setMeshSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  *&v13 = a4;
  *&v14 = a5;

  [v11 setMeshSamplerState:v12 lodMinClamp:a6 lodMaxClamp:v13 atIndex:v14];
}

- (void)setMeshSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v17 = *MEMORY[0x277D85DE8];
  if (a6.length)
  {
    v11 = a3;
    v12 = v16;
    v13 = a6.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v11];
      v14 = *v11++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v11 = *a3;
  v10 = *a4;
  v9 = *a5;
  [v8 drawMeshThreadgroups:&v11 threadsPerObjectThreadgroup:&v10 threadsPerMeshThreadgroup:&v9];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  v14 = *a5;
  v13 = *a6;
  [v11 drawMeshThreadgroupsWithIndirectBuffer:v12 indirectBufferOffset:a4 threadsPerObjectThreadgroup:&v14 threadsPerMeshThreadgroup:&v13];
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v11 = *a3;
  v10 = *a4;
  v9 = *a5;
  [v8 drawMeshThreads:&v11 threadsPerObjectThreadgroup:&v10 threadsPerMeshThreadgroup:&v9];
}

- (void)useResourceGroup:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 useResourceGroup:a3 usage:a4 stages:a5];
}

- (void)setVertexVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setVertexVisibleFunctionTable:v7 atBufferIndex:a4];
}

- (void)setVertexVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, a4.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v9 = [a3[i] baseObject];
      *(__p[0] + i) = v9;
    }
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 setVertexVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setFragmentVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setFragmentVisibleFunctionTable:v7 atBufferIndex:a4];
}

- (void)setFragmentVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, a4.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v9 = [a3[i] baseObject];
      *(__p[0] + i) = v9;
    }
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 setFragmentVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setTileVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setTileVisibleFunctionTable:v7 atBufferIndex:a4];
}

- (void)setTileVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, a4.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v9 = [a3[i] baseObject];
      *(__p[0] + i) = v9;
    }
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 setTileVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setObjectVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setObjectVisibleFunctionTable:v7 atBufferIndex:a4];
}

- (void)setObjectVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, a4.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v9 = [a3[i] baseObject];
      *(__p[0] + i) = v9;
    }
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 setObjectVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setMeshVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setMeshVisibleFunctionTable:v7 atBufferIndex:a4];
}

- (void)setMeshVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, a4.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v9 = [a3[i] baseObject];
      *(__p[0] + i) = v9;
    }
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 setMeshVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4 stage:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 setVisibleFunctionTable:v9 atBufferIndex:a4 stage:a5];
}

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4 stage:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, a4.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v11 = [a3[i] baseObject];
      *(__p[0] + i) = v11;
    }
  }

  v12 = [(MTLToolsObject *)self baseObject];
  [v12 setVisibleFunctionTables:__p[0] withBufferRange:location stage:{length, a5}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setVertexIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setVertexIntersectionFunctionTable:v7 atBufferIndex:a4];
}

- (void)setVertexIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  buildBaseVector(a3, a4.length, __p);
  v7 = [(MTLToolsObject *)self baseObject];
  [v7 setVertexIntersectionFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setFragmentIntersectionFunctionTable:v7 atBufferIndex:a4];
}

- (void)setFragmentIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  buildBaseVector(a3, a4.length, __p);
  v7 = [(MTLToolsObject *)self baseObject];
  [v7 setFragmentIntersectionFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setTileIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setTileIntersectionFunctionTable:v7 atBufferIndex:a4];
}

- (void)setTileIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  buildBaseVector(a3, a4.length, __p);
  v7 = [(MTLToolsObject *)self baseObject];
  [v7 setTileIntersectionFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setVertexAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setVertexAccelerationStructure:v7 atBufferIndex:a4];
}

- (void)setFragmentAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setFragmentAccelerationStructure:v7 atBufferIndex:a4];
}

- (void)setTileAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setTileAccelerationStructure:v7 atBufferIndex:a4];
}

- (void)setObjectIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setObjectIntersectionFunctionTable:v7 atBufferIndex:a4];
}

- (void)setObjectIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  buildBaseVector(a3, a4.length, __p);
  v7 = [(MTLToolsObject *)self baseObject];
  [v7 setObjectIntersectionFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setObjectAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setObjectAccelerationStructure:v7 atBufferIndex:a4];
}

- (void)setMeshIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setMeshIntersectionFunctionTable:v7 atBufferIndex:a4];
}

- (void)setMeshIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  buildBaseVector(a3, a4.length, __p);
  v7 = [(MTLToolsObject *)self baseObject];
  [v7 setMeshIntersectionFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setMeshAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setMeshAccelerationStructure:v7 atBufferIndex:a4];
}

- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4 stage:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 setIntersectionFunctionTable:v9 atBufferIndex:a4 stage:a5];
}

- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4 stage:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
  buildBaseVector(a3, a4.length, __p);
  v9 = [(MTLToolsObject *)self baseObject];
  [v9 setIntersectionFunctionTables:__p[0] withBufferRange:location stage:{length, a5}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4 stage:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 setAccelerationStructure:v9 atBufferIndex:a4 stage:a5];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 endEncodingAndRetrieveProgramAddressTable];
}

- (void)useResidencySet:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 useResidencySet:v6];
}

- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4
{
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:a3[v7]];
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
    }

    while (a4 != v7);
  }

  v9 = [(MTLToolsObject *)self baseObject];
  [v9 useResidencySets:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setColorAttachmentMap:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setColorAttachmentMap:a3];
}

- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4 stages:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setToolsDispatchBufferSPI:a3 atIndex:a4 stages:a5];
}

@end