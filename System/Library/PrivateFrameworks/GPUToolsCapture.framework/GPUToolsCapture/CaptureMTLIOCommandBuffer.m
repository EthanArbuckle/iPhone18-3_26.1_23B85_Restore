@interface CaptureMTLIOCommandBuffer
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLIOCommandBuffer)initWithBaseObject:(id)a3 captureIOCommandQueue:(id)a4;
- (NSString)description;
- (unint64_t)streamReference;
- (void)_preCommitWithIndex:(unint64_t)a3;
- (void)addBarrier;
- (void)addCompletedHandler:(id)a3;
- (void)commit;
- (void)copyStatusToBuffer:(id)a3 offset:(unint64_t)a4;
- (void)dealloc;
- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4;
- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4;
- (void)enqueue;
- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 sourceHandle:(id)a6 sourceHandleOffset:(unint64_t)a7;
- (void)loadBytes:(void *)a3 size:(unint64_t)a4 sourceHandle:(id)a5 sourceHandleOffset:(unint64_t)a6;
- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 sourceBytesPerRow:(unint64_t)a7 sourceBytesPerImage:(unint64_t)a8 destinationOrigin:(id *)a9 sourceHandle:(id)a10 sourceHandleOffset:(unint64_t)a11;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setLabel:(id)a3;
- (void)signalEvent:(id)a3 value:(unint64_t)a4;
- (void)touch;
- (void)tryCancel;
- (void)waitForEvent:(id)a3 value:(unint64_t)a4;
- (void)waitUntilCompleted;
@end

@implementation CaptureMTLIOCommandBuffer

- (void)waitUntilCompleted
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLIOCommandBufferSPI *)self->_baseObject waitUntilCompleted];
  v4 = v14;
  *(v14 + 8) = -15335;
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
  v9 = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)tryCancel
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLIOCommandBufferSPI *)self->_baseObject tryCancel];
  v4 = v14;
  *(v14 + 8) = -15336;
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
  v9 = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)pushDebugGroup:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLIOCommandBufferSPI *)self->_baseObject pushDebugGroup:v4];
  v6 = v19;
  *(v19 + 8) = -15292;
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
  v11 = [(CaptureMTLIOCommandBuffer *)self traceStream];
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
  [(MTLIOCommandBufferSPI *)self->_baseObject popDebugGroup];
  v4 = v14;
  *(v14 + 8) = -15293;
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
  v9 = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 sourceBytesPerRow:(unint64_t)a7 sourceBytesPerImage:(unint64_t)a8 destinationOrigin:(id *)a9 sourceHandle:(id)a10 sourceHandleOffset:(unint64_t)a11
{
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v18 = a10;
  v19 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v49);
  baseObject = self->_baseObject;
  v21 = [v19 baseObject];
  v42 = v18;
  v22 = [v18 baseObject];
  v48 = *a6;
  v47 = *a9;
  v43 = a4;
  v44 = a7;
  [(MTLIOCommandBufferSPI *)baseObject loadTexture:v21 slice:a4 level:a5 size:&v48 sourceBytesPerRow:a7 sourceBytesPerImage:a8 destinationOrigin:&v47 sourceHandle:v22 sourceHandleOffset:a11];

  v23 = *(&v49 + 1);
  v24 = v50;
  *(v50 + 8) = -15310;
  v25 = *(v23 + 24);
  v26 = BYTE10(v51);
  ++BYTE10(v51);
  Bytes = GTTraceMemPool_allocateBytes(v25, *(&v50 + 1), v26 | 0x7000000000);
  *(v24 + 13) = v26;
  v28 = [(CaptureMTLIOCommandBuffer *)self traceStream];
  if (v28)
  {
    var0 = v28->var0;
  }

  else
  {
    var0 = 0;
  }

  v29 = [v19 traceStream];

  if (v29)
  {
    v30 = *v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = a6->var0;
  var1 = a6->var1;
  var2 = a6->var2;
  v34 = a9->var0;
  v35 = a9->var1;
  v36 = a9->var2;
  v37 = [v42 traceStream];

  if (v37)
  {
    v38 = *v37;
  }

  else
  {
    v38 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v30;
  *(Bytes + 4) = v43;
  *(Bytes + 5) = a5;
  *(Bytes + 6) = v31;
  *(Bytes + 7) = var1;
  *(Bytes + 8) = var2;
  *(Bytes + 9) = v44;
  *(Bytes + 10) = a8;
  *(Bytes + 11) = v34;
  *(Bytes + 12) = v35;
  *(Bytes + 13) = v36;
  *(Bytes + 14) = v38;
  *(Bytes + 15) = a11;
  s();
  *v39 = v40;
  *(v39 + 8) = BYTE8(v51);
  *(v50 + 15) |= 8u;
}

- (void)enqueue
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLIOCommandBufferSPI *)self->_baseObject enqueue];
  v4 = v14;
  *(v14 + 8) = -15312;
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
  v9 = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)copyStatusToBuffer:(id)a3 offset:(unint64_t)a4
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v8 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v8 baseObject];
  [(MTLIOCommandBufferSPI *)baseObject copyStatusToBuffer:v10 offset:a4];

  v11 = v23;
  *(v23 + 8) = -15342;
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
  v16 = [(CaptureMTLIOCommandBuffer *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v8 traceStream];

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

- (void)addBarrier
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLIOCommandBufferSPI *)self->_baseObject addBarrier];
  v4 = v14;
  *(v14 + 8) = -15295;
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
  v9 = [(CaptureMTLIOCommandBuffer *)self traceStream];
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
  v5 = [(MTLIOCommandBufferSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLIOCommandBuffer;
  v3 = [(CaptureMTLIOCommandBuffer *)&v7 description];
  v4 = [(MTLIOCommandBufferSPI *)self->_baseObject description];
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

- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 sourceHandle:(id)a6 sourceHandleOffset:(unint64_t)a7
{
  v12 = a6;
  v13 = a3;
  v14 = [v13 traceStream];
  if (v14)
  {
    v15 = atomic_load(v14 + 7);
    v16 = v15;
    do
    {
      atomic_compare_exchange_strong(v14 + 7, &v16, v15 | 2);
      v17 = v16 == v15;
      v15 = v16;
    }

    while (!v17);
  }

  v18 = [v13 traceStream];
  if (v18)
  {
    v19 = atomic_load(v18 + 7);
    v20 = v19;
    do
    {
      atomic_compare_exchange_strong(v18 + 7, &v20, v19 | 8);
      v17 = v20 == v19;
      v19 = v20;
    }

    while (!v17);
  }

  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v37);
  baseObject = self->_baseObject;
  v23 = [v13 baseObject];
  v24 = [v12 baseObject];
  [(MTLIOCommandBufferSPI *)baseObject loadBuffer:v23 offset:a4 size:a5 sourceHandle:v24 sourceHandleOffset:a7];

  v25 = v38;
  *(v38 + 8) = -15311;
  v26 = BYTE9(v39);
  if (BYTE9(v39) > 0x10uLL)
  {
    v28 = *(*(&v37 + 1) + 24);
    v29 = BYTE10(v39);
    ++BYTE10(v39);
    v27 = GTTraceMemPool_allocateBytes(v28, *(&v38 + 1), v29 | 0x3000000000) + 16;
    v26 = v29;
  }

  else
  {
    v27 = (v25 + BYTE9(v39));
    BYTE9(v39) += 48;
  }

  *(v25 + 13) = v26;
  v30 = [(CaptureMTLIOCommandBuffer *)self traceStream];
  if (v30)
  {
    var0 = v30->var0;
  }

  else
  {
    var0 = 0;
  }

  v32 = [v13 traceStream];

  if (v32)
  {
    v32 = *v32;
  }

  v33 = [v12 traceStream];

  if (v33)
  {
    v34 = *v33;
  }

  else
  {
    v34 = 0;
  }

  *v27 = var0;
  *(v27 + 1) = v32;
  *(v27 + 2) = a4;
  *(v27 + 3) = a5;
  *(v27 + 4) = v34;
  *(v27 + 5) = a7;
  s();
  *v35 = v36;
  *(v35 + 8) = BYTE8(v39);
  *(v38 + 15) |= 8u;
}

- (void)loadBytes:(void *)a3 size:(unint64_t)a4 sourceHandle:(id)a5 sourceHandleOffset:(unint64_t)a6
{
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v12 = a5;
  GTTraceContext_pushEncoderWithStream(traceContext, &v27);
  baseObject = self->_baseObject;
  v14 = [v12 baseObject];
  [(MTLIOCommandBufferSPI *)baseObject loadBytes:a3 size:a4 sourceHandle:v14 sourceHandleOffset:a6];

  v15 = v28;
  *(v28 + 8) = -15294;
  v16 = BYTE9(v29);
  if (BYTE9(v29) > 0x18uLL)
  {
    v18 = *(*(&v27 + 1) + 24);
    v19 = BYTE10(v29);
    ++BYTE10(v29);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v28 + 1), v19 | 0x2800000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v29));
    BYTE9(v29) += 40;
  }

  *(v15 + 13) = v16;
  v20 = [(CaptureMTLIOCommandBuffer *)self traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [v12 traceStream];

  if (v22)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v24 = GTTraceEncoder_storeBlob(&v27, a3, a4);
  }

  else
  {
    v24 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = a4;
  *(v17 + 2) = v23;
  *(v17 + 3) = a6;
  v17[32] = v24;
  *(v17 + 33) = 0;
  *(v17 + 9) = 0;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
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

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLIOCommandBufferSPI *)baseObject encodeWaitForEvent:v10 value:a4];

  v11 = v23;
  *(v23 + 8) = -15339;
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
  v16 = [(CaptureMTLIOCommandBuffer *)self traceStream];
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
  [(MTLIOCommandBufferSPI *)baseObject encodeSignalEvent:v10 value:a4];

  v11 = v23;
  *(v23 + 8) = -15340;
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
  v16 = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)signalEvent:(id)a3 value:(unint64_t)a4
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
  [(MTLIOCommandBufferSPI *)baseObject signalEvent:v10 value:a4];

  v11 = v23;
  *(v23 + 8) = -15309;
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
  v16 = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)waitForEvent:(id)a3 value:(unint64_t)a4
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
  [(MTLIOCommandBufferSPI *)baseObject waitForEvent:v10 value:a4];

  v11 = v23;
  *(v23 + 8) = -15308;
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
  v16 = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLIOCommandBufferSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -15313;
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
  v11 = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)commit
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(CaptureMTLIOCommandBuffer *)self _preCommitWithIndex:*v14];
  [(MTLIOCommandBufferSPI *)self->_baseObject commit];
  v4 = v14;
  *(v14 + 8) = -15343;
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
  v9 = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)_preCommitWithIndex:(unint64_t)a3
{
  completedDispatchArray = self->_completedDispatchArray;
  if (completedDispatchArray)
  {
    v6 = completedDispatchArray;
    v7 = self->_completedDispatchArray;
    self->_completedDispatchArray = 0;

    v8 = self;
    baseObject = v8->_baseObject;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __49__CaptureMTLIOCommandBuffer__preCommitWithIndex___block_invoke;
    v12[3] = &unk_2F1F60;
    v14 = v8;
    v15 = a3;
    v13 = v6;
    v10 = v8;
    v11 = v6;
    [(MTLIOCommandBufferSPI *)baseObject addCompletedHandler:v12];
  }
}

void __49__CaptureMTLIOCommandBuffer__preCommitWithIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  s();
  v4 = v3;
  v5 = *v3;
  *v3 = v6;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(a1 + 40);
        (*(*(*(&v13 + 1) + 8 * v11) + 16))(*(*(&v13 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  *v4 = v5;
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
  *(v20 + 8) = -15345;
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
  v15 = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)dealloc
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = self->_completedDispatchArray;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v22 + 1) + 8 * i) + 16))();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v10);
  }

  *v5 = v6;
  v13 = v27;
  *(v27 + 8) = -15341;
  v14 = BYTE9(v28);
  if (BYTE9(v28) > 0x38uLL)
  {
    v16 = *(*(&v26 + 1) + 24);
    v17 = BYTE10(v28);
    ++BYTE10(v28);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v27 + 1), v17 | 0x800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v28));
    BYTE9(v28) += 8;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLIOCommandBuffer *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  *v15 = var0;
  v20 = v27;
  *v5 = v28;
  *(v5 + 8) = BYTE8(v28);
  *(v20 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v21.receiver = self;
  v21.super_class = CaptureMTLIOCommandBuffer;
  [(CaptureMTLIOCommandBuffer *)&v21 dealloc];
}

- (CaptureMTLIOCommandBuffer)initWithBaseObject:(id)a3 captureIOCommandQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CaptureMTLIOCommandBuffer;
  v9 = [(CaptureMTLIOCommandBuffer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_captureCommandQueue, a4);
    objc_storeStrong(&v10->_baseObject, a3);
    v11 = objc_alloc_init(NSMutableSet);
    retainedObjects = v10->_retainedObjects;
    v10->_retainedObjects = v11;

    v13 = [(CaptureMTLIOCommandQueue *)v10->_captureCommandQueue traceContext];
    v10->_traceContext = v13;
    v14 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v13, v14, v10);

    v10->_isCapturing = (*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2;
  }

  return v10;
}

@end