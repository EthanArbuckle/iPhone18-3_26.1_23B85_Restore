@interface CaptureMTLIOCommandQueue
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLIOCommandQueue)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (NSString)description;
- (id)commandBuffer;
- (id)commandBufferWithUnretainedReferences;
- (unint64_t)streamReference;
- (void)barrier;
- (void)dealloc;
- (void)enqueueBarrier;
- (void)setLabel:(id)a3;
- (void)touch;
@end

@implementation CaptureMTLIOCommandQueue

- (void)enqueueBarrier
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLIOCommandQueueSPI *)self->_baseObject enqueueBarrier];
  v4 = v14;
  *(v14 + 8) = -15291;
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
  v9 = [(CaptureMTLIOCommandQueue *)self traceStream];
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

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15332;
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
  v9 = [(CaptureMTLIOCommandQueue *)self traceStream];
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
  v13.super_class = CaptureMTLIOCommandQueue;
  [(CaptureMTLIOCommandQueue *)&v13 dealloc];
}

- (id)commandBufferWithUnretainedReferences
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  v24 = traceContext;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v26 = v6;
  BYTE8(v26) = *(v4 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  v8 = [(MTLIOCommandQueueSPI *)self->_baseObject commandBufferWithUnretainedReferences];
  if (v8)
  {
    v9 = [[CaptureMTLIOCommandBuffer alloc] initWithBaseObject:v8 captureIOCommandQueue:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLIOCommandBuffer *)v9 traceStream]);
  v10 = v25;
  *(v25 + 8) = -15306;
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
  v15 = [(CaptureMTLIOCommandQueue *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  v17 = [(CaptureMTLIOCommandBuffer *)v9 traceStream];
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
  __src = [(CaptureMTLIOCommandBuffer *)v9 isCapturing];
  v19 = GTTraceEncoder_storeBytes(&v24, &__src, 1uLL);
  v20 = v25;
  v21 = v26;
  *(v25 + 14) = v19;
  *v5 = v21;
  *(v5 + 8) = BYTE8(v26);
  *(v20 + 15) |= 8u;

  return v9;
}

- (id)commandBuffer
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  v24 = traceContext;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v26 = v6;
  BYTE8(v26) = *(v4 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  v8 = [(MTLIOCommandQueueSPI *)self->_baseObject commandBuffer];
  if (v8)
  {
    v9 = [[CaptureMTLIOCommandBuffer alloc] initWithBaseObject:v8 captureIOCommandQueue:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLIOCommandBuffer *)v9 traceStream]);
  v10 = v25;
  *(v25 + 8) = -15333;
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
  v15 = [(CaptureMTLIOCommandQueue *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  v17 = [(CaptureMTLIOCommandBuffer *)v9 traceStream];
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
  __src = [(CaptureMTLIOCommandBuffer *)v9 isCapturing];
  v19 = GTTraceEncoder_storeBytes(&v24, &__src, 1uLL);
  v20 = v25;
  v21 = v26;
  *(v25 + 14) = v19;
  *v5 = v21;
  *(v5 + 8) = BYTE8(v26);
  *(v20 + 15) |= 8u;

  return v9;
}

- (void)barrier
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLIOCommandQueueSPI *)self->_baseObject barrier];
  v4 = v14;
  *(v14 + 8) = -15334;
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
  v9 = [(CaptureMTLIOCommandQueue *)self traceStream];
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

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTLIOCommandQueueSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLIOCommandQueue;
  v3 = [(CaptureMTLIOCommandQueue *)&v7 description];
  v4 = [(MTLIOCommandQueueSPI *)self->_baseObject description];
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

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLIOCommandQueueSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -15307;
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
  v11 = [(CaptureMTLIOCommandQueue *)self traceStream];
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

- (CaptureMTLIOCommandQueue)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CaptureMTLIOCommandQueue;
  v9 = [(CaptureMTLIOCommandQueue *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    objc_storeStrong(&v10->_captureDevice, a4);
    v11 = [v8 traceContext];
    v10->_traceContext = v11;
    v12 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v11, v12, v10);
  }

  return v10;
}

@end