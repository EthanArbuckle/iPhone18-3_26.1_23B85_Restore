@interface CaptureMTLCommandBuffer
- (BOOL)commitAndWaitUntilSubmitted;
- (BOOL)commitAndWaitUntilSubmittedWithDeadline:(unint64_t)a3;
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLCommandBuffer)initWithBaseObject:(id)a3 captureCommandQueue:(id)a4 funcRef:(GTTraceFuncRef)a5;
- (NSString)description;
- (id)accelerationStructureCommandEncoder;
- (id)accelerationStructureCommandEncoderWithDescriptor:(id)a3;
- (id)blitCommandEncoder;
- (id)blitCommandEncoderWithDescriptor:(id)a3;
- (id)computeCommandEncoder;
- (id)computeCommandEncoderWithDescriptor:(id)a3;
- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3;
- (id)debugCommandEncoder;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)parallelRenderCommandEncoderWithDescriptor:(id)a3;
- (id)renderCommandEncoderWithDescriptor:(id)a3;
- (id)resourceStateCommandEncoder;
- (id)resourceStateCommandEncoderWithDescriptor:(id)a3;
- (id)sampledComputeCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledComputeCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4;
- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (unint64_t)accelerationStructureCommandEncoderPreamble;
- (unint64_t)streamReference;
- (void)__waitUntilCompletedAsync:(id)a3;
- (void)__waitUntilScheduledAsync:(id)a3;
- (void)_encodeDownloadPoint;
- (void)_preCommitWithIndex:(unint64_t)a3;
- (void)addCompletedHandler:(id)a3;
- (void)addPurgedHeap:(id)a3;
- (void)addPurgedResource:(id)a3;
- (void)addRequestsToDownloadQueue:(id)a3 withIndex:(unint64_t)a4;
- (void)addScheduledHandler:(id)a3;
- (void)commit;
- (void)commitAndHold;
- (void)commitWithDeadline:(unint64_t)a3;
- (void)configWithCommandBufferDescriptor:(id)a3;
- (void)dealloc;
- (void)dropResourceGroups:(const void *)a3 count:(unint64_t)a4;
- (void)encodeCacheHintFinalize:(unint64_t)a3 resourceGroups:(const void *)a4 count:(unint64_t)a5;
- (void)encodeCacheHintTag:(unint64_t)a3 resourceGroups:(const void *)a4 count:(unint64_t)a5;
- (void)encodeConditionalAbortEvent:(id)a3;
- (void)encodeDashboardFinalizeForResourceGroup:(id)a3 dashboard:(unint64_t)a4 value:(unint64_t)a5 forIndex:(unint64_t)a6;
- (void)encodeDashboardFinalizeForResourceGroup:(id)a3 dashboard:(unint64_t)a4 values:(const unint64_t *)a5 indices:(const unint64_t *)a6 count:(unint64_t)a7;
- (void)encodeDashboardTagForResourceGroup:(id)a3;
- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4;
- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4 agentMask:(unint64_t)a5;
- (void)encodeSignalEventScheduled:(id)a3 value:(unint64_t)a4;
- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4;
- (void)enqueue;
- (void)popDebugGroup;
- (void)presentDrawable:(id)a3;
- (void)presentDrawable:(id)a3 afterMinimumDuration:(double)a4;
- (void)presentDrawable:(id)a3 atTime:(double)a4;
- (void)presentDrawable:(id)a3 options:(id)a4;
- (void)pushDebugGroup:(id)a3;
- (void)setLabel:(id)a3;
- (void)setPrivateData:(id)a3;
- (void)setPrivateDataOffset:(unint64_t)a3;
- (void)setPrivateLoggingBuffer:(id)a3;
- (void)setResourceGroups:(const void *)a3 count:(unint64_t)a4;
- (void)touch;
- (void)trackPresent:(id)a3;
- (void)unionRetainSet:(id)a3;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)waitUntilCompleted;
- (void)waitUntilScheduled;
@end

@implementation CaptureMTLCommandBuffer

- (void)waitUntilScheduled
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLCommandBufferSPI *)self->_baseObject waitUntilScheduled];
  v4 = v14;
  *(v14 + 8) = -16357;
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
  v9 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v8 = a3[i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        ResidencySetTakeSnapshotInternal(a3[i], 0);
      }
    }

    RetainArray(self->_retainedObjects, a3, a4);
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

  [(MTLCommandBufferSPI *)baseObject useResidencySets:&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) count:a4];
  v18 = v30;
  *(v30 + 8) = -15253;
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
  v23 = [(CaptureMTLCommandBuffer *)self traceStream];
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
  v20[16] = v26;
  *(v20 + 17) = 0;
  *(v20 + 5) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)useResidencySet:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ResidencySetTakeSnapshotInternal(v4, 0);
  }

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
  [(MTLCommandBufferSPI *)baseObject useResidencySet:v8];

  v9 = v21;
  *(v21 + 8) = -15254;
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
  v14 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)setResourceGroups:(const void *)a3 count:(unint64_t)a4
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

  [(MTLCommandBufferSPI *)baseObject setResourceGroups:&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) count:a4];
  v16 = v28;
  *(v28 + 8) = -15898;
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
  v21 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  baseObject = self->_baseObject;
  v9 = unwrapMTLRenderPassDescriptor_(a3, self->_retainedObjects);
  v10 = [(MTLCommandBufferSPI *)baseObject sampledRenderCommandEncoderWithDescriptor:v9 programInfoBuffer:a4 capacity:a5];

  if (v10)
  {
    v11 = [[CaptureMTLRenderCommandEncoder alloc] initWithBaseObject:v10 captureCommandBuffer:self];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)sampledComputeCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4
{
  v5 = [(MTLCommandBufferSPI *)self->_baseObject sampledComputeCommandEncoderWithProgramInfoBuffer:a3 capacity:a4];
  if (v5)
  {
    v6 = [[CaptureMTLComputeCommandEncoder alloc] initWithBaseObject:v5 captureCommandBuffer:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v6 = [(MTLCommandBufferSPI *)self->_baseObject sampledComputeCommandEncoderWithDispatchType:a3 programInfoBuffer:a4 capacity:a5];
  if (v6)
  {
    v7 = [[CaptureMTLComputeCommandEncoder alloc] initWithBaseObject:v6 captureCommandBuffer:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sampledComputeCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v8 = a3;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  traceContext = self->_traceContext;
  v37 = traceContext;
  *&v38 = 0;
  *(&v38 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v39 = v12;
  BYTE8(v39) = *(v10 + 8);
  *(&v39 + 9) = 16400;
  *(&v39 + 11) = 0;
  HIBYTE(v39) = 0;
  baseObject = self->_baseObject;
  v15 = unwrapMTLComputePassDescriptor_(v8, self->_retainedObjects);
  v36 = a4;
  v16 = [(MTLCommandBufferSPI *)baseObject sampledComputeCommandEncoderWithDescriptor:v15 programInfoBuffer:a4 capacity:a5];

  if (v16)
  {
    v17 = [[CaptureMTLComputeCommandEncoder alloc] initWithBaseObject:v16 captureCommandBuffer:self];
  }

  else
  {
    v17 = 0;
  }

  GTTraceEncoder_setStream(&v37, [(CaptureMTLComputeCommandEncoder *)v17 traceStream]);
  v18 = v38;
  *(v38 + 8) = -15584;
  v19 = BYTE9(v39);
  if (BYTE9(v39) > 0x20uLL)
  {
    v21 = *(*(&v37 + 1) + 24);
    v22 = BYTE10(v39);
    ++BYTE10(v39);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v38 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v39));
    BYTE9(v39) += 32;
  }

  *(v18 + 13) = v19;
  v23 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v23)
  {
    var0 = v23->var0;
  }

  else
  {
    var0 = 0;
  }

  v25 = [(CaptureMTLComputeCommandEncoder *)v17 traceStream];
  if (v25)
  {
    v26 = v25->var0;
  }

  else
  {
    v26 = 0;
  }

  v27 = SaveMTLComputePassDescriptor(&v37, v8);
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v28 = GTTraceEncoder_storeBlob(&v37, v36, a5);
  }

  else
  {
    v28 = 0;
  }

  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = a5;
  v20[24] = v27;
  v20[25] = v28;
  *(v20 + 26) = 0;
  *(v20 + 15) = 0;
  traceStream = self->_traceStream;
  *(v38 + 15) |= 8u;
  PushFunc(traceStream);
  v30 = v38;
  v31 = *(v38 + 16);
  v33 = *(v38 + 32);
  v32 = *(v38 + 48);
  *v34 = *v38;
  v34[1] = v31;
  v34[2] = v33;
  v34[3] = v32;
  *v11 = v39;
  *(v11 + 8) = BYTE8(v39);
  *(v30 + 15) |= 8u;

  return v17;
}

- (id)resourceStateCommandEncoderWithDescriptor:(id)a3
{
  v4 = a3;
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
  v11 = unwrapMTLResourceStatePassDescriptor_(v4, self->_retainedObjects);
  v12 = [(MTLCommandBufferSPI *)baseObject resourceStateCommandEncoderWithDescriptor:v11];

  if (v12)
  {
    v13 = [[CaptureMTLResourceStateCommandEncoder alloc] initWithBaseObject:v12 captureCommandBuffer:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v31, [(CaptureMTLResourceStateCommandEncoder *)v13 traceStream]);
  v14 = v32;
  *(v32 + 8) = -15585;
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
  v19 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v21 = [(CaptureMTLResourceStateCommandEncoder *)v13 traceStream];
  if (v21)
  {
    v22 = v21->var0;
  }

  else
  {
    v22 = 0;
  }

  v23 = SaveMTLResourceStatePassDescriptor(&v31, v4);
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

- (id)resourceStateCommandEncoder
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
  v8 = [(MTLCommandBufferSPI *)self->_baseObject resourceStateCommandEncoder];
  if (v8)
  {
    v9 = [[CaptureMTLResourceStateCommandEncoder alloc] initWithBaseObject:v8 captureCommandBuffer:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLResourceStateCommandEncoder *)v9 traceStream]);
  v10 = v27;
  *(v27 + 8) = -15870;
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
  v15 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  v17 = [(CaptureMTLResourceStateCommandEncoder *)v9 traceStream];
  if (v17)
  {
    v18 = v17->var0;
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

- (id)renderCommandEncoderWithDescriptor:(id)a3
{
  v4 = a3;
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
  v11 = unwrapMTLRenderPassDescriptor_(v4, self->_retainedObjects);
  v12 = [(MTLCommandBufferSPI *)baseObject renderCommandEncoderWithDescriptor:v11];

  if (v12)
  {
    v13 = [[CaptureMTLRenderCommandEncoder alloc] initWithBaseObject:v12 captureCommandBuffer:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v31, [(CaptureMTLRenderCommandEncoder *)v13 traceStream]);
  v14 = v32;
  *(v32 + 8) = -16353;
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
  v19 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v21 = [(CaptureMTLRenderCommandEncoder *)v13 traceStream];
  if (v21)
  {
    v22 = v21->var0;
  }

  else
  {
    v22 = 0;
  }

  v23 = SaveMTLRenderPassDescriptor(&v31, v4);
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

- (void)pushDebugGroup:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLCommandBufferSPI *)self->_baseObject pushDebugGroup:v4];
  v6 = v19;
  *(v19 + 8) = -16065;
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
  v11 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)presentDrawable:(id)a3 options:(id)a4
{
  v11 = a3;
  v6 = a4;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLCommandBuffer_presentDrawable_options", "Present SPI", 0, 0);
  [v11 touch];
  v7 = v11;
  if (v11)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v11];
      v7 = v11;
    }
  }

  baseObject = self->_baseObject;
  v10 = [v7 baseObject];
  [(MTLCommandBufferSPI *)baseObject presentDrawable:v10 options:v6];
}

- (void)popDebugGroup
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLCommandBufferSPI *)self->_baseObject popDebugGroup];
  v4 = v14;
  *(v14 + 8) = -16064;
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
  v9 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (id)parallelRenderCommandEncoderWithDescriptor:(id)a3
{
  v4 = a3;
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
  v11 = unwrapMTLRenderPassDescriptor_(v4, self->_retainedObjects);
  v12 = [(MTLCommandBufferSPI *)baseObject parallelRenderCommandEncoderWithDescriptor:v11];

  if (v12)
  {
    v13 = [[CaptureMTLParallelRenderCommandEncoder alloc] initWithBaseObject:v12 captureCommandBuffer:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v31, [(CaptureMTLParallelRenderCommandEncoder *)v13 traceStream]);
  v14 = v32;
  *(v32 + 8) = -16351;
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
  v19 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v21 = [(CaptureMTLParallelRenderCommandEncoder *)v13 traceStream];
  if (v21)
  {
    v22 = v21->var0;
  }

  else
  {
    v22 = 0;
  }

  v23 = SaveMTLRenderPassDescriptor(&v31, v4);
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

- (void)encodeSignalEventScheduled:(id)a3 value:(unint64_t)a4
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
  [(MTLCommandBufferSPI *)baseObject encodeSignalEventScheduled:v10 value:a4];

  v11 = v23;
  *(v23 + 8) = -15217;
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
  v16 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4
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
  [(MTLCommandBufferSPI *)baseObject encodeSignalEvent:v10 value:a4];

  v11 = v23;
  *(v23 + 8) = -15990;
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
  v16 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)encodeDashboardTagForResourceGroup:(id)a3
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
  [(MTLCommandBufferSPI *)baseObject encodeDashboardTagForResourceGroup:v8];

  v9 = v21;
  *(v21 + 8) = -15500;
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
  v14 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)encodeDashboardFinalizeForResourceGroup:(id)a3 dashboard:(unint64_t)a4 values:(const unint64_t *)a5 indices:(const unint64_t *)a6 count:(unint64_t)a7
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

  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v30);
  baseObject = self->_baseObject;
  v16 = [v12 baseObject];
  [(MTLCommandBufferSPI *)baseObject encodeDashboardFinalizeForResourceGroup:v16 dashboard:a4 values:a5 indices:a6 count:a7];

  v17 = v31;
  *(v31 + 8) = -15410;
  v18 = BYTE9(v32);
  if (BYTE9(v32) > 0x18uLL)
  {
    v20 = *(*(&v30 + 1) + 24);
    v21 = BYTE10(v32);
    ++BYTE10(v32);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v31 + 1), v21 | 0x2800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v32));
    BYTE9(v32) += 40;
  }

  *(v17 + 13) = v18;
  v22 = [(CaptureMTLCommandBuffer *)self traceStream];
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

  v26 = GTTraceEncoder_storeBytes(&v30, a5, 8 * a7);
  v27 = GTTraceEncoder_storeBytes(&v30, a6, 8 * a7);
  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = a4;
  *(v19 + 3) = a7;
  v19[32] = v26;
  v19[33] = v27;
  *(v19 + 34) = 0;
  *(v19 + 19) = 0;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v32);
  *(v31 + 15) |= 8u;
}

- (void)encodeDashboardFinalizeForResourceGroup:(id)a3 dashboard:(unint64_t)a4 value:(unint64_t)a5 forIndex:(unint64_t)a6
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
  [(MTLCommandBufferSPI *)baseObject encodeDashboardFinalizeForResourceGroup:v14 dashboard:a4 value:a5 forIndex:a6];

  v15 = v27;
  *(v27 + 8) = -15501;
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
  v20 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)encodeConditionalAbortEvent:(id)a3
{
  v8 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLCommandBuffer_encodeConditionalAbortEvent", "Conditional abort", 0, 0);
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
  [(MTLCommandBufferSPI *)baseObject encodeConditionalAbortEvent:v7];
}

- (void)encodeCacheHintTag:(unint64_t)a3 resourceGroups:(const void *)a4 count:(unint64_t)a5
{
  v6 = a4;
  RetainArray(self->_retainedObjects, a4, a5);
  baseObject = self->_baseObject;
  __chkstk_darwin(v10, 8 * a5);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v12, v11);
  if (a5)
  {
    v13 = v12;
    v14 = a5;
    do
    {
      v15 = *v6++;
      *v13 = [v15 baseObject];
      v13 += 8;
      --v14;
    }

    while (v14);
  }

  [(MTLCommandBufferSPI *)baseObject encodeCacheHintTag:a3 resourceGroups:v12 count:a5];
}

- (void)encodeCacheHintFinalize:(unint64_t)a3 resourceGroups:(const void *)a4 count:(unint64_t)a5
{
  v6 = a4;
  RetainArray(self->_retainedObjects, a4, a5);
  baseObject = self->_baseObject;
  __chkstk_darwin(v10, 8 * a5);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v12, v11);
  if (a5)
  {
    v13 = v12;
    v14 = a5;
    do
    {
      v15 = *v6++;
      *v13 = [v15 baseObject];
      v13 += 8;
      --v14;
    }

    while (v14);
  }

  [(MTLCommandBufferSPI *)baseObject encodeCacheHintFinalize:a3 resourceGroups:v12 count:a5];
}

- (void)dropResourceGroups:(const void *)a3 count:(unint64_t)a4
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

  [(MTLCommandBufferSPI *)baseObject dropResourceGroups:&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) count:a4];
  v16 = v28;
  *(v28 + 8) = -15897;
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
  v21 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)configWithCommandBufferDescriptor:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLCommandBuffer_configWithCommandBufferDescriptor", "Shader logging", 0, 0);
  baseObject = self->_baseObject;
  v6 = unwrapMTLCommandBufferDescriptor(v4);

  [(MTLCommandBufferSPI *)baseObject configWithCommandBufferDescriptor:v6];
}

- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v30 = v8;
  BYTE8(v30) = *(v6 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  v10 = [(MTLCommandBufferSPI *)self->_baseObject computeCommandEncoderWithDispatchType:?];
  if (v10)
  {
    v11 = [[CaptureMTLComputeCommandEncoder alloc] initWithBaseObject:v10 captureCommandBuffer:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTLComputeCommandEncoder *)v11 traceStream]);
  v12 = v29;
  *(v29 + 8) = -16014;
  v13 = BYTE9(v30);
  if (BYTE9(v30) > 0x28uLL)
  {
    v15 = *(*(&v28 + 1) + 24);
    v16 = BYTE10(v30);
    ++BYTE10(v30);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v29 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v30));
    BYTE9(v30) += 24;
  }

  *(v12 + 13) = v13;
  v17 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v17)
  {
    var0 = v17->var0;
  }

  else
  {
    var0 = 0;
  }

  v19 = [(CaptureMTLComputeCommandEncoder *)v11 traceStream];
  if (v19)
  {
    v20 = v19->var0;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = a3;
  traceStream = self->_traceStream;
  *(v29 + 15) |= 8u;
  PushFunc(traceStream);
  v22 = v29;
  v23 = *(v29 + 16);
  v25 = *(v29 + 32);
  v24 = *(v29 + 48);
  *v26 = *v29;
  v26[1] = v23;
  v26[2] = v25;
  v26[3] = v24;
  *v7 = v30;
  *(v7 + 8) = BYTE8(v30);
  *(v22 + 15) |= 8u;

  return v11;
}

- (id)computeCommandEncoderWithDescriptor:(id)a3
{
  v4 = a3;
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
  v11 = unwrapMTLComputePassDescriptor_(v4, self->_retainedObjects);
  v12 = [(MTLCommandBufferSPI *)baseObject computeCommandEncoderWithDescriptor:v11];

  if (v12)
  {
    v13 = [[CaptureMTLComputeCommandEncoder alloc] initWithBaseObject:v12 captureCommandBuffer:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v31, [(CaptureMTLComputeCommandEncoder *)v13 traceStream]);
  v14 = v32;
  *(v32 + 8) = -15586;
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
  v19 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v21 = [(CaptureMTLComputeCommandEncoder *)v13 traceStream];
  if (v21)
  {
    v22 = v21->var0;
  }

  else
  {
    v22 = 0;
  }

  v23 = SaveMTLComputePassDescriptor(&v31, v4);
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
  v8 = [(MTLCommandBufferSPI *)self->_baseObject computeCommandEncoder];
  if (v8)
  {
    v9 = [[CaptureMTLComputeCommandEncoder alloc] initWithBaseObject:v8 captureCommandBuffer:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLComputeCommandEncoder *)v9 traceStream]);
  v10 = v27;
  *(v27 + 8) = -16352;
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
  v15 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  v17 = [(CaptureMTLComputeCommandEncoder *)v9 traceStream];
  if (v17)
  {
    v18 = v17->var0;
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

- (id)blitCommandEncoderWithDescriptor:(id)a3
{
  v4 = a3;
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
  v11 = unwrapMTLBlitPassDescriptor_(v4, self->_retainedObjects);
  v12 = [(MTLCommandBufferSPI *)baseObject blitCommandEncoderWithDescriptor:v11];

  if (v12)
  {
    v13 = [[CaptureMTLBlitCommandEncoder alloc] initWithBaseObject:v12 captureCommandBuffer:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v31, [(CaptureMTLBlitCommandEncoder *)v13 traceStream]);
  v14 = v32;
  *(v32 + 8) = -15587;
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
  v19 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v21 = [(CaptureMTLBlitCommandEncoder *)v13 traceStream];
  if (v21)
  {
    v22 = v21->var0;
  }

  else
  {
    v22 = 0;
  }

  v23 = SaveMTLBlitPassDescriptor(&v31, v4);
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

- (id)blitCommandEncoder
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
  v8 = [(MTLCommandBufferSPI *)self->_baseObject blitCommandEncoder];
  if (v8)
  {
    v9 = [[CaptureMTLBlitCommandEncoder alloc] initWithBaseObject:v8 captureCommandBuffer:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLBlitCommandEncoder *)v9 traceStream]);
  v10 = v27;
  *(v27 + 8) = -16354;
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
  v15 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  v17 = [(CaptureMTLBlitCommandEncoder *)v9 traceStream];
  if (v17)
  {
    v18 = v17->var0;
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

- (void)addPurgedResource:(id)a3
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
  [(MTLCommandBufferSPI *)baseObject addPurgedResource:v8];

  v9 = v21;
  *(v21 + 8) = -15967;
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
  v14 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)addPurgedHeap:(id)a3
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
  [(MTLCommandBufferSPI *)baseObject addPurgedHeap:v8];

  v9 = v21;
  *(v21 + 8) = -15966;
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
  v14 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)__waitUntilScheduledAsync:(id)a3
{
  v4 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __53__CaptureMTLCommandBuffer___waitUntilScheduledAsync___block_invoke;
  v8[3] = &unk_2F1AC8;
  v9 = self;
  v10 = v9;
  v11 = v4;
  v5 = v4;
  v6 = v9;
  v7 = objc_retainBlock(v8);
  [v6[2] __waitUntilScheduledAsync:v7];
}

void __53__CaptureMTLCommandBuffer___waitUntilScheduledAsync___block_invoke(uint64_t a1, void *a2)
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = a2;
  GTTraceContext_pushEncoderWithStream(v4, &v16);
  v7 = v17;
  *(v17 + 8) = -14799;
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
  v12 = [*(a1 + 40) traceStream];
  if (v12)
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  *v9 = v13;
  *(v9 + 1) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
  (*(*(a1 + 48) + 16))();
}

- (void)__waitUntilCompletedAsync:(id)a3
{
  v4 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __53__CaptureMTLCommandBuffer___waitUntilCompletedAsync___block_invoke;
  v8[3] = &unk_2F1AC8;
  v9 = self;
  v10 = v9;
  v11 = v4;
  v5 = v4;
  v6 = v9;
  v7 = objc_retainBlock(v8);
  [v6[2] __waitUntilCompletedAsync:v7];
}

void __53__CaptureMTLCommandBuffer___waitUntilCompletedAsync___block_invoke(uint64_t a1, void *a2)
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = a2;
  GTTraceContext_pushEncoderWithStream(v4, &v16);
  v7 = v17;
  *(v17 + 8) = -14800;
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
  v12 = [*(a1 + 40) traceStream];
  if (v12)
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  *v9 = v13;
  *(v9 + 1) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
  (*(*(a1 + 48) + 16))();
}

- (void)setPrivateLoggingBuffer:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLCommandBuffer_setPrivateLoggingBuffer", "Command Buffer logging", 0, 0);
  [(MTLCommandBufferSPI *)self->_baseObject setPrivateLoggingBuffer:v4];
}

- (void)setPrivateDataOffset:(unint64_t)a3
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLCommandBuffer_setPrivateDataOffset", "Command Buffer Private Data", 0, 0);
  baseObject = self->_baseObject;

  [(MTLCommandBufferSPI *)baseObject setPrivateDataOffset:a3];
}

- (void)setPrivateData:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLCommandBuffer_setPrivateData", "Command Buffer Private Data", 0, 0);
  [(MTLCommandBufferSPI *)self->_baseObject setPrivateData:v4];
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLCommandBufferSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -16365;
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
  v11 = [(CaptureMTLCommandBuffer *)self traceStream];
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
  v5 = [(MTLCommandBufferSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLCommandBuffer;
  v3 = [(CaptureMTLCommandBuffer *)&v7 description];
  v4 = [(MTLCommandBufferSPI *)self->_baseObject description];
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

- (id)forwardingTargetForSelector:(SEL)a3
{
  v3 = self;
  if ((dword_31F7C8 & 0x2000000) != 0 || (v5.receiver = self, v5.super_class = CaptureMTLCommandBuffer, ![(CaptureMTLCommandBuffer *)&v5 respondsToSelector:a3]))
  {
    v3 = v3->_baseObject;
  }

  return v3;
}

- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4 agentMask:(unint64_t)a5
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

  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v12 = [v8 baseObject];
  if (*(boundaryTrackerInstance + 20))
  {
    v13 = a5 | 2;
  }

  else
  {
    v13 = a5;
  }

  [(MTLCommandBufferSPI *)baseObject encodeSignalEvent:v12 value:a4 agentMask:v13];

  v14 = v26;
  *(v26 + 8) = -15285;
  v15 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v17 = *(*(&v25 + 1) + 24);
    v18 = BYTE10(v27);
    ++BYTE10(v27);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v26 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v14 + 13) = v15;
  v19 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v21 = [v8 traceStream];
  if (v21)
  {
    v22 = *v21;
  }

  else
  {
    v22 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (id)accelerationStructureCommandEncoderWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(CaptureMTLCommandBuffer *)self accelerationStructureCommandEncoderPreamble];
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  traceContext = self->_traceContext;
  v32 = traceContext;
  *&v33 = 0;
  *(&v33 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v8 = v7;
  v9 = *v7;
  *v7 = v10;
  *&v34 = v9;
  BYTE8(v34) = *(v7 + 8);
  *(&v34 + 9) = 16400;
  *(&v34 + 11) = 0;
  HIBYTE(v34) = 0;
  baseObject = self->_baseObject;
  v12 = unwrapMTLAccelerationStructurePassDescriptor_(v4, self->_retainedObjects);
  v13 = [(MTLCommandBufferSPI *)baseObject accelerationStructureCommandEncoderWithDescriptor:v12];

  if (v13)
  {
    v14 = [[CaptureMTLAccelerationStructureCommandEncoder alloc] initWithBaseObject:v13 captureCommandBuffer:self copyEventValue:v5];
  }

  else
  {
    v14 = 0;
  }

  GTTraceEncoder_setStream(&v32, [(CaptureMTLAccelerationStructureCommandEncoder *)v14 traceStream]);
  v15 = v33;
  *(v33 + 8) = -15364;
  v16 = BYTE9(v34);
  if (BYTE9(v34) > 0x28uLL)
  {
    v18 = *(*(&v32 + 1) + 24);
    v19 = BYTE10(v34);
    ++BYTE10(v34);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v33 + 1), v19 | 0x1800000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v34));
    BYTE9(v34) += 24;
  }

  *(v15 + 13) = v16;
  v20 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [(CaptureMTLAccelerationStructureCommandEncoder *)v14 traceStream];
  if (v22)
  {
    v23 = v22->var0;
  }

  else
  {
    v23 = 0;
  }

  v24 = SaveMTLAccelerationStructurePassDescriptor(&v32, v4);
  *v17 = var0;
  *(v17 + 1) = v23;
  v17[16] = v24;
  *(v17 + 17) = 0;
  *(v17 + 5) = 0;
  traceStream = self->_traceStream;
  *(v33 + 15) |= 8u;
  PushFunc(traceStream);
  v26 = v33;
  v27 = *(v33 + 16);
  v29 = *(v33 + 32);
  v28 = *(v33 + 48);
  *v30 = *v33;
  v30[1] = v27;
  v30[2] = v29;
  v30[3] = v28;
  *v8 = v34;
  *(v8 + 8) = BYTE8(v34);
  *(v26 + 15) |= 8u;

  return v14;
}

- (id)accelerationStructureCommandEncoder
{
  v3 = [(CaptureMTLCommandBuffer *)self accelerationStructureCommandEncoderPreamble];
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceContext = self->_traceContext;
  v27 = traceContext;
  *&v28 = 0;
  *(&v28 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v6 = v5;
  v7 = *v5;
  *v5 = v8;
  *&v29 = v7;
  BYTE8(v29) = *(v5 + 8);
  *(&v29 + 9) = 16400;
  *(&v29 + 11) = 0;
  HIBYTE(v29) = 0;
  v9 = [(MTLCommandBufferSPI *)self->_baseObject accelerationStructureCommandEncoder];
  if (v9)
  {
    v10 = [[CaptureMTLAccelerationStructureCommandEncoder alloc] initWithBaseObject:v9 captureCommandBuffer:self copyEventValue:v3];
  }

  else
  {
    v10 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLAccelerationStructureCommandEncoder *)v10 traceStream]);
  v11 = v28;
  *(v28 + 8) = -15673;
  v12 = BYTE9(v29);
  if (BYTE9(v29) > 0x30uLL)
  {
    v14 = *(*(&v27 + 1) + 24);
    v15 = BYTE10(v29);
    ++BYTE10(v29);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v28 + 1), v15 | 0x1000000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v29));
    BYTE9(v29) += 16;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [(CaptureMTLAccelerationStructureCommandEncoder *)v10 traceStream];
  if (v18)
  {
    v19 = v18->var0;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  traceStream = self->_traceStream;
  *(v28 + 15) |= 8u;
  PushFunc(traceStream);
  v21 = v28;
  v22 = *(v28 + 16);
  v24 = *(v28 + 32);
  v23 = *(v28 + 48);
  *v25 = *v28;
  v25[1] = v22;
  v25[2] = v24;
  v25[3] = v23;
  *v6 = v29;
  *(v6 + 8) = BYTE8(v29);
  *(v21 + 15) |= 8u;

  return v10;
}

- (unint64_t)accelerationStructureCommandEncoderPreamble
{
  if (!self->_accelerationStructureDescriptorProcessEvent)
  {
    v3 = [(MTLCommandBufferSPI *)self->_baseObject device];
    v4 = DEVICEOBJECT(v3);

    v5 = [v4 newSharedEvent];
    accelerationStructureDescriptorProcessEvent = self->_accelerationStructureDescriptorProcessEvent;
    self->_accelerationStructureDescriptorProcessEvent = v5;

    self->_accelerationStructureDescriptorCopyEventValue = 0;
  }

  result = self->_accelerationStructureDescriptorCopyEventValue;
  self->_accelerationStructureDescriptorCopyEventValue = result + 1;
  return result;
}

- (void)waitUntilCompleted
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v4 = v14;
  *(v14 + 8) = -16355;
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
  v9 = [(CaptureMTLCommandBuffer *)self traceStream];
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
  [(MTLCommandBufferSPI *)self->_baseObject waitUntilCompleted];
}

- (id)debugCommandEncoder
{
  v3 = [(MTLCommandBufferSPI *)self->_baseObject debugCommandEncoder];
  if (v3)
  {
    v4 = [[CaptureMTLDebugCommandEncoder alloc] initWithBaseObject:v3 captureCommandBuffer:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addCompletedHandler:(id)a3
{
  v4 = a3;
  completedDispatchArray = self->_completedDispatchArray;
  if (!completedDispatchArray)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_completedDispatchArray;
    self->_completedDispatchArray = v6;

    completedDispatchArray = self->_completedDispatchArray;
  }

  v8 = objc_retainBlock(v4);
  [(NSMutableArray *)completedDispatchArray addObject:v8];

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  v10 = v20;
  *(v20 + 8) = -16356;
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
  v15 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v4;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)presentDrawable:(id)a3 afterMinimumDuration:(double)a4
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
  [(CaptureMTLCommandBuffer *)self trackPresent:v6];
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLCommandBufferSPI *)baseObject presentDrawable:v10 afterMinimumDuration:a4];

  v11 = v23;
  *(v23 + 8) = -16133;
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
  v16 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)presentDrawable:(id)a3 atTime:(double)a4
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
  [(CaptureMTLCommandBuffer *)self trackPresent:v6];
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLCommandBufferSPI *)baseObject presentDrawable:v10 atTime:a4];

  v11 = v23;
  *(v23 + 8) = -16358;
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
  v16 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)presentDrawable:(id)a3
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
  [(CaptureMTLCommandBuffer *)self trackPresent:v4];
  baseObject = self->_baseObject;
  v8 = [v4 baseObject];
  [(MTLCommandBufferSPI *)baseObject presentDrawable:v8];

  v9 = v21;
  *(v21 + 8) = -16359;
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
  v14 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)trackPresent:(id)a3
{
  v4 = a3;
  self->_layerRef = 0;
  v8 = v4;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___CAMetalDrawable])
  {
    v5 = [v8 layer];
    v6 = [v5 traceStream];
    if (v6)
    {
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }

    self->_layerRef = v7;
    GTTelemetry_trackPresent(v8);
  }

  self->_presentDrawableUsed = 1;
}

- (void)addScheduledHandler:(id)a3
{
  v4 = a3;
  scheduledDispatchArray = self->_scheduledDispatchArray;
  if (!scheduledDispatchArray)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_scheduledDispatchArray;
    self->_scheduledDispatchArray = v6;

    scheduledDispatchArray = self->_scheduledDispatchArray;
  }

  v8 = objc_retainBlock(v4);
  [(NSMutableArray *)scheduledDispatchArray addObject:v8];

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  v10 = v20;
  *(v20 + 8) = -16360;
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
  v15 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v4;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (BOOL)commitAndWaitUntilSubmittedWithDeadline:(unint64_t)a3
{
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    CommandQueueCaptureResidencySetSnapshots(self->_captureCommandQueue);
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  v6 = v21;
  *(v21 + 8) = -15316;
  v7 = BYTE9(v22);
  if (BYTE9(v22) > 0x28uLL)
  {
    v9 = *(*(&v20 + 1) + 24);
    v10 = BYTE10(v22);
    ++BYTE10(v22);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v21 + 1), v10 | 0x1800000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v22));
    BYTE9(v22) += 24;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLCommandBuffer *)self traceStream];
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
  *(v8 + 2) = 1;
  v13 = v21;
  *(v21 + 15) |= 8u;
  [(CaptureMTLCommandBuffer *)self _preCommitWithIndex:*v13];
  v14 = [(MTLCommandBufferSPI *)self->_baseObject commitAndWaitUntilSubmittedWithDeadline:a3];
  v15 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v15)
  {
    v16 = v15->var0;
  }

  else
  {
    v16 = 0;
  }

  *v8 = v16;
  *(v8 + 1) = a3;
  *(v8 + 4) = v14;
  *(v8 + 5) = 0;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
  return v14;
}

- (BOOL)commitAndWaitUntilSubmitted
{
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    CommandQueueCaptureResidencySetSnapshots(self->_captureCommandQueue);
  }

  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  v4 = v19;
  *(v19 + 8) = -15908;
  v5 = BYTE9(v20);
  if (BYTE9(v20) > 0x30uLL)
  {
    v7 = *(*(&v18 + 1) + 24);
    v8 = BYTE10(v20);
    ++BYTE10(v20);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v19 + 1), v8 | 0x1000000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v20));
    BYTE9(v20) += 16;
  }

  *(v4 + 13) = v5;
  v9 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  *(v6 + 1) = 1;
  v11 = v19;
  *(v19 + 15) |= 8u;
  [(CaptureMTLCommandBuffer *)self _preCommitWithIndex:*v11];
  v12 = [(MTLCommandBufferSPI *)self->_baseObject commitAndWaitUntilSubmitted];
  v13 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v13)
  {
    v14 = v13->var0;
  }

  else
  {
    v14 = 0;
  }

  *v6 = v14;
  *(v6 + 2) = v12;
  *(v6 + 3) = 0;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
  return v12;
}

- (void)commitWithDeadline:(unint64_t)a3
{
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    CommandQueueCaptureResidencySetSnapshots(self->_captureCommandQueue);
  }

  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  v6 = v17;
  *(v17 + 8) = -15318;
  v7 = BYTE9(v18);
  if (BYTE9(v18) > 0x30uLL)
  {
    v9 = *(*(&v16 + 1) + 24);
    v10 = BYTE10(v18);
    ++BYTE10(v18);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v17 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v18));
    BYTE9(v18) += 16;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTLCommandBuffer *)self traceStream];
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
  v13 = v17;
  *(v17 + 15) |= 8u;
  [(CaptureMTLCommandBuffer *)self _preCommitWithIndex:*v13];
  [(MTLCommandBufferSPI *)self->_baseObject commitWithDeadline:a3];
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)commitAndHold
{
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    CommandQueueCaptureResidencySetSnapshots(self->_captureCommandQueue);
  }

  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -16202;
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
  v9 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  v11 = v15;
  *(v15 + 15) |= 8u;
  [(CaptureMTLCommandBuffer *)self _preCommitWithIndex:*v11];
  [(MTLCommandBufferSPI *)self->_baseObject commitAndHold];
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)commit
{
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    CommandQueueCaptureResidencySetSnapshots(self->_captureCommandQueue);
  }

  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -16361;
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
  v9 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  v11 = v15;
  *(v15 + 15) |= 8u;
  [(CaptureMTLCommandBuffer *)self _preCommitWithIndex:*v11];
  [(MTLCommandBufferSPI *)self->_baseObject commit];
  if ((dword_31F7C8 & 0x10000) != 0)
  {
    [(MTLCommandBufferSPI *)self->_baseObject waitUntilCompleted];
  }

  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)enqueue
{
  [(CaptureMTLCommandQueue *)self->_captureCommandQueue enqueueCommandBuffer:self];
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLCommandBufferSPI *)self->_baseObject enqueue];
  v4 = v14;
  *(v14 + 8) = -16362;
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
  v9 = [(CaptureMTLCommandBuffer *)self traceStream];
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

- (void)addRequestsToDownloadQueue:(id)a3 withIndex:(unint64_t)a4
{
  v77 = a3;
  if (self->_isCapturing)
  {
    if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
    {
      v73 = a4;
      newpool = 0;
      apr_pool_create_ex(&newpool, 0, 0, 0);
      v6 = newpool;
      v7 = apr_array_make(newpool, 0, 456);
      v8 = GTTraceContext_copyStreamMap(self->_traceContext, v6);
      v9 = apr_hash_make(v6);
      *(v8 + 3) = 0;
      *(v8 + 4) = 0;
      *(v8 + 2) = v8;
      *(v8 + 10) = 0;
      v10 = apr_hash_next((v8 + 16));
      if (v10)
      {
        v11 = v10;
        do
        {
          GTTraceMemPool_buildMemoryMap(*(*(*(v11 + 1) + 32) + 24), v9);
          v11 = apr_hash_next(v11);
        }

        while (v11);
      }

      v82 = [(CaptureMTLCommandQueue *)self->_captureCommandQueue device];
      v74 = _sharedCaptureManager;
      v94[0] = v8;
      v94[1] = v9;
      v94[2] = v6;
      v12 = &unk_31F000;
      v95 = (dword_31F7C8 & 0x400000) != 0;
      memset(v96, 0, sizeof(v96));
      v13 = GTResourceTrackerMakeWithDescriptor(v94);
      v14 = [(NSMutableArray *)self->_downloadPoints objectAtIndexedSubscript:0];
      traceStream = self->_traceStream;
      if (traceStream)
      {
        var0 = traceStream->var0;
      }

      else
      {
        var0 = 0;
      }

      v25 = traceStream->var4.var0;
      v79 = v14;
      if (v25)
      {
        v26 = 0;
        while (1)
        {
          v27 = atomic_load(v25 + 1);
          v28 = v26 + (v27 >> 6) - 1;
          if (v28 > 0)
          {
            break;
          }

          v25 = *(v25 + 5);
          v26 = v28;
          if (!v25)
          {
            v26 = v28;
            goto LABEL_24;
          }
        }

        v28 = 0;
LABEL_24:
        v29 = v26 | (v28 << 32);
      }

      else
      {
        v29 = 0;
      }

      v75 = 0;
      v80 = self;
LABEL_26:
      v78 = v25 + 64;
      v76 = v25;
      while (1)
      {
        if (!v25 || (v30 = &v78[64 * (HIDWORD(v29) - v29)], (v30[15] & 8) == 0))
        {
          v64 = [(CaptureMTLCommandBuffer *)self commandQueue];
          v65 = [v64 traceStream];
          ResourceTracker_processUsedResidencySets(v13, v73, v65, newpool);

          v66 = ResourceTracker_harvestResources(v13, newpool);
          DownloadRequests = GTResourceHarvesterGetDownloadRequests([(NSMutableArray *)v82 harvester], var0, v66);
          v68 = GTResourceDownloaderProcessRequest(newpool, DownloadRequests);
          GTMTLCaptureState_appendDownloadRequests(v74, v68);
          v69 = v79;
          [v79 setDownloadQueue:v77];
          v70 = [(NSMutableArray *)v82 downloader];
          [v70 downloadRequest:v68 atPoint:v79];

          if ((v12[1992] & 1) != 0 && self->_presentDrawableUsed)
          {
            v71 = [(NSMutableArray *)self->_downloadPoints objectAtIndexedSubscript:v75 + 1];

            GTMTLCaptureState_appendDownloadRequests(v74, v7);
            [v71 setDownloadQueue:v77];
            v72 = [(NSMutableArray *)v82 downloader];
            [v72 downloadRequest:v7 atPoint:v71];

            v69 = v71;
          }

          apr_pool_destroy(newpool);

          downloadPoints = v82;
          goto LABEL_62;
        }

        v83 = HIDWORD(v29);
        v84 = v29;
        v31 = *(v30 + 2) != -15991 || (*(v12 + 498) & 0x400) == 0;
        v88 = &v78[64 * (HIDWORD(v29) - v29)];
        if (v31)
        {
          v85 = v13;
          if (*(v12 + 498))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v32 = ResourceTracker_harvestResources(v13, newpool);
          v33 = GTResourceHarvesterGetDownloadRequests([(NSMutableArray *)v82 harvester], var0, v32);
          v34 = GTResourceDownloaderProcessRequest(newpool, v33);
          GTMTLCaptureState_appendDownloadRequests(v74, v34);
          [v79 setDownloadQueue:v77];
          v35 = [(NSMutableArray *)v82 downloader];
          [v35 downloadRequest:v34 atPoint:v79];

          v85 = GTResourceTrackerMakeWithDescriptor(v94);
          v36 = [(NSMutableArray *)self->_downloadPoints objectAtIndexedSubscript:++v75];

          v79 = v36;
          if (*(v12 + 498))
          {
LABEL_37:
            if (GTFenum_isPresent(*(v88 + 2)))
            {
              layerRef = self->_layerRef;
              v38 = GTTraceFunc_argumentBytesWithMap(v88, v88[13], v9);
              v39 = *(GTTraceContext_getStream(self->_traceContext, *(v38 + 1)) + 32);
              if (v39)
              {
                v40 = 0;
                while (1)
                {
                  v41 = atomic_load((v39 + 4));
                  v42 = v40 + (v41 >> 6) - 1;
                  if (v42 > 0)
                  {
                    break;
                  }

                  v39 = *(v39 + 40);
                  v40 = v42;
                  if (!v39)
                  {
                    v40 = v42;
                    goto LABEL_45;
                  }
                }

                v42 = 0;
LABEL_45:
                v43 = v40 | (v42 << 32);
              }

              else
              {
                v43 = 0;
              }

LABEL_46:
              v89 = v39 + 64;
              while (v39)
              {
                v44 = (v89 + ((HIDWORD(v43) - v43) << 6));
                if ((*(v44 + 15) & 8) == 0)
                {
                  break;
                }

                if (*(v44 + 2) == -7167)
                {
                  v45 = GTTraceFunc_argumentBytesWithMap((v89 + ((HIDWORD(v43) - v43) << 6)), *(v44 + 13), v9);
                  Stream = GTTraceContext_getStream(self->_traceContext, *(v45 + 1));
                  if (Stream)
                  {
                    v47 = Stream;
                    v87 = newpool;
                    v48 = apr_array_make(newpool, 1, 56);
                    v86 = *v47;
                    v49 = v9;
                    v50 = *v88;
                    LODWORD(v47) = GTFenum_getConstructorType(*(v44 + 2));
                    v51 = apr_array_push(v48);
                    *v51 = vextq_s8(v86, v86, 8uLL);
                    *(v51 + 1) = vdupq_n_s64(v50);
                    *(v51 + 4) = v50;
                    v9 = v49;
                    *(v51 + 10) = v47;
                    *(v51 + 11) = 0;
                    v51[48] = 1;
                    *(v51 + 49) = 0;
                    *(v51 + 13) = 0;
                    v52 = GTResourceHarvesterGetDownloadRequests([(NSMutableArray *)v82 harvester], var0, v48);
                    self = v80;
                    v53 = GTResourceDownloaderProcessRequest(v87, v52);
                    apr_array_cat(v7, v53);
                    if (v7->nelts >= 1)
                    {
                      v54 = 0;
                      v55 = 0;
                      do
                      {
                        v56 = *v44;
                        v57 = &v7->elts[v54];
                        v57[47] |= 4u;
                        *(v57 + 3) = layerRef;
                        *(v57 + 4) = v56;
                        ++v55;
                        v54 += 456;
                      }

                      while (v55 < v7->nelts);
                    }
                  }
                }

                v58 = atomic_load((v39 + 4));
                v59 = v43 + (v58 >> 6);
                v60 = (HIDWORD(v43) + 1);
                v43 = (v60 << 32) | v43;
                if (v60 == v59 - 1)
                {
                  v43 = (v60 << 32) | v60;
                  v39 = *(v39 + 40);
                  goto LABEL_46;
                }
              }
            }
          }
        }

        v13 = v85;
        GTResourceTrackerProcessFunction();
        v25 = v76;
        v61 = atomic_load(v76 + 1);
        v62 = v84 + (v61 >> 6);
        v63 = (v83 + 1);
        v29 = (v63 << 32) | v84;
        v12 = &unk_31F000;
        if (v63 == v62 - 1)
        {
          v29 = (v63 << 32) | v63;
          v25 = *(v76 + 5);
          goto LABEL_26;
        }
      }
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v16 = self->_downloadPoints;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v90 objects:v98 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v91;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v91 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v90 + 1) + 8 * i);
          v22 = [v21 downloadValue];
          v23 = [v21 downloadEvent];
          [v23 setSignaledValue:v22];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v90 objects:v98 count:16];
      }

      while (v18);
    }

    downloadPoints = self->_downloadPoints;
    self->_downloadPoints = 0;
LABEL_62:
  }
}

- (void)_preCommitWithIndex:(unint64_t)a3
{
  v5 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v5)
  {
    var0 = v5->var0;
  }

  else
  {
    var0 = 0;
  }

  v7 = [(CaptureMTLCommandQueue *)self->_captureCommandQueue device];
  v8 = [v7 traceStream];
  if (v8)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(CaptureMTLCommandQueue *)self->_captureCommandQueue traceStream];
  if (v10)
  {
    v11 = v10->var0;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v12)
  {
    v13 = v12->var0;
  }

  else
  {
    v13 = 0;
  }

  isCapturing = self->_isCapturing;

  *&size_ptr = 0x500000008;
  *(&size_ptr + 1) = var0;
  v79 = a3;
  v80 = 0;
  v81 = 0;
  v82 = v9;
  v83 = 0;
  v84 = v11;
  v85 = v13;
  v86 = isCapturing;
  memset(v87, 0, sizeof(v87));
  GTCaptureBoundaryTracker_handleTrigger(&size_ptr);
  if (self->_presentDrawableUsed)
  {
    v15 = [(CaptureMTLCommandBuffer *)self traceStream];
    if (v15)
    {
      v16 = v15->var0;
    }

    else
    {
      v16 = 0;
    }

    v17 = [(CaptureMTLCommandQueue *)self->_captureCommandQueue device];
    v18 = [v17 traceStream];
    if (v18)
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    layerRef = self->_layerRef;
    v21 = [(CaptureMTLCommandQueue *)self->_captureCommandQueue traceStream];
    if (v21)
    {
      v22 = v21->var0;
    }

    else
    {
      v22 = 0;
    }

    v23 = [(CaptureMTLCommandBuffer *)self traceStream];
    if (v23)
    {
      v24 = v23->var0;
    }

    else
    {
      v24 = 0;
    }

    v25 = self->_isCapturing;

    *&size_ptr = 0x300000003;
    *(&size_ptr + 1) = v16;
    v79 = a3;
    v80 = 0;
    v81 = 0;
    v82 = v19;
    v83 = layerRef;
    v84 = v22;
    v85 = v24;
    v86 = v25;
    memset(v87, 0, sizeof(v87));
    GTCaptureBoundaryTracker_handleTrigger(&size_ptr);
  }

  scheduledDispatchArray = self->_scheduledDispatchArray;
  if (scheduledDispatchArray)
  {
    v27 = scheduledDispatchArray;
    v28 = self->_scheduledDispatchArray;
    self->_scheduledDispatchArray = 0;

    traceContext = self->_traceContext;
    v30 = self;
    v31 = self->_isCapturing;
    baseObject = v30->_baseObject;
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = __47__CaptureMTLCommandBuffer__preCommitWithIndex___block_invoke;
    v72[3] = &unk_2F1A78;
    v73 = v27;
    v74 = v30;
    v75 = a3;
    v76 = traceContext;
    v77 = v31;
    v33 = v30;
    v34 = v27;
    [(MTLCommandBufferSPI *)baseObject addScheduledHandler:v72];
  }

  if ((dword_31F7C8 & 0x1000000) != 0)
  {
    v35 = self;
    v36 = v35->_baseObject;
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = __47__CaptureMTLCommandBuffer__preCommitWithIndex___block_invoke_2;
    v70[3] = &unk_2F2578;
    v71 = v35;
    v37 = v35;
    [(MTLCommandBufferSPI *)v36 addCompletedHandler:v70];
  }

  if (self->_completedDispatchArray || self->_retainedObjects || self->_downloadPoints)
  {
    v38 = self->_downloadPoints;
    v39 = self->_completedDispatchArray;
    v40 = self->_retainedObjects;
    completedDispatchArray = self->_completedDispatchArray;
    self->_completedDispatchArray = 0;

    retainedObjects = self->_retainedObjects;
    self->_retainedObjects = 0;

    v43 = self;
    v44 = v43->_baseObject;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = __47__CaptureMTLCommandBuffer__preCommitWithIndex___block_invoke_3;
    v64[3] = &unk_2F1AA0;
    v68 = v40;
    v69 = a3;
    v65 = v38;
    v66 = v39;
    v67 = v43;
    v45 = v40;
    v46 = v43;
    v47 = v39;
    v48 = v38;
    [(MTLCommandBufferSPI *)v44 addCompletedHandler:v64];
  }

  if (self->_isCapturing && (*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v49 = [(CaptureMTLCommandBuffer *)self device];
    v50 = [v49 dispatchGroup];
    dispatch_group_enter(v50);

    atomic_fetch_add((_sharedCaptureManager + 216), 1uLL);
    v51 = [v49 baseObject];
    v52 = DEVICEOBJECT(v51);

    if (objc_opt_respondsToSelector())
    {
      v53 = [v52 indirectArgumentBufferDecodingData];
      v54 = v53;
      if (v53 != &_dispatch_data_empty && v53)
      {
        *&size_ptr = 0;
        buffer_ptr = 0;
        map = dispatch_data_create_map(v53, &buffer_ptr, &size_ptr);
        v56 = buffer_ptr;
        if (buffer_ptr && size_ptr << 32)
        {
          v57 = size_ptr;
          Bytes = GTTraceMemPool_allocateBytes(self->_traceStream->var3, a3, (size_ptr << 32) | 0xFFLL);
          memcpy(Bytes + 16, v56, v57);
        }
      }
    }

    v59 = DEVICEOBJECT(self->_baseObject);
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = __47__CaptureMTLCommandBuffer__preCommitWithIndex___block_invoke_4;
    v61[3] = &unk_2F2578;
    v60 = v49;
    v62 = v60;
    [v59 addCompletedHandler:v61];

    if ((dword_31F7C8 & 1) != 0 && self->_presentDrawableUsed)
    {
      [(CaptureMTLCommandBuffer *)self _encodeDownloadPoint];
    }
  }

  GTTelemetry_trackCommit(self);
  [(CaptureMTLCommandQueue *)self->_captureCommandQueue commitCommandBuffer:self withIndex:a3];
}

void __47__CaptureMTLCommandBuffer__preCommitWithIndex___block_invoke(uint64_t a1)
{
  atomic_fetch_add((boundaryTrackerInstance + 92), 1u);
  v2 = *(a1 + 48);
  s();
  v4 = v3;
  v5 = *v3;
  *v3 = v6;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(a1 + 40);
        (*(*(*(&v27 + 1) + 8 * v11) + 16))();
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  *v4 = v5;
  v13 = [*(a1 + 40) traceStream];
  if (v13)
  {
    v14 = *v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = atomic_load((*(a1 + 56) + 80));
  v16 = [*(a1 + 40) traceStream];
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 64);
  *&v19 = 0x600000008;
  *(&v19 + 1) = v14;
  v20 = v15;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v24 = v17;
  v25 = v18;
  memset(v26, 0, sizeof(v26));
  GTCaptureBoundaryTracker_handleTrigger(&v19);
  atomic_fetch_add((boundaryTrackerInstance + 92), 0xFFFFFFFF);
}

uint64_t __47__CaptureMTLCommandBuffer__preCommitWithIndex___block_invoke_2(uint64_t result)
{
  if (g_completedCommandBufferCallback)
  {
    return g_completedCommandBufferCallback(*(result + 32));
  }

  return result;
}

id __47__CaptureMTLCommandBuffer__preCommitWithIndex___block_invoke_3(uint64_t a1)
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [v7 downloadValue];
        v9 = [v7 downloadEvent];
        [v9 setSignaledValue:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  atomic_fetch_add((boundaryTrackerInstance + 92), 1u);
  v10 = *(a1 + 64);
  s();
  v12 = v11;
  v13 = *v11;
  *v11 = v14;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = *(a1 + 40);
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(a1 + 48);
        (*(*(*(&v22 + 1) + 8 * j) + 16))(*(*(&v22 + 1) + 8 * j));
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  *v12 = v13;
  atomic_fetch_add((boundaryTrackerInstance + 92), 0xFFFFFFFF);
  return [*(a1 + 56) count];
}

void __47__CaptureMTLCommandBuffer__preCommitWithIndex___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) dispatchGroup];
  dispatch_group_leave(v1);
}

- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4
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

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  GTMTLCaptureEventBuffer_add(self->_baseObject, *(&v34 + 1));
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLCommandBufferSPI *)baseObject encodeWaitForEvent:v10 value:a4];

  if (self->_isCapturing)
  {
    if ((dword_31F7C8 & 0x400) != 0)
    {
      [(CaptureMTLCommandBuffer *)self _encodeDownloadPoint];
    }

    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = *(&v34 + 1);
    v11 = [(CaptureMTLCommandQueue *)self->_captureCommandQueue device];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v6;
      if (IsEventActuallyShared([v12 traceStream]))
      {
        v13 = [v11 dispatchGroup];
        dispatch_group_enter(v13);

        v14 = [v12 baseObject];
        v15 = [v11 captureEventListener];
        v16 = v31;
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = __52__CaptureMTLCommandBuffer_encodeWaitForEvent_value___block_invoke;
        v31[3] = &unk_2F1A50;
        v31[7] = v32;
        v31[4] = self;
        v31[5] = v12;
        v31[6] = v11;
        [v14 notifyListener:v15 atValue:a4 block:v31];
LABEL_13:
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_15:

        _Block_object_dispose(v32, 8);
        goto LABEL_16;
      }

      v17 = v6;
      if (IsEventActuallyShared([v17 traceStream]))
      {
        v18 = [v11 dispatchGroup];
        dispatch_group_enter(v18);

        v14 = [v17 baseObject];
        v15 = [v11 captureEventListener];
        v16 = v30;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = __52__CaptureMTLCommandBuffer_encodeWaitForEvent_value___block_invoke_2;
        v30[3] = &unk_2F1A50;
        v30[7] = v32;
        v30[4] = self;
        v30[5] = v17;
        v30[6] = v11;
        [v14 notifyListener:v15 atValue:a4 block:v30];
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

LABEL_16:
  v19 = v34;
  *(v34 + 8) = -15991;
  v20 = BYTE9(v35);
  if (BYTE9(v35) > 0x28uLL)
  {
    v22 = *(*(&v33 + 1) + 24);
    v23 = BYTE10(v35);
    ++BYTE10(v35);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v34 + 1), v23 | 0x1800000000) + 16;
    v20 = v23;
  }

  else
  {
    v21 = (v19 + BYTE9(v35));
    BYTE9(v35) += 24;
  }

  *(v19 + 13) = v20;
  v24 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v24)
  {
    var0 = v24->var0;
  }

  else
  {
    var0 = 0;
  }

  v26 = [v6 traceStream];
  if (v26)
  {
    v27 = *v26;
  }

  else
  {
    v27 = 0;
  }

  *v21 = var0;
  *(v21 + 1) = v27;
  *(v21 + 2) = a4;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

void __52__CaptureMTLCommandBuffer_encodeWaitForEvent_value___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 56) + 8) + 24);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *(v6 + 8) |= 0x40u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v10 = *(*(a1 + 32) + 24);
  [*(a1 + 40) traceStream];
  GTTraceContext_pushEncoderWithStream(v10, &v19);
  v11 = v20;
  *(v20 + 8) = -15975;
  v12 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v14 = *(*(&v19 + 1) + 24);
    v15 = BYTE10(v21);
    ++BYTE10(v21);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v20 + 1), v15 | 0x1000000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v11 + 13) = v12;
  v16 = [*(a1 + 40) traceStream];
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  *v13 = v17;
  *(v13 + 1) = a3;
  *v7 = v8;
  *(v20 + 15) |= 8u;
  v18 = [*(a1 + 48) dispatchGroup];
  dispatch_group_leave(v18);
}

void __52__CaptureMTLCommandBuffer_encodeWaitForEvent_value___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 56) + 8) + 24);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *(v6 + 8) |= 0x40u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v10 = *(*(a1 + 32) + 24);
  [*(a1 + 40) traceStream];
  GTTraceContext_pushEncoderWithStream(v10, &v19);
  v11 = v20;
  *(v20 + 8) = -15490;
  v12 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v14 = *(*(&v19 + 1) + 24);
    v15 = BYTE10(v21);
    ++BYTE10(v21);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v20 + 1), v15 | 0x1000000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v11 + 13) = v12;
  v16 = [*(a1 + 40) traceStream];
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  *v13 = v17;
  *(v13 + 1) = a3;
  *v7 = v8;
  *(v20 + 15) |= 8u;
  v18 = [*(a1 + 48) dispatchGroup];
  dispatch_group_leave(v18);
}

- (void)unionRetainSet:(id)a3
{
  if (self->_retainedObjects != a3)
  {
    v5 = a3;
    pthread_mutex_lock(&self->_retainMutex);
    [(NSMutableSet *)self->_retainedObjects unionSet:v5];

    pthread_mutex_unlock(&self->_retainMutex);
  }
}

- (void)dealloc
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = self->_downloadPoints;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        v9 = [v8 downloadValue];
        v10 = [v8 downloadEvent];
        [v10 setSignaledValue:v9];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v5);
  }

  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  s();
  v13 = v12;
  v14 = *v12;
  *v12 = v15;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = self->_completedDispatchArray;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        (*(*(*(&v31 + 1) + 8 * j) + 16))();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v18);
  }

  *v13 = v14;
  v21 = v36;
  *(v36 + 8) = -16363;
  v22 = BYTE9(v37);
  if (BYTE9(v37) > 0x38uLL)
  {
    v24 = *(*(&v35 + 1) + 24);
    v25 = BYTE10(v37);
    ++BYTE10(v37);
    v23 = GTTraceMemPool_allocateBytes(v24, *(&v36 + 1), v25 | 0x800000000) + 16;
    v22 = v25;
  }

  else
  {
    v23 = (v21 + BYTE9(v37));
    BYTE9(v37) += 8;
  }

  *(v21 + 13) = v22;
  v26 = [(CaptureMTLCommandBuffer *)self traceStream];
  if (v26)
  {
    var0 = v26->var0;
  }

  else
  {
    var0 = 0;
  }

  *v23 = var0;
  v28 = v36;
  *v13 = v37;
  *(v13 + 8) = BYTE8(v37);
  *(v28 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  pthread_mutex_destroy(&self->_retainMutex);
  pool = self->_pool;
  if (pool)
  {
    apr_pool_destroy(pool);
  }

  v30.receiver = self;
  v30.super_class = CaptureMTLCommandBuffer;
  [(CaptureMTLCommandBuffer *)&v30 dealloc];
}

- (CaptureMTLCommandBuffer)initWithBaseObject:(id)a3 captureCommandQueue:(id)a4 funcRef:(GTTraceFuncRef)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v10 = a3;
  v11 = a4;
  v57.receiver = self;
  v57.super_class = CaptureMTLCommandBuffer;
  v12 = [(CaptureMTLCommandBuffer *)&v57 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_captureCommandQueue, a4);
    objc_storeStrong(&v13->_baseObject, a3);
    v14 = [v11 traceContext];
    v13->_traceContext = v14;
    v15 = DEVICEOBJECT(v10);
    v13->_traceStream = GTTraceContext_openStream(v14, v15, 0);

    traceStream = v13->_traceStream;
    if (traceStream)
    {
      v17 = traceStream->var0;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v11 device];
    v19 = [v18 traceStream];
    if (v19)
    {
      v20 = *v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v11 traceStream];
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    *&v47 = 0x400000008;
    *(&v47 + 1) = v17;
    v48 = var1;
    v49 = 0;
    v50 = 0;
    v51 = v20;
    v52 = 0;
    v53 = v22;
    v54 = var0;
    v55 = 0;
    v56 = 0;
    GTCaptureBoundaryTracker_handleTrigger(&v47);
    v23 = (*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2;
    v13->_isCapturing = v23;
    if (v23)
    {
      v24 = *_sharedCaptureManager;
      if (*_sharedCaptureManager)
      {
        v25 = [v11 device];
        v26 = [v25 traceStream];
        if (v26)
        {
          v27 = *v26;
        }

        else
        {
          v27 = 0;
        }

        v13->_isCapturing = v24 == v27;
      }

      else
      {
        v13->_isCapturing = 1;
      }

      v28 = objc_opt_new();
      scheduledDispatchArray = v13->_scheduledDispatchArray;
      v13->_scheduledDispatchArray = v28;
    }

    pthread_mutex_init(&v13->_retainMutex, 0);
    if (([v10 retainedReferences] & 1) != 0 || v13->_isCapturing)
    {
      v30 = objc_alloc_init(NSMutableSet);
      retainedObjects = v13->_retainedObjects;
      v13->_retainedObjects = v30;

      if (v13->_isCapturing)
      {
        apr_pool_create_ex(&v13->_pool, 0, 0, 0);
        v32 = DEVICEOBJECT(v10);

        v33 = [[NSMutableArray alloc] initWithCapacity:1];
        downloadPoints = v13->_downloadPoints;
        v13->_downloadPoints = v33;

        v35 = [v32 device];
        v36 = [v35 newSharedEvent];
        downloadEvent = v13->_downloadEvent;
        v13->_downloadEvent = v36;

        v38 = DEVICEOBJECT(v13->_downloadEvent);
        v39 = DEVICEOBJECT(v13->_baseObject);
        v42 = _NSConcreteStackBlock;
        v43 = 3221225472;
        v44 = __74__CaptureMTLCommandBuffer_initWithBaseObject_captureCommandQueue_funcRef___block_invoke;
        v45 = &unk_2F2578;
        v46 = v38;
        v40 = v38;
        [v39 addCompletedHandler:&v42];

        [(CaptureMTLCommandBuffer *)v13 _encodeDownloadPoint:v42];
        v10 = v32;
      }
    }

    v13->_presentDrawableUsed = 0;
  }

  return v13;
}

- (void)_encodeDownloadPoint
{
  v9 = objc_alloc_init(GTDownloadPoint);
  v3 = 2 * [(NSMutableArray *)self->_downloadPoints count];
  [(GTDownloadPoint *)v9 setWaitValue:v3 | 1];
  [(GTDownloadPoint *)v9 setWaitEvent:self->_downloadEvent];
  [(GTDownloadPoint *)v9 setDownloadValue:v3 + 2];
  [(GTDownloadPoint *)v9 setDownloadEvent:self->_downloadEvent];
  [(NSMutableArray *)self->_downloadPoints addObject:v9];
  v4 = DEVICEOBJECT(self->_baseObject);
  v5 = [(GTDownloadPoint *)v9 waitEvent];
  [v4 encodeSignalEvent:v5 value:{-[GTDownloadPoint waitValue](v9, "waitValue")}];

  v6 = objc_opt_respondsToSelector();
  v7 = [(GTDownloadPoint *)v9 downloadEvent];
  v8 = [(GTDownloadPoint *)v9 downloadValue];
  if (v6)
  {
    [v4 encodeWaitForEvent:v7 value:v8 timeout:GT_ENV];
  }

  else
  {
    [v4 encodeWaitForEvent:v7 value:v8];
  }
}

@end