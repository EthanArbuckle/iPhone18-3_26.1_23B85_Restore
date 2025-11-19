@interface CaptureMTLComputeCommandEncoder
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (CaptureMTLComputeCommandEncoder)initWithBaseObject:(id)a3 captureCommandBuffer:(id)a4;
- (NSString)description;
- (unint64_t)streamReference;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4;
- (void)dealloc;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4;
- (void)encodeStartDoWhile;
- (void)encodeStartElse;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)insertCompressedTextureReinterpretationFlush;
- (void)insertDebugSignpost:(id)a3;
- (void)insertSplit;
- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4;
- (void)memoryBarrierWithScope:(unint64_t)a3;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setComputePipelineState:(id)a3;
- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4;
- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setLabel:(id)a3;
- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setStageInRegion:(id *)a3;
- (void)setStageInRegionWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4;
- (void)setTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setThreadgroupDistributionMode:(int64_t)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)touch;
- (void)updateFence:(id)a3;
- (void)useHeap:(id)a3;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResourceGroup:(id)a3 usage:(unint64_t)a4;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
- (void)waitForFence:(id)a3;
@end

@implementation CaptureMTLComputeCommandEncoder

- (void)waitForFence:(id)a3
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
  [(MTLComputeCommandEncoderSPI *)baseObject waitForFence:v8];

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
  v14 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

  [(MTLComputeCommandEncoderSPI *)baseObject useResources:&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) count:a4 usage:a5];
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
  v23 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)useResourceGroup:(id)a3 usage:(unint64_t)a4
{
  v10 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_useResourceGroup_usage", "Resource groups", 0, 0);
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
  [(MTLComputeCommandEncoderSPI *)baseObject useResourceGroup:v9 usage:a4];
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
  [(MTLComputeCommandEncoderSPI *)baseObject useResource:v10 usage:a4];

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
  v16 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_useResidencySets_count", "Deprecated Residency Set API", 0, 0);
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

  [(MTLComputeCommandEncoderSPI *)baseObject useResidencySets:v10 count:a4];
}

- (void)useResidencySet:(id)a3
{
  v8 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_useResidencySet", "Deprecated Residency Set API", 0, 0);
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
  [(MTLComputeCommandEncoderSPI *)baseObject useResidencySet:v7];
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

  [(MTLComputeCommandEncoderSPI *)baseObject useHeaps:&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) count:a4];
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
  v21 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  [(MTLComputeCommandEncoderSPI *)baseObject useHeap:v8];

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
  v14 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)updateFence:(id)a3
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
  [(MTLComputeCommandEncoderSPI *)baseObject updateFence:v8];

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
  v14 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
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
  v22 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
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
  [(MTLComputeCommandEncoderSPI *)baseObject setVisibleFunctionTable:v10 atBufferIndex:a4];

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
  v16 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setThreadgroupMemoryLength:a3 atIndex:a4];
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
  v13 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setThreadgroupDistributionMode:(int64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setThreadgroupDistributionMode:a3];
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
  v11 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4
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
  v22 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setTexture:(id)a3 atIndex:(unint64_t)a4
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
  [(MTLComputeCommandEncoderSPI *)baseObject setTexture:v10 atIndex:a4];

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
  v16 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setStageInRegionWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4
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
  [(MTLComputeCommandEncoderSPI *)baseObject setStageInRegionWithIndirectBuffer:v10 indirectBufferOffset:a4];

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
  v16 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setStageInRegion:(id *)a3
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  v7 = *&a3->var0.var2;
  v19[0] = *&a3->var0.var0;
  v19[1] = v7;
  v19[2] = *&a3->var1.var1;
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
  v13 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  v15 = *&a3->var0.var2;
  v16 = *&a3->var1.var1;
  *(v10 + 8) = *&a3->var0.var0;
  *(v10 + 24) = v15;
  *(v10 + 40) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4
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
  v22 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
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
  [(MTLComputeCommandEncoderSPI *)baseObject setSamplerStates:&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:v36 lodMaxClamps:a5 withRange:location, length, v36];
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
    v20 = v36;
  }

  else
  {
    v25 = (v23 + BYTE9(v40));
    BYTE9(v40) += 32;
  }

  *(v23 + 13) = v24;
  v28 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
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
  [(MTLComputeCommandEncoderSPI *)baseObject setSamplerState:v14 lodMinClamp:a6 lodMaxClamp:v15 atIndex:v16];

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
  v22 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4
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
  [(MTLComputeCommandEncoderSPI *)baseObject setSamplerState:v10 atIndex:a4];

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
  v16 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
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
  v22 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
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
  [(MTLComputeCommandEncoderSPI *)baseObject setIntersectionFunctionTable:v10 atBufferIndex:a4];

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
  v16 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setImageblockWidth:a3 height:a4];
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
  v13 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setComputePipelineState:(id)a3
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
  [(MTLComputeCommandEncoderSPI *)baseObject setComputePipelineState:v8];

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
  v14 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setBytes:a3 length:a4 attributeStride:a5 atIndex:a6];
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
  v17 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setBytes:a3 length:a4 atIndex:a5];
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
  v15 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
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
  [(MTLComputeCommandEncoderSPI *)baseObject setBuffers:&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:a4 withRange:location, length];
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
  v25 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6
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
  [(MTLComputeCommandEncoderSPI *)baseObject setBuffers:&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:v36 attributeStrides:a5 withRange:location, length, v36];
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
  v27 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setBufferOffset:a3 attributeStride:a4 atIndex:a5];
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
  v15 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setBufferOffset:a3 atIndex:a4];
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
  v13 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
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
  [(MTLComputeCommandEncoderSPI *)baseObject setBuffer:v14 offset:a4 attributeStride:a5 atIndex:a6];

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
  v20 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
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
  [(MTLComputeCommandEncoderSPI *)baseObject setBuffer:v12 offset:a4 atIndex:a5];

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
  v18 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)pushDebugGroup:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject pushDebugGroup:v4];
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
  v11 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  v9 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)memoryBarrierWithScope:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject memoryBarrierWithScope:a3];
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
  v11 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  CaptureClearFuncSnapshot(a3, self->_snapshotMap);
}

- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  RetainArray(self->_retainedObjects, a3, a4);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v10 = 8 * v4;
  __chkstk_darwin(v8, v11);
  bzero(&v28 - ((8 * v4 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
  if (v4)
  {
    v12 = v5;
    v13 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = v4;
    do
    {
      v15 = *v12++;
      *v13++ = [v15 baseObject];
      --v14;
    }

    while (v14);
  }

  [(MTLComputeCommandEncoderSPI *)baseObject memoryBarrierWithResources:&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) count:v4];
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
  v21 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v21, v22);
  bzero(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
  v24 = StreamArray(&v28, (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), v5, v4);
  *v18 = var0;
  *(v18 + 1) = v4;
  v18[16] = v24;
  *(v18 + 17) = 0;
  *(v18 + 5) = 0;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v30);
  for (*(v29 + 15) |= 8u; v4; --v4)
  {
    v27 = *v5++;
    CaptureRemoveFuncSnapshot(v27, self->_snapshotMap);
  }
}

- (void)insertSplit
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_insertSplit", "Command Encoder Insert Split", 0, 0);
  baseObject = self->_baseObject;

  [(MTLComputeCommandEncoderSPI *)baseObject insertSplit];
}

- (void)insertDebugSignpost:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject insertDebugSignpost:v4];
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
  v11 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  v9 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  v9 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4
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
  [(MTLComputeCommandEncoderSPI *)baseObject dispatchThreadsWithIndirectBuffer:v10 indirectBufferOffset:a4];

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
  v16 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  v22 = *a3;
  v21 = *a4;
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
  v14 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = a3->var2;
  v17 = a4->var2;
  *v11 = var0;
  v18 = *&a4->var0;
  *(v11 + 8) = *&a3->var0;
  *(v11 + 3) = var2;
  *(v11 + 2) = v18;
  *(v11 + 6) = v17;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5
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

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  v12 = [v8 baseObject];
  v25 = *&a5->var0;
  var2 = a5->var2;
  [(MTLComputeCommandEncoderSPI *)baseObject dispatchThreadgroupsWithIndirectBuffer:v12 indirectBufferOffset:a4 threadsPerThreadgroup:&v25];

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
  v18 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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

  v22 = a5->var2;
  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 24) = *&a5->var0;
  *(v15 + 5) = v22;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  v22 = *a3;
  v21 = *a4;
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
  v14 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = a3->var2;
  v17 = a4->var2;
  *v11 = var0;
  v18 = *&a4->var0;
  *(v11 + 8) = *&a3->var0;
  *(v11 + 3) = var2;
  *(v11 + 2) = v18;
  *(v11 + 6) = v17;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:a3 beforeStages:a4];
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
  v13 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setLabel:v4];
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
  v11 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  v5 = [(MTLComputeCommandEncoderSPI *)baseObject conformsToProtocol:v4];

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

- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 device];
    v9 = [v8 captureRaytracingEnabled];

    if ((v9 & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_setAccelerationStructure_atBufferIndex", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      v22 = [v7 baseObject];
      [(MTLComputeCommandEncoderSPI *)baseObject setAccelerationStructure:v22 atBufferIndex:a4];

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
  [(MTLComputeCommandEncoderSPI *)v12 setAccelerationStructure:v13 atBufferIndex:a4];

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
  v19 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
    [(MTLComputeCommandEncoderSPI *)baseObject executeCommandsInBuffer:v11 withRange:location, length];

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
    v19 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
        v34 = CreateIndirectComputeCommandBufferSnapshot(self, v27, v29, &v51);
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
    v16 = [v7 baseObject];
    [(MTLComputeCommandEncoderSPI *)v15 executeCommandsInBuffer:v16 withRange:location, length];
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

    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v79);
    baseObject = self->_baseObject;
    v14 = [v8 baseObject];
    v15 = [v9 baseObject];
    [(MTLComputeCommandEncoderSPI *)baseObject executeCommandsInBuffer:v14 indirectBuffer:v15 indirectBufferOffset:a5];

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
    v24 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
    *(v30 + 8) = BYTE8(v81);
    *(v80 + 15) |= 8u;
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    v33 = [WeakRetained isCapturing];

    if (v33)
    {
      context = objc_autoreleasePoolPush();
      v34 = v8;
      v35 = MTLIndirectCommandBuffer_descriptor([v34 traceStream]);
      v36 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v35);
      FuncSnapshot = CaptureFindFuncSnapshot(v34, self->_snapshotMap);
      v68 = v36;
      v69 = v34;
      v63 = a5;
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
        v42 = [v34 streamReference];
        v43 = apr_palloc(pool, 0x18uLL);
        *v43 = v42;
        apr_hash_set(snapshotMap, v43, 8, v43);
        v65 = SnapshotMemory;
        v43[1] = SnapshotMemory;
        v62 = v43;
        v43[2] = *v80;
      }

      RestoreComputeCommandEncoder(self, v38);
      v44 = self;
      v45 = v9;
      v46 = [(CaptureMTLComputeCommandEncoder *)v44 device];
      v47 = DEVICEOBJECT(v45);

      v48 = [v47 device];
      v49 = [v48 newBufferWithLength:8 options:0];
      v50 = DEVICEOBJECT(v44);

      v64 = v49;
      [v50 setBuffer:v49 offset:0 atIndex:0];
      [v50 setBuffer:v47 offset:v63 atIndex:1];
      v51 = [v46 computePipelineCopyBuffer];
      [v50 setComputePipelineState:v51];
      v52 = [v48 supportsNonUniformThreadgroupSize];
      v83 = xmmword_2975D0;
      v84 = 1;
      if (v52)
      {
        *v82 = [v51 threadExecutionWidth];
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
    v20 = [v8 baseObject];
    v21 = [v9 baseObject];
    [(MTLComputeCommandEncoderSPI *)v19 executeCommandsInBuffer:v20 indirectBuffer:v21 indirectBufferOffset:a5];
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
  v9 = [(CaptureMTLComputeCommandEncoder *)self traceStream];
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
  *(v11 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  apr_pool_destroy(self->_pool);
  v13.receiver = self;
  v13.super_class = CaptureMTLComputeCommandEncoder;
  [(CaptureMTLComputeCommandEncoder *)&v13 dealloc];
}

- (CaptureMTLComputeCommandEncoder)initWithBaseObject:(id)a3 captureCommandBuffer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = CaptureMTLComputeCommandEncoder;
  v9 = [(CaptureMTLComputeCommandEncoder *)&v20 init];
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

    v17 = v10->_retainedObjects;
    v18 = DEVICEOBJECT(v10->_baseObject);
    [(NSMutableSet *)v17 addObject:v18];

    apr_pool_create_ex(&v10->_pool, 0, 0, 0);
    v10->_snapshotMap = apr_hash_make(v10->_pool);
  }

  return v10;
}

@end