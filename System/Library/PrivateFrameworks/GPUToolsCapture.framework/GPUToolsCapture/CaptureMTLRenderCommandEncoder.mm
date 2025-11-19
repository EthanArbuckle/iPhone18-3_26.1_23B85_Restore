@interface CaptureMTLRenderCommandEncoder
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLRenderCommandEncoder)initWithBaseObject:(id)a3 captureCommandBuffer:(id)a4;
- (CaptureMTLRenderCommandEncoder)initWithBaseObject:(id)a3 captureParallelRenderCommandEncoder:(id)a4;
- (NSString)description;
- (unint64_t)streamReference;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4;
- (void)dealloc;
- (void)dispatchThreadsPerTile:(id *)a3;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4;
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
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)insertDebugSignpost:(id)a3;
- (void)insertSplit;
- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4 afterStages:(unint64_t)a5 beforeStages:(unint64_t)a6;
- (void)memoryBarrierWithScope:(unint64_t)a3 afterStages:(unint64_t)a4 beforeStages:(unint64_t)a5;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setAlphaTestReferenceValue:(float)a3;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setColorAttachmentMap:(id)a3;
- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 atIndex:(unint64_t)a7;
- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setCullMode:(unint64_t)a3;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setDepthCleared;
- (void)setDepthClipMode:(unint64_t)a3;
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
- (void)setLabel:(id)a3;
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
- (void)touch;
- (void)updateFence:(id)a3 afterStages:(unint64_t)a4;
- (void)useHeap:(id)a3;
- (void)useHeap:(id)a3 stages:(unint64_t)a4;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4 stages:(unint64_t)a5;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5;
- (void)useResourceGroup:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6;
- (void)waitForFence:(id)a3 beforeStages:(unint64_t)a4;
@end

@implementation CaptureMTLRenderCommandEncoder

- (void)waitForFence:(id)a3 beforeStages:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject waitForFence:v10 beforeStages:a4];

  v11 = v23;
  *(v23 + 8) = -16125;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6
{
  retainedObjects = self->_retainedObjects;
  v32 = a3;
  RetainArray(retainedObjects, a3, a4);
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  baseObject = self->_baseObject;
  v14 = 8 * a4;
  __chkstk_darwin(v12, v15);
  bzero(&v31 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  if (a4)
  {
    v16 = v32;
    v17 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = a4;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useResources:&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) count:a4 usage:a5 stages:a6];
  v20 = v34;
  *(v34 + 8) = -15818;
  v21 = BYTE9(v35);
  if (BYTE9(v35) > 0x18uLL)
  {
    v23 = *(*(&v33 + 1) + 24);
    v24 = BYTE10(v35);
    ++BYTE10(v35);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v34 + 1), v24 | 0x2800000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v35));
    BYTE9(v35) += 40;
  }

  *(v20 + 13) = v21;
  v25 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v25)
  {
    var0 = v25->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v25, v26);
  bzero(&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  v28 = StreamArray(&v33, (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), v32, a4);
  *v22 = var0;
  *(v22 + 1) = a4;
  *(v22 + 2) = a5;
  *(v22 + 3) = a6;
  v22[32] = v28;
  *(v22 + 33) = 0;
  *(v22 + 9) = 0;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  RetainArray(self->_retainedObjects, a3, a4);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v12 = 8 * a4;
  __chkstk_darwin(v10, v13);
  bzero(&v29 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  if (a4)
  {
    v14 = a3;
    v15 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = a4;
    do
    {
      v17 = *v14++;
      *v15++ = [v17 baseObject];
      --v16;
    }

    while (v16);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useResources:&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) count:a4 usage:a5];
  v18 = v30;
  *(v30 + 8) = -16042;
  v19 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v21 = *(*(&v29 + 1) + 24);
    v22 = BYTE10(v31);
    ++BYTE10(v31);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v30 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v18 + 13) = v19;
  v23 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v23)
  {
    var0 = v23->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v23, v24);
  bzero(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  v26 = StreamArray(&v29, (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, a4);
  *v20 = var0;
  *(v20 + 1) = a4;
  *(v20 + 2) = a5;
  v20[24] = v26;
  *(v20 + 25) = 0;
  *(v20 + 7) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)useResourceGroup:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5
{
  v12 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_useResourceGroup_usage_stages", "Resource groups", 0, 0);
  [v12 touch];
  v8 = v12;
  if (v12)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v12];
      v8 = v12;
    }
  }

  baseObject = self->_baseObject;
  v11 = [v8 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useResourceGroup:v11 usage:a4 stages:a5];
}

- (void)useResource:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5
{
  v8 = a3;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v8 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useResource:v12 usage:a4 stages:a5];

  v13 = v25;
  *(v25 + 8) = -15819;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v8 traceStream];
  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)useResource:(id)a3 usage:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useResource:v10 usage:a4];

  v11 = v23;
  *(v23 + 8) = -16043;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_useResidencySets_count", "Deprecated Residency Set API", 0, 0);
  RetainArray(self->_retainedObjects, a3, a4);
  baseObject = self->_baseObject;
  __chkstk_darwin(v8, 8 * a4);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9);
  if (a4)
  {
    v11 = v10;
    v12 = a4;
    do
    {
      v13 = *a3++;
      *v11 = [v13 baseObject];
      v11 += 8;
      --v12;
    }

    while (v12);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useResidencySets:v10 count:a4];
}

- (void)useResidencySet:(id)a3
{
  v8 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_useResidencySet", "Deprecated Residency Set API", 0, 0);
  [v8 touch];
  v4 = v8;
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
      v4 = v8;
    }
  }

  baseObject = self->_baseObject;
  v7 = [v4 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useResidencySet:v7];
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4 stages:(unint64_t)a5
{
  RetainArray(self->_retainedObjects, a3, a4);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v12 = 8 * a4;
  __chkstk_darwin(v10, v13);
  bzero(&v29 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  if (a4)
  {
    v14 = a3;
    v15 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = a4;
    do
    {
      v17 = *v14++;
      *v15++ = [v17 baseObject];
      --v16;
    }

    while (v16);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useHeaps:&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) count:a4 stages:a5];
  v18 = v30;
  *(v30 + 8) = -15820;
  v19 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v21 = *(*(&v29 + 1) + 24);
    v22 = BYTE10(v31);
    ++BYTE10(v31);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v30 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v18 + 13) = v19;
  v23 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v23)
  {
    var0 = v23->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v23, v24);
  bzero(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  v26 = StreamArray(&v29, (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, a4);
  *v20 = var0;
  *(v20 + 1) = a4;
  *(v20 + 2) = a5;
  v20[24] = v26;
  *(v20 + 25) = 0;
  *(v20 + 7) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
{
  RetainArray(self->_retainedObjects, a3, a4);
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceStream = self->_traceStream;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  v10 = 8 * a4;
  __chkstk_darwin(v8, v11);
  bzero(&v27 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  if (a4)
  {
    v12 = a3;
    v13 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = a4;
    do
    {
      v15 = *v12++;
      *v13++ = [v15 baseObject];
      --v14;
    }

    while (v14);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useHeaps:&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) count:a4];
  v16 = v28;
  *(v28 + 8) = -16040;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x28uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x1800000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 24;
  }

  *(v16 + 13) = v17;
  v21 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v21, v22);
  bzero(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  v24 = StreamArray(&v27, (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, a4);
  *v18 = var0;
  *(v18 + 1) = a4;
  v18[16] = v24;
  *(v18 + 17) = 0;
  *(v18 + 5) = 0;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)useHeap:(id)a3 stages:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useHeap:v10 stages:a4];

  v11 = v23;
  *(v23 + 8) = -15821;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)useHeap:(id)a3
{
  v4 = a3;
  [v4 touch];
  if (v4)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v4];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  v8 = [v4 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useHeap:v8];

  v9 = v21;
  *(v21 + 8) = -16041;
  v10 = BYTE9(v22);
  if (BYTE9(v22) > 0x30uLL)
  {
    v12 = *(*(&v20 + 1) + 24);
    v13 = BYTE10(v22);
    ++BYTE10(v22);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v21 + 1), v13 | 0x1000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v22));
    BYTE9(v22) += 16;
  }

  *(v9 + 13) = v10;
  v14 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [v4 traceStream];
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = v17;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)updateFence:(id)a3 afterStages:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject updateFence:v10 afterStages:a4];

  v11 = v23;
  *(v23 + 8) = -16126;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVisibilityResultMode:a3 offset:a4];
  v8 = v18;
  *(v18 + 8) = -16252;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setViewports:a3 count:a4];
  v8 = v19;
  *(v19 + 8) = -16077;
  v9 = BYTE9(v20);
  if (BYTE9(v20) > 0x28uLL)
  {
    v11 = *(*(&v18 + 1) + 24);
    v12 = BYTE10(v20);
    ++BYTE10(v20);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v19 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v20));
    BYTE9(v20) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  v15 = GTTraceEncoder_storeBlob(&v18, a3, 48 * a4);
  *v10 = var0;
  *(v10 + 1) = a4;
  v10[16] = v15;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setViewport:(id *)a3
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  v7 = *&a3->var2;
  v19[0] = *&a3->var0;
  v19[1] = v7;
  v19[2] = *&a3->var4;
  [(MTLRenderCommandEncoderSPI *)baseObject setViewport:v19];
  v8 = v21;
  *(v21 + 8) = -16270;
  v9 = BYTE9(v22);
  if (BYTE9(v22) > 8uLL)
  {
    v11 = *(*(&v20 + 1) + 24);
    v12 = BYTE10(v22);
    ++BYTE10(v22);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v21 + 1), v12 | 0x3800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v22));
    BYTE9(v22) += 56;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  v15 = *&a3->var2;
  v16 = *&a3->var4;
  *(v10 + 8) = *&a3->var0;
  *(v10 + 24) = v15;
  *(v10 + 40) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setVertexVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setVertexVisibleFunctionTables:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v17 = v29;
  *(v29 + 8) = -15445;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setVertexVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexVisibleFunctionTable:v10 atBufferIndex:a4];

  v11 = v23;
  *(v23 + 8) = -15446;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setVertexTextures:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v17 = v29;
  *(v29 + 8) = -16275;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexTexture:v10 atIndex:a4];

  v11 = v23;
  *(v23 + 8) = -16276;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerStates:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v17 = v29;
  *(v29 + 8) = -16273;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v36 = a4;
  retainedObjects = self->_retainedObjects;
  v37 = a3;
  RetainArray(retainedObjects, a3, a6.length);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v14 = 8 * length;
  __chkstk_darwin(v12, v15);
  bzero(&v36 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v16 = v37;
    v17 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = length;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  v20 = v36;
  v21 = a5;
  v22 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerStates:&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:v36 lodMaxClamps:a5 withRange:location, length, v36];
  v23 = v39;
  *(v39 + 8) = -16271;
  v24 = BYTE9(v40);
  if (BYTE9(v40) > 0x20uLL)
  {
    v26 = *(*(&v38 + 1) + 24);
    v27 = BYTE10(v40);
    ++BYTE10(v40);
    v25 = GTTraceMemPool_allocateBytes(v26, *(&v39 + 1), v27 | 0x2000000000) + 16;
    v24 = v27;
    v20 = v36;
  }

  else
  {
    v25 = (v23 + BYTE9(v40));
    BYTE9(v40) += 32;
  }

  *(v23 + 13) = v24;
  v28 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v28)
  {
    var0 = v28->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v28, v29);
  bzero(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v31 = StreamArray(&v38, (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), v37, length);
  v32 = GTTraceEncoder_storeBytes(&v38, v20, 4 * length);
  v33 = GTTraceEncoder_storeBytes(&v38, v21, 4 * length);
  *v25 = var0;
  *(v25 + 1) = v22;
  *(v25 + 2) = length;
  v25[24] = v31;
  v25[25] = v32;
  v25[26] = v33;
  *(v25 + 27) = 0;
  v25[31] = 0;
  s();
  *v34 = v35;
  *(v34 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 lodBias:(float)a6 atIndex:(unint64_t)a7
{
  v19 = a3;
  [v19 touch];
  v12 = v19;
  if (v19)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v19];
      v12 = v19;
    }
  }

  baseObject = self->_baseObject;
  v15 = [v12 baseObject];
  *&v16 = a4;
  *&v17 = a5;
  *&v18 = a6;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerState:v15 lodMinClamp:a7 lodMaxClamp:v16 lodBias:v17 atIndex:v18];
}

- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v10 = a3;
  [v10 touch];
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v14 = [v10 baseObject];
  *&v15 = a4;
  *&v16 = a5;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerState:v14 lodMinClamp:a6 lodMaxClamp:v15 atIndex:v16];

  v17 = v29;
  *(v29 + 8) = -16272;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  v24 = [v10 traceStream];
  if (v24)
  {
    v25 = *v24;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = a6;
  *(v19 + 6) = a4;
  *(v19 + 7) = a5;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerState:v10 atIndex:a4];

  v11 = v23;
  *(v23 + 8) = -16274;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setVertexIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setVertexIntersectionFunctionTables:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v17 = v29;
  *(v29 + 8) = -15447;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setVertexIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexIntersectionFunctionTable:v10 atBufferIndex:a4];

  v11 = v23;
  *(v23 + 8) = -15448;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexBytes:a3 length:a4 attributeStride:a5 atIndex:a6];
  v12 = v23;
  *(v23 + 8) = -15272;
  v13 = BYTE9(v24);
  if (BYTE9(v24) > 0x18uLL)
  {
    v15 = *(*(&v22 + 1) + 24);
    v16 = BYTE10(v24);
    ++BYTE10(v24);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v23 + 1), v16 | 0x2800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v24));
    BYTE9(v24) += 40;
  }

  *(v12 + 13) = v13;
  v17 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v17)
  {
    var0 = v17->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v19 = GTTraceEncoder_storeBlob(&v22, a3, a4);
  }

  else
  {
    v19 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = a4;
  *(v14 + 2) = a5;
  *(v14 + 3) = a6;
  v14[32] = v19;
  *(v14 + 33) = 0;
  *(v14 + 9) = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexBytes:a3 length:a4 atIndex:a5];
  v10 = v21;
  *(v21 + 8) = -16225;
  v11 = BYTE9(v22);
  if (BYTE9(v22) > 0x20uLL)
  {
    v13 = *(*(&v20 + 1) + 24);
    v14 = BYTE10(v22);
    ++BYTE10(v22);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v21 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v22));
    BYTE9(v22) += 32;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v17 = GTTraceEncoder_storeBlob(&v20, a3, a4);
  }

  else
  {
    v17 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = a4;
  *(v12 + 2) = a5;
  v12[24] = v17;
  *(v12 + 25) = 0;
  *(v12 + 7) = 0;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  retainedObjects = self->_retainedObjects;
  v33 = a3;
  RetainArray(retainedObjects, a3, a5.length);
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  traceStream = self->_traceStream;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
  baseObject = self->_baseObject;
  v13 = 8 * length;
  __chkstk_darwin(v11, v14);
  bzero(&v32 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v15 = v33;
    v16 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = length;
    do
    {
      v18 = *v15++;
      *v16++ = [v18 baseObject];
      --v17;
    }

    while (v17);
  }

  v19 = a4;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexBuffers:&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:a4 withRange:location, length];
  v20 = v35;
  *(v35 + 8) = -16277;
  v21 = BYTE9(v36);
  if (BYTE9(v36) > 0x20uLL)
  {
    v23 = *(*(&v34 + 1) + 24);
    v24 = BYTE10(v36);
    ++BYTE10(v36);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v35 + 1), v24 | 0x2000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v36));
    BYTE9(v36) += 32;
  }

  *(v20 + 13) = v21;
  v25 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v25)
  {
    var0 = v25->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v25, v26);
  bzero(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v28 = StreamArray(&v34, (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), v33, length);
  v29 = GTTraceEncoder_storeBytes(&v34, v19, 8 * length);
  *v22 = var0;
  *(v22 + 1) = location;
  *(v22 + 2) = length;
  v22[24] = v28;
  v22[25] = v29;
  *(v22 + 26) = 0;
  *(v22 + 15) = 0;
  s();
  *v30 = v31;
  *(v30 + 8) = BYTE8(v36);
  *(v35 + 15) |= 8u;
}

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v36 = a4;
  retainedObjects = self->_retainedObjects;
  v37 = a3;
  RetainArray(retainedObjects, a3, a6.length);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v14 = 8 * length;
  __chkstk_darwin(v12, v15);
  bzero(&v36 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v16 = v37;
    v17 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = length;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  v20 = a5;
  v21 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexBuffers:&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:v36 attributeStrides:a5 withRange:location, length, v36];
  v22 = v39;
  *(v39 + 8) = -15273;
  v23 = BYTE9(v40);
  if (BYTE9(v40) > 0x20uLL)
  {
    v25 = *(*(&v38 + 1) + 24);
    v26 = BYTE10(v40);
    ++BYTE10(v40);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v39 + 1), v26 | 0x2000000000) + 16;
    v23 = v26;
  }

  else
  {
    v24 = (v22 + BYTE9(v40));
    BYTE9(v40) += 32;
  }

  *(v22 + 13) = v23;
  v27 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v27)
  {
    var0 = v27->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v27, v28);
  bzero(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v30 = StreamArray(&v38, (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), v37, length);
  v31 = boundaryTrackerInstance;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = GTTraceEncoder_storeBlob(&v38, v36, length);
    v31 = boundaryTrackerInstance;
  }

  else
  {
    v32 = 0;
  }

  if ((*(v31 + 20) & 0xFFFFFFFE) == 2)
  {
    v33 = GTTraceEncoder_storeBlob(&v38, v20, length);
  }

  else
  {
    v33 = 0;
  }

  *v24 = var0;
  *(v24 + 1) = v21;
  *(v24 + 2) = length;
  v24[24] = v30;
  v24[25] = v32;
  v24[26] = v33;
  *(v24 + 27) = 0;
  v24[31] = 0;
  s();
  *v34 = v35;
  *(v34 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

- (void)setVertexBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexBufferOffset:a3 attributeStride:a4 atIndex:a5];
  v10 = v20;
  *(v20 + 8) = -15274;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = a3;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setVertexBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexBufferOffset:a3 atIndex:a4];
  v8 = v18;
  *(v18 + 8) = -16224;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v10 = a3;
  [v10 touch];
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  baseObject = self->_baseObject;
  v14 = [v10 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexBuffer:v14 offset:a4 attributeStride:a5 atIndex:a6];

  v15 = v27;
  *(v27 + 8) = -15275;
  v16 = BYTE9(v28);
  if (BYTE9(v28) > 0x18uLL)
  {
    v18 = *(*(&v26 + 1) + 24);
    v19 = BYTE10(v28);
    ++BYTE10(v28);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v27 + 1), v19 | 0x2800000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v28));
    BYTE9(v28) += 40;
  }

  *(v15 + 13) = v16;
  v20 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [v10 traceStream];
  if (v22)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  *(v17 + 4) = a6;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v8 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexBuffer:v12 offset:a4 atIndex:a5];

  v13 = v25;
  *(v25 + 8) = -16278;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v8 traceStream];
  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexAmplificationMode:a3 value:a4];
  v8 = v18;
  *(v18 + 8) = -15812;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setTriangleFrontFillMode:(unint64_t)a3 backFillMode:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTriangleFrontFillMode:a3 backFillMode:a4];
  v8 = v18;
  *(v18 + 8) = -15721;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setTriangleFillMode:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTriangleFillMode:a3];
  v6 = v16;
  *(v16 + 8) = -16264;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setTileVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setTileVisibleFunctionTables:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v17 = v29;
  *(v29 + 8) = -15450;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setTileVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileVisibleFunctionTable:v10 atBufferIndex:a4];

  v11 = v23;
  *(v23 + 8) = -15451;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setTileTextures:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v17 = v29;
  *(v29 + 8) = -16086;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileTexture:v10 atIndex:a4];

  v11 = v23;
  *(v23 + 8) = -16140;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setTileSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setTileSamplerStates:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v17 = v29;
  *(v29 + 8) = -16085;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setTileSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v36 = a4;
  retainedObjects = self->_retainedObjects;
  v37 = a3;
  RetainArray(retainedObjects, a3, a6.length);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v14 = 8 * length;
  __chkstk_darwin(v12, v15);
  bzero(&v36 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v16 = v37;
    v17 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = length;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  v20 = v36;
  v21 = a5;
  v22 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setTileSamplerStates:&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:v36 lodMaxClamps:a5 withRange:location, length, v36];
  v23 = v39;
  *(v39 + 8) = -16084;
  v24 = BYTE9(v40);
  if (BYTE9(v40) > 0x20uLL)
  {
    v26 = *(*(&v38 + 1) + 24);
    v27 = BYTE10(v40);
    ++BYTE10(v40);
    v25 = GTTraceMemPool_allocateBytes(v26, *(&v39 + 1), v27 | 0x2000000000) + 16;
    v24 = v27;
    v20 = v36;
  }

  else
  {
    v25 = (v23 + BYTE9(v40));
    BYTE9(v40) += 32;
  }

  *(v23 + 13) = v24;
  v28 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v28)
  {
    var0 = v28->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v28, v29);
  bzero(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v31 = StreamArray(&v38, (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), v37, length);
  v32 = GTTraceEncoder_storeBytes(&v38, v20, 4 * length);
  v33 = GTTraceEncoder_storeBytes(&v38, v21, 4 * length);
  *v25 = var0;
  *(v25 + 1) = v22;
  *(v25 + 2) = length;
  v25[24] = v31;
  v25[25] = v32;
  v25[26] = v33;
  *(v25 + 27) = 0;
  v25[31] = 0;
  s();
  *v34 = v35;
  *(v34 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

- (void)setTileSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v10 = a3;
  [v10 touch];
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v14 = [v10 baseObject];
  *&v15 = a4;
  *&v16 = a5;
  [(MTLRenderCommandEncoderSPI *)baseObject setTileSamplerState:v14 lodMinClamp:a6 lodMaxClamp:v15 atIndex:v16];

  v17 = v29;
  *(v29 + 8) = -16138;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  v24 = [v10 traceStream];
  if (v24)
  {
    v25 = *v24;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = a6;
  *(v19 + 6) = a4;
  *(v19 + 7) = a5;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setTileSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileSamplerState:v10 atIndex:a4];

  v11 = v23;
  *(v23 + 8) = -16139;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setTileIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setTileIntersectionFunctionTables:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v17 = v29;
  *(v29 + 8) = -15452;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setTileIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileIntersectionFunctionTable:v10 atBufferIndex:a4];

  v11 = v23;
  *(v23 + 8) = -15453;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTileBytes:a3 length:a4 atIndex:a5];
  v10 = v21;
  *(v21 + 8) = -16143;
  v11 = BYTE9(v22);
  if (BYTE9(v22) > 0x20uLL)
  {
    v13 = *(*(&v20 + 1) + 24);
    v14 = BYTE10(v22);
    ++BYTE10(v22);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v21 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v22));
    BYTE9(v22) += 32;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v17 = GTTraceEncoder_storeBlob(&v20, a3, a4);
  }

  else
  {
    v17 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = a4;
  *(v12 + 2) = a5;
  v12[24] = v17;
  *(v12 + 25) = 0;
  *(v12 + 7) = 0;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  retainedObjects = self->_retainedObjects;
  v35 = a3;
  RetainArray(retainedObjects, a3, a5.length);
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  traceStream = self->_traceStream;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v36);
  baseObject = self->_baseObject;
  v13 = 8 * length;
  __chkstk_darwin(v11, v14);
  bzero(&v34 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v15 = v35;
    v16 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = length;
    do
    {
      v18 = *v15++;
      *v16++ = [v18 baseObject];
      --v17;
    }

    while (v17);
  }

  v19 = a4;
  v20 = a4;
  v21 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setTileBuffers:&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:v20 withRange:location, length];
  v22 = v37;
  *(v37 + 8) = -16087;
  v23 = BYTE9(v38);
  if (BYTE9(v38) > 0x20uLL)
  {
    v25 = *(*(&v36 + 1) + 24);
    v26 = BYTE10(v38);
    ++BYTE10(v38);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v37 + 1), v26 | 0x2000000000) + 16;
    v23 = v26;
  }

  else
  {
    v24 = (v22 + BYTE9(v38));
    BYTE9(v38) += 32;
  }

  *(v22 + 13) = v23;
  v27 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v27)
  {
    var0 = v27->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v27, v28);
  bzero(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v30 = StreamArray(&v36, (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), v35, length);
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v31 = GTTraceEncoder_storeBlob(&v36, v19, length);
  }

  else
  {
    v31 = 0;
  }

  *v24 = var0;
  *(v24 + 1) = v21;
  *(v24 + 2) = length;
  v24[24] = v30;
  v24[25] = v31;
  *(v24 + 26) = 0;
  *(v24 + 15) = 0;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v38);
  *(v37 + 15) |= 8u;
}

- (void)setTileBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTileBufferOffset:a3 atIndex:a4];
  v8 = v18;
  *(v18 + 8) = -16141;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v8 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileBuffer:v12 offset:a4 atIndex:a5];

  v13 = v25;
  *(v25 + 8) = -16142;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v8 traceStream];
  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setThreadgroupMemoryLength:a3 offset:a4 atIndex:a5];
  v10 = v20;
  *(v20 + 8) = -16074;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = a3;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setTessellationFactorScale:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTessellationFactorScale:v6];
  v7 = v17;
  *(v17 + 8) = -16132;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x30uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1000000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 16;
  }

  *(v7 + 13) = v8;
  v12 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = a3;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5
{
  v8 = a3;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v8 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTessellationFactorBuffer:v12 offset:a4 instanceStride:a5];

  v13 = v25;
  *(v25 + 8) = -16148;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v8 traceStream];
  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setStencilStoreActionOptions:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setStencilStoreActionOptions:a3];
  v6 = v16;
  *(v16 + 8) = -16020;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setStencilStoreAction:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setStencilStoreAction:a3];
  v6 = v16;
  *(v16 + 8) = -16157;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setStencilResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6
{
  v10 = a3;
  [v10 touch];
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  baseObject = self->_baseObject;
  v14 = [v10 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setStencilResolveTexture:v14 slice:a4 depthPlane:a5 level:a6];

  v15 = v27;
  *(v27 + 8) = -15723;
  v16 = BYTE9(v28);
  if (BYTE9(v28) > 0x18uLL)
  {
    v18 = *(*(&v26 + 1) + 24);
    v19 = BYTE10(v28);
    ++BYTE10(v28);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v27 + 1), v19 | 0x2800000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v28));
    BYTE9(v28) += 40;
  }

  *(v15 + 13) = v16;
  v20 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [v10 traceStream];
  if (v22)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  *(v17 + 4) = a6;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)setStencilCleared
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setStencilCleared];
  v4 = v14;
  *(v14 + 8) = -15724;
  v5 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v7 = *(*(&v13 + 1) + 24);
    v8 = BYTE10(v15);
    ++BYTE10(v15);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v14 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v4 + 13) = v5;
  v9 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
}

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setScissorRects:a3 count:a4];
  v8 = v19;
  *(v19 + 8) = -16076;
  v9 = BYTE9(v20);
  if (BYTE9(v20) > 0x28uLL)
  {
    v11 = *(*(&v18 + 1) + 24);
    v12 = BYTE10(v20);
    ++BYTE10(v20);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v19 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v20));
    BYTE9(v20) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  v15 = GTTraceEncoder_storeBlob(&v18, a3, 32 * a4);
  *v10 = var0;
  *(v10 + 1) = a4;
  v10[16] = v15;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setScissorRect:(id *)a3
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  v7 = *&a3->var2;
  v18[0] = *&a3->var0;
  v18[1] = v7;
  [(MTLRenderCommandEncoderSPI *)baseObject setScissorRect:v18];
  v8 = v20;
  *(v20 + 8) = -16265;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x18uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x2800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 40;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  v15 = *&a3->var2;
  *(v10 + 8) = *&a3->var0;
  *(v10 + 24) = v15;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setRenderPipelineState:(id)a3
{
  v4 = a3;
  [v4 touch];
  if (v4)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v4];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  v8 = [v4 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setRenderPipelineState:v8];

  v9 = v21;
  *(v21 + 8) = -16279;
  v10 = BYTE9(v22);
  if (BYTE9(v22) > 0x30uLL)
  {
    v12 = *(*(&v20 + 1) + 24);
    v13 = BYTE10(v22);
    ++BYTE10(v22);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v21 + 1), v13 | 0x1000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v22));
    BYTE9(v22) += 16;
  }

  *(v9 + 13) = v10;
  v14 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [v4 traceStream];
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = v17;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setProvokingVertexMode:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setProvokingVertexMode:a3];
  v6 = v16;
  *(v16 + 8) = -15725;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setPointSize:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setPointSize:v6];
  v7 = v17;
  *(v17 + 8) = -15988;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x30uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1000000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 16;
  }

  *(v7 + 13) = v8;
  v12 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = a3;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setObjectVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectVisibleFunctionTables_withBufferRange", "Mesh shaders with Function Pointers", 0, 0);
  RetainArray(self->_retainedObjects, a3, length);
  baseObject = self->_baseObject;
  __chkstk_darwin(v9, 8 * length);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  if (length)
  {
    v12 = v11;
    v13 = length;
    do
    {
      v14 = *a3++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setObjectVisibleFunctionTables:v11 withBufferRange:location, length];
}

- (void)setObjectVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v10 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectVisibleFunctionTable_atBufferIndex", "Mesh shaders with Function Pointers", 0, 0);
  [v10 touch];
  v6 = v10;
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
      v6 = v10;
    }
  }

  baseObject = self->_baseObject;
  v9 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectVisibleFunctionTable:v9 atBufferIndex:a4];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setObjectThreadgroupMemoryLength:a3 atIndex:a4];
  v8 = v18;
  *(v18 + 8) = -15381;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setObjectTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setObjectTextures:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v17 = v29;
  *(v29 + 8) = -15382;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setObjectTexture:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectTexture:v10 atIndex:a4];

  v11 = v23;
  *(v23 + 8) = -15383;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setObjectSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setObjectSamplerStates:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v17 = v29;
  *(v29 + 8) = -15384;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setObjectSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v36 = a4;
  retainedObjects = self->_retainedObjects;
  v37 = a3;
  RetainArray(retainedObjects, a3, a6.length);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v14 = 8 * length;
  __chkstk_darwin(v12, v15);
  bzero(&v36 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v16 = v37;
    v17 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = length;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  v20 = a5;
  v21 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectSamplerStates:&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:v36 lodMaxClamps:a5 withRange:location, length, v36];
  v22 = v39;
  *(v39 + 8) = -15385;
  v23 = BYTE9(v40);
  if (BYTE9(v40) > 0x20uLL)
  {
    v25 = *(*(&v38 + 1) + 24);
    v26 = BYTE10(v40);
    ++BYTE10(v40);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v39 + 1), v26 | 0x2000000000) + 16;
    v23 = v26;
  }

  else
  {
    v24 = (v22 + BYTE9(v40));
    BYTE9(v40) += 32;
  }

  *(v22 + 13) = v23;
  v27 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v27)
  {
    var0 = v27->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v27, v28);
  bzero(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v30 = StreamArray(&v38, (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), v37, length);
  v31 = boundaryTrackerInstance;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = GTTraceEncoder_storeBlob(&v38, v36, length);
    v31 = boundaryTrackerInstance;
  }

  else
  {
    v32 = 0;
  }

  if ((*(v31 + 20) & 0xFFFFFFFE) == 2)
  {
    v33 = GTTraceEncoder_storeBlob(&v38, v20, length);
  }

  else
  {
    v33 = 0;
  }

  *v24 = var0;
  *(v24 + 1) = v21;
  *(v24 + 2) = length;
  v24[24] = v30;
  v24[25] = v32;
  v24[26] = v33;
  *(v24 + 27) = 0;
  v24[31] = 0;
  s();
  *v34 = v35;
  *(v34 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

- (void)setObjectSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v10 = a3;
  [v10 touch];
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v14 = [v10 baseObject];
  *&v15 = a4;
  *&v16 = a5;
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectSamplerState:v14 lodMinClamp:a6 lodMaxClamp:v15 atIndex:v16];

  v17 = v29;
  *(v29 + 8) = -15386;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  v24 = [v10 traceStream];
  if (v24)
  {
    v25 = *v24;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = a6;
  *(v19 + 6) = a4;
  *(v19 + 7) = a5;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setObjectSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectSamplerState:v10 atIndex:a4];

  v11 = v23;
  *(v23 + 8) = -15387;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setObjectIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectIntersectionFunctionTables_withBufferRange", "Mesh shaders with Raytracing", 0, 0);
  RetainArray(self->_retainedObjects, a3, length);
  baseObject = self->_baseObject;
  __chkstk_darwin(v9, 8 * length);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  if (length)
  {
    v12 = v11;
    v13 = length;
    do
    {
      v14 = *a3++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setObjectIntersectionFunctionTables:v11 withBufferRange:location, length];
}

- (void)setObjectIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v10 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectIntersectionFunctionTable_atBufferIndex", "Mesh shaders with Raytracing", 0, 0);
  [v10 touch];
  v6 = v10;
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
      v6 = v10;
    }
  }

  baseObject = self->_baseObject;
  v9 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectIntersectionFunctionTable:v9 atBufferIndex:a4];
}

- (void)setObjectBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setObjectBytes:a3 length:a4 atIndex:a5];
  v10 = v21;
  *(v21 + 8) = -15388;
  v11 = BYTE9(v22);
  if (BYTE9(v22) > 0x20uLL)
  {
    v13 = *(*(&v20 + 1) + 24);
    v14 = BYTE10(v22);
    ++BYTE10(v22);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v21 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v22));
    BYTE9(v22) += 32;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v17 = GTTraceEncoder_storeBlob(&v20, a3, a4);
  }

  else
  {
    v17 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = a4;
  *(v12 + 2) = a5;
  v12[24] = v17;
  *(v12 + 25) = 0;
  *(v12 + 7) = 0;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setObjectBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  retainedObjects = self->_retainedObjects;
  v35 = a3;
  RetainArray(retainedObjects, a3, a5.length);
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  traceStream = self->_traceStream;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v36);
  baseObject = self->_baseObject;
  v13 = 8 * length;
  __chkstk_darwin(v11, v14);
  bzero(&v34 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v15 = v35;
    v16 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = length;
    do
    {
      v18 = *v15++;
      *v16++ = [v18 baseObject];
      --v17;
    }

    while (v17);
  }

  v19 = a4;
  v20 = a4;
  v21 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectBuffers:&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:v20 withRange:location, length];
  v22 = v37;
  *(v37 + 8) = -15389;
  v23 = BYTE9(v38);
  if (BYTE9(v38) > 0x20uLL)
  {
    v25 = *(*(&v36 + 1) + 24);
    v26 = BYTE10(v38);
    ++BYTE10(v38);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v37 + 1), v26 | 0x2000000000) + 16;
    v23 = v26;
  }

  else
  {
    v24 = (v22 + BYTE9(v38));
    BYTE9(v38) += 32;
  }

  *(v22 + 13) = v23;
  v27 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v27)
  {
    var0 = v27->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v27, v28);
  bzero(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v30 = StreamArray(&v36, (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), v35, length);
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v31 = GTTraceEncoder_storeBlob(&v36, v19, length);
  }

  else
  {
    v31 = 0;
  }

  *v24 = var0;
  *(v24 + 1) = v21;
  *(v24 + 2) = length;
  v24[24] = v30;
  v24[25] = v31;
  *(v24 + 26) = 0;
  *(v24 + 15) = 0;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v38);
  *(v37 + 15) |= 8u;
}

- (void)setObjectBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setObjectBufferOffset:a3 atIndex:a4];
  v8 = v18;
  *(v18 + 8) = -15390;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v8 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectBuffer:v12 offset:a4 atIndex:a5];

  v13 = v25;
  *(v25 + 8) = -15391;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v8 traceStream];
  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setObjectAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v10 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectAccelerationStructure_atBufferIndex", "Mesh shaders with Raytracing", 0, 0);
  [v10 touch];
  v6 = v10;
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
      v6 = v10;
    }
  }

  baseObject = self->_baseObject;
  v9 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectAccelerationStructure:v9 atBufferIndex:a4];
}

- (void)setMeshVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshVisibleFunctionTables_withBufferRange", "Mesh shaders with Function Pointers", 0, 0);
  RetainArray(self->_retainedObjects, a3, length);
  baseObject = self->_baseObject;
  __chkstk_darwin(v9, 8 * length);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  if (length)
  {
    v12 = v11;
    v13 = length;
    do
    {
      v14 = *a3++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setMeshVisibleFunctionTables:v11 withBufferRange:location, length];
}

- (void)setMeshVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v10 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshVisibleFunctionTable_atBufferIndex", "Mesh shaders with Function Pointers", 0, 0);
  [v10 touch];
  v6 = v10;
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
      v6 = v10;
    }
  }

  baseObject = self->_baseObject;
  v9 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshVisibleFunctionTable:v9 atBufferIndex:a4];
}

- (void)setMeshTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setMeshTextures:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v17 = v29;
  *(v29 + 8) = -15392;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setMeshTexture:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshTexture:v10 atIndex:a4];

  v11 = v23;
  *(v23 + 8) = -15393;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setMeshSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setMeshSamplerStates:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v17 = v29;
  *(v29 + 8) = -15394;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setMeshSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v36 = a4;
  retainedObjects = self->_retainedObjects;
  v37 = a3;
  RetainArray(retainedObjects, a3, a6.length);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v14 = 8 * length;
  __chkstk_darwin(v12, v15);
  bzero(&v36 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v16 = v37;
    v17 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = length;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  v20 = a5;
  v21 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshSamplerStates:&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:v36 lodMaxClamps:a5 withRange:location, length, v36];
  v22 = v39;
  *(v39 + 8) = -15395;
  v23 = BYTE9(v40);
  if (BYTE9(v40) > 0x20uLL)
  {
    v25 = *(*(&v38 + 1) + 24);
    v26 = BYTE10(v40);
    ++BYTE10(v40);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v39 + 1), v26 | 0x2000000000) + 16;
    v23 = v26;
  }

  else
  {
    v24 = (v22 + BYTE9(v40));
    BYTE9(v40) += 32;
  }

  *(v22 + 13) = v23;
  v27 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v27)
  {
    var0 = v27->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v27, v28);
  bzero(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v30 = StreamArray(&v38, (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), v37, length);
  v31 = boundaryTrackerInstance;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = GTTraceEncoder_storeBlob(&v38, v36, length);
    v31 = boundaryTrackerInstance;
  }

  else
  {
    v32 = 0;
  }

  if ((*(v31 + 20) & 0xFFFFFFFE) == 2)
  {
    v33 = GTTraceEncoder_storeBlob(&v38, v20, length);
  }

  else
  {
    v33 = 0;
  }

  *v24 = var0;
  *(v24 + 1) = v21;
  *(v24 + 2) = length;
  v24[24] = v30;
  v24[25] = v32;
  v24[26] = v33;
  *(v24 + 27) = 0;
  v24[31] = 0;
  s();
  *v34 = v35;
  *(v34 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

- (void)setMeshSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v10 = a3;
  [v10 touch];
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v14 = [v10 baseObject];
  *&v15 = a4;
  *&v16 = a5;
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshSamplerState:v14 lodMinClamp:a6 lodMaxClamp:v15 atIndex:v16];

  v17 = v29;
  *(v29 + 8) = -15396;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  v24 = [v10 traceStream];
  if (v24)
  {
    v25 = *v24;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = a6;
  *(v19 + 6) = a4;
  *(v19 + 7) = a5;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setMeshSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshSamplerState:v10 atIndex:a4];

  v11 = v23;
  *(v23 + 8) = -15397;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setMeshIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshIntersectionFunctionTables_withBufferRange", "Mesh shaders with Raytracing", 0, 0);
  RetainArray(self->_retainedObjects, a3, length);
  baseObject = self->_baseObject;
  __chkstk_darwin(v9, 8 * length);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  if (length)
  {
    v12 = v11;
    v13 = length;
    do
    {
      v14 = *a3++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setMeshIntersectionFunctionTables:v11 withBufferRange:location, length];
}

- (void)setMeshIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v10 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshIntersectionFunctionTable_atBufferIndex", "Mesh shaders with Raytracing", 0, 0);
  [v10 touch];
  v6 = v10;
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
      v6 = v10;
    }
  }

  baseObject = self->_baseObject;
  v9 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshIntersectionFunctionTable:v9 atBufferIndex:a4];
}

- (void)setMeshBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setMeshBytes:a3 length:a4 atIndex:a5];
  v10 = v21;
  *(v21 + 8) = -15398;
  v11 = BYTE9(v22);
  if (BYTE9(v22) > 0x20uLL)
  {
    v13 = *(*(&v20 + 1) + 24);
    v14 = BYTE10(v22);
    ++BYTE10(v22);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v21 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v22));
    BYTE9(v22) += 32;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v17 = GTTraceEncoder_storeBlob(&v20, a3, a4);
  }

  else
  {
    v17 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = a4;
  *(v12 + 2) = a5;
  v12[24] = v17;
  *(v12 + 25) = 0;
  *(v12 + 7) = 0;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setMeshBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  retainedObjects = self->_retainedObjects;
  v35 = a3;
  RetainArray(retainedObjects, a3, a5.length);
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  traceStream = self->_traceStream;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v36);
  baseObject = self->_baseObject;
  v13 = 8 * length;
  __chkstk_darwin(v11, v14);
  bzero(&v34 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v15 = v35;
    v16 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = length;
    do
    {
      v18 = *v15++;
      *v16++ = [v18 baseObject];
      --v17;
    }

    while (v17);
  }

  v19 = a4;
  v20 = a4;
  v21 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshBuffers:&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:v20 withRange:location, length];
  v22 = v37;
  *(v37 + 8) = -15399;
  v23 = BYTE9(v38);
  if (BYTE9(v38) > 0x20uLL)
  {
    v25 = *(*(&v36 + 1) + 24);
    v26 = BYTE10(v38);
    ++BYTE10(v38);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v37 + 1), v26 | 0x2000000000) + 16;
    v23 = v26;
  }

  else
  {
    v24 = (v22 + BYTE9(v38));
    BYTE9(v38) += 32;
  }

  *(v22 + 13) = v23;
  v27 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v27)
  {
    var0 = v27->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v27, v28);
  bzero(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v30 = StreamArray(&v36, (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), v35, length);
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v31 = GTTraceEncoder_storeBlob(&v36, v19, length);
  }

  else
  {
    v31 = 0;
  }

  *v24 = var0;
  *(v24 + 1) = v21;
  *(v24 + 2) = length;
  v24[24] = v30;
  v24[25] = v31;
  *(v24 + 26) = 0;
  *(v24 + 15) = 0;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v38);
  *(v37 + 15) |= 8u;
}

- (void)setMeshBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setMeshBufferOffset:a3 atIndex:a4];
  v8 = v18;
  *(v18 + 8) = -15400;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v8 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshBuffer:v12 offset:a4 atIndex:a5];

  v13 = v25;
  *(v25 + 8) = -15401;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v8 traceStream];
  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setMeshAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v10 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshAccelerationStructure_atBufferIndex", "Mesh shaders with Raytracing", 0, 0);
  [v10 touch];
  v6 = v10;
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
      v6 = v10;
    }
  }

  baseObject = self->_baseObject;
  v9 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshAccelerationStructure:v9 atBufferIndex:a4];
}

- (void)setLineWidth:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setLineWidth:v6];
  v7 = v17;
  *(v17 + 8) = -16247;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x30uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1000000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 16;
  }

  *(v7 + 13) = v8;
  v12 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = a3;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setFrontFacingWinding:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setFrontFacingWinding:a3];
  v6 = v16;
  *(v16 + 8) = -16269;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setFragmentVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentVisibleFunctionTables:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v17 = v29;
  *(v29 + 8) = -15455;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setFragmentVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentVisibleFunctionTable:v10 atBufferIndex:a4];

  v11 = v23;
  *(v23 + 8) = -15456;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentTextures:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v17 = v29;
  *(v29 + 8) = -16260;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  [v10 touch];
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  [v11 touch];
  if (v11)
  {
    v13 = self->_retainedObjects;
    if (v13)
    {
      [(NSMutableSet *)v13 addObject:v11];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = self->_baseObject;
  v16 = [v10 baseObject];
  v17 = [v11 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentTexture:v16 atTextureIndex:a4 samplerState:v17 atSamplerIndex:a6];

  v18 = v32;
  *(v32 + 8) = -16214;
  v19 = BYTE9(v33);
  if (BYTE9(v33) > 0x18uLL)
  {
    v21 = *(*(&v31 + 1) + 24);
    v22 = BYTE10(v33);
    ++BYTE10(v33);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v32 + 1), v22 | 0x2800000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v33));
    BYTE9(v33) += 40;
  }

  *(v18 + 13) = v19;
  v23 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v23)
  {
    var0 = v23->var0;
  }

  else
  {
    var0 = 0;
  }

  v25 = [v10 traceStream];
  if (v25)
  {
    v26 = *v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = [v11 traceStream];
  if (v27)
  {
    v28 = *v27;
  }

  else
  {
    v28 = 0;
  }

  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = a4;
  *(v20 + 3) = v28;
  *(v20 + 4) = a6;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentTexture:v10 atIndex:a4];

  v11 = v23;
  *(v23 + 8) = -16261;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerStates:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v17 = v29;
  *(v29 + 8) = -16258;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v36 = a4;
  retainedObjects = self->_retainedObjects;
  v37 = a3;
  RetainArray(retainedObjects, a3, a6.length);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v14 = 8 * length;
  __chkstk_darwin(v12, v15);
  bzero(&v36 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v16 = v37;
    v17 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = length;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  v20 = v36;
  v21 = a5;
  v22 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerStates:&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:v36 lodMaxClamps:a5 withRange:location, length, v36];
  v23 = v39;
  *(v39 + 8) = -16256;
  v24 = BYTE9(v40);
  if (BYTE9(v40) > 0x20uLL)
  {
    v26 = *(*(&v38 + 1) + 24);
    v27 = BYTE10(v40);
    ++BYTE10(v40);
    v25 = GTTraceMemPool_allocateBytes(v26, *(&v39 + 1), v27 | 0x2000000000) + 16;
    v24 = v27;
    v20 = v36;
  }

  else
  {
    v25 = (v23 + BYTE9(v40));
    BYTE9(v40) += 32;
  }

  *(v23 + 13) = v24;
  v28 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v28)
  {
    var0 = v28->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v28, v29);
  bzero(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v31 = StreamArray(&v38, (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), v37, length);
  v32 = GTTraceEncoder_storeBytes(&v38, v20, 4 * length);
  v33 = GTTraceEncoder_storeBytes(&v38, v21, 4 * length);
  *v25 = var0;
  *(v25 + 1) = v22;
  *(v25 + 2) = length;
  v25[24] = v31;
  v25[25] = v32;
  v25[26] = v33;
  *(v25 + 27) = 0;
  v25[31] = 0;
  s();
  *v34 = v35;
  *(v34 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 lodBias:(float)a6 atIndex:(unint64_t)a7
{
  v19 = a3;
  [v19 touch];
  v12 = v19;
  if (v19)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v19];
      v12 = v19;
    }
  }

  baseObject = self->_baseObject;
  v15 = [v12 baseObject];
  *&v16 = a4;
  *&v17 = a5;
  *&v18 = a6;
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerState:v15 lodMinClamp:a7 lodMaxClamp:v16 lodBias:v17 atIndex:v18];
}

- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v10 = a3;
  [v10 touch];
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v14 = [v10 baseObject];
  *&v15 = a4;
  *&v16 = a5;
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerState:v14 lodMinClamp:a6 lodMaxClamp:v15 atIndex:v16];

  v17 = v29;
  *(v29 + 8) = -16257;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  v24 = [v10 traceStream];
  if (v24)
  {
    v25 = *v24;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = a6;
  *(v19 + 6) = a4;
  *(v19 + 7) = a5;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerState:v10 atIndex:a4];

  v11 = v23;
  *(v23 + 8) = -16259;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setFragmentIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  RetainArray(self->_retainedObjects, a3, a4.length);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v11 = 8 * length;
  __chkstk_darwin(v9, v12);
  bzero(&v28 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = a3;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentIntersectionFunctionTables:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v17 = v29;
  *(v29 + 8) = -15457;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v22, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v19 = var0;
  *(v19 + 1) = location;
  *(v19 + 2) = length;
  v19[24] = v25;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentIntersectionFunctionTable:v10 atBufferIndex:a4];

  v11 = v23;
  *(v23 + 8) = -15458;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setFragmentBytes:a3 length:a4 atIndex:a5];
  v10 = v21;
  *(v21 + 8) = -16223;
  v11 = BYTE9(v22);
  if (BYTE9(v22) > 0x20uLL)
  {
    v13 = *(*(&v20 + 1) + 24);
    v14 = BYTE10(v22);
    ++BYTE10(v22);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v21 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v22));
    BYTE9(v22) += 32;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v17 = GTTraceEncoder_storeBlob(&v20, a3, a4);
  }

  else
  {
    v17 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = a4;
  *(v12 + 2) = a5;
  v12[24] = v17;
  *(v12 + 25) = 0;
  *(v12 + 7) = 0;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  retainedObjects = self->_retainedObjects;
  v33 = a3;
  RetainArray(retainedObjects, a3, a5.length);
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  traceStream = self->_traceStream;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
  baseObject = self->_baseObject;
  v13 = 8 * length;
  __chkstk_darwin(v11, v14);
  bzero(&v32 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v15 = v33;
    v16 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = length;
    do
    {
      v18 = *v15++;
      *v16++ = [v18 baseObject];
      --v17;
    }

    while (v17);
  }

  v19 = a4;
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentBuffers:&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:a4 withRange:location, length];
  v20 = v35;
  *(v35 + 8) = -16262;
  v21 = BYTE9(v36);
  if (BYTE9(v36) > 0x20uLL)
  {
    v23 = *(*(&v34 + 1) + 24);
    v24 = BYTE10(v36);
    ++BYTE10(v36);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v35 + 1), v24 | 0x2000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v36));
    BYTE9(v36) += 32;
  }

  *(v20 + 13) = v21;
  v25 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v25)
  {
    var0 = v25->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v25, v26);
  bzero(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v28 = StreamArray(&v34, (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), v33, length);
  v29 = GTTraceEncoder_storeBytes(&v34, v19, 8 * length);
  *v22 = var0;
  *(v22 + 1) = location;
  *(v22 + 2) = length;
  v22[24] = v28;
  v22[25] = v29;
  *(v22 + 26) = 0;
  *(v22 + 15) = 0;
  s();
  *v30 = v31;
  *(v30 + 8) = BYTE8(v36);
  *(v35 + 15) |= 8u;
}

- (void)setFragmentBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setFragmentBufferOffset:a3 atIndex:a4];
  v8 = v18;
  *(v18 + 8) = -16222;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v8 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentBuffer:v12 offset:a4 atIndex:a5];

  v13 = v25;
  *(v25 + 8) = -16263;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v8 traceStream];
  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  *&v8 = a3;
  *&v9 = a4;
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthTestMinBound:v8 maxBound:v9];
  v10 = v20;
  *(v20 + 8) = -14914;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 2) = a3;
  *(v12 + 3) = a4;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setDepthStoreActionOptions:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthStoreActionOptions:a3];
  v6 = v16;
  *(v16 + 8) = -16021;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setDepthStoreAction:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthStoreAction:a3];
  v6 = v16;
  *(v16 + 8) = -16158;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setDepthStencilState:(id)a3
{
  v4 = a3;
  [v4 touch];
  if (v4)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v4];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  v8 = [v4 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setDepthStencilState:v8];

  v9 = v21;
  *(v21 + 8) = -16254;
  v10 = BYTE9(v22);
  if (BYTE9(v22) > 0x30uLL)
  {
    v12 = *(*(&v20 + 1) + 24);
    v13 = BYTE10(v22);
    ++BYTE10(v22);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v21 + 1), v13 | 0x1000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v22));
    BYTE9(v22) += 16;
  }

  *(v9 + 13) = v10;
  v14 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [v4 traceStream];
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = v17;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setDepthResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6
{
  v10 = a3;
  [v10 touch];
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  baseObject = self->_baseObject;
  v14 = [v10 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setDepthResolveTexture:v14 slice:a4 depthPlane:a5 level:a6];

  v15 = v27;
  *(v27 + 8) = -16155;
  v16 = BYTE9(v28);
  if (BYTE9(v28) > 0x18uLL)
  {
    v18 = *(*(&v26 + 1) + 24);
    v19 = BYTE10(v28);
    ++BYTE10(v28);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v27 + 1), v19 | 0x2800000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v28));
    BYTE9(v28) += 40;
  }

  *(v15 + 13) = v16;
  v20 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [v10 traceStream];
  if (v22)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  *(v17 + 4) = a6;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)setDepthClipMode:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthClipMode:a3];
  v6 = v16;
  *(v16 + 8) = -16267;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setDepthCleared
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthCleared];
  v4 = v14;
  *(v14 + 8) = -15727;
  v5 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v7 = *(*(&v13 + 1) + 24);
    v8 = BYTE10(v15);
    ++BYTE10(v15);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v14 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v4 + 13) = v5;
  v9 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
}

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  *&v10 = a3;
  *&v11 = a4;
  *&v12 = a5;
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthBias:v10 slopeScale:v11 clamp:v12];
  v13 = v23;
  *(v23 + 8) = -16266;
  v14 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v16 = *(*(&v22 + 1) + 24);
    v17 = BYTE10(v24);
    ++BYTE10(v24);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v23 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  *v15 = var0;
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = a5;
  *(v15 + 5) = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setCullMode:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setCullMode:a3];
  v6 = v16;
  *(v16 + 8) = -16268;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setColorStoreActionOptions:a3 atIndex:a4];
  v8 = v18;
  *(v18 + 8) = -16022;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setColorStoreAction:a3 atIndex:a4];
  v8 = v18;
  *(v18 + 8) = -16159;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 atIndex:(unint64_t)a7
{
  v12 = a3;
  [v12 touch];
  if (v12)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v12];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v16 = [v12 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setColorResolveTexture:v16 slice:a4 depthPlane:a5 level:a6 atIndex:a7];

  v17 = v29;
  *(v29 + 8) = -16156;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x10uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x3000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 48;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  v24 = [v12 traceStream];
  if (v24)
  {
    v25 = *v24;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  *(v19 + 4) = a6;
  *(v19 + 5) = a7;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setColorAttachmentMap:(id)a3
{
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setColorAttachmentMap:v4];
  v6 = v24;
  *(v24 + 8) = -14849;
  v7 = BYTE9(v25);
  if (BYTE9(v25) > 0x30uLL)
  {
    v9 = *(*(&v23 + 1) + 24);
    v10 = BYTE10(v25);
    ++BYTE10(v25);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v24 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v25));
    BYTE9(v25) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (!v11)
  {
    var0 = 0;
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = -1;
    v17 = -1;
    v15 = -1;
    v13 = -1;
    v14 = -1;
    v16 = -1;
    v18 = -1;
    v20 = -1;
    goto LABEL_9;
  }

  var0 = v11->var0;
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = [v4 getPhysicalIndexForLogicalIndex:0];
  v14 = [v4 getPhysicalIndexForLogicalIndex:1];
  v15 = [v4 getPhysicalIndexForLogicalIndex:2];
  v16 = [v4 getPhysicalIndexForLogicalIndex:3];
  v17 = [v4 getPhysicalIndexForLogicalIndex:4];
  v18 = [v4 getPhysicalIndexForLogicalIndex:5];
  v19 = [v4 getPhysicalIndexForLogicalIndex:6];
  v20 = [v4 getPhysicalIndexForLogicalIndex:7];
LABEL_9:
  *v8 = var0;
  v8[8] = v13;
  v8[9] = v14;
  v8[10] = v15;
  v8[11] = v16;
  v8[12] = v17;
  v8[13] = v18;
  v8[14] = v19;
  v8[15] = v20;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  *&v12 = a3;
  *&v13 = a4;
  *&v14 = a5;
  *&v15 = a6;
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setBlendColorRed:v12 green:v13 blue:v14 alpha:v15];
  v16 = v26;
  *(v26 + 8) = -16255;
  v17 = BYTE9(v27);
  if (BYTE9(v27) > 0x28uLL)
  {
    v19 = *(*(&v25 + 1) + 24);
    v20 = BYTE10(v27);
    ++BYTE10(v27);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v26 + 1), v20 | 0x1800000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v27));
    BYTE9(v27) += 24;
  }

  *(v16 + 13) = v17;
  v21 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  *v18 = var0;
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  *(v18 + 5) = a6;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setAlphaTestReferenceValue:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setAlphaTestReferenceValue:v6];
  v7 = v17;
  *(v17 + 8) = -15729;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x30uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1000000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 16;
  }

  *(v7 + 13) = v8;
  v12 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = a3;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)pushDebugGroup:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject pushDebugGroup:v4];
  v6 = v19;
  *(v19 + 8) = -16244;
  v7 = BYTE9(v20);
  if (BYTE9(v20) > 0x30uLL)
  {
    v9 = *(*(&v18 + 1) + 24);
    v10 = BYTE10(v20);
    ++BYTE10(v20);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v19 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v20));
    BYTE9(v20) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  v13 = [v4 UTF8String];
  if (v13)
  {
    v14 = [v4 UTF8String];
    v15 = strlen([v4 UTF8String]);
    LOBYTE(v13) = GTTraceEncoder_storeBytes(&v18, v14, v15 + 1);
  }

  *v8 = var0;
  v8[8] = v13;
  *(v8 + 9) = 0;
  *(v8 + 3) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)popDebugGroup
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject popDebugGroup];
  v4 = v14;
  *(v14 + 8) = -16243;
  v5 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v7 = *(*(&v13 + 1) + 24);
    v8 = BYTE10(v15);
    ++BYTE10(v15);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v14 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v4 + 13) = v5;
  v9 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
}

- (void)memoryBarrierWithScope:(unint64_t)a3 afterStages:(unint64_t)a4 beforeStages:(unint64_t)a5
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject memoryBarrierWithScope:a3 afterStages:a4 beforeStages:a5];
  v10 = v20;
  *(v20 + 8) = -16004;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = a3;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
  if (a4 == 1 && a5 == 1)
  {
    CaptureClearFuncSnapshot(a3, self->_snapshotMap);
  }
}

- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4 afterStages:(unint64_t)a5 beforeStages:(unint64_t)a6
{
  v34 = a5;
  v7 = a4;
  v8 = a3;
  RetainArray(self->_retainedObjects, a3, a4);
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  traceStream = self->_traceStream;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  v13 = 8 * v7;
  __chkstk_darwin(v11, v14);
  bzero(&v33 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v7);
  if (v7)
  {
    v15 = v8;
    v16 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = v7;
    do
    {
      v18 = *v15++;
      *v16++ = [v18 baseObject];
      --v17;
    }

    while (v17);
  }

  v19 = v34;
  [(MTLRenderCommandEncoderSPI *)baseObject memoryBarrierWithResources:&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) count:v7 afterStages:v34 beforeStages:a6];
  v20 = v36;
  *(v36 + 8) = -16003;
  v21 = BYTE9(v37);
  if (BYTE9(v37) > 0x18uLL)
  {
    v23 = *(*(&v35 + 1) + 24);
    v24 = BYTE10(v37);
    ++BYTE10(v37);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v36 + 1), v24 | 0x2800000000) + 16;
    v21 = v24;
    v19 = v34;
  }

  else
  {
    v22 = (v20 + BYTE9(v37));
    BYTE9(v37) += 40;
  }

  *(v20 + 13) = v21;
  v25 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v25)
  {
    var0 = v25->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v25, v26);
  bzero(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v7);
  v28 = StreamArray(&v35, (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), v8, v7);
  *v22 = var0;
  *(v22 + 1) = v7;
  *(v22 + 2) = v19;
  *(v22 + 3) = a6;
  v22[32] = v28;
  *(v22 + 33) = 0;
  *(v22 + 9) = 0;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
  if (v7)
  {
    v32 = v19 == 1 && a6 == 1;
    do
    {
      if (v32)
      {
        CaptureRemoveFuncSnapshot(*v8, self->_snapshotMap);
      }

      ++v8;
      --v7;
    }

    while (v7);
  }
}

- (void)insertSplit
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_insertSplit", "Command Encoder Insert Split", 0, 0);
  baseObject = self->_baseObject;

  [(MTLRenderCommandEncoderSPI *)baseObject insertSplit];
}

- (void)insertDebugSignpost:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject insertDebugSignpost:v4];
  v6 = v19;
  *(v19 + 8) = -16245;
  v7 = BYTE9(v20);
  if (BYTE9(v20) > 0x30uLL)
  {
    v9 = *(*(&v18 + 1) + 24);
    v10 = BYTE10(v20);
    ++BYTE10(v20);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v19 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v20));
    BYTE9(v20) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  v13 = [v4 UTF8String];
  if (v13)
  {
    v14 = [v4 UTF8String];
    v15 = strlen([v4 UTF8String]);
    LOBYTE(v13) = GTTraceEncoder_storeBytes(&v18, v14, v15 + 1);
  }

  *v8 = var0;
  v8[8] = v13;
  *(v8 + 9) = 0;
  *(v8 + 3) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)endEncoding
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject endEncoding];
  v4 = v14;
  *(v14 + 8) = -16246;
  v5 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v7 = *(*(&v13 + 1) + 24);
    v8 = BYTE10(v15);
    ++BYTE10(v15);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v14 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v4 + 13) = v5;
  v9 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6 baseInstance:a7];
  v14 = v24;
  *(v24 + 8) = -16218;
  v15 = BYTE9(v25);
  if (BYTE9(v25) > 0x10uLL)
  {
    v17 = *(*(&v23 + 1) + 24);
    v18 = BYTE10(v25);
    ++BYTE10(v25);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v24 + 1), v18 | 0x3000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v25));
    BYTE9(v25) += 48;
  }

  *(v14 + 13) = v15;
  v19 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = a3;
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  *(v16 + 4) = a6;
  *(v16 + 5) = a7;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6];
  v12 = v22;
  *(v22 + 8) = -16251;
  v13 = BYTE9(v23);
  if (BYTE9(v23) > 0x18uLL)
  {
    v15 = *(*(&v21 + 1) + 24);
    v16 = BYTE10(v23);
    ++BYTE10(v23);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v22 + 1), v16 | 0x2800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v23));
    BYTE9(v23) += 40;
  }

  *(v12 + 13) = v13;
  v17 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v17)
  {
    var0 = v17->var0;
  }

  else
  {
    var0 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = a3;
  *(v14 + 2) = a4;
  *(v14 + 3) = a5;
  *(v14 + 4) = a6;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject drawPrimitives:a3 vertexStart:a4 vertexCount:a5];
  v10 = v20;
  *(v20 + 8) = -16250;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = a3;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  v8 = a4;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v8 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawPrimitives:a3 indirectBuffer:v12 indirectBufferOffset:a5];

  v13 = v25;
  *(v25 + 8) = -16216;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v8 traceStream];
  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = a3;
  *(v15 + 2) = v21;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9
{
  v15 = a6;
  [v15 touch];
  if (v15)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v15];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = self->_baseObject;
  v19 = [v15 baseObject];
  v30 = a8;
  [(MTLRenderCommandEncoderSPI *)baseObject drawPatches:a3 patchStart:a4 patchCount:a5 patchIndexBuffer:v19 patchIndexBufferOffset:a7 instanceCount:a8 baseInstance:a9];

  v20 = v32;
  *(v32 + 8) = -16147;
  if (BYTE9(v33))
  {
    v21 = *(*(&v31 + 1) + 24);
    v22 = BYTE10(v33);
    ++BYTE10(v33);
    v23 = GTTraceMemPool_allocateBytes(v21, *(&v32 + 1), v22 | 0x4000000000) + 16;
  }

  else
  {
    LOBYTE(v22) = 0;
    BYTE9(v33) = 64;
    v23 = v20;
  }

  v20[13] = v22;
  v24 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v24)
  {
    var0 = v24->var0;
  }

  else
  {
    var0 = 0;
  }

  v26 = [v15 traceStream];
  if (v26)
  {
    v27 = *v26;
  }

  else
  {
    v27 = 0;
  }

  *v23 = var0;
  *(v23 + 1) = a3;
  *(v23 + 2) = a4;
  *(v23 + 3) = a5;
  *(v23 + 4) = v27;
  *(v23 + 5) = a7;
  *(v23 + 6) = v30;
  *(v23 + 7) = a9;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7
{
  v12 = a4;
  v13 = a6;
  [v12 touch];
  if (v12)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v12];
    }
  }

  [v13 touch];
  if (v13)
  {
    v15 = self->_retainedObjects;
    if (v15)
    {
      [(NSMutableSet *)v15 addObject:v13];
    }
  }

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  baseObject = self->_baseObject;
  v18 = [v12 baseObject];
  v19 = [v13 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawPatches:a3 patchIndexBuffer:v18 patchIndexBufferOffset:a5 indirectBuffer:v19 indirectBufferOffset:a7];

  v20 = v34;
  *(v34 + 8) = -16146;
  v21 = BYTE9(v35);
  if (BYTE9(v35) > 0x10uLL)
  {
    v23 = *(*(&v33 + 1) + 24);
    v24 = BYTE10(v35);
    ++BYTE10(v35);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v34 + 1), v24 | 0x3000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v35));
    BYTE9(v35) += 48;
  }

  *(v20 + 13) = v21;
  v25 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v25)
  {
    var0 = v25->var0;
  }

  else
  {
    var0 = 0;
  }

  v27 = [v12 traceStream];
  if (v27)
  {
    v28 = *v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = [v13 traceStream];
  if (v29)
  {
    v30 = *v29;
  }

  else
  {
    v30 = 0;
  }

  *v22 = var0;
  *(v22 + 1) = a3;
  *(v22 + 2) = v28;
  *(v22 + 3) = a5;
  *(v22 + 4) = v30;
  *(v22 + 5) = a7;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v27 = *a3;
  v26 = *a4;
  v25 = *a5;
  [(MTLRenderCommandEncoderSPI *)baseObject drawMeshThreads:&v27 threadsPerObjectThreadgroup:&v26 threadsPerMeshThreadgroup:&v25];
  v11 = *(&v28 + 1);
  v12 = v29;
  *(v29 + 8) = -15414;
  v13 = *(v11 + 24);
  v14 = BYTE10(v30);
  ++BYTE10(v30);
  Bytes = GTTraceMemPool_allocateBytes(v13, *(&v29 + 1), v14 | 0x5000000000);
  *(v12 + 13) = v14;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = a3->var2;
  v19 = a4->var2;
  v20 = a5->var2;
  *(Bytes + 2) = var0;
  v21 = *&a4->var0;
  v22 = *&a5->var0;
  *(Bytes + 24) = *&a3->var0;
  *(Bytes + 5) = var2;
  *(Bytes + 3) = v21;
  *(Bytes + 8) = v19;
  *(Bytes + 72) = v22;
  *(Bytes + 11) = v20;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6
{
  v10 = a3;
  [v10 touch];
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  baseObject = self->_baseObject;
  v14 = [v10 baseObject];
  v31 = *&a5->var0;
  var2 = a5->var2;
  v29 = *&a6->var0;
  v30 = a6->var2;
  [(MTLRenderCommandEncoderSPI *)baseObject drawMeshThreadgroupsWithIndirectBuffer:v14 indirectBufferOffset:a4 threadsPerObjectThreadgroup:&v31 threadsPerMeshThreadgroup:&v29];

  v15 = *(&v33 + 1);
  v16 = v34;
  *(v34 + 8) = -15415;
  v17 = *(v15 + 24);
  v18 = BYTE10(v35);
  ++BYTE10(v35);
  Bytes = GTTraceMemPool_allocateBytes(v17, *(&v34 + 1), v18 | 0x4800000000);
  *(v16 + 13) = v18;
  v20 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [v10 traceStream];
  if (v22)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = a5->var2;
  v25 = a6->var2;
  *(Bytes + 2) = var0;
  *(Bytes + 3) = v23;
  *(Bytes + 4) = a4;
  v26 = *&a6->var0;
  *(Bytes + 40) = *&a5->var0;
  *(Bytes + 7) = v24;
  *(Bytes + 4) = v26;
  *(Bytes + 10) = v25;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v27 = *a3;
  v26 = *a4;
  v25 = *a5;
  [(MTLRenderCommandEncoderSPI *)baseObject drawMeshThreadgroups:&v27 threadsPerObjectThreadgroup:&v26 threadsPerMeshThreadgroup:&v25];
  v11 = *(&v28 + 1);
  v12 = v29;
  *(v29 + 8) = -15416;
  v13 = *(v11 + 24);
  v14 = BYTE10(v30);
  ++BYTE10(v30);
  Bytes = GTTraceMemPool_allocateBytes(v13, *(&v29 + 1), v14 | 0x5000000000);
  *(v12 + 13) = v14;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = a3->var2;
  v19 = a4->var2;
  v20 = a5->var2;
  *(Bytes + 2) = var0;
  v21 = *&a4->var0;
  v22 = *&a5->var0;
  *(Bytes + 24) = *&a3->var0;
  *(Bytes + 5) = var2;
  *(Bytes + 3) = v21;
  *(Bytes + 8) = v19;
  *(Bytes + 72) = v22;
  *(Bytes + 11) = v20;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8
{
  v14 = a5;
  v15 = a7;
  [v14 touch];
  if (v14)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v14];
    }
  }

  [v15 touch];
  if (v15)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:v15];
    }
  }

  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  v20 = [v14 baseObject];
  v21 = [v15 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPrimitives:a3 indexType:a4 indexBuffer:v20 indexBufferOffset:a6 indirectBuffer:v21 indirectBufferOffset:a8];

  v22 = v36;
  *(v36 + 8) = -16215;
  v23 = BYTE9(v37);
  if (BYTE9(v37) > 8uLL)
  {
    v25 = *(*(&v35 + 1) + 24);
    v26 = BYTE10(v37);
    ++BYTE10(v37);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v36 + 1), v26 | 0x3800000000) + 16;
    v23 = v26;
  }

  else
  {
    v24 = (v22 + BYTE9(v37));
    BYTE9(v37) += 56;
  }

  *(v22 + 13) = v23;
  v27 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v27)
  {
    var0 = v27->var0;
  }

  else
  {
    var0 = 0;
  }

  v29 = [v14 traceStream];
  if (v29)
  {
    v30 = *v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = [v15 traceStream];
  if (v31)
  {
    v32 = *v31;
  }

  else
  {
    v32 = 0;
  }

  *v24 = var0;
  *(v24 + 1) = a3;
  *(v24 + 2) = a4;
  *(v24 + 3) = v30;
  *(v24 + 4) = a6;
  *(v24 + 5) = v32;
  *(v24 + 6) = a8;
  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  v16 = a6;
  [v16 touch];
  if (v16)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v16];
    }
  }

  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  v20 = [v16 baseObject];
  v21 = a7;
  v22 = a7;
  v23 = a8;
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:v20 indexBufferOffset:v22 instanceCount:a8 baseVertex:a9 baseInstance:a10];

  v24 = *(&v35 + 1);
  v25 = v36;
  *(v36 + 8) = -16217;
  v26 = *(v24 + 24);
  v27 = BYTE10(v37);
  ++BYTE10(v37);
  Bytes = GTTraceMemPool_allocateBytes(v26, *(&v36 + 1), v27 | 0x4800000000);
  *(v25 + 13) = v27;
  v29 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v29)
  {
    var0 = v29->var0;
  }

  else
  {
    var0 = 0;
  }

  v31 = [v16 traceStream];
  if (v31)
  {
    v32 = *v31;
  }

  else
  {
    v32 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = a3;
  *(Bytes + 4) = a4;
  *(Bytes + 5) = a5;
  *(Bytes + 6) = v32;
  *(Bytes + 7) = v21;
  *(Bytes + 8) = v23;
  *(Bytes + 9) = a9;
  *(Bytes + 10) = a10;
  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  v14 = a6;
  [v14 touch];
  if (v14)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v14];
    }
  }

  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v30);
  baseObject = self->_baseObject;
  v18 = [v14 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:v18 indexBufferOffset:a7 instanceCount:a8];

  v19 = v31;
  *(v31 + 8) = -16249;
  v20 = BYTE9(v32);
  if (BYTE9(v32) > 8uLL)
  {
    v22 = *(*(&v30 + 1) + 24);
    v23 = BYTE10(v32);
    ++BYTE10(v32);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v31 + 1), v23 | 0x3800000000) + 16;
    v20 = v23;
  }

  else
  {
    v21 = (v19 + BYTE9(v32));
    BYTE9(v32) += 56;
  }

  *(v19 + 13) = v20;
  v24 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v24)
  {
    var0 = v24->var0;
  }

  else
  {
    var0 = 0;
  }

  v26 = [v14 traceStream];
  if (v26)
  {
    v27 = *v26;
  }

  else
  {
    v27 = 0;
  }

  *v21 = var0;
  *(v21 + 1) = a3;
  *(v21 + 2) = a4;
  *(v21 + 3) = a5;
  *(v21 + 4) = v27;
  *(v21 + 5) = a7;
  *(v21 + 6) = a8;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v32);
  *(v31 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7
{
  v12 = a6;
  [v12 touch];
  if (v12)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v12];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v16 = [v12 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:v16 indexBufferOffset:a7];

  v17 = v29;
  *(v29 + 8) = -16248;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x10uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x3000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 48;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  v24 = [v12 traceStream];
  if (v24)
  {
    v25 = *v24;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = a3;
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  *(v19 + 4) = v25;
  *(v19 + 5) = a7;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11
{
  v14 = a6;
  v15 = a8;
  [v14 touch];
  if (v14)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v14];
    }
  }

  [v15 touch];
  if (v15)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:v15];
    }
  }

  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v20 = [v14 baseObject];
  v21 = [v15 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPatches:a3 patchStart:a4 patchCount:a5 patchIndexBuffer:v20 patchIndexBufferOffset:a7 controlPointIndexBuffer:v21 controlPointIndexBufferOffset:a9 instanceCount:a10 baseInstance:a11];

  v22 = *(&v38 + 1);
  v23 = v39;
  *(v39 + 8) = -16145;
  v24 = *(v22 + 24);
  v25 = BYTE10(v40);
  ++BYTE10(v40);
  Bytes = GTTraceMemPool_allocateBytes(v24, *(&v39 + 1), v25 | 0x5000000000);
  *(v23 + 13) = v25;
  v27 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v27)
  {
    var0 = v27->var0;
  }

  else
  {
    var0 = 0;
  }

  v29 = [v14 traceStream];
  if (v29)
  {
    v30 = *v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = [v15 traceStream];
  if (v31)
  {
    v32 = *v31;
  }

  else
  {
    v32 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = a3;
  *(Bytes + 4) = a4;
  *(Bytes + 5) = a5;
  *(Bytes + 6) = v30;
  *(Bytes + 7) = a7;
  *(Bytes + 8) = v32;
  *(Bytes + 9) = a9;
  *(Bytes + 10) = a10;
  *(Bytes + 11) = a11;
  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9
{
  v13 = a4;
  v14 = a6;
  v15 = a8;
  [v13 touch];
  if (v13)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v13];
    }
  }

  [v14 touch];
  if (v14)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:v14];
    }
  }

  [v15 touch];
  if (v15)
  {
    v18 = self->_retainedObjects;
    if (v18)
    {
      [(NSMutableSet *)v18 addObject:v15];
    }
  }

  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v40);
  baseObject = self->_baseObject;
  v21 = [v13 baseObject];
  v22 = [v14 baseObject];
  v23 = [v15 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPatches:a3 patchIndexBuffer:v21 patchIndexBufferOffset:a5 controlPointIndexBuffer:v22 controlPointIndexBufferOffset:a7 indirectBuffer:v23 indirectBufferOffset:a9];

  v24 = v41;
  *(v41 + 8) = -16144;
  if (BYTE9(v42))
  {
    v25 = *(*(&v40 + 1) + 24);
    v26 = BYTE10(v42);
    ++BYTE10(v42);
    v27 = GTTraceMemPool_allocateBytes(v25, *(&v41 + 1), v26 | 0x4000000000) + 16;
  }

  else
  {
    LOBYTE(v26) = 0;
    BYTE9(v42) = 64;
    v27 = v24;
  }

  v24[13] = v26;
  v28 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v28)
  {
    var0 = v28->var0;
  }

  else
  {
    var0 = 0;
  }

  v30 = [v13 traceStream];
  if (v30)
  {
    v31 = *v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = [v14 traceStream];
  if (v32)
  {
    v33 = *v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = [v15 traceStream];
  if (v34)
  {
    v35 = *v34;
  }

  else
  {
    v35 = 0;
  }

  *v27 = var0;
  *(v27 + 1) = a3;
  *(v27 + 2) = v31;
  *(v27 + 3) = a5;
  *(v27 + 4) = v33;
  *(v27 + 5) = a7;
  *(v27 + 6) = v35;
  *(v27 + 7) = a9;
  s();
  *v36 = v37;
  *(v36 + 8) = BYTE8(v42);
  *(v41 + 15) |= 8u;
}

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4
{
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  v9 = *&a3->var0;
  var2 = a3->var2;
  v10 = *&a4->var0.var2;
  v24[0] = *&a4->var0.var0;
  v24[1] = v10;
  v24[2] = *&a4->var1.var1;
  v25 = v9;
  [(MTLRenderCommandEncoderSPI *)baseObject dispatchThreadsPerTile:&v25 inRegion:v24];
  v11 = *(&v27 + 1);
  v12 = v28;
  *(v28 + 8) = -15486;
  v13 = *(v11 + 24);
  v14 = BYTE10(v29);
  ++BYTE10(v29);
  Bytes = GTTraceMemPool_allocateBytes(v13, *(&v28 + 1), v14 | 0x5000000000);
  *(v12 + 13) = v14;
  v16 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = a3->var2;
  *(Bytes + 2) = var0;
  v19 = *&a4->var0.var0;
  v20 = *&a4->var0.var2;
  v21 = *&a4->var1.var1;
  *(Bytes + 24) = *&a3->var0;
  *(Bytes + 5) = v18;
  *(Bytes + 3) = v19;
  *(Bytes + 4) = v20;
  *(Bytes + 5) = v21;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)dispatchThreadsPerTile:(id *)a3
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  baseObject = self->_baseObject;
  v17 = *a3;
  [(MTLRenderCommandEncoderSPI *)baseObject dispatchThreadsPerTile:&v17];
  v7 = v19;
  *(v19 + 8) = -16137;
  v8 = BYTE9(v20);
  if (BYTE9(v20) > 0x20uLL)
  {
    v10 = *(*(&v18 + 1) + 24);
    v11 = BYTE10(v20);
    ++BYTE10(v20);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v19 + 1), v11 | 0x2000000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v20));
    BYTE9(v20) += 32;
  }

  *(v7 + 13) = v8;
  v12 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = a3->var2;
  *v9 = var0;
  *(v9 + 8) = *&a3->var0;
  *(v9 + 3) = var2;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:a3 beforeStages:a4];
  v8 = v18;
  *(v18 + 8) = -14954;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -16281;
  v7 = BYTE9(v20);
  if (BYTE9(v20) > 0x30uLL)
  {
    v9 = *(*(&v18 + 1) + 24);
    v10 = BYTE10(v20);
    ++BYTE10(v20);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v19 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v20));
    BYTE9(v20) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  v13 = [v4 UTF8String];
  if (v13)
  {
    v14 = [v4 UTF8String];
    v15 = strlen([v4 UTF8String]);
    LOBYTE(v13) = GTTraceEncoder_storeBytes(&v18, v14, v15 + 1);
  }

  *v8 = var0;
  v8[8] = v13;
  *(v8 + 9) = 0;
  *(v8 + 3) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTLRenderCommandEncoderSPI *)baseObject conformsToProtocol:v4];

  if (&OBJC_PROTOCOL___CaptureMTLObject == v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = CaptureMTLRenderCommandEncoder;
  v3 = [(CaptureMTLRenderCommandEncoder *)&v7 description];
  v4 = [(MTLRenderCommandEncoderSPI *)self->_baseObject description];
  v5 = [NSString stringWithFormat:@"%@ -> %@", v3, v4];

  return v5;
}

- (unint64_t)streamReference
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    return traceStream->var0;
  }

  else
  {
    return 0;
  }
}

- (void)touch
{
  traceStream = self->_traceStream;
  v3 = mach_absolute_time();
  if (traceStream)
  {
    v4 = atomic_load(&traceStream[1].var1);
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong(&traceStream[1].var1, &v5, v4 & 0x3F | v3 & 0xFFFFFFFFFFFFFFC0);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }
}

- (void)setTileAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 device];
    v9 = [v8 captureRaytracingEnabled];

    if ((v9 & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setTileAccelerationStructure_atBufferIndex", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      v22 = [v7 baseObject];
      [(MTLRenderCommandEncoderSPI *)baseObject setTileAccelerationStructure:v22 atBufferIndex:a4];

      goto LABEL_17;
    }

    [v7 touch];
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v7];
    }
  }

  else
  {
    [0 touch];
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  v12 = self->_baseObject;
  v13 = [v7 baseObject];
  [(MTLRenderCommandEncoderSPI *)v12 setTileAccelerationStructure:v13 atBufferIndex:a4];

  v14 = v28;
  *(v28 + 8) = -15454;
  v15 = BYTE9(v29);
  if (BYTE9(v29) > 0x28uLL)
  {
    v17 = *(*(&v27 + 1) + 24);
    v18 = BYTE10(v29);
    ++BYTE10(v29);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v28 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v29));
    BYTE9(v29) += 24;
  }

  *(v14 + 13) = v15;
  v19 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v23 = [v7 traceStream];
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v24;
  *(v16 + 2) = a4;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
LABEL_17:
}

- (void)setFragmentAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 device];
    v9 = [v8 captureRaytracingEnabled];

    if ((v9 & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setFragmentAccelerationStructure_atBufferIndex", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      v22 = [v7 baseObject];
      [(MTLRenderCommandEncoderSPI *)baseObject setFragmentAccelerationStructure:v22 atBufferIndex:a4];

      goto LABEL_17;
    }

    [v7 touch];
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v7];
    }
  }

  else
  {
    [0 touch];
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  v12 = self->_baseObject;
  v13 = [v7 baseObject];
  [(MTLRenderCommandEncoderSPI *)v12 setFragmentAccelerationStructure:v13 atBufferIndex:a4];

  v14 = v28;
  *(v28 + 8) = -15459;
  v15 = BYTE9(v29);
  if (BYTE9(v29) > 0x28uLL)
  {
    v17 = *(*(&v27 + 1) + 24);
    v18 = BYTE10(v29);
    ++BYTE10(v29);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v28 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v29));
    BYTE9(v29) += 24;
  }

  *(v14 + 13) = v15;
  v19 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v23 = [v7 traceStream];
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v24;
  *(v16 + 2) = a4;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
LABEL_17:
}

- (void)setVertexAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 device];
    v9 = [v8 captureRaytracingEnabled];

    if ((v9 & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setVertexAccelerationStructure_atBufferIndex", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      v22 = [v7 baseObject];
      [(MTLRenderCommandEncoderSPI *)baseObject setVertexAccelerationStructure:v22 atBufferIndex:a4];

      goto LABEL_17;
    }

    [v7 touch];
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v7];
    }
  }

  else
  {
    [0 touch];
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  v12 = self->_baseObject;
  v13 = [v7 baseObject];
  [(MTLRenderCommandEncoderSPI *)v12 setVertexAccelerationStructure:v13 atBufferIndex:a4];

  v14 = v28;
  *(v28 + 8) = -15449;
  v15 = BYTE9(v29);
  if (BYTE9(v29) > 0x28uLL)
  {
    v17 = *(*(&v27 + 1) + 24);
    v18 = BYTE10(v29);
    ++BYTE10(v29);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v28 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v29));
    BYTE9(v29) += 24;
  }

  *(v14 + 13) = v15;
  v19 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v23 = [v7 traceStream];
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v24;
  *(v16 + 2) = a4;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
LABEL_17:
}

- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexAmplificationCount:a3 viewMappings:a4];
  v8 = v19;
  *(v19 + 8) = -15822;
  v9 = BYTE9(v20);
  if (BYTE9(v20) > 0x28uLL)
  {
    v11 = *(*(&v18 + 1) + 24);
    v12 = BYTE10(v20);
    ++BYTE10(v20);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v19 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v20));
    BYTE9(v20) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (!v13)
  {
    var0 = 0;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  var0 = v13->var0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v15 = GTTraceEncoder_storeBlob(&v18, a4, 8 * a3);
LABEL_9:
  *v10 = var0;
  *(v10 + 1) = a3;
  v10[16] = v15;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 size])
  {
    [v8 touch];
    if (v8)
    {
      retainedObjects = self->_retainedObjects;
      if (retainedObjects)
      {
        [(NSMutableSet *)retainedObjects addObject:v8];
      }
    }

    [v9 touch];
    if (v9)
    {
      v11 = self->_retainedObjects;
      if (v11)
      {
        [(NSMutableSet *)v11 addObject:v9];
      }
    }

    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v78);
    baseObject = self->_baseObject;
    v14 = [v8 baseObject];
    v15 = [v9 baseObject];
    [(MTLRenderCommandEncoderSPI *)baseObject executeCommandsInBuffer:v14 indirectBuffer:v15 indirectBufferOffset:a5];

    v16 = v79;
    *(v79 + 8) = -15961;
    v17 = BYTE9(v80);
    if (BYTE9(v80) > 0x10uLL)
    {
      v22 = *(*(&v78 + 1) + 24);
      v23 = BYTE10(v80);
      ++BYTE10(v80);
      v18 = GTTraceMemPool_allocateBytes(v22, *(&v79 + 1), v23 | 0x3000000000) + 16;
      v17 = v23;
    }

    else
    {
      v18 = (v16 + BYTE9(v80));
      BYTE9(v80) += 48;
    }

    *(v16 + 13) = v17;
    v24 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
    if (v24)
    {
      var0 = v24->var0;
    }

    else
    {
      var0 = 0;
    }

    v26 = [v8 traceStream];
    if (v26)
    {
      v27 = *v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = [v9 traceStream];
    if (v28)
    {
      v29 = *v28;
    }

    else
    {
      v29 = 0;
    }

    *v18 = var0;
    *(v18 + 1) = v27;
    *(v18 + 2) = v29;
    *(v18 + 3) = a5;
    *(v18 + 4) = 0;
    *(v18 + 5) = 0;
    s();
    *v30 = v31;
    *(v30 + 8) = BYTE8(v80);
    *(v79 + 15) |= 8u;
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    v33 = [WeakRetained isCapturing];

    if (v33)
    {
      context = objc_autoreleasePoolPush();
      v34 = v8;
      v35 = MTLIndirectCommandBuffer_descriptor([v34 traceStream]);
      v36 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v35);
      FuncSnapshot = CaptureFindFuncSnapshot(v34, self->_snapshotMap);
      v68 = a5;
      v64 = v34;
      v62 = v36;
      if (FuncSnapshot)
      {
        v38 = FuncSnapshot;
        v65 = 0;
        v66 = 0;
        v63 = *(FuncSnapshot + 8);
      }

      else
      {
        v77 = 0;
        v66 = CreateIndirectRenderCommandBufferSnapshot(self, v34, v36, &v77);
        v65 = v77;
        SnapshotMemory = AllocateSnapshotMemory(&v78, v35, [v34 size]);
        pool = self->_pool;
        snapshotMap = self->_snapshotMap;
        v42 = [v34 streamReference];
        v38 = apr_palloc(pool, 0x18uLL);
        *v38 = v42;
        apr_hash_set(snapshotMap, v38, 8, v38);
        v43 = *v79;
        v63 = SnapshotMemory;
        v38[1] = SnapshotMemory;
        v38[2] = v43;
      }

      v44 = self;
      v69 = v9;
      v45 = v9;
      v46 = [(CaptureMTLRenderCommandEncoder *)v44 device];
      v47 = DEVICEOBJECT(v45);

      v48 = [v47 device];
      v61 = [v48 newBufferWithLength:8 options:0];
      v49 = DEVICEOBJECT(v44);

      [v49 setVertexBuffer:v61 offset:0 atIndex:0];
      [v49 setVertexBuffer:v47 offset:v68 atIndex:1];
      v50 = [v46 renderPipelineCopyBuffer];
      [v49 setRenderPipelineState:v50];

      v9 = v69;
      [v49 drawPrimitives:0 vertexStart:0 vertexCount:8];

      v51 = *(*(&v78 + 1) + 24);
      v52 = BYTE10(v80);
      ++BYTE10(v80);
      Bytes = GTTraceMemPool_allocateBytes(v51, *(&v79 + 1), v52 | 0x1000000100);
      RestoreRenderCommandEncoder(v44, v54);
      v18[40] = v63[8];
      v18[41] = Bytes[8];
      *(v18 + 4) = v38[2];
      v55 = objc_loadWeakRetained(&self->_captureCommandBuffer);
      v56 = DEVICEOBJECT(v55);

      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = __94__CaptureMTLRenderCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset___block_invoke;
      v70[3] = &unk_2F1FD0;
      v71 = v65;
      v72 = v66;
      v73 = v62;
      v74 = v61;
      v75 = v63;
      v76 = Bytes;
      v57 = v61;
      v58 = v62;
      v59 = v66;
      v60 = v65;
      [v56 addCompletedHandler:v70];

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    GTMTLCaptureManager_notifyUnsupportedFenumWithMsg(0, "zero-length Indirect Command Buffer executions", 0, 0);
    v19 = self->_baseObject;
    v20 = [v8 baseObject];
    v21 = [v9 baseObject];
    [(MTLRenderCommandEncoderSPI *)v19 executeCommandsInBuffer:v20 indirectBuffer:v21 indirectBufferOffset:a5];
  }
}

float __94__CaptureMTLRenderCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) length];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = GTMTLDecodeIndirectCommandBuffer(v2, *(a1 + 48));
    v4 = v3;
    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = (v5 + 16);
    }

    else
    {
      v6 = 0;
    }

    memcpy(v6, [v3 bytes], objc_msgSend(v3, "length"));
  }

  v7 = [*(a1 + 56) contents];
  v8 = *(a1 + 72);
  if (v8)
  {
    v9 = (v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  *&v10 = *v7;
  *(&v10 + 1) = HIDWORD(*v7);
  LODWORD(result) = *v7;
  *v9 = v10;
  return result;
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  if ([v7 size])
  {
    [v7 touch];
    if (v7)
    {
      retainedObjects = self->_retainedObjects;
      if (retainedObjects)
      {
        [(NSMutableSet *)retainedObjects addObject:v7];
      }
    }

    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v52);
    baseObject = self->_baseObject;
    v11 = [v7 baseObject];
    [(MTLRenderCommandEncoderSPI *)baseObject executeCommandsInBuffer:v11 withRange:location, length];

    v12 = v53;
    *(v53 + 8) = -15962;
    v13 = BYTE9(v54);
    if (BYTE9(v54) > 0x10uLL)
    {
      v17 = *(*(&v52 + 1) + 24);
      v18 = BYTE10(v54);
      ++BYTE10(v54);
      v14 = GTTraceMemPool_allocateBytes(v17, *(&v53 + 1), v18 | 0x3000000000) + 16;
      v13 = v18;
    }

    else
    {
      v14 = (v12 + BYTE9(v54));
      BYTE9(v54) += 48;
    }

    *(v12 + 13) = v13;
    v19 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
    if (v19)
    {
      var0 = v19->var0;
    }

    else
    {
      var0 = 0;
    }

    v21 = [v7 traceStream];
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    *v14 = var0;
    *(v14 + 1) = v22;
    *(v14 + 2) = location;
    *(v14 + 3) = length;
    *(v14 + 4) = 0;
    *(v14 + 5) = 0;
    s();
    *v23 = v24;
    *(v23 + 8) = BYTE8(v54);
    *(v53 + 15) |= 8u;
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    v26 = [WeakRetained isCapturing];

    if (v26)
    {
      context = objc_autoreleasePoolPush();
      v27 = v7;
      v28 = MTLIndirectCommandBuffer_descriptor([v27 traceStream]);
      v29 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v28);
      FuncSnapshot = CaptureFindFuncSnapshot(v27, self->_snapshotMap);
      if (FuncSnapshot)
      {
        v32 = FuncSnapshot;
        v33 = 0;
        v34 = 0;
        SnapshotMemory = *(FuncSnapshot + 8);
      }

      else
      {
        v51 = 0;
        v34 = CreateIndirectRenderCommandBufferSnapshot(self, v27, v29, &v51);
        v33 = v51;
        SnapshotMemory = AllocateSnapshotMemory(&v52, v28, [v27 size]);
        pool = self->_pool;
        ht = self->_snapshotMap;
        v37 = [v27 streamReference];
        v32 = apr_palloc(pool, 0x18uLL);
        *v32 = v37;
        apr_hash_set(ht, v32, 8, v32);
        v38 = *v53;
        v32[1] = SnapshotMemory;
        v32[2] = v38;
      }

      RestoreRenderCommandEncoder(self, v31);
      v14[40] = SnapshotMemory[8];
      *(v14 + 4) = v32[2];
      v39 = objc_loadWeakRetained(&self->_captureCommandBuffer);
      v40 = DEVICEOBJECT(v39);

      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = __68__CaptureMTLRenderCommandEncoder_executeCommandsInBuffer_withRange___block_invoke;
      v46[3] = &unk_2F1FF8;
      v47 = v33;
      v48 = v34;
      v49 = v29;
      v50 = SnapshotMemory;
      v41 = v29;
      v42 = v34;
      v43 = v33;
      [v40 addCompletedHandler:v46];

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    GTMTLCaptureManager_notifyUnsupportedFenumWithMsg(0, "zero-length Indirect Command Buffer executions", 0, 0);
    v15 = self->_baseObject;
    v16 = [v7 baseObject];
    [(MTLRenderCommandEncoderSPI *)v15 executeCommandsInBuffer:v16 withRange:location, length];
  }
}

void __68__CaptureMTLRenderCommandEncoder_executeCommandsInBuffer_withRange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) length];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = GTMTLDecodeIndirectCommandBuffer(v2, *(a1 + 48));
    v7 = v3;
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = (v4 + 16);
    }

    else
    {
      v5 = 0;
    }

    v6 = v3;
    memcpy(v5, [v7 bytes], objc_msgSend(v7, "length"));
  }
}

- (void)dealloc
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  v4 = v16;
  *(v16 + 8) = -16280;
  v5 = BYTE9(v17);
  if (BYTE9(v17) > 0x38uLL)
  {
    v7 = *(*(&v15 + 1) + 24);
    v8 = BYTE10(v17);
    ++BYTE10(v17);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v16 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v17));
    BYTE9(v17) += 8;
  }

  *(v4 + 13) = v5;
  v9 = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  [WeakRetained unionRetainSet:self->_retainedObjects];

  apr_pool_destroy(self->_pool);
  v14.receiver = self;
  v14.super_class = CaptureMTLRenderCommandEncoder;
  [(CaptureMTLRenderCommandEncoder *)&v14 dealloc];
}

- (CaptureMTLRenderCommandEncoder)initWithBaseObject:(id)a3 captureParallelRenderCommandEncoder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = CaptureMTLRenderCommandEncoder;
  v9 = [(CaptureMTLRenderCommandEncoder *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    v11 = [v8 device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = v11;

    v13 = [v8 traceContext];
    v10->_traceContext = v13;
    v14 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v13, v14, 0);

    apr_pool_create_ex(&v10->_pool, 0, 0, 0);
    v10->_snapshotMap = apr_hash_make(v10->_pool);
    v15 = [v8 commandBuffer];
    objc_storeWeak(&v10->_captureCommandBuffer, v15);

    WeakRetained = objc_loadWeakRetained(&v10->_captureCommandBuffer);
    v17 = [WeakRetained retainedObjects];

    if (v17)
    {
      v18 = objc_alloc_init(NSMutableSet);
      retainedObjects = v10->_retainedObjects;
      v10->_retainedObjects = v18;

      v20 = v10->_retainedObjects;
      v21 = DEVICEOBJECT(v10->_baseObject);
      [(NSMutableSet *)v20 addObject:v21];
    }
  }

  return v10;
}

- (CaptureMTLRenderCommandEncoder)initWithBaseObject:(id)a3 captureCommandBuffer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = CaptureMTLRenderCommandEncoder;
  v9 = [(CaptureMTLRenderCommandEncoder *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    v11 = [v8 device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = v11;

    v13 = [v8 traceContext];
    v10->_traceContext = v13;
    v14 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openEncoderStream(v13, v14, *([v8 traceStream] + 3));

    objc_storeWeak(&v10->_captureCommandBuffer, v8);
    v15 = [v8 retainedObjects];
    retainedObjects = v10->_retainedObjects;
    v10->_retainedObjects = v15;

    apr_pool_create_ex(&v10->_pool, 0, 0, 0);
    v10->_snapshotMap = apr_hash_make(v10->_pool);
    v17 = v10->_retainedObjects;
    v18 = DEVICEOBJECT(v10->_baseObject);
    [(NSMutableSet *)v17 addObject:v18];
  }

  return v10;
}

@end