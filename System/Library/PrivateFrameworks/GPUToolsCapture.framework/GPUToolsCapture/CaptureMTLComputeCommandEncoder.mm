@interface CaptureMTLComputeCommandEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (CaptureMTLComputeCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer;
- (NSString)description;
- (unint64_t)streamReference;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)dealloc;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)encodeStartDoWhile;
- (void)encodeStartElse;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)insertCompressedTextureReinterpretationFlush;
- (void)insertDebugSignpost:(id)signpost;
- (void)insertSplit;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count;
- (void)memoryBarrierWithScope:(unint64_t)scope;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setComputePipelineState:(id)state;
- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setLabel:(id)label;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setStageInRegion:(id *)region;
- (void)setStageInRegionWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setThreadgroupDistributionMode:(int64_t)mode;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)touch;
- (void)updateFence:(id)fence;
- (void)useHeap:(id)heap;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResourceGroup:(id)group usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)waitForFence:(id)fence;
@end

@implementation CaptureMTLComputeCommandEncoder

- (void)waitForFence:(id)fence
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

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject waitForFence:baseObject];

  v9 = v21;
  *(v21 + 8) = -16129;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

  [(MTLComputeCommandEncoderSPI *)baseObject useResources:&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) count:count usage:usage];
  v18 = v30;
  *(v30 + 8) = -16046;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)useResourceGroup:(id)group usage:(unint64_t)usage
{
  groupCopy = group;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_useResourceGroup_usage", "Resource groups", 0, 0);
  [groupCopy touch];
  v6 = groupCopy;
  if (groupCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:groupCopy];
      v6 = groupCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject useResourceGroup:baseObject usage:usage];
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
  [(MTLComputeCommandEncoderSPI *)baseObject useResource:baseObject usage:usage];

  v11 = v23;
  *(v23 + 8) = -16047;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_useResidencySets_count", "Deprecated Residency Set API", 0, 0);
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

  [(MTLComputeCommandEncoderSPI *)baseObject useResidencySets:v10 count:count];
}

- (void)useResidencySet:(id)set
{
  setCopy = set;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_useResidencySet", "Deprecated Residency Set API", 0, 0);
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
  [(MTLComputeCommandEncoderSPI *)baseObject useResidencySet:baseObject];
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

  [(MTLComputeCommandEncoderSPI *)baseObject useHeaps:&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  v16 = v28;
  *(v28 + 8) = -16044;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  [(MTLComputeCommandEncoderSPI *)baseObject useHeap:baseObject];

  v9 = v21;
  *(v21 + 8) = -16045;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)updateFence:(id)fence
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

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject updateFence:baseObject];

  v9 = v21;
  *(v21 + 8) = -16130;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
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

  [(MTLComputeCommandEncoderSPI *)baseObject setVisibleFunctionTables:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v17 = v29;
  *(v29 + 8) = -15580;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
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
  [(MTLComputeCommandEncoderSPI *)baseObject setVisibleFunctionTable:baseObject atBufferIndex:index];

  v11 = v23;
  *(v23 + 8) = -15581;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setThreadgroupMemoryLength:length atIndex:index];
  v8 = v18;
  *(v18 + 8) = -16328;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setThreadgroupDistributionMode:(int64_t)mode
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setThreadgroupDistributionMode:mode];
  v6 = v16;
  *(v16 + 8) = -15280;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
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

  [(MTLComputeCommandEncoderSPI *)baseObject setTextures:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v17 = v29;
  *(v29 + 8) = -16333;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setTexture:(id)texture atIndex:(unint64_t)index
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
  [(MTLComputeCommandEncoderSPI *)baseObject setTexture:baseObject atIndex:index];

  v11 = v23;
  *(v23 + 8) = -16334;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setStageInRegionWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
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

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject setStageInRegionWithIndirectBuffer:baseObject indirectBufferOffset:offset];

  v11 = v23;
  *(v23 + 8) = -16017;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = offset;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setStageInRegion:(id *)region
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  v7 = *&region->var0.var2;
  v19[0] = *&region->var0.var0;
  v19[1] = v7;
  v19[2] = *&region->var1.var1;
  [(MTLComputeCommandEncoderSPI *)baseObject setStageInRegion:v19];
  v8 = v21;
  *(v21 + 8) = -16100;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  v15 = *&region->var0.var2;
  v16 = *&region->var1.var1;
  *(v10 + 8) = *&region->var0.var0;
  *(v10 + 24) = v15;
  *(v10 + 40) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
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

  [(MTLComputeCommandEncoderSPI *)baseObject setSamplerStates:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v17 = v29;
  *(v29 + 8) = -16331;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
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
  [(MTLComputeCommandEncoderSPI *)baseObject setSamplerStates:&clampsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:clampsCopy lodMaxClamps:maxClamps withRange:location, length, clampsCopy];
  v23 = v39;
  *(v39 + 8) = -16329;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
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
  [(MTLComputeCommandEncoderSPI *)baseObject setSamplerState:baseObject lodMinClamp:index lodMaxClamp:v15 atIndex:v16];

  v17 = v29;
  *(v29 + 8) = -16330;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
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
  [(MTLComputeCommandEncoderSPI *)baseObject setSamplerState:baseObject atIndex:index];

  v11 = v23;
  *(v23 + 8) = -16332;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
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

  [(MTLComputeCommandEncoderSPI *)baseObject setIntersectionFunctionTables:&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v17 = v29;
  *(v29 + 8) = -15582;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
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
  [(MTLComputeCommandEncoderSPI *)baseObject setIntersectionFunctionTable:baseObject atBufferIndex:index];

  v11 = v23;
  *(v23 + 8) = -15583;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setImageblockWidth:width height:height];
  v8 = v18;
  *(v18 + 8) = -16149;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = width;
  *(v10 + 2) = height;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setComputePipelineState:(id)state
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
  [(MTLComputeCommandEncoderSPI *)baseObject setComputePipelineState:baseObject];

  v9 = v21;
  *(v21 + 8) = -16337;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setBytes:bytes length:length attributeStride:stride atIndex:index];
  v12 = v23;
  *(v23 + 8) = -15281;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setBytes:bytes length:length atIndex:index];
  v10 = v21;
  *(v21 + 8) = -16227;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
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
  [(MTLComputeCommandEncoderSPI *)baseObject setBuffers:&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsets withRange:location, length];
  v20 = v35;
  *(v35 + 8) = -16335;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range
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
  [(MTLComputeCommandEncoderSPI *)baseObject setBuffers:&offsetsCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsetsCopy attributeStrides:strides withRange:location, length, offsetsCopy];
  v22 = v39;
  *(v39 + 8) = -15282;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setBufferOffset:offset attributeStride:stride atIndex:index];
  v10 = v20;
  *(v20 + 8) = -15283;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setBufferOffset:offset atIndex:index];
  v8 = v18;
  *(v18 + 8) = -16226;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
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
  [(MTLComputeCommandEncoderSPI *)baseObject setBuffer:baseObject offset:offset attributeStride:stride atIndex:index];

  v15 = v27;
  *(v27 + 8) = -15284;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
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
  [(MTLComputeCommandEncoderSPI *)baseObject setBuffer:baseObject offset:offset atIndex:index];

  v13 = v25;
  *(v25 + 8) = -16336;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)pushDebugGroup:(id)group
{
  groupCopy = group;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject pushDebugGroup:groupCopy];
  v6 = v19;
  *(v19 + 8) = -16323;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  [(MTLComputeCommandEncoderSPI *)self->_baseObject popDebugGroup];
  v4 = v14;
  *(v14 + 8) = -16322;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)memoryBarrierWithScope:(unint64_t)scope
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject memoryBarrierWithScope:scope];
  v6 = v16;
  *(v16 + 8) = -16009;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = scope;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  CaptureClearFuncSnapshot(scope, self->_snapshotMap);
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count
{
  countCopy = count;
  resourcesCopy = resources;
  RetainArray(self->_retainedObjects, resources, count);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v10 = 8 * countCopy;
  __chkstk_darwin(v8, v11);
  bzero(&v28 - ((8 * countCopy + 15) & 0xFFFFFFFFFFFFFFF0), 8 * countCopy);
  if (countCopy)
  {
    v12 = resourcesCopy;
    v13 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = countCopy;
    do
    {
      v15 = *v12++;
      *v13++ = [v15 baseObject];
      --v14;
    }

    while (v14);
  }

  [(MTLComputeCommandEncoderSPI *)baseObject memoryBarrierWithResources:&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) count:countCopy];
  v16 = v29;
  *(v29 + 8) = -16008;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x28uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x1800000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 24;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v22);
  bzero(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * countCopy);
  v24 = StreamArray(&v28, (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), resourcesCopy, countCopy);
  *v18 = var0;
  *(v18 + 1) = countCopy;
  v18[16] = v24;
  *(v18 + 17) = 0;
  *(v18 + 5) = 0;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v30);
  for (*(v29 + 15) |= 8u; countCopy; --countCopy)
  {
    v27 = *resourcesCopy++;
    CaptureRemoveFuncSnapshot(v27, self->_snapshotMap);
  }
}

- (void)insertSplit
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_insertSplit", "Command Encoder Insert Split", 0, 0);
  baseObject = self->_baseObject;

  [(MTLComputeCommandEncoderSPI *)baseObject insertSplit];
}

- (void)insertDebugSignpost:(id)signpost
{
  signpostCopy = signpost;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject insertDebugSignpost:signpostCopy];
  v6 = v19;
  *(v19 + 8) = -16324;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)insertCompressedTextureReinterpretationFlush
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject insertCompressedTextureReinterpretationFlush];
  v4 = v14;
  *(v14 + 8) = -15511;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)endEncoding
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject endEncoding];
  v4 = v14;
  *(v14 + 8) = -16325;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)encodeStartElse
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_encodeStartElse", "Command buffer jump", 0, 0);
  baseObject = self->_baseObject;

  [(MTLComputeCommandEncoderSPI *)baseObject encodeStartElse];
}

- (void)encodeStartDoWhile
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_encodeStartDoWhile", "Command buffer jump", 0, 0);
  baseObject = self->_baseObject;

  [(MTLComputeCommandEncoderSPI *)baseObject encodeStartDoWhile];
}

- (BOOL)encodeEndWhile
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_encodeEndWhile", "Command buffer jump", 0, 0);
  baseObject = self->_baseObject;

  return [(MTLComputeCommandEncoderSPI *)baseObject encodeEndWhile];
}

- (BOOL)encodeEndIf
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_encodeEndIf", "Command buffer jump", 0, 0);
  baseObject = self->_baseObject;

  return [(MTLComputeCommandEncoderSPI *)baseObject encodeEndIf];
}

- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
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

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject dispatchThreadsWithIndirectBuffer:baseObject indirectBufferOffset:offset];

  v11 = v23;
  *(v23 + 8) = -16079;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = offset;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  v22 = *threads;
  v21 = *threadgroup;
  [(MTLComputeCommandEncoderSPI *)baseObject dispatchThreads:&v22 threadsPerThreadgroup:&v21];
  v9 = v24;
  *(v24 + 8) = -16078;
  v10 = BYTE9(v25);
  if (BYTE9(v25) > 8uLL)
  {
    v12 = *(*(&v23 + 1) + 24);
    v13 = BYTE10(v25);
    ++BYTE10(v25);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v24 + 1), v13 | 0x3800000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v25));
    BYTE9(v25) += 56;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threads->var2;
  v17 = threadgroup->var2;
  *v11 = var0;
  v18 = *&threadgroup->var0;
  *(v11 + 8) = *&threads->var0;
  *(v11 + 3) = var2;
  *(v11 + 2) = v18;
  *(v11 + 6) = v17;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
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

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  v25 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  [(MTLComputeCommandEncoderSPI *)baseObject dispatchThreadgroupsWithIndirectBuffer:baseObject indirectBufferOffset:offset threadsPerThreadgroup:&v25];

  v13 = v28;
  *(v28 + 8) = -16220;
  v14 = BYTE9(v29);
  if (BYTE9(v29) > 0x10uLL)
  {
    v16 = *(*(&v27 + 1) + 24);
    v17 = BYTE10(v29);
    ++BYTE10(v29);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v28 + 1), v17 | 0x3000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v29));
    BYTE9(v29) += 48;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

  v22 = threadgroup->var2;
  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = offset;
  *(v15 + 24) = *&threadgroup->var0;
  *(v15 + 5) = v22;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  v22 = *threadgroups;
  v21 = *threadgroup;
  [(MTLComputeCommandEncoderSPI *)baseObject dispatchThreadgroups:&v22 threadsPerThreadgroup:&v21];
  v9 = v24;
  *(v24 + 8) = -16327;
  v10 = BYTE9(v25);
  if (BYTE9(v25) > 8uLL)
  {
    v12 = *(*(&v23 + 1) + 24);
    v13 = BYTE10(v25);
    ++BYTE10(v25);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v24 + 1), v13 | 0x3800000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v25));
    BYTE9(v25) += 56;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threadgroups->var2;
  v17 = threadgroup->var2;
  *v11 = var0;
  v18 = *&threadgroup->var0;
  *(v11 + 8) = *&threadgroups->var0;
  *(v11 + 3) = var2;
  *(v11 + 2) = v18;
  *(v11 + 6) = v17;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
  v8 = v18;
  *(v18 + 8) = -14963;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setLabel:labelCopy];
  v6 = v19;
  *(v19 + 8) = -16339;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  v5 = [(MTLComputeCommandEncoderSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLComputeCommandEncoder;
  v3 = [(CaptureMTLComputeCommandEncoder *)&v7 description];
  v4 = [(MTLComputeCommandEncoderSPI *)self->_baseObject description];
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

- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  structureCopy = structure;
  v7 = structureCopy;
  if (structureCopy)
  {
    device = [structureCopy device];
    captureRaytracingEnabled = [device captureRaytracingEnabled];

    if ((captureRaytracingEnabled & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_setAccelerationStructure_atBufferIndex", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      baseObject = [v7 baseObject];
      [(MTLComputeCommandEncoderSPI *)baseObject setAccelerationStructure:baseObject atBufferIndex:index];

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
  [(MTLComputeCommandEncoderSPI *)v12 setAccelerationStructure:baseObject2 atBufferIndex:index];

  v14 = v28;
  *(v28 + 8) = -15623;
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
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
    [(MTLComputeCommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject withRange:location, length];

    v12 = v53;
    *(v53 + 8) = -15964;
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
    traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
        v34 = CreateIndirectComputeCommandBufferSnapshot(self, v27, v29, &v51);
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

      RestoreComputeCommandEncoder(self, v31);
      v14[40] = SnapshotMemory[8];
      *(v14 + 4) = v32[2];
      v39 = objc_loadWeakRetained(&self->_captureCommandBuffer);
      v40 = DEVICEOBJECT(v39);

      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = __69__CaptureMTLComputeCommandEncoder_executeCommandsInBuffer_withRange___block_invoke;
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
    [(MTLComputeCommandEncoderSPI *)v15 executeCommandsInBuffer:baseObject2 withRange:location, length];
  }
}

void __69__CaptureMTLComputeCommandEncoder_executeCommandsInBuffer_withRange___block_invoke(uint64_t a1)
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

    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v79);
    baseObject = self->_baseObject;
    baseObject = [bufferCopy baseObject];
    baseObject2 = [indirectBufferCopy baseObject];
    [(MTLComputeCommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject indirectBuffer:baseObject2 indirectBufferOffset:offset];

    v16 = v80;
    *(v80 + 8) = -15963;
    v17 = BYTE9(v81);
    if (BYTE9(v81) > 0x10uLL)
    {
      v22 = *(*(&v79 + 1) + 24);
      v23 = BYTE10(v81);
      ++BYTE10(v81);
      v18 = GTTraceMemPool_allocateBytes(v22, *(&v80 + 1), v23 | 0x3000000000) + 16;
      v17 = v23;
    }

    else
    {
      v18 = (v16 + BYTE9(v81));
      BYTE9(v81) += 48;
    }

    *(v16 + 13) = v17;
    traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
    *(v30 + 8) = BYTE8(v81);
    *(v80 + 15) |= 8u;
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    isCapturing = [WeakRetained isCapturing];

    if (isCapturing)
    {
      context = objc_autoreleasePoolPush();
      v34 = bufferCopy;
      v35 = MTLIndirectCommandBuffer_descriptor([v34 traceStream]);
      v36 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v35);
      FuncSnapshot = CaptureFindFuncSnapshot(v34, self->_snapshotMap);
      v68 = v36;
      v69 = v34;
      offsetCopy = offset;
      if (FuncSnapshot)
      {
        v66 = 0;
        v67 = 0;
        v62 = FuncSnapshot;
        v65 = *(FuncSnapshot + 8);
      }

      else
      {
        v78 = 0;
        v67 = CreateIndirectComputeCommandBufferSnapshot(self, v34, v36, &v78);
        v66 = v78;
        SnapshotMemory = AllocateSnapshotMemory(&v79, v35, [v34 size]);
        pool = self->_pool;
        snapshotMap = self->_snapshotMap;
        streamReference = [v34 streamReference];
        v43 = apr_palloc(pool, 0x18uLL);
        *v43 = streamReference;
        apr_hash_set(snapshotMap, v43, 8, v43);
        v65 = SnapshotMemory;
        v43[1] = SnapshotMemory;
        v62 = v43;
        v43[2] = *v80;
      }

      RestoreComputeCommandEncoder(self, v38);
      selfCopy = self;
      v45 = indirectBufferCopy;
      device = [(CaptureMTLComputeCommandEncoder *)selfCopy device];
      v47 = DEVICEOBJECT(v45);

      device2 = [v47 device];
      v49 = [device2 newBufferWithLength:8 options:0];
      v50 = DEVICEOBJECT(selfCopy);

      v64 = v49;
      [v50 setBuffer:v49 offset:0 atIndex:0];
      [v50 setBuffer:v47 offset:offsetCopy atIndex:1];
      computePipelineCopyBuffer = [device computePipelineCopyBuffer];
      [v50 setComputePipelineState:computePipelineCopyBuffer];
      supportsNonUniformThreadgroupSize = [device2 supportsNonUniformThreadgroupSize];
      v83 = xmmword_2975D0;
      v84 = 1;
      if (supportsNonUniformThreadgroupSize)
      {
        *v82 = [computePipelineCopyBuffer threadExecutionWidth];
        *&v82[8] = vdupq_n_s64(1uLL);
        [v50 dispatchThreads:&v83 threadsPerThreadgroup:v82];
      }

      else
      {
        *v82 = vdupq_n_s64(1uLL);
        *&v82[16] = 1;
        [v50 dispatchThreadgroups:&v83 threadsPerThreadgroup:v82];
      }

      v53 = *(*(&v79 + 1) + 24);
      v54 = BYTE10(v81);
      ++BYTE10(v81);
      Bytes = GTTraceMemPool_allocateBytes(v53, *(&v80 + 1), v54 | 0x1000000100);
      v18[40] = v65[8];
      v18[41] = Bytes[8];
      *(v18 + 4) = v62[2];
      v56 = objc_loadWeakRetained(&self->_captureCommandBuffer);
      v57 = DEVICEOBJECT(v56);

      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = __95__CaptureMTLComputeCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset___block_invoke;
      v71[3] = &unk_2F1FD0;
      v72 = v66;
      v73 = v67;
      v74 = v68;
      v75 = v64;
      v76 = v65;
      v77 = Bytes;
      v58 = v64;
      v59 = v68;
      v60 = v67;
      v61 = v66;
      [v57 addCompletedHandler:v71];

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    GTMTLCaptureManager_notifyUnsupportedFenumWithMsg(0, "zero-length Indirect Command Buffer executions", 0, 0);
    v19 = self->_baseObject;
    baseObject3 = [bufferCopy baseObject];
    baseObject4 = [indirectBufferCopy baseObject];
    [(MTLComputeCommandEncoderSPI *)v19 executeCommandsInBuffer:baseObject3 indirectBuffer:baseObject4 indirectBufferOffset:offset];
  }
}

float __95__CaptureMTLComputeCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset___block_invoke(uint64_t a1)
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

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -16338;
  v5 = BYTE9(v16);
  if (BYTE9(v16) > 0x38uLL)
  {
    v7 = *(*(&v14 + 1) + 24);
    v8 = BYTE10(v16);
    ++BYTE10(v16);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v15 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v16));
    BYTE9(v16) += 8;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  *(v11 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  apr_pool_destroy(self->_pool);
  v13.receiver = self;
  v13.super_class = CaptureMTLComputeCommandEncoder;
  [(CaptureMTLComputeCommandEncoder *)&v13 dealloc];
}

- (CaptureMTLComputeCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v20.receiver = self;
  v20.super_class = CaptureMTLComputeCommandEncoder;
  v9 = [(CaptureMTLComputeCommandEncoder *)&v20 init];
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

    v17 = v10->_retainedObjects;
    v18 = DEVICEOBJECT(v10->_baseObject);
    [(NSMutableSet *)v17 addObject:v18];

    apr_pool_create_ex(&v10->_pool, 0, 0, 0);
    v10->_snapshotMap = apr_hash_make(v10->_pool);
  }

  return v10;
}

@end