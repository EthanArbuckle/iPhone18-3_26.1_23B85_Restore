@interface CaptureMTLCommandQueue
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)setBackgroundGPUPriority:(unint64_t)a3;
- (BOOL)setGPUPriority:(unint64_t)a3;
- (CaptureMTLCommandQueue)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (MTLCommandQueue)accelerationStructureDescriptorDownloadQueue;
- (MTLCommandQueue)downloadQueue;
- (NSArray)enqueuedCommandBuffers;
- (NSString)description;
- (id)commandBuffer;
- (id)commandBufferWithDescriptor:(id)a3;
- (id)commandBufferWithUnretainedReferences;
- (unint64_t)streamReference;
- (void)addPerfSampleHandler:(id)a3;
- (void)addResidencySet:(id)a3;
- (void)addResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)commitCommandBuffer:(id)a3 withIndex:(unint64_t)a4;
- (void)dealloc;
- (void)enqueueCommandBuffer:(id)a3;
- (void)finish;
- (void)insertDebugCaptureBoundary;
- (void)removeResidencySet:(id)a3;
- (void)removeResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)setCompletionQueue:(id)a3;
- (void)setLabel:(id)a3;
- (void)setSubmissionQueue:(id)a3;
- (void)touch;
@end

@implementation CaptureMTLCommandQueue

- (void)setSubmissionQueue:(id)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v6 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v16);
  [(MTLCommandQueueSPI *)self->_baseObject setSubmissionQueue:v6, v16];
  v7 = v17;
  *(v17 + 8) = -15804;
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
  v12 = [(CaptureMTLCommandQueue *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = v6;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (BOOL)setGPUPriority:(unint64_t)a3
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLCommandQueueSPI *)self->_baseObject setGPUPriority:a3];
  v7 = v18;
  *(v18 + 8) = -15806;
  v8 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v10 = *(*(&v17 + 1) + 24);
    v11 = BYTE10(v19);
    ++BYTE10(v19);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v18 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v7 + 13) = v8;
  v12 = [(CaptureMTLCommandQueue *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = a3;
  *(v9 + 4) = v6;
  *(v9 + 5) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
  return v6;
}

- (void)setCompletionQueue:(id)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v6 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v16);
  [(MTLCommandQueueSPI *)self->_baseObject setCompletionQueue:v6, v16];
  v7 = v17;
  *(v17 + 8) = -15807;
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
  v12 = [(CaptureMTLCommandQueue *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = v6;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (BOOL)setBackgroundGPUPriority:(unint64_t)a3
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLCommandQueueSPI *)self->_baseObject setBackgroundGPUPriority:a3];
  v7 = v18;
  *(v18 + 8) = -15809;
  v8 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v10 = *(*(&v17 + 1) + 24);
    v11 = BYTE10(v19);
    ++BYTE10(v19);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v18 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v7 + 13) = v8;
  v12 = [(CaptureMTLCommandQueue *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = a3;
  *(v9 + 4) = v6;
  *(v9 + 5) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
  return v6;
}

- (void)finish
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLCommandQueueSPI *)self->_baseObject finish];
  v4 = v14;
  *(v14 + 8) = -16340;
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
  v9 = [(CaptureMTLCommandQueue *)self traceStream];
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

- (id)commandBufferWithUnretainedReferences
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  add = atomic_fetch_add(&traceContext->var3, 1uLL);
  v24 = traceContext;
  s();
  v6 = v5;
  v7 = *v5;
  *v5 = add;
  *&v26 = v7;
  BYTE8(v26) = *(v5 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  v8 = [(MTLCommandQueueSPI *)self->_baseObject commandBufferWithUnretainedReferences];
  if (v8)
  {
    v9 = [[CaptureMTLCommandBuffer alloc] initWithBaseObject:v8 captureCommandQueue:self funcRef:0, add];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLCommandBuffer *)v9 traceStream]);
  CreateCommandBufferEpilogue(v8, *(&v25 + 1));
  v10 = v25;
  *(v25 + 8) = -16342;
  v11 = BYTE9(v26);
  if (BYTE9(v26) > 0x30uLL)
  {
    v13 = *(*(&v24 + 1) + 24);
    v14 = BYTE10(v26);
    ++BYTE10(v26);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v25 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v26));
    BYTE9(v26) += 16;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTLCommandQueue *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  v17 = [(CaptureMTLCommandBuffer *)v9 traceStream];
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
  __src = [(CaptureMTLCommandBuffer *)v9 isCapturing];
  v19 = GTTraceEncoder_storeBytes(&v24, &__src, 1uLL);
  v20 = v25;
  v21 = v26;
  *(v25 + 14) = v19;
  *v6 = v21;
  *(v6 + 8) = BYTE8(v26);
  *(v20 + 15) |= 8u;

  return v9;
}

- (id)commandBufferWithDescriptor:(id)a3
{
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceContext = self->_traceContext;
  add = atomic_fetch_add(&traceContext->var3, 1uLL);
  v29 = traceContext;
  *&v30 = 0;
  *(&v30 + 1) = add;
  s();
  v8 = v7;
  v9 = *v7;
  *v7 = add;
  *&v31 = v9;
  BYTE8(v31) = *(v7 + 8);
  *(&v31 + 9) = 16400;
  *(&v31 + 11) = 0;
  HIBYTE(v31) = 0;
  baseObject = self->_baseObject;
  v11 = unwrapMTLCommandBufferDescriptor(v4);
  v12 = [(MTLCommandQueueSPI *)baseObject commandBufferWithDescriptor:v11];

  if (v12)
  {
    v13 = [[CaptureMTLCommandBuffer alloc] initWithBaseObject:v12 captureCommandQueue:self funcRef:0, add];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v29, [(CaptureMTLCommandBuffer *)v13 traceStream]);
  CreateCommandBufferEpilogue(v12, *(&v30 + 1));
  v14 = v30;
  *(v30 + 8) = -15701;
  v15 = BYTE9(v31);
  if (BYTE9(v31) > 0x28uLL)
  {
    v17 = *(*(&v29 + 1) + 24);
    v18 = BYTE10(v31);
    ++BYTE10(v31);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v30 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v31));
    BYTE9(v31) += 24;
  }

  *(v14 + 13) = v15;
  v19 = [(CaptureMTLCommandQueue *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v21 = [(CaptureMTLCommandBuffer *)v13 traceStream];
  if (v21)
  {
    v22 = v21->var0;
  }

  else
  {
    v22 = 0;
  }

  v23 = SaveMTLCommandBufferDescriptor(&v29, v4);
  *v16 = var0;
  *(v16 + 1) = v22;
  v16[16] = v23;
  *(v16 + 17) = 0;
  *(v16 + 5) = 0;
  __src = [(CaptureMTLCommandBuffer *)v13 isCapturing];
  v24 = GTTraceEncoder_storeBytes(&v29, &__src, 1uLL);
  v25 = v30;
  v26 = v31;
  *(v30 + 14) = v24;
  *v8 = v26;
  *(v8 + 8) = BYTE8(v31);
  *(v25 + 15) |= 8u;

  return v13;
}

- (id)commandBuffer
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  add = atomic_fetch_add(&traceContext->var3, 1uLL);
  v24 = traceContext;
  s();
  v6 = v5;
  v7 = *v5;
  *v5 = add;
  *&v26 = v7;
  BYTE8(v26) = *(v5 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  v8 = [(MTLCommandQueueSPI *)self->_baseObject commandBuffer];
  if (v8)
  {
    v9 = [[CaptureMTLCommandBuffer alloc] initWithBaseObject:v8 captureCommandQueue:self funcRef:0, add];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLCommandBuffer *)v9 traceStream]);
  CreateCommandBufferEpilogue(v8, *(&v25 + 1));
  v10 = v25;
  *(v25 + 8) = -16343;
  v11 = BYTE9(v26);
  if (BYTE9(v26) > 0x30uLL)
  {
    v13 = *(*(&v24 + 1) + 24);
    v14 = BYTE10(v26);
    ++BYTE10(v26);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v25 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v26));
    BYTE9(v26) += 16;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTLCommandQueue *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  v17 = [(CaptureMTLCommandBuffer *)v9 traceStream];
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
  __src = [(CaptureMTLCommandBuffer *)v9 isCapturing];
  v19 = GTTraceEncoder_storeBytes(&v24, &__src, 1uLL);
  v20 = v25;
  v21 = v26;
  *(v25 + 14) = v19;
  *v6 = v21;
  *(v6 + 8) = BYTE8(v26);
  *(v20 + 15) |= 8u;

  return v9;
}

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTLCommandQueueSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLCommandQueue;
  v3 = [(CaptureMTLCommandQueue *)&v7 description];
  v4 = [(MTLCommandQueueSPI *)self->_baseObject description];
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

- (void)removeResidencySets:(const void *)a3 count:(unint64_t)a4
{
  CommandQueueTakeSnapshot(self);
  if (a4)
  {
    v7 = 0;
    do
    {
      v8 = a3[v7];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        isKindOfClass = [(NSMutableSet *)self->_currentResidencySets removeObject:a3[v7]];
      }

      ++v7;
    }

    while (a4 != v7);
    baseObject = self->_baseObject;
    v12 = 8 * a4;
    __chkstk_darwin(isKindOfClass, v10);
    v13 = &v27 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v13, 8 * a4);
    v14 = 0;
    do
    {
      *&v13[8 * v14] = [a3[v14] baseObject];
      ++v14;
    }

    while (a4 != v14);
  }

  else
  {
    v12 = 0;
    baseObject = self->_baseObject;
    v13 = &v30;
  }

  [(MTLCommandQueueSPI *)baseObject removeResidencySets:v13 count:a4];
  if (self->_snapshotCreated)
  {
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
    v16 = v28;
    *(v28 + 8) = -15249;
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
    v21 = [(CaptureMTLCommandQueue *)self traceStream];
    if (v21)
    {
      var0 = v21->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(v21, v22);
    bzero(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    v24 = StreamArray(&v27, (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, a4);
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
}

- (void)removeResidencySet:(id)a3
{
  v4 = a3;
  CommandQueueTakeSnapshot(self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableSet *)self->_currentResidencySets removeObject:v4];
  }

  baseObject = self->_baseObject;
  v6 = [v4 baseObject];
  [(MTLCommandQueueSPI *)baseObject removeResidencySet:v6];

  if (self->_snapshotCreated)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
    v8 = v20;
    *(v20 + 8) = -15250;
    v9 = BYTE9(v21);
    if (BYTE9(v21) > 0x30uLL)
    {
      v11 = *(*(&v19 + 1) + 24);
      v12 = BYTE10(v21);
      ++BYTE10(v21);
      v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
      v9 = v12;
    }

    else
    {
      v10 = (v8 + BYTE9(v21));
      BYTE9(v21) += 16;
    }

    *(v8 + 13) = v9;
    v13 = [(CaptureMTLCommandQueue *)self traceStream];
    if (v13)
    {
      var0 = v13->var0;
    }

    else
    {
      var0 = 0;
    }

    v15 = [v4 traceStream];
    if (v15)
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    *v10 = var0;
    *(v10 + 1) = v16;
    s();
    *v17 = v18;
    *(v17 + 8) = BYTE8(v21);
    *(v20 + 15) |= 8u;
  }
}

- (void)addResidencySets:(const void *)a3 count:(unint64_t)a4
{
  CommandQueueTakeSnapshot(self);
  v7 = 0;
  if (a4)
  {
    do
    {
      AddResidencySet(self, a3[v7++]);
    }

    while (a4 != v7);
    baseObject = self->_baseObject;
    v7 = 8 * a4;
    __chkstk_darwin(v8, v9);
    v11 = &v25 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v11, 8 * a4);
    v12 = 0;
    do
    {
      *&v11[8 * v12] = [a3[v12] baseObject];
      ++v12;
    }

    while (a4 != v12);
  }

  else
  {
    baseObject = self->_baseObject;
    v11 = &v28;
  }

  [(MTLCommandQueueSPI *)baseObject addResidencySets:v11 count:a4];
  if (self->_snapshotCreated)
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
    v14 = v26;
    *(v26 + 8) = -15251;
    v15 = BYTE9(v27);
    if (BYTE9(v27) > 0x28uLL)
    {
      v17 = *(*(&v25 + 1) + 24);
      v18 = BYTE10(v27);
      ++BYTE10(v27);
      v16 = GTTraceMemPool_allocateBytes(v17, *(&v26 + 1), v18 | 0x1800000000) + 16;
      v15 = v18;
    }

    else
    {
      v16 = (v14 + BYTE9(v27));
      BYTE9(v27) += 24;
    }

    *(v14 + 13) = v15;
    v19 = [(CaptureMTLCommandQueue *)self traceStream];
    if (v19)
    {
      var0 = v19->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(v19, v20);
    bzero(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v22 = StreamArray(&v25, (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, a4);
    *v16 = var0;
    *(v16 + 1) = a4;
    v16[16] = v22;
    *(v16 + 17) = 0;
    *(v16 + 5) = 0;
    s();
    *v23 = v24;
    *(v23 + 8) = BYTE8(v27);
    *(v26 + 15) |= 8u;
  }
}

- (void)addResidencySet:(id)a3
{
  v4 = a3;
  CommandQueueTakeSnapshot(self);
  AddResidencySet(self, v4);
  baseObject = self->_baseObject;
  v6 = [v4 baseObject];
  [(MTLCommandQueueSPI *)baseObject addResidencySet:v6];

  if (self->_snapshotCreated)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
    v8 = v20;
    *(v20 + 8) = -15252;
    v9 = BYTE9(v21);
    if (BYTE9(v21) > 0x30uLL)
    {
      v11 = *(*(&v19 + 1) + 24);
      v12 = BYTE10(v21);
      ++BYTE10(v21);
      v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
      v9 = v12;
    }

    else
    {
      v10 = (v8 + BYTE9(v21));
      BYTE9(v21) += 16;
    }

    *(v8 + 13) = v9;
    v13 = [(CaptureMTLCommandQueue *)self traceStream];
    if (v13)
    {
      var0 = v13->var0;
    }

    else
    {
      var0 = 0;
    }

    v15 = [v4 traceStream];
    if (v15)
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    *v10 = var0;
    *(v10 + 1) = v16;
    s();
    *v17 = v18;
    *(v17 + 8) = BYTE8(v21);
    *(v20 + 15) |= 8u;
  }
}

- (void)addPerfSampleHandler:(id)a3
{
  v4 = a3;
  self->_perfSampleHandlerUsed = 1;
  baseObject = self->_baseObject;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __47__CaptureMTLCommandQueue_addPerfSampleHandler___block_invoke;
  v7[3] = &unk_2F25F0;
  v8 = v4;
  v6 = v4;
  [(MTLCommandQueueSPI *)baseObject addPerfSampleHandler:v7];
}

void __47__CaptureMTLCommandQueue_addPerfSampleHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_getAssociatedObject(v6, &sAssociationKey);
  objc_setAssociatedObject(v6, &sAssociationKey, 0, 0);

  (*(*(a1 + 32) + 16))();
}

- (NSArray)enqueuedCommandBuffers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11525;
  v10 = __Block_byref_object_dispose__11526;
  v11 = 0;
  pendingQueueLock = self->_pendingQueueLock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __48__CaptureMTLCommandQueue_enqueuedCommandBuffers__block_invoke;
  v5[3] = &unk_2F25C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(pendingQueueLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__CaptureMTLCommandQueue_enqueuedCommandBuffers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

- (void)commitCommandBuffer:(id)a3 withIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_perfSampleHandlerUsed)
  {
    v8 = [v6 baseObject];
    objc_setAssociatedObject(v8, &sAssociationKey, v7, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __56__CaptureMTLCommandQueue_commitCommandBuffer_withIndex___block_invoke;
    v14[3] = &unk_2F2578;
    v15 = v7;
    [v8 addCompletedHandler:v14];
  }

  pendingQueueLock = self->_pendingQueueLock;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __56__CaptureMTLCommandQueue_commitCommandBuffer_withIndex___block_invoke_2;
  v11[3] = &unk_2F25A0;
  v11[4] = self;
  v12 = v7;
  v13 = a4;
  v10 = v7;
  dispatch_sync(pendingQueueLock, v11);
}

id __56__CaptureMTLCommandQueue_commitCommandBuffer_withIndex___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 56) && (*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v3 = [*(v2 + 16) baseObject];
    v4 = DEVICEOBJECT(v3);

    if (!qword_31F7B0)
    {
      [*(*(a1 + 32) + 8) maxCommandBufferCount];
    }

    v5 = [v4 newCommandQueueWithMaxCommandBufferCount:?];
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = v5;
  }

  [*(a1 + 40) setIsCommited:1];
  if (([*(a1 + 40) isEnqueued] & 1) == 0)
  {
    [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  }

  v8 = [*(*(a1 + 32) + 40) count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      v11 = [*(*(a1 + 32) + 40) objectAtIndexedSubscript:v10];
      if (([v11 isCommited] & 1) == 0)
      {
        break;
      }

      [v11 addRequestsToDownloadQueue:*(*(a1 + 32) + 56) withIndex:*(a1 + 48)];

      if (v9 == ++v10)
      {
        v10 = v9;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_15:
  v12 = *(*(a1 + 32) + 40);

  return [v12 removeObjectsInRange:{0, v10}];
}

- (void)enqueueCommandBuffer:(id)a3
{
  v4 = a3;
  if (([v4 isEnqueued] & 1) == 0)
  {
    pendingQueueLock = self->_pendingQueueLock;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __47__CaptureMTLCommandQueue_enqueueCommandBuffer___block_invoke;
    v6[3] = &unk_2F2550;
    v6[4] = self;
    v7 = v4;
    dispatch_async(pendingQueueLock, v6);
  }
}

- (void)dealloc
{
  GTMTLGuestAppClientRemoveMTLCommandQueueInfo(g_guestAppClientMTL, self);
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -16344;
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
  v9 = [(CaptureMTLCommandQueue *)self traceStream];
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
  v13.receiver = self;
  v13.super_class = CaptureMTLCommandQueue;
  [(CaptureMTLCommandQueue *)&v13 dealloc];
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLCommandQueueSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -16349;
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
  v11 = [(CaptureMTLCommandQueue *)self traceStream];
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
  GTMTLGuestAppClientUpdateMTLCommandQueueInfo(g_guestAppClientMTL, self);
}

- (void)insertDebugCaptureBoundary
{
  if (insertDebugCaptureBoundary_onceToken != -1)
  {
    dispatch_once(&insertDebugCaptureBoundary_onceToken, &__block_literal_global_11529);
  }
}

void __52__CaptureMTLCommandQueue_insertDebugCaptureBoundary__block_invoke(id a1)
{
  if (s_logUsingOsLog == 1)
  {
    v1 = gt_tagged_log(4);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "warning: [MTLCommandQueue insertDebugCaptureBoundary] is not considered a valid gputrace boundary anymore.", buf, 2u);
    }
  }

  else
  {
    v2 = __stderrp;
    v4 = [NSString stringWithFormat:@"warning: [MTLCommandQueue insertDebugCaptureBoundary] is not considered a valid gputrace boundary anymore."];
    v3 = v4;
    fprintf(v2, "%s\n", [v4 UTF8String]);
  }
}

- (MTLCommandQueue)accelerationStructureDescriptorDownloadQueue
{
  accelerationStructureDescriptorDownloadQueue = self->_accelerationStructureDescriptorDownloadQueue;
  if (!accelerationStructureDescriptorDownloadQueue)
  {
    pendingQueueLock = self->_pendingQueueLock;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __70__CaptureMTLCommandQueue_accelerationStructureDescriptorDownloadQueue__block_invoke;
    block[3] = &unk_2F2508;
    block[4] = self;
    dispatch_sync(pendingQueueLock, block);
    accelerationStructureDescriptorDownloadQueue = self->_accelerationStructureDescriptorDownloadQueue;
  }

  return accelerationStructureDescriptorDownloadQueue;
}

void __70__CaptureMTLCommandQueue_accelerationStructureDescriptorDownloadQueue__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 64))
  {
    v4 = [*(v2 + 16) baseObject];
    v8 = DEVICEOBJECT(v4);

    if (!qword_31F7B0)
    {
      [*(*(a1 + 32) + 8) maxCommandBufferCount];
    }

    v5 = [v8 newCommandQueueWithMaxCommandBufferCount:?];
    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    *(v6 + 64) = v5;
  }
}

- (MTLCommandQueue)downloadQueue
{
  downloadQueue = self->_downloadQueue;
  if (!downloadQueue)
  {
    pendingQueueLock = self->_pendingQueueLock;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __39__CaptureMTLCommandQueue_downloadQueue__block_invoke;
    block[3] = &unk_2F2508;
    block[4] = self;
    dispatch_sync(pendingQueueLock, block);
    downloadQueue = self->_downloadQueue;
  }

  return downloadQueue;
}

void __39__CaptureMTLCommandQueue_downloadQueue__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 56))
  {
    v4 = [*(v2 + 16) baseObject];
    v8 = DEVICEOBJECT(v4);

    if (!qword_31F7B0)
    {
      [*(*(a1 + 32) + 8) maxCommandBufferCount];
    }

    v5 = [v8 newCommandQueueWithMaxCommandBufferCount:?];
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = v5;
  }
}

- (CaptureMTLCommandQueue)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = CaptureMTLCommandQueue;
  v9 = [(CaptureMTLCommandQueue *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_captureDevice, a4);
    objc_storeStrong(&v10->_baseObject, a3);
    v11 = [v8 traceContext];
    v10->_traceContext = v11;
    v12 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v11, v12, v10);

    GTMTLGuestAppClientAddMTLCommandQueueInfo(g_guestAppClientMTL, v10);
    v13 = [[NSMutableArray alloc] initWithCapacity:1];
    pendingQueue = v10->_pendingQueue;
    v10->_pendingQueue = v13;

    v15 = dispatch_queue_create("com.apple.dt.GPUTools.pendingQueueLock", 0);
    pendingQueueLock = v10->_pendingQueueLock;
    v10->_pendingQueueLock = v15;

    v17 = +[NSMutableSet set];
    currentResidencySets = v10->_currentResidencySets;
    v10->_currentResidencySets = v17;

    lastSnapshot = v10->_lastSnapshot;
    v10->_lastSnapshot = 0;

    v10->_snapshotCreated = (*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2;
  }

  return v10;
}

@end