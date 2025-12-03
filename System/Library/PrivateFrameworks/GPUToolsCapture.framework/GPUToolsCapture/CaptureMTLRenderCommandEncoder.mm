@interface CaptureMTLRenderCommandEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLRenderCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer;
- (CaptureMTLRenderCommandEncoder)initWithBaseObject:(id)object captureParallelRenderCommandEncoder:(id)encoder;
- (NSString)description;
- (unint64_t)streamReference;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)dealloc;
- (void)dispatchThreadsPerTile:(id *)tile;
- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region;
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
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)insertDebugSignpost:(id)signpost;
- (void)insertSplit;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)memoryBarrierWithScope:(unint64_t)scope afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setAlphaTestReferenceValue:(float)value;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setColorAttachmentMap:(id)map;
- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level atIndex:(unint64_t)index;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthCleared;
- (void)setDepthClipMode:(unint64_t)mode;
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
- (void)setLabel:(id)label;
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
- (void)touch;
- (void)updateFence:(id)fence afterStages:(unint64_t)stages;
- (void)useHeap:(id)heap;
- (void)useHeap:(id)heap stages:(unint64_t)stages;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResource:(id)resource usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)useResourceGroup:(id)group usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages;
@end

@implementation CaptureMTLRenderCommandEncoder

- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages
{
  fenceCopy = fence;
  [fenceCopy touch];
  if (fenceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:fenceCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject waitForFence:baseObject beforeStages:stages];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [fenceCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = stages;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages
{
  retainedObjects = self->_retainedObjects;
  resourcesCopy = resources;
  RetainArray(retainedObjects, resources, count);
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  baseObject = self->_baseObject;
  v14 = 8 * count;
  __chkstk_darwin(v12, v15);
  bzero(&v31 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    v16 = resourcesCopy;
    v17 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useResources:&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) count:count usage:usage stages:stages];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v26);
  bzero(&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  v28 = StreamArray(&v33, (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), resourcesCopy, count);
  *v22 = var0;
  *(v22 + 1) = count;
  *(v22 + 2) = usage;
  *(v22 + 3) = stages;
  v22[32] = v28;
  *(v22 + 33) = 0;
  *(v22 + 9) = 0;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  RetainArray(self->_retainedObjects, resources, count);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v12 = 8 * count;
  __chkstk_darwin(v10, v13);
  bzero(&v29 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    resourcesCopy = resources;
    v15 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v17 = *resourcesCopy++;
      *v15++ = [v17 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useResources:&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) count:count usage:usage];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v24);
  bzero(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  v26 = StreamArray(&v29, (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), resources, count);
  *v20 = var0;
  *(v20 + 1) = count;
  *(v20 + 2) = usage;
  v20[24] = v26;
  *(v20 + 25) = 0;
  *(v20 + 7) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)useResourceGroup:(id)group usage:(unint64_t)usage stages:(unint64_t)stages
{
  groupCopy = group;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_useResourceGroup_usage_stages", "Resource groups", 0, 0);
  [groupCopy touch];
  v8 = groupCopy;
  if (groupCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:groupCopy];
      v8 = groupCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v8 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useResourceGroup:baseObject usage:usage stages:stages];
}

- (void)useResource:(id)resource usage:(unint64_t)usage stages:(unint64_t)stages
{
  resourceCopy = resource;
  [resourceCopy touch];
  if (resourceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:resourceCopy];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [resourceCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useResource:baseObject usage:usage stages:stages];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [resourceCopy traceStream];
  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = usage;
  *(v15 + 3) = stages;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  resourceCopy = resource;
  [resourceCopy touch];
  if (resourceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:resourceCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [resourceCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useResource:baseObject usage:usage];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [resourceCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = usage;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_useResidencySets_count", "Deprecated Residency Set API", 0, 0);
  RetainArray(self->_retainedObjects, sets, count);
  baseObject = self->_baseObject;
  __chkstk_darwin(v8, 8 * count);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9);
  if (count)
  {
    v11 = v10;
    countCopy = count;
    do
    {
      v13 = *sets++;
      *v11 = [v13 baseObject];
      v11 += 8;
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useResidencySets:v10 count:count];
}

- (void)useResidencySet:(id)set
{
  setCopy = set;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_useResidencySet", "Deprecated Residency Set API", 0, 0);
  [setCopy touch];
  v4 = setCopy;
  if (setCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:setCopy];
      v4 = setCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v4 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useResidencySet:baseObject];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages
{
  RetainArray(self->_retainedObjects, heaps, count);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v12 = 8 * count;
  __chkstk_darwin(v10, v13);
  bzero(&v29 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    heapsCopy = heaps;
    v15 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v17 = *heapsCopy++;
      *v15++ = [v17 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useHeaps:&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) count:count stages:stages];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v24);
  bzero(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  v26 = StreamArray(&v29, (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), heaps, count);
  *v20 = var0;
  *(v20 + 1) = count;
  *(v20 + 2) = stages;
  v20[24] = v26;
  *(v20 + 25) = 0;
  *(v20 + 7) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  RetainArray(self->_retainedObjects, heaps, count);
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceStream = self->_traceStream;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  v10 = 8 * count;
  __chkstk_darwin(v8, v11);
  bzero(&v27 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    heapsCopy = heaps;
    v13 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v15 = *heapsCopy++;
      *v13++ = [v15 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useHeaps:&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v22);
  bzero(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  v24 = StreamArray(&v27, (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), heaps, count);
  *v18 = var0;
  *(v18 + 1) = count;
  v18[16] = v24;
  *(v18 + 17) = 0;
  *(v18 + 5) = 0;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)useHeap:(id)heap stages:(unint64_t)stages
{
  heapCopy = heap;
  [heapCopy touch];
  if (heapCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:heapCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [heapCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useHeap:baseObject stages:stages];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [heapCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = stages;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)useHeap:(id)heap
{
  heapCopy = heap;
  [heapCopy touch];
  if (heapCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:heapCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [heapCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useHeap:baseObject];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [heapCopy traceStream];
  if (traceStream2)
  {
    v17 = *traceStream2;
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

- (void)updateFence:(id)fence afterStages:(unint64_t)stages
{
  fenceCopy = fence;
  [fenceCopy touch];
  if (fenceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:fenceCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject updateFence:baseObject afterStages:stages];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [fenceCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = stages;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVisibilityResultMode:mode offset:offset];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = mode;
  *(v10 + 2) = offset;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setViewports:viewports count:count];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v15 = GTTraceEncoder_storeBlob(&v18, viewports, 48 * count);
  *v10 = var0;
  *(v10 + 1) = count;
  v10[16] = v15;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setViewport:(id *)viewport
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  v7 = *&viewport->var2;
  v19[0] = *&viewport->var0;
  v19[1] = v7;
  v19[2] = *&viewport->var4;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  v15 = *&viewport->var2;
  v16 = *&viewport->var4;
  *(v10 + 8) = *&viewport->var0;
  *(v10 + 24) = v15;
  *(v10 + 40) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setVertexVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
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
    tablesCopy = tables;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *tablesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
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

- (void)setVertexVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexVisibleFunctionTable:baseObject atBufferIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, textures, range.length);
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
    texturesCopy = textures;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *texturesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), textures, length);
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

- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexTexture:baseObject atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, states, range.length);
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
    statesCopy = states;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *statesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
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

- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  clampsCopy = clamps;
  retainedObjects = self->_retainedObjects;
  statesCopy = states;
  RetainArray(retainedObjects, states, range.length);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v14 = 8 * length;
  __chkstk_darwin(v12, v15);
  bzero(&clampsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v16 = statesCopy;
    v17 = (&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = length;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  v20 = clampsCopy;
  maxClampsCopy = maxClamps;
  v22 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerStates:&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:clampsCopy lodMaxClamps:maxClamps withRange:location, length, clampsCopy];
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
    v20 = clampsCopy;
  }

  else
  {
    v25 = (v23 + BYTE9(v40));
    BYTE9(v40) += 32;
  }

  *(v23 + 13) = v24;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v29);
  bzero(&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v31 = StreamArray(&v38, (&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), statesCopy, length);
  v32 = GTTraceEncoder_storeBytes(&v38, v20, 4 * length);
  v33 = GTTraceEncoder_storeBytes(&v38, maxClampsCopy, 4 * length);
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

- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  v12 = stateCopy;
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
      v12 = stateCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v12 baseObject];
  *&v16 = clamp;
  *&v17 = maxClamp;
  *&v18 = bias;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerState:baseObject lodMinClamp:index lodMaxClamp:v16 lodBias:v17 atIndex:v18];
}

- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  *&v15 = clamp;
  *&v16 = maxClamp;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerState:baseObject lodMinClamp:index lodMaxClamp:v15 atIndex:v16];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v25 = *traceStream2;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = index;
  *(v19 + 6) = clamp;
  *(v19 + 7) = maxClamp;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerState:baseObject atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
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
    tablesCopy = tables;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *tablesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
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

- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexIntersectionFunctionTable:baseObject atBufferIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexBytes:bytes length:length attributeStride:stride atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v19 = GTTraceEncoder_storeBlob(&v22, bytes, length);
  }

  else
  {
    v19 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = length;
  *(v14 + 2) = stride;
  *(v14 + 3) = index;
  v14[32] = v19;
  *(v14 + 33) = 0;
  *(v14 + 9) = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexBytes:bytes length:length atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v17 = GTTraceEncoder_storeBlob(&v20, bytes, length);
  }

  else
  {
    v17 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = length;
  *(v12 + 2) = index;
  v12[24] = v17;
  *(v12 + 25) = 0;
  *(v12 + 7) = 0;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
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
    v15 = buffersCopy;
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

  offsetsCopy = offsets;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexBuffers:&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsets withRange:location, length];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v26);
  bzero(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v28 = StreamArray(&v34, (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  v29 = GTTraceEncoder_storeBytes(&v34, offsetsCopy, 8 * length);
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

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  offsetsCopy = offsets;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v14 = 8 * length;
  __chkstk_darwin(v12, v15);
  bzero(&offsetsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v16 = buffersCopy;
    v17 = (&offsetsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = length;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  stridesCopy = strides;
  v21 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexBuffers:&offsetsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsetsCopy attributeStrides:strides withRange:location, length, offsetsCopy];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v28);
  bzero(&offsetsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v30 = StreamArray(&v38, (&offsetsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  v31 = boundaryTrackerInstance;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = GTTraceEncoder_storeBlob(&v38, offsetsCopy, length);
    v31 = boundaryTrackerInstance;
  }

  else
  {
    v32 = 0;
  }

  if ((*(v31 + 20) & 0xFFFFFFFE) == 2)
  {
    v33 = GTTraceEncoder_storeBlob(&v38, stridesCopy, length);
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

- (void)setVertexBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexBufferOffset:offset attributeStride:stride atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = offset;
  *(v12 + 2) = stride;
  *(v12 + 3) = index;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setVertexBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexBufferOffset:offset atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = offset;
  *(v10 + 2) = index;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexBuffer:baseObject offset:offset attributeStride:stride atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = offset;
  *(v17 + 3) = stride;
  *(v17 + 4) = index;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexBuffer:baseObject offset:offset atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = offset;
  *(v15 + 3) = index;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexAmplificationMode:mode value:value];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = mode;
  *(v10 + 2) = value;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setTriangleFrontFillMode:(unint64_t)mode backFillMode:(unint64_t)fillMode
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTriangleFrontFillMode:mode backFillMode:fillMode];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = mode;
  *(v10 + 2) = fillMode;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTriangleFillMode:mode];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = mode;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setTileVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
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
    tablesCopy = tables;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *tablesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
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

- (void)setTileVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileVisibleFunctionTable:baseObject atBufferIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, textures, range.length);
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
    texturesCopy = textures;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *texturesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), textures, length);
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

- (void)setTileTexture:(id)texture atIndex:(unint64_t)index
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileTexture:baseObject atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, states, range.length);
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
    statesCopy = states;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *statesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
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

- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  clampsCopy = clamps;
  retainedObjects = self->_retainedObjects;
  statesCopy = states;
  RetainArray(retainedObjects, states, range.length);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v14 = 8 * length;
  __chkstk_darwin(v12, v15);
  bzero(&clampsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v16 = statesCopy;
    v17 = (&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = length;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  v20 = clampsCopy;
  maxClampsCopy = maxClamps;
  v22 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setTileSamplerStates:&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:clampsCopy lodMaxClamps:maxClamps withRange:location, length, clampsCopy];
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
    v20 = clampsCopy;
  }

  else
  {
    v25 = (v23 + BYTE9(v40));
    BYTE9(v40) += 32;
  }

  *(v23 + 13) = v24;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v29);
  bzero(&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v31 = StreamArray(&v38, (&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), statesCopy, length);
  v32 = GTTraceEncoder_storeBytes(&v38, v20, 4 * length);
  v33 = GTTraceEncoder_storeBytes(&v38, maxClampsCopy, 4 * length);
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

- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  *&v15 = clamp;
  *&v16 = maxClamp;
  [(MTLRenderCommandEncoderSPI *)baseObject setTileSamplerState:baseObject lodMinClamp:index lodMaxClamp:v15 atIndex:v16];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v25 = *traceStream2;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = index;
  *(v19 + 6) = clamp;
  *(v19 + 7) = maxClamp;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileSamplerState:baseObject atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
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
    tablesCopy = tables;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *tablesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
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

- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileIntersectionFunctionTable:baseObject atBufferIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTileBytes:bytes length:length atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v17 = GTTraceEncoder_storeBlob(&v20, bytes, length);
  }

  else
  {
    v17 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = length;
  *(v12 + 2) = index;
  v12[24] = v17;
  *(v12 + 25) = 0;
  *(v12 + 7) = 0;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
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
    v15 = buffersCopy;
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

  offsetsCopy = offsets;
  offsetsCopy2 = offsets;
  v21 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setTileBuffers:&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsetsCopy2 withRange:location, length];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v28);
  bzero(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v30 = StreamArray(&v36, (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v31 = GTTraceEncoder_storeBlob(&v36, offsetsCopy, length);
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

- (void)setTileBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTileBufferOffset:offset atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = offset;
  *(v10 + 2) = index;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileBuffer:baseObject offset:offset atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = offset;
  *(v15 + 3) = index;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setThreadgroupMemoryLength:length offset:offset atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = length;
  *(v12 + 2) = offset;
  *(v12 + 3) = index;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setTessellationFactorScale:(float)scale
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = scale;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = scale;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTessellationFactorBuffer:baseObject offset:offset instanceStride:stride];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = offset;
  *(v15 + 3) = stride;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setStencilStoreActionOptions:(unint64_t)options
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setStencilStoreActionOptions:options];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = options;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setStencilStoreAction:(unint64_t)action
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setStencilStoreAction:action];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = action;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setStencilResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setStencilResolveTexture:baseObject slice:slice depthPlane:plane level:level];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = slice;
  *(v17 + 3) = plane;
  *(v17 + 4) = level;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
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

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setScissorRects:rects count:count];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v15 = GTTraceEncoder_storeBlob(&v18, rects, 32 * count);
  *v10 = var0;
  *(v10 + 1) = count;
  v10[16] = v15;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setScissorRect:(id *)rect
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  v7 = *&rect->var2;
  v18[0] = *&rect->var0;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  v15 = *&rect->var2;
  *(v10 + 8) = *&rect->var0;
  *(v10 + 24) = v15;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setRenderPipelineState:(id)state
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setRenderPipelineState:baseObject];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v17 = *traceStream2;
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

- (void)setProvokingVertexMode:(unint64_t)mode
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setProvokingVertexMode:mode];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = mode;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setPointSize:(float)size
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = size;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = size;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setObjectVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectVisibleFunctionTables_withBufferRange", "Mesh shaders with Function Pointers", 0, 0);
  RetainArray(self->_retainedObjects, tables, length);
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
      v14 = *tables++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setObjectVisibleFunctionTables:v11 withBufferRange:location, length];
}

- (void)setObjectVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectVisibleFunctionTable_atBufferIndex", "Mesh shaders with Function Pointers", 0, 0);
  [tableCopy touch];
  v6 = tableCopy;
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
      v6 = tableCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectVisibleFunctionTable:baseObject atBufferIndex:index];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setObjectThreadgroupMemoryLength:length atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = length;
  *(v10 + 2) = index;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setObjectTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, textures, range.length);
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
    texturesCopy = textures;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *texturesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), textures, length);
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

- (void)setObjectTexture:(id)texture atIndex:(unint64_t)index
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectTexture:baseObject atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setObjectSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, states, range.length);
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
    statesCopy = states;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *statesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
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

- (void)setObjectSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  clampsCopy = clamps;
  retainedObjects = self->_retainedObjects;
  statesCopy = states;
  RetainArray(retainedObjects, states, range.length);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v14 = 8 * length;
  __chkstk_darwin(v12, v15);
  bzero(&clampsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v16 = statesCopy;
    v17 = (&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = length;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  maxClampsCopy = maxClamps;
  v21 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectSamplerStates:&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:clampsCopy lodMaxClamps:maxClamps withRange:location, length, clampsCopy];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v28);
  bzero(&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v30 = StreamArray(&v38, (&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), statesCopy, length);
  v31 = boundaryTrackerInstance;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = GTTraceEncoder_storeBlob(&v38, clampsCopy, length);
    v31 = boundaryTrackerInstance;
  }

  else
  {
    v32 = 0;
  }

  if ((*(v31 + 20) & 0xFFFFFFFE) == 2)
  {
    v33 = GTTraceEncoder_storeBlob(&v38, maxClampsCopy, length);
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

- (void)setObjectSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  *&v15 = clamp;
  *&v16 = maxClamp;
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectSamplerState:baseObject lodMinClamp:index lodMaxClamp:v15 atIndex:v16];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v25 = *traceStream2;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = index;
  *(v19 + 6) = clamp;
  *(v19 + 7) = maxClamp;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setObjectSamplerState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectSamplerState:baseObject atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setObjectIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectIntersectionFunctionTables_withBufferRange", "Mesh shaders with Raytracing", 0, 0);
  RetainArray(self->_retainedObjects, tables, length);
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
      v14 = *tables++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setObjectIntersectionFunctionTables:v11 withBufferRange:location, length];
}

- (void)setObjectIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectIntersectionFunctionTable_atBufferIndex", "Mesh shaders with Raytracing", 0, 0);
  [tableCopy touch];
  v6 = tableCopy;
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
      v6 = tableCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectIntersectionFunctionTable:baseObject atBufferIndex:index];
}

- (void)setObjectBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setObjectBytes:bytes length:length atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v17 = GTTraceEncoder_storeBlob(&v20, bytes, length);
  }

  else
  {
    v17 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = length;
  *(v12 + 2) = index;
  v12[24] = v17;
  *(v12 + 25) = 0;
  *(v12 + 7) = 0;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setObjectBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
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
    v15 = buffersCopy;
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

  offsetsCopy = offsets;
  offsetsCopy2 = offsets;
  v21 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectBuffers:&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsetsCopy2 withRange:location, length];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v28);
  bzero(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v30 = StreamArray(&v36, (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v31 = GTTraceEncoder_storeBlob(&v36, offsetsCopy, length);
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

- (void)setObjectBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setObjectBufferOffset:offset atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = offset;
  *(v10 + 2) = index;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectBuffer:baseObject offset:offset atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = offset;
  *(v15 + 3) = index;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setObjectAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  structureCopy = structure;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectAccelerationStructure_atBufferIndex", "Mesh shaders with Raytracing", 0, 0);
  [structureCopy touch];
  v6 = structureCopy;
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
      v6 = structureCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectAccelerationStructure:baseObject atBufferIndex:index];
}

- (void)setMeshVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshVisibleFunctionTables_withBufferRange", "Mesh shaders with Function Pointers", 0, 0);
  RetainArray(self->_retainedObjects, tables, length);
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
      v14 = *tables++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setMeshVisibleFunctionTables:v11 withBufferRange:location, length];
}

- (void)setMeshVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshVisibleFunctionTable_atBufferIndex", "Mesh shaders with Function Pointers", 0, 0);
  [tableCopy touch];
  v6 = tableCopy;
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
      v6 = tableCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshVisibleFunctionTable:baseObject atBufferIndex:index];
}

- (void)setMeshTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, textures, range.length);
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
    texturesCopy = textures;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *texturesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), textures, length);
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

- (void)setMeshTexture:(id)texture atIndex:(unint64_t)index
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshTexture:baseObject atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setMeshSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, states, range.length);
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
    statesCopy = states;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *statesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
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

- (void)setMeshSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  clampsCopy = clamps;
  retainedObjects = self->_retainedObjects;
  statesCopy = states;
  RetainArray(retainedObjects, states, range.length);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v14 = 8 * length;
  __chkstk_darwin(v12, v15);
  bzero(&clampsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v16 = statesCopy;
    v17 = (&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = length;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  maxClampsCopy = maxClamps;
  v21 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshSamplerStates:&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:clampsCopy lodMaxClamps:maxClamps withRange:location, length, clampsCopy];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v28);
  bzero(&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v30 = StreamArray(&v38, (&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), statesCopy, length);
  v31 = boundaryTrackerInstance;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = GTTraceEncoder_storeBlob(&v38, clampsCopy, length);
    v31 = boundaryTrackerInstance;
  }

  else
  {
    v32 = 0;
  }

  if ((*(v31 + 20) & 0xFFFFFFFE) == 2)
  {
    v33 = GTTraceEncoder_storeBlob(&v38, maxClampsCopy, length);
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

- (void)setMeshSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  *&v15 = clamp;
  *&v16 = maxClamp;
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshSamplerState:baseObject lodMinClamp:index lodMaxClamp:v15 atIndex:v16];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v25 = *traceStream2;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = index;
  *(v19 + 6) = clamp;
  *(v19 + 7) = maxClamp;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setMeshSamplerState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshSamplerState:baseObject atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setMeshIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshIntersectionFunctionTables_withBufferRange", "Mesh shaders with Raytracing", 0, 0);
  RetainArray(self->_retainedObjects, tables, length);
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
      v14 = *tables++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setMeshIntersectionFunctionTables:v11 withBufferRange:location, length];
}

- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshIntersectionFunctionTable_atBufferIndex", "Mesh shaders with Raytracing", 0, 0);
  [tableCopy touch];
  v6 = tableCopy;
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
      v6 = tableCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshIntersectionFunctionTable:baseObject atBufferIndex:index];
}

- (void)setMeshBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setMeshBytes:bytes length:length atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v17 = GTTraceEncoder_storeBlob(&v20, bytes, length);
  }

  else
  {
    v17 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = length;
  *(v12 + 2) = index;
  v12[24] = v17;
  *(v12 + 25) = 0;
  *(v12 + 7) = 0;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setMeshBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
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
    v15 = buffersCopy;
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

  offsetsCopy = offsets;
  offsetsCopy2 = offsets;
  v21 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshBuffers:&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsetsCopy2 withRange:location, length];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v28);
  bzero(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v30 = StreamArray(&v36, (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v31 = GTTraceEncoder_storeBlob(&v36, offsetsCopy, length);
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

- (void)setMeshBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setMeshBufferOffset:offset atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = offset;
  *(v10 + 2) = index;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshBuffer:baseObject offset:offset atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = offset;
  *(v15 + 3) = index;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setMeshAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  structureCopy = structure;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshAccelerationStructure_atBufferIndex", "Mesh shaders with Raytracing", 0, 0);
  [structureCopy touch];
  v6 = structureCopy;
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
      v6 = structureCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshAccelerationStructure:baseObject atBufferIndex:index];
}

- (void)setLineWidth:(float)width
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = width;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = width;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setFrontFacingWinding:winding];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = winding;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setFragmentVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
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
    tablesCopy = tables;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *tablesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
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

- (void)setFragmentVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentVisibleFunctionTable:baseObject atBufferIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, textures, range.length);
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
    texturesCopy = textures;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *texturesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), textures, length);
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

- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex
{
  textureCopy = texture;
  stateCopy = state;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [stateCopy touch];
  if (stateCopy)
  {
    v13 = self->_retainedObjects;
    if (v13)
    {
      [(NSMutableSet *)v13 addObject:stateCopy];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentTexture:baseObject atTextureIndex:index samplerState:baseObject2 atSamplerIndex:samplerIndex];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v26 = *traceStream2;
  }

  else
  {
    v26 = 0;
  }

  traceStream3 = [stateCopy traceStream];
  if (traceStream3)
  {
    v28 = *traceStream3;
  }

  else
  {
    v28 = 0;
  }

  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = index;
  *(v20 + 3) = v28;
  *(v20 + 4) = samplerIndex;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentTexture:baseObject atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, states, range.length);
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
    statesCopy = states;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *statesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
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

- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  clampsCopy = clamps;
  retainedObjects = self->_retainedObjects;
  statesCopy = states;
  RetainArray(retainedObjects, states, range.length);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v14 = 8 * length;
  __chkstk_darwin(v12, v15);
  bzero(&clampsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v16 = statesCopy;
    v17 = (&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = length;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  v20 = clampsCopy;
  maxClampsCopy = maxClamps;
  v22 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerStates:&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:clampsCopy lodMaxClamps:maxClamps withRange:location, length, clampsCopy];
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
    v20 = clampsCopy;
  }

  else
  {
    v25 = (v23 + BYTE9(v40));
    BYTE9(v40) += 32;
  }

  *(v23 + 13) = v24;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v29);
  bzero(&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v31 = StreamArray(&v38, (&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), statesCopy, length);
  v32 = GTTraceEncoder_storeBytes(&v38, v20, 4 * length);
  v33 = GTTraceEncoder_storeBytes(&v38, maxClampsCopy, 4 * length);
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

- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  v12 = stateCopy;
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
      v12 = stateCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v12 baseObject];
  *&v16 = clamp;
  *&v17 = maxClamp;
  *&v18 = bias;
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerState:baseObject lodMinClamp:index lodMaxClamp:v16 lodBias:v17 atIndex:v18];
}

- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  *&v15 = clamp;
  *&v16 = maxClamp;
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerState:baseObject lodMinClamp:index lodMaxClamp:v15 atIndex:v16];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v25 = *traceStream2;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = index;
  *(v19 + 6) = clamp;
  *(v19 + 7) = maxClamp;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerState:baseObject atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
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
    tablesCopy = tables;
    v14 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *tablesCopy++;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v23);
  bzero(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v28, (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
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

- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentIntersectionFunctionTable:baseObject atBufferIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = index;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setFragmentBytes:bytes length:length atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v17 = GTTraceEncoder_storeBlob(&v20, bytes, length);
  }

  else
  {
    v17 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = length;
  *(v12 + 2) = index;
  v12[24] = v17;
  *(v12 + 25) = 0;
  *(v12 + 7) = 0;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
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
    v15 = buffersCopy;
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

  offsetsCopy = offsets;
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentBuffers:&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsets withRange:location, length];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v26);
  bzero(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v28 = StreamArray(&v34, (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  v29 = GTTraceEncoder_storeBytes(&v34, offsetsCopy, 8 * length);
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

- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setFragmentBufferOffset:offset atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = offset;
  *(v10 + 2) = index;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentBuffer:baseObject offset:offset atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = offset;
  *(v15 + 3) = index;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  *&v8 = bound;
  *&v9 = maxBound;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 2) = bound;
  *(v12 + 3) = maxBound;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setDepthStoreActionOptions:(unint64_t)options
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthStoreActionOptions:options];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = options;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setDepthStoreAction:(unint64_t)action
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthStoreAction:action];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = action;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setDepthStencilState:(id)state
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setDepthStencilState:baseObject];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v17 = *traceStream2;
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

- (void)setDepthResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setDepthResolveTexture:baseObject slice:slice depthPlane:plane level:level];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = slice;
  *(v17 + 3) = plane;
  *(v17 + 4) = level;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)setDepthClipMode:(unint64_t)mode
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthClipMode:mode];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = mode;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
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

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  *&v10 = bias;
  *&v11 = scale;
  *&v12 = clamp;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v15 = var0;
  *(v15 + 2) = bias;
  *(v15 + 3) = scale;
  *(v15 + 4) = clamp;
  *(v15 + 5) = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setCullMode:(unint64_t)mode
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setCullMode:mode];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = mode;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setColorStoreActionOptions:options atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = options;
  *(v10 + 2) = index;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setColorStoreAction:action atIndex:index];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = action;
  *(v10 + 2) = index;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level atIndex:(unint64_t)index
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setColorResolveTexture:baseObject slice:slice depthPlane:plane level:level atIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v25 = *traceStream2;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = slice;
  *(v19 + 3) = plane;
  *(v19 + 4) = level;
  *(v19 + 5) = index;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)setColorAttachmentMap:(id)map
{
  mapCopy = map;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setColorAttachmentMap:mapCopy];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (mapCopy)
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

  var0 = traceStream->var0;
  if (!mapCopy)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = [mapCopy getPhysicalIndexForLogicalIndex:0];
  v14 = [mapCopy getPhysicalIndexForLogicalIndex:1];
  v15 = [mapCopy getPhysicalIndexForLogicalIndex:2];
  v16 = [mapCopy getPhysicalIndexForLogicalIndex:3];
  v17 = [mapCopy getPhysicalIndexForLogicalIndex:4];
  v18 = [mapCopy getPhysicalIndexForLogicalIndex:5];
  v19 = [mapCopy getPhysicalIndexForLogicalIndex:6];
  v20 = [mapCopy getPhysicalIndexForLogicalIndex:7];
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

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  *&v12 = red;
  *&v13 = green;
  *&v14 = blue;
  *&v15 = alpha;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v18 = var0;
  *(v18 + 2) = red;
  *(v18 + 3) = green;
  *(v18 + 4) = blue;
  *(v18 + 5) = alpha;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setAlphaTestReferenceValue:(float)value
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = value;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = value;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)pushDebugGroup:(id)group
{
  groupCopy = group;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject pushDebugGroup:groupCopy];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [groupCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [groupCopy UTF8String];
    v15 = strlen([groupCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v18, uTF8String2, v15 + 1);
  }

  *v8 = var0;
  v8[8] = uTF8String;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
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

- (void)memoryBarrierWithScope:(unint64_t)scope afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject memoryBarrierWithScope:scope afterStages:stages beforeStages:beforeStages];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = scope;
  *(v12 + 2) = stages;
  *(v12 + 3) = beforeStages;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
  if (stages == 1 && beforeStages == 1)
  {
    CaptureClearFuncSnapshot(scope, self->_snapshotMap);
  }
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  stagesCopy = stages;
  countCopy = count;
  resourcesCopy = resources;
  RetainArray(self->_retainedObjects, resources, count);
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  traceStream = self->_traceStream;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  v13 = 8 * countCopy;
  __chkstk_darwin(v11, v14);
  bzero(&v33 - ((8 * countCopy + 15) & 0xFFFFFFFFFFFFFFF0), 8 * countCopy);
  if (countCopy)
  {
    v15 = resourcesCopy;
    v16 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = countCopy;
    do
    {
      v18 = *v15++;
      *v16++ = [v18 baseObject];
      --v17;
    }

    while (v17);
  }

  v19 = stagesCopy;
  [(MTLRenderCommandEncoderSPI *)baseObject memoryBarrierWithResources:&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) count:countCopy afterStages:stagesCopy beforeStages:beforeStages];
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
    v19 = stagesCopy;
  }

  else
  {
    v22 = (v20 + BYTE9(v37));
    BYTE9(v37) += 40;
  }

  *(v20 + 13) = v21;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v26);
  bzero(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * countCopy);
  v28 = StreamArray(&v35, (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), resourcesCopy, countCopy);
  *v22 = var0;
  *(v22 + 1) = countCopy;
  *(v22 + 2) = v19;
  *(v22 + 3) = beforeStages;
  v22[32] = v28;
  *(v22 + 33) = 0;
  *(v22 + 9) = 0;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
  if (countCopy)
  {
    v32 = v19 == 1 && beforeStages == 1;
    do
    {
      if (v32)
      {
        CaptureRemoveFuncSnapshot(*resourcesCopy, self->_snapshotMap);
      }

      ++resourcesCopy;
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)insertSplit
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_insertSplit", "Command Encoder Insert Split", 0, 0);
  baseObject = self->_baseObject;

  [(MTLRenderCommandEncoderSPI *)baseObject insertSplit];
}

- (void)insertDebugSignpost:(id)signpost
{
  signpostCopy = signpost;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject insertDebugSignpost:signpostCopy];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [signpostCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [signpostCopy UTF8String];
    v15 = strlen([signpostCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v18, uTF8String2, v15 + 1);
  }

  *v8 = var0;
  v8[8] = uTF8String;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
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

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = primitives;
  *(v16 + 2) = start;
  *(v16 + 3) = count;
  *(v16 + 4) = instanceCount;
  *(v16 + 5) = instance;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = primitives;
  *(v14 + 2) = start;
  *(v14 + 3) = count;
  *(v14 + 4) = instanceCount;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject drawPrimitives:primitives vertexStart:start vertexCount:count];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = primitives;
  *(v12 + 2) = start;
  *(v12 + 3) = count;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawPrimitives:primitives indirectBuffer:baseObject indirectBufferOffset:offset];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = primitives;
  *(v15 + 2) = v21;
  *(v15 + 3) = offset;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  instanceCountCopy = instanceCount;
  [(MTLRenderCommandEncoderSPI *)baseObject drawPatches:patches patchStart:start patchCount:count patchIndexBuffer:baseObject patchIndexBufferOffset:offset instanceCount:instanceCount baseInstance:instance];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v27 = *traceStream2;
  }

  else
  {
    v27 = 0;
  }

  *v23 = var0;
  *(v23 + 1) = patches;
  *(v23 + 2) = start;
  *(v23 + 3) = count;
  *(v23 + 4) = v27;
  *(v23 + 5) = offset;
  *(v23 + 6) = instanceCountCopy;
  *(v23 + 7) = instance;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  bufferCopy = buffer;
  indirectBufferCopy = indirectBuffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [indirectBufferCopy touch];
  if (indirectBufferCopy)
  {
    v15 = self->_retainedObjects;
    if (v15)
    {
      [(NSMutableSet *)v15 addObject:indirectBufferCopy];
    }
  }

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [indirectBufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawPatches:patches patchIndexBuffer:baseObject patchIndexBufferOffset:offset indirectBuffer:baseObject2 indirectBufferOffset:bufferOffset];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v28 = *traceStream2;
  }

  else
  {
    v28 = 0;
  }

  traceStream3 = [indirectBufferCopy traceStream];
  if (traceStream3)
  {
    v30 = *traceStream3;
  }

  else
  {
    v30 = 0;
  }

  *v22 = var0;
  *(v22 + 1) = patches;
  *(v22 + 2) = v28;
  *(v22 + 3) = offset;
  *(v22 + 4) = v30;
  *(v22 + 5) = bufferOffset;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v27 = *threads;
  v26 = *threadgroup;
  v25 = *meshThreadgroup;
  [(MTLRenderCommandEncoderSPI *)baseObject drawMeshThreads:&v27 threadsPerObjectThreadgroup:&v26 threadsPerMeshThreadgroup:&v25];
  v11 = *(&v28 + 1);
  v12 = v29;
  *(v29 + 8) = -15414;
  v13 = *(v11 + 24);
  v14 = BYTE10(v30);
  ++BYTE10(v30);
  Bytes = GTTraceMemPool_allocateBytes(v13, *(&v29 + 1), v14 | 0x5000000000);
  *(v12 + 13) = v14;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threads->var2;
  v19 = threadgroup->var2;
  v20 = meshThreadgroup->var2;
  *(Bytes + 2) = var0;
  v21 = *&threadgroup->var0;
  v22 = *&meshThreadgroup->var0;
  *(Bytes + 24) = *&threads->var0;
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

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  v31 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  v29 = *&meshThreadgroup->var0;
  v30 = meshThreadgroup->var2;
  [(MTLRenderCommandEncoderSPI *)baseObject drawMeshThreadgroupsWithIndirectBuffer:baseObject indirectBufferOffset:offset threadsPerObjectThreadgroup:&v31 threadsPerMeshThreadgroup:&v29];

  v15 = *(&v33 + 1);
  v16 = v34;
  *(v34 + 8) = -15415;
  v17 = *(v15 + 24);
  v18 = BYTE10(v35);
  ++BYTE10(v35);
  Bytes = GTTraceMemPool_allocateBytes(v17, *(&v34 + 1), v18 | 0x4800000000);
  *(v16 + 13) = v18;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  v24 = threadgroup->var2;
  v25 = meshThreadgroup->var2;
  *(Bytes + 2) = var0;
  *(Bytes + 3) = v23;
  *(Bytes + 4) = offset;
  v26 = *&meshThreadgroup->var0;
  *(Bytes + 40) = *&threadgroup->var0;
  *(Bytes + 7) = v24;
  *(Bytes + 4) = v26;
  *(Bytes + 10) = v25;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v27 = *threadgroups;
  v26 = *threadgroup;
  v25 = *meshThreadgroup;
  [(MTLRenderCommandEncoderSPI *)baseObject drawMeshThreadgroups:&v27 threadsPerObjectThreadgroup:&v26 threadsPerMeshThreadgroup:&v25];
  v11 = *(&v28 + 1);
  v12 = v29;
  *(v29 + 8) = -15416;
  v13 = *(v11 + 24);
  v14 = BYTE10(v30);
  ++BYTE10(v30);
  Bytes = GTTraceMemPool_allocateBytes(v13, *(&v29 + 1), v14 | 0x5000000000);
  *(v12 + 13) = v14;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threadgroups->var2;
  v19 = threadgroup->var2;
  v20 = meshThreadgroup->var2;
  *(Bytes + 2) = var0;
  v21 = *&threadgroup->var0;
  v22 = *&meshThreadgroup->var0;
  *(Bytes + 24) = *&threadgroups->var0;
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

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  bufferCopy = buffer;
  indirectBufferCopy = indirectBuffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [indirectBufferCopy touch];
  if (indirectBufferCopy)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:indirectBufferCopy];
    }
  }

  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [indirectBufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPrimitives:primitives indexType:type indexBuffer:baseObject indexBufferOffset:offset indirectBuffer:baseObject2 indirectBufferOffset:bufferOffset];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v30 = *traceStream2;
  }

  else
  {
    v30 = 0;
  }

  traceStream3 = [indirectBufferCopy traceStream];
  if (traceStream3)
  {
    v32 = *traceStream3;
  }

  else
  {
    v32 = 0;
  }

  *v24 = var0;
  *(v24 + 1) = primitives;
  *(v24 + 2) = type;
  *(v24 + 3) = v30;
  *(v24 + 4) = offset;
  *(v24 + 5) = v32;
  *(v24 + 6) = bufferOffset;
  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  offsetCopy = offset;
  offsetCopy2 = offset;
  instanceCountCopy = instanceCount;
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject indexBufferOffset:offsetCopy2 instanceCount:instanceCount baseVertex:vertex baseInstance:instance];

  v24 = *(&v35 + 1);
  v25 = v36;
  *(v36 + 8) = -16217;
  v26 = *(v24 + 24);
  v27 = BYTE10(v37);
  ++BYTE10(v37);
  Bytes = GTTraceMemPool_allocateBytes(v26, *(&v36 + 1), v27 | 0x4800000000);
  *(v25 + 13) = v27;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v32 = *traceStream2;
  }

  else
  {
    v32 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = primitives;
  *(Bytes + 4) = count;
  *(Bytes + 5) = type;
  *(Bytes + 6) = v32;
  *(Bytes + 7) = offsetCopy;
  *(Bytes + 8) = instanceCountCopy;
  *(Bytes + 9) = vertex;
  *(Bytes + 10) = instance;
  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v30);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject indexBufferOffset:offset instanceCount:instanceCount];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v27 = *traceStream2;
  }

  else
  {
    v27 = 0;
  }

  *v21 = var0;
  *(v21 + 1) = primitives;
  *(v21 + 2) = count;
  *(v21 + 3) = type;
  *(v21 + 4) = v27;
  *(v21 + 5) = offset;
  *(v21 + 6) = instanceCount;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v32);
  *(v31 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject indexBufferOffset:offset];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v25 = *traceStream2;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = primitives;
  *(v19 + 2) = count;
  *(v19 + 3) = type;
  *(v19 + 4) = v25;
  *(v19 + 5) = offset;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1
{
  bufferCopy = buffer;
  indexBufferCopy = indexBuffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [indexBufferCopy touch];
  if (indexBufferCopy)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:indexBufferCopy];
    }
  }

  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [indexBufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPatches:patches patchStart:start patchCount:count patchIndexBuffer:baseObject patchIndexBufferOffset:offset controlPointIndexBuffer:baseObject2 controlPointIndexBufferOffset:bufferOffset instanceCount:instanceCount baseInstance:instance];

  v22 = *(&v38 + 1);
  v23 = v39;
  *(v39 + 8) = -16145;
  v24 = *(v22 + 24);
  v25 = BYTE10(v40);
  ++BYTE10(v40);
  Bytes = GTTraceMemPool_allocateBytes(v24, *(&v39 + 1), v25 | 0x5000000000);
  *(v23 + 13) = v25;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v30 = *traceStream2;
  }

  else
  {
    v30 = 0;
  }

  traceStream3 = [indexBufferCopy traceStream];
  if (traceStream3)
  {
    v32 = *traceStream3;
  }

  else
  {
    v32 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = patches;
  *(Bytes + 4) = start;
  *(Bytes + 5) = count;
  *(Bytes + 6) = v30;
  *(Bytes + 7) = offset;
  *(Bytes + 8) = v32;
  *(Bytes + 9) = bufferOffset;
  *(Bytes + 10) = instanceCount;
  *(Bytes + 11) = instance;
  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset
{
  bufferCopy = buffer;
  indexBufferCopy = indexBuffer;
  indirectBufferCopy = indirectBuffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [indexBufferCopy touch];
  if (indexBufferCopy)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:indexBufferCopy];
    }
  }

  [indirectBufferCopy touch];
  if (indirectBufferCopy)
  {
    v18 = self->_retainedObjects;
    if (v18)
    {
      [(NSMutableSet *)v18 addObject:indirectBufferCopy];
    }
  }

  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v40);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [indexBufferCopy baseObject];
  baseObject3 = [indirectBufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPatches:patches patchIndexBuffer:baseObject patchIndexBufferOffset:offset controlPointIndexBuffer:baseObject2 controlPointIndexBufferOffset:bufferOffset indirectBuffer:baseObject3 indirectBufferOffset:indirectBufferOffset];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v31 = *traceStream2;
  }

  else
  {
    v31 = 0;
  }

  traceStream3 = [indexBufferCopy traceStream];
  if (traceStream3)
  {
    v33 = *traceStream3;
  }

  else
  {
    v33 = 0;
  }

  traceStream4 = [indirectBufferCopy traceStream];
  if (traceStream4)
  {
    v35 = *traceStream4;
  }

  else
  {
    v35 = 0;
  }

  *v27 = var0;
  *(v27 + 1) = patches;
  *(v27 + 2) = v31;
  *(v27 + 3) = offset;
  *(v27 + 4) = v33;
  *(v27 + 5) = bufferOffset;
  *(v27 + 6) = v35;
  *(v27 + 7) = indirectBufferOffset;
  s();
  *v36 = v37;
  *(v36 + 8) = BYTE8(v42);
  *(v41 + 15) |= 8u;
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region
{
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  v9 = *&tile->var0;
  var2 = tile->var2;
  v10 = *&region->var0.var2;
  v24[0] = *&region->var0.var0;
  v24[1] = v10;
  v24[2] = *&region->var1.var1;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = tile->var2;
  *(Bytes + 2) = var0;
  v19 = *&region->var0.var0;
  v20 = *&region->var0.var2;
  v21 = *&region->var1.var1;
  *(Bytes + 24) = *&tile->var0;
  *(Bytes + 5) = v18;
  *(Bytes + 3) = v19;
  *(Bytes + 4) = v20;
  *(Bytes + 5) = v21;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  baseObject = self->_baseObject;
  v17 = *tile;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = tile->var2;
  *v9 = var0;
  *(v9 + 8) = *&tile->var0;
  *(v9 + 3) = var2;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = stages;
  *(v10 + 2) = beforeStages;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setLabel:labelCopy];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [labelCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [labelCopy UTF8String];
    v15 = strlen([labelCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v18, uTF8String2, v15 + 1);
  }

  *v8 = var0;
  v8[8] = uTF8String;
  *(v8 + 9) = 0;
  *(v8 + 3) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLRenderCommandEncoderSPI *)baseObject conformsToProtocol:protocolCopy];

  if (&OBJC_PROTOCOL___CaptureMTLObject == protocolCopy)
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

- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  structureCopy = structure;
  v7 = structureCopy;
  if (structureCopy)
  {
    device = [structureCopy device];
    captureRaytracingEnabled = [device captureRaytracingEnabled];

    if ((captureRaytracingEnabled & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setTileAccelerationStructure_atBufferIndex", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      baseObject = [v7 baseObject];
      [(MTLRenderCommandEncoderSPI *)baseObject setTileAccelerationStructure:baseObject atBufferIndex:index];

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
  baseObject2 = [v7 baseObject];
  [(MTLRenderCommandEncoderSPI *)v12 setTileAccelerationStructure:baseObject2 atBufferIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v7 traceStream];
  if (traceStream2)
  {
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v24;
  *(v16 + 2) = index;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
LABEL_17:
}

- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  structureCopy = structure;
  v7 = structureCopy;
  if (structureCopy)
  {
    device = [structureCopy device];
    captureRaytracingEnabled = [device captureRaytracingEnabled];

    if ((captureRaytracingEnabled & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setFragmentAccelerationStructure_atBufferIndex", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      baseObject = [v7 baseObject];
      [(MTLRenderCommandEncoderSPI *)baseObject setFragmentAccelerationStructure:baseObject atBufferIndex:index];

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
  baseObject2 = [v7 baseObject];
  [(MTLRenderCommandEncoderSPI *)v12 setFragmentAccelerationStructure:baseObject2 atBufferIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v7 traceStream];
  if (traceStream2)
  {
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v24;
  *(v16 + 2) = index;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
LABEL_17:
}

- (void)setVertexAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  structureCopy = structure;
  v7 = structureCopy;
  if (structureCopy)
  {
    device = [structureCopy device];
    captureRaytracingEnabled = [device captureRaytracingEnabled];

    if ((captureRaytracingEnabled & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setVertexAccelerationStructure_atBufferIndex", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      baseObject = [v7 baseObject];
      [(MTLRenderCommandEncoderSPI *)baseObject setVertexAccelerationStructure:baseObject atBufferIndex:index];

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
  baseObject2 = [v7 baseObject];
  [(MTLRenderCommandEncoderSPI *)v12 setVertexAccelerationStructure:baseObject2 atBufferIndex:index];

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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v7 traceStream];
  if (traceStream2)
  {
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v24;
  *(v16 + 2) = index;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
LABEL_17:
}

- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexAmplificationCount:count viewMappings:mappings];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (mappings)
    {
      goto LABEL_6;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  var0 = traceStream->var0;
  if (!mappings)
  {
    goto LABEL_8;
  }

LABEL_6:
  v15 = GTTraceEncoder_storeBlob(&v18, mappings, 8 * count);
LABEL_9:
  *v10 = var0;
  *(v10 + 1) = count;
  v10[16] = v15;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  bufferCopy = buffer;
  indirectBufferCopy = indirectBuffer;
  if ([bufferCopy size])
  {
    [bufferCopy touch];
    if (bufferCopy)
    {
      retainedObjects = self->_retainedObjects;
      if (retainedObjects)
      {
        [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      }
    }

    [indirectBufferCopy touch];
    if (indirectBufferCopy)
    {
      v11 = self->_retainedObjects;
      if (v11)
      {
        [(NSMutableSet *)v11 addObject:indirectBufferCopy];
      }
    }

    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v78);
    baseObject = self->_baseObject;
    baseObject = [bufferCopy baseObject];
    baseObject2 = [indirectBufferCopy baseObject];
    [(MTLRenderCommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject indirectBuffer:baseObject2 indirectBufferOffset:offset];

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
    traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [bufferCopy traceStream];
    if (traceStream2)
    {
      v27 = *traceStream2;
    }

    else
    {
      v27 = 0;
    }

    traceStream3 = [indirectBufferCopy traceStream];
    if (traceStream3)
    {
      v29 = *traceStream3;
    }

    else
    {
      v29 = 0;
    }

    *v18 = var0;
    *(v18 + 1) = v27;
    *(v18 + 2) = v29;
    *(v18 + 3) = offset;
    *(v18 + 4) = 0;
    *(v18 + 5) = 0;
    s();
    *v30 = v31;
    *(v30 + 8) = BYTE8(v80);
    *(v79 + 15) |= 8u;
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    isCapturing = [WeakRetained isCapturing];

    if (isCapturing)
    {
      context = objc_autoreleasePoolPush();
      v34 = bufferCopy;
      v35 = MTLIndirectCommandBuffer_descriptor([v34 traceStream]);
      v36 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v35);
      FuncSnapshot = CaptureFindFuncSnapshot(v34, self->_snapshotMap);
      offsetCopy = offset;
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
        streamReference = [v34 streamReference];
        v38 = apr_palloc(pool, 0x18uLL);
        *v38 = streamReference;
        apr_hash_set(snapshotMap, v38, 8, v38);
        v43 = *v79;
        v63 = SnapshotMemory;
        v38[1] = SnapshotMemory;
        v38[2] = v43;
      }

      selfCopy = self;
      v69 = indirectBufferCopy;
      v45 = indirectBufferCopy;
      device = [(CaptureMTLRenderCommandEncoder *)selfCopy device];
      v47 = DEVICEOBJECT(v45);

      device2 = [v47 device];
      v61 = [device2 newBufferWithLength:8 options:0];
      v49 = DEVICEOBJECT(selfCopy);

      [v49 setVertexBuffer:v61 offset:0 atIndex:0];
      [v49 setVertexBuffer:v47 offset:offsetCopy atIndex:1];
      renderPipelineCopyBuffer = [device renderPipelineCopyBuffer];
      [v49 setRenderPipelineState:renderPipelineCopyBuffer];

      indirectBufferCopy = v69;
      [v49 drawPrimitives:0 vertexStart:0 vertexCount:8];

      v51 = *(*(&v78 + 1) + 24);
      v52 = BYTE10(v80);
      ++BYTE10(v80);
      Bytes = GTTraceMemPool_allocateBytes(v51, *(&v79 + 1), v52 | 0x1000000100);
      RestoreRenderCommandEncoder(selfCopy, v54);
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
    baseObject3 = [bufferCopy baseObject];
    baseObject4 = [indirectBufferCopy baseObject];
    [(MTLRenderCommandEncoderSPI *)v19 executeCommandsInBuffer:baseObject3 indirectBuffer:baseObject4 indirectBufferOffset:offset];
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

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  if ([bufferCopy size])
  {
    [bufferCopy touch];
    if (bufferCopy)
    {
      retainedObjects = self->_retainedObjects;
      if (retainedObjects)
      {
        [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      }
    }

    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v52);
    baseObject = self->_baseObject;
    baseObject = [bufferCopy baseObject];
    [(MTLRenderCommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject withRange:location, length];

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
    traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [bufferCopy traceStream];
    if (traceStream2)
    {
      v22 = *traceStream2;
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
    isCapturing = [WeakRetained isCapturing];

    if (isCapturing)
    {
      context = objc_autoreleasePoolPush();
      v27 = bufferCopy;
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
        streamReference = [v27 streamReference];
        v32 = apr_palloc(pool, 0x18uLL);
        *v32 = streamReference;
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
    baseObject2 = [bufferCopy baseObject];
    [(MTLRenderCommandEncoderSPI *)v15 executeCommandsInBuffer:baseObject2 withRange:location, length];
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
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

- (CaptureMTLRenderCommandEncoder)initWithBaseObject:(id)object captureParallelRenderCommandEncoder:(id)encoder
{
  objectCopy = object;
  encoderCopy = encoder;
  v23.receiver = self;
  v23.super_class = CaptureMTLRenderCommandEncoder;
  v9 = [(CaptureMTLRenderCommandEncoder *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [encoderCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    traceContext = [encoderCopy traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v14, 0);

    apr_pool_create_ex(&v10->_pool, 0, 0, 0);
    v10->_snapshotMap = apr_hash_make(v10->_pool);
    commandBuffer = [encoderCopy commandBuffer];
    objc_storeWeak(&v10->_captureCommandBuffer, commandBuffer);

    WeakRetained = objc_loadWeakRetained(&v10->_captureCommandBuffer);
    retainedObjects = [WeakRetained retainedObjects];

    if (retainedObjects)
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

- (CaptureMTLRenderCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v20.receiver = self;
  v20.super_class = CaptureMTLRenderCommandEncoder;
  v9 = [(CaptureMTLRenderCommandEncoder *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [bufferCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    traceContext = [bufferCopy traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openEncoderStream(traceContext, v14, *([bufferCopy traceStream] + 3));

    objc_storeWeak(&v10->_captureCommandBuffer, bufferCopy);
    retainedObjects = [bufferCopy retainedObjects];
    retainedObjects = v10->_retainedObjects;
    v10->_retainedObjects = retainedObjects;

    apr_pool_create_ex(&v10->_pool, 0, 0, 0);
    v10->_snapshotMap = apr_hash_make(v10->_pool);
    v17 = v10->_retainedObjects;
    v18 = DEVICEOBJECT(v10->_baseObject);
    [(NSMutableSet *)v17 addObject:v18];
  }

  return v10;
}

@end