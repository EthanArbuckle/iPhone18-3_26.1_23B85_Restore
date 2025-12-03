@interface CaptureMTL4CommandBuffer
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTL4CommandBuffer)initWithBaseObject:(id)object captureDevice:(id)device funcRef:(GTTraceFuncRef)ref;
- (GTTraceEncoder)_beginCommandBufferWithAllocatorPreamble:(SEL)preamble;
- (NSString)description;
- (id)computeCommandEncoder;
- (id)machineLearningCommandEncoder;
- (id)renderCommandEncoderWithDescriptor:(id)descriptor;
- (id)renderCommandEncoderWithDescriptor:(id)descriptor options:(unint64_t)options;
- (id)sampledComputeCommandEncoder:(id *)encoder capacity:(unint64_t)capacity;
- (id)sampledRenderCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (unint64_t)accelerationStructureCommandEncodingPreamble;
- (unint64_t)streamReference;
- (void)_beginCommandBufferWithAllocatorPostamble:(GTTraceEncoder *)postamble;
- (void)beginCommandBufferWithAllocator:(id)allocator;
- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options;
- (void)dealloc;
- (void)endCommandBuffer;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)resolveCounterHeap:(id)heap withRange:(_NSRange)range intoBuffer:(MTL4BufferRange)buffer waitFence:(id)fence updateFence:(id)updateFence;
- (void)setLabel:(id)label;
- (void)touch;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
@end

@implementation CaptureMTL4CommandBuffer

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v8 = sets[i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        ResidencySetTakeSnapshotInternal(sets[i], 0);
      }
    }

    RetainArray(self->_retainedObjects, sets, count);
  }

  else
  {
  }

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
    setsCopy = sets;
    v15 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v17 = *setsCopy++;
      *v15++ = [v17 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTL4CommandBufferSPI *)baseObject useResidencySets:&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  v18 = v30;
  *(v30 + 8) = -15162;
  v19 = BYTE9(v31);
  if (BYTE9(v31) > 0x28uLL)
  {
    v21 = *(*(&v29 + 1) + 24);
    v22 = BYTE10(v31);
    ++BYTE10(v31);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v30 + 1), v22 | 0x1800000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v31));
    BYTE9(v31) += 24;
  }

  *(v18 + 13) = v19;
  traceStream = [(CaptureMTL4CommandBuffer *)self traceStream];
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
  v26 = StreamArray(&v29, (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), sets, count);
  *v20 = var0;
  *(v20 + 1) = count;
  v20[16] = v26;
  *(v20 + 17) = 0;
  *(v20 + 5) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)useResidencySet:(id)set
{
  setCopy = set;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ResidencySetTakeSnapshotInternal(setCopy, 0);
  }

  [setCopy touch];
  if (setCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:setCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [setCopy baseObject];
  [(MTL4CommandBufferSPI *)baseObject useResidencySet:baseObject];

  v9 = v21;
  *(v21 + 8) = -15163;
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
  traceStream = [(CaptureMTL4CommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [setCopy traceStream];
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

- (id)sampledRenderCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4CommandBuffer_sampledRenderCommandEncoderWithDescriptor_programInfoBuffer_capacity", "Metal 4 Profiling SPI", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapMTL4RenderPassDescriptor_(descriptorCopy, self->_retainedObjects);

  v11 = [(MTL4CommandBufferSPI *)baseObject sampledRenderCommandEncoderWithDescriptor:v10 programInfoBuffer:buffer capacity:capacity];

  return v11;
}

- (id)sampledComputeCommandEncoder:(id *)encoder capacity:(unint64_t)capacity
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4CommandBuffer_sampledComputeCommandEncoder_capacity", "Metal 4 Profiling SPI", 0, 0);
  baseObject = self->_baseObject;

  return [(MTL4CommandBufferSPI *)baseObject sampledComputeCommandEncoder:encoder capacity:capacity];
}

- (void)resolveCounterHeap:(id)heap withRange:(_NSRange)range intoBuffer:(MTL4BufferRange)buffer waitFence:(id)fence updateFence:(id)updateFence
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  length = range.length;
  location = range.location;
  fenceCopy = fence;
  updateFenceCopy = updateFence;
  heapCopy = heap;
  [fenceCopy touch];
  if (fenceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:fenceCopy];
    }
  }

  [updateFenceCopy touch];
  if (updateFenceCopy)
  {
    v16 = self->_retainedObjects;
    if (v16)
    {
      [(NSMutableSet *)v16 addObject:updateFenceCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  baseObject2 = [updateFenceCopy baseObject];
  [(MTL4CommandBufferSPI *)baseObject resolveCounterHeap:heapCopy withRange:location intoBuffer:length waitFence:var0 updateFence:var1, baseObject, baseObject2];
}

- (id)renderCommandEncoderWithDescriptor:(id)descriptor options:(unint64_t)options
{
  descriptorCopy = descriptor;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceContext = self->_traceContext;
  v33 = traceContext;
  *&v34 = 0;
  *(&v34 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v35 = v10;
  BYTE8(v35) = *(v8 + 8);
  *(&v35 + 9) = 16400;
  *(&v35 + 11) = 0;
  HIBYTE(v35) = 0;
  baseObject = self->_baseObject;
  v13 = unwrapMTL4RenderPassDescriptor_(descriptorCopy, self->_retainedObjects);
  v14 = [(MTL4CommandBufferSPI *)baseObject renderCommandEncoderWithDescriptor:v13 options:options];

  if (v14)
  {
    v15 = [[CaptureMTL4RenderCommandEncoder alloc] initWithBaseObject:v14 captureCommandBuffer:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v33, [(CaptureMTL4RenderCommandEncoder *)v15 traceStream]);
  v16 = v34;
  *(v34 + 8) = -15165;
  v17 = BYTE9(v35);
  if (BYTE9(v35) > 0x20uLL)
  {
    v19 = *(*(&v33 + 1) + 24);
    v20 = BYTE10(v35);
    ++BYTE10(v35);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v34 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v35));
    BYTE9(v35) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTL4CommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTL4RenderCommandEncoder *)v15 traceStream];
  if (traceStream2)
  {
    v24 = traceStream2->var0;
  }

  else
  {
    v24 = 0;
  }

  v25 = SaveMTL4RenderPassDescriptor(&v33, descriptorCopy);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = options;
  v18[24] = v25;
  *(v18 + 25) = 0;
  *(v18 + 7) = 0;
  traceStream = self->_traceStream;
  *(v34 + 15) |= 8u;
  PushFunc(traceStream);
  v27 = v34;
  v28 = *(v34 + 16);
  v30 = *(v34 + 32);
  v29 = *(v34 + 48);
  *v31 = *v34;
  v31[1] = v28;
  v31[2] = v30;
  v31[3] = v29;
  *v9 = v35;
  *(v9 + 8) = BYTE8(v35);
  *(v27 + 15) |= 8u;

  return v15;
}

- (id)renderCommandEncoderWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  traceContext = self->_traceContext;
  v31 = traceContext;
  *&v32 = 0;
  *(&v32 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v33 = v8;
  BYTE8(v33) = *(v6 + 8);
  *(&v33 + 9) = 16400;
  *(&v33 + 11) = 0;
  HIBYTE(v33) = 0;
  baseObject = self->_baseObject;
  v11 = unwrapMTL4RenderPassDescriptor_(descriptorCopy, self->_retainedObjects);
  v12 = [(MTL4CommandBufferSPI *)baseObject renderCommandEncoderWithDescriptor:v11];

  if (v12)
  {
    v13 = [[CaptureMTL4RenderCommandEncoder alloc] initWithBaseObject:v12 captureCommandBuffer:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v31, [(CaptureMTL4RenderCommandEncoder *)v13 traceStream]);
  v14 = v32;
  *(v32 + 8) = -15166;
  v15 = BYTE9(v33);
  if (BYTE9(v33) > 0x28uLL)
  {
    v17 = *(*(&v31 + 1) + 24);
    v18 = BYTE10(v33);
    ++BYTE10(v33);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v32 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v33));
    BYTE9(v33) += 24;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTL4CommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTL4RenderCommandEncoder *)v13 traceStream];
  if (traceStream2)
  {
    v22 = traceStream2->var0;
  }

  else
  {
    v22 = 0;
  }

  v23 = SaveMTL4RenderPassDescriptor(&v31, descriptorCopy);
  *v16 = var0;
  *(v16 + 1) = v22;
  v16[16] = v23;
  *(v16 + 17) = 0;
  *(v16 + 5) = 0;
  traceStream = self->_traceStream;
  *(v32 + 15) |= 8u;
  PushFunc(traceStream);
  v25 = v32;
  v26 = *(v32 + 16);
  v28 = *(v32 + 32);
  v27 = *(v32 + 48);
  *v29 = *v32;
  v29[1] = v26;
  v29[2] = v28;
  v29[3] = v27;
  *v7 = v33;
  *(v7 + 8) = BYTE8(v33);
  *(v25 + 15) |= 8u;

  return v13;
}

- (void)pushDebugGroup:(id)group
{
  groupCopy = group;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4CommandBufferSPI *)self->_baseObject pushDebugGroup:groupCopy];
  v6 = v19;
  *(v19 + 8) = -15167;
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
  traceStream = [(CaptureMTL4CommandBuffer *)self traceStream];
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
  [(MTL4CommandBufferSPI *)self->_baseObject popDebugGroup];
  v4 = v14;
  *(v14 + 8) = -15168;
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
  traceStream = [(CaptureMTL4CommandBuffer *)self traceStream];
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

- (id)machineLearningCommandEncoder
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v28 = v6;
  BYTE8(v28) = *(v4 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  machineLearningCommandEncoder = [(MTL4CommandBufferSPI *)self->_baseObject machineLearningCommandEncoder];
  if (machineLearningCommandEncoder)
  {
    v9 = [[CaptureMTL4MachineLearningCommandEncoder alloc] initWithBaseObject:machineLearningCommandEncoder captureCommandBuffer:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTL4MachineLearningCommandEncoder *)v9 traceStream]);
  v10 = v27;
  *(v27 + 8) = -14884;
  v11 = BYTE9(v28);
  if (BYTE9(v28) > 0x30uLL)
  {
    v13 = *(*(&v26 + 1) + 24);
    v14 = BYTE10(v28);
    ++BYTE10(v28);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v27 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v28));
    BYTE9(v28) += 16;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTL4CommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTL4MachineLearningCommandEncoder *)v9 traceStream];
  if (traceStream2)
  {
    v18 = traceStream2->var0;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  traceStream = self->_traceStream;
  *(v27 + 15) |= 8u;
  PushFunc(traceStream);
  v20 = v27;
  v21 = *(v27 + 16);
  v23 = *(v27 + 32);
  v22 = *(v27 + 48);
  *v24 = *v27;
  v24[1] = v21;
  v24[2] = v23;
  v24[3] = v22;
  *v5 = v28;
  *(v5 + 8) = BYTE8(v28);
  *(v20 + 15) |= 8u;

  return v9;
}

- (void)endCommandBuffer
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTL4CommandBufferSPI *)self->_baseObject endCommandBuffer];
  v4 = v14;
  *(v14 + 8) = -15169;
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
  traceStream = [(CaptureMTL4CommandBuffer *)self traceStream];
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

- (id)computeCommandEncoder
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v28 = v6;
  BYTE8(v28) = *(v4 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  computeCommandEncoder = [(MTL4CommandBufferSPI *)self->_baseObject computeCommandEncoder];
  if (computeCommandEncoder)
  {
    v9 = [[CaptureMTL4ComputeCommandEncoder alloc] initWithBaseObject:computeCommandEncoder captureCommandBuffer:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTL4ComputeCommandEncoder *)v9 traceStream]);
  v10 = v27;
  *(v27 + 8) = -15171;
  v11 = BYTE9(v28);
  if (BYTE9(v28) > 0x30uLL)
  {
    v13 = *(*(&v26 + 1) + 24);
    v14 = BYTE10(v28);
    ++BYTE10(v28);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v27 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v28));
    BYTE9(v28) += 16;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTL4CommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTL4ComputeCommandEncoder *)v9 traceStream];
  if (traceStream2)
  {
    v18 = traceStream2->var0;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  traceStream = self->_traceStream;
  *(v27 + 15) |= 8u;
  PushFunc(traceStream);
  v20 = v27;
  v21 = *(v27 + 16);
  v23 = *(v27 + 32);
  v22 = *(v27 + 48);
  *v24 = *v27;
  v24[1] = v21;
  v24[2] = v23;
  v24[3] = v22;
  *v5 = v28;
  *(v5 + 8) = BYTE8(v28);
  *(v20 + 15) |= 8u;

  return v9;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTL4CommandBufferSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTL4CommandBuffer;
  v3 = [(CaptureMTL4CommandBuffer *)&v7 description];
  v4 = [(MTL4CommandBufferSPI *)self->_baseObject description];
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

- (void)dealloc
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  parentStream = self->_parentStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  v4 = v16;
  *(v16 + 8) = -15170;
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
  traceStream = [(CaptureMTL4CommandBuffer *)self traceStream];
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
  GTTraceContext_closeStream(self->_traceContext, &self->_parentStream->var0);
  traceStream = self->_traceStream;
  if (traceStream)
  {
    GTTraceContext_closeStream(self->_traceContext, traceStream);
  }

  v14.receiver = self;
  v14.super_class = CaptureMTL4CommandBuffer;
  [(CaptureMTL4CommandBuffer *)&v14 dealloc];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  parentStream = self->_parentStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4CommandBufferSPI *)self->_baseObject setLabel:labelCopy];
  v6 = v19;
  *(v19 + 8) = -14907;
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
  traceStream = [(CaptureMTL4CommandBuffer *)self traceStream];
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

- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options
{
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  optionsCopy = options;
  allocatorCopy = allocator;
  [(CaptureMTL4CommandBuffer *)self _beginCommandBufferWithAllocatorPreamble:allocatorCopy, 0];
  baseObject = self->_baseObject;
  baseObject = [allocatorCopy baseObject];
  v10 = unwrapMTL4CommandBufferOptions(optionsCopy);
  [(MTL4CommandBufferSPI *)baseObject beginCommandBufferWithAllocator:baseObject options:v10];

  dword_8 = -15172;
  BYTE9(v18) = 32;
  BYTE1(dword_C) = 0;
  parentStream = self->_parentStream;
  if (parentStream)
  {
    var0 = parentStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream = [(CaptureMTL4CommandBuffer *)self traceStream];
  if (traceStream)
  {
    v14 = traceStream->var0;
  }

  else
  {
    v14 = 0;
  }

  traceStream2 = [allocatorCopy traceStream];

  if (traceStream2)
  {
    traceStream2 = *traceStream2;
  }

  v16 = SaveMTL4CommandBufferOptions(v17, optionsCopy);

  *&dword_0 = var0;
  *&dword_8 = v14;
  *&dword_10 = traceStream2;
  LOBYTE(dword_18) = v16;
  *(&dword_18 + 1) = 0;
  dword_1C = 0;
  [(CaptureMTL4CommandBuffer *)self _beginCommandBufferWithAllocatorPostamble:v17];
}

- (void)beginCommandBufferWithAllocator:(id)allocator
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  allocatorCopy = allocator;
  [(CaptureMTL4CommandBuffer *)self _beginCommandBufferWithAllocatorPreamble:allocatorCopy, 0];
  baseObject = self->_baseObject;
  baseObject = [allocatorCopy baseObject];
  [(MTL4CommandBufferSPI *)baseObject beginCommandBufferWithAllocator:baseObject];

  dword_8 = -15173;
  BYTE9(v14) = 24;
  BYTE1(dword_C) = 0;
  parentStream = self->_parentStream;
  if (parentStream)
  {
    var0 = parentStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream = [(CaptureMTL4CommandBuffer *)self traceStream];
  if (traceStream)
  {
    v10 = traceStream->var0;
  }

  else
  {
    v10 = 0;
  }

  traceStream2 = [allocatorCopy traceStream];

  if (traceStream2)
  {
    v12 = *traceStream2;
  }

  else
  {
    v12 = 0;
  }

  *&dword_0 = var0;
  *&dword_8 = v10;
  *&dword_10 = v12;
  [(CaptureMTL4CommandBuffer *)self _beginCommandBufferWithAllocatorPostamble:v13];
}

- (void)_beginCommandBufferWithAllocatorPostamble:(GTTraceEncoder *)postamble
{
  parentStream = self->_parentStream;
  *(postamble->var2 + 15) |= 8u;
  PushFunc(parentStream);
  var2 = postamble->var2;
  v6 = *var2;
  v7 = *(var2 + 1);
  v8 = *(var2 + 3);
  v9[2] = *(var2 + 2);
  v9[3] = v8;
  *v9 = v6;
  v9[1] = v7;
  var4 = postamble->var4;
  s();
  *v11 = v12;
  *(v11 + 8) = postamble->var5;
  *(postamble->var2 + 15) |= 8u;
}

- (GTTraceEncoder)_beginCommandBufferWithAllocatorPreamble:(SEL)preamble
{
  v17 = a4;
  [v17 touch];
  if (v17)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v17];
    }
  }

  traceStream = self->_traceStream;
  if (traceStream)
  {
    GTTraceContext_closeStream(self->_traceContext, traceStream);
  }

  v8 = GTTraceContext_openStream(self->_traceContext, 0, 0);
  var0 = v8->var0;
  v8->var1 = v8->var0;
  v8->var2 = var0;
  self->_traceStream = v8;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, retstr);
  v10 = self->_traceStream;
  if (v10)
  {
    v11 = v10->var0;
  }

  else
  {
    v11 = 0;
  }

  var3 = retstr->var3;
  traceStream = [(CaptureMTLDevice *)self->_captureDevice traceStream];
  if (traceStream)
  {
    v14 = traceStream->var0;
  }

  else
  {
    v14 = 0;
  }

  v15 = self->_traceStream;
  if (v15)
  {
    v15 = v15->var0;
  }

  *&v18 = 0x400000008;
  *(&v18 + 1) = v11;
  v19 = var3;
  v20 = 0;
  v21 = 0;
  v22 = v14;
  v23 = 0;
  v24 = 0;
  v25 = v15;
  v26 = 0;
  v27 = 0;
  GTCaptureBoundaryTracker_handleTrigger(&v18);

  return result;
}

- (unint64_t)accelerationStructureCommandEncodingPreamble
{
  if (!self->_accelerationStructureDescriptorProcessEvent)
  {
    device = [(MTL4CommandBufferSPI *)self->_baseObject device];
    v4 = DEVICEOBJECT(device);

    newSharedEvent = [v4 newSharedEvent];
    accelerationStructureDescriptorProcessEvent = self->_accelerationStructureDescriptorProcessEvent;
    self->_accelerationStructureDescriptorProcessEvent = newSharedEvent;

    self->_accelerationStructureDescriptorCopyEventValue = 1;
  }

  result = self->_accelerationStructureDescriptorCopyEventValue;
  self->_accelerationStructureDescriptorCopyEventValue = result + 2;
  return result;
}

- (CaptureMTL4CommandBuffer)initWithBaseObject:(id)object captureDevice:(id)device funcRef:(GTTraceFuncRef)ref
{
  objectCopy = object;
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = CaptureMTL4CommandBuffer;
  v10 = [(CaptureMTL4CommandBuffer *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_baseObject, object);
    objc_storeStrong(&v11->_captureDevice, device);
    traceContext = [deviceCopy traceContext];
    v11->_traceContext = traceContext;
    v11->_traceStream = 0;
    v13 = DEVICEOBJECT(objectCopy);
    v11->_parentStream = GTTraceContext_openStream(traceContext, v13, v11);
  }

  return v11;
}

@end