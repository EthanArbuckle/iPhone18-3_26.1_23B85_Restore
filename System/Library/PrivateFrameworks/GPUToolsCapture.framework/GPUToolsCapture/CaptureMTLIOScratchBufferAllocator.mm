@interface CaptureMTLIOScratchBufferAllocator
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLIOScratchBufferAllocator)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context;
- (NSString)description;
- (id)newScratchBufferWithMinimumSize:(unint64_t)size;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTLIOScratchBufferAllocator

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15329;
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
  traceStream = [(CaptureMTLIOScratchBufferAllocator *)self traceStream];
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
  v13.receiver = self;
  v13.super_class = CaptureMTLIOScratchBufferAllocator;
  [(CaptureMTLIOScratchBufferAllocator *)&v13 dealloc];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLIOScratchBufferAllocator *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLIOScratchBufferAllocator;
  v3 = [(CaptureMTLIOScratchBufferAllocator *)&v7 description];
  v4 = [(MTLIOScratchBufferAllocator *)self->_baseObject description];
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

- (id)newScratchBufferWithMinimumSize:(unint64_t)size
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  v23 = traceContext;
  *&v24 = 0;
  *(&v24 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v25 = v8;
  BYTE8(v25) = *(v6 + 8);
  *(&v25 + 9) = 16400;
  *(&v25 + 11) = 0;
  HIBYTE(v25) = 0;
  v10 = [(MTLIOScratchBufferAllocator *)self->_baseObject newScratchBufferWithMinimumSize:?];
  if (v10)
  {
    v11 = [[CaptureMTLIOScratchBuffer alloc] initWithBaseObject:v10 captureContext:self->_traceContext captureBuffer:0];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v23, [(CaptureMTLIOScratchBuffer *)v11 traceStream]);
  v12 = v24;
  *(v24 + 8) = -15299;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x28uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLIOScratchBufferAllocator *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLIOScratchBuffer *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = size;
  v21 = v24;
  *v7 = v25;
  *(v7 + 8) = BYTE8(v25);
  *(v21 + 15) |= 8u;

  return v11;
}

- (CaptureMTLIOScratchBufferAllocator)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = CaptureMTLIOScratchBufferAllocator;
  v8 = [(CaptureMTLIOScratchBufferAllocator *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseObject, object);
    v9->_traceContext = context;
    v10 = DEVICEOBJECT(objectCopy);
    v9->_traceStream = GTTraceContext_openStream(context, v10, v9);
  }

  return v9;
}

@end