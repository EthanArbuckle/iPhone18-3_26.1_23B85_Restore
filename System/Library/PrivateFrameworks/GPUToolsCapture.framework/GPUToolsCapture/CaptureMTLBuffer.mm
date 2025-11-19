@interface CaptureMTLBuffer
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)doesAliasAllResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasAnyResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasResource:(id)a3;
- (BOOL)isAliasable;
- (BOOL)isPurgeable;
- (CaptureMTLBuffer)initWithBaseObject:(id)a3 captureBuffer:(id)a4;
- (CaptureMTLBuffer)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (CaptureMTLBuffer)initWithBaseObject:(id)a3 captureHeap:(id)a4;
- (NSString)description;
- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6;
- (id)newTensorWithDescriptor:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (unint64_t)streamReference;
- (void)addDebugMarker:(id)a3 range:(_NSRange)a4;
- (void)contents;
- (void)dealloc;
- (void)didModifyRange:(_NSRange)a3;
- (void)makeAliasable;
- (void)setLabel:(id)a3;
- (void)touch;
@end

@implementation CaptureMTLBuffer

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLBufferSPI *)self->_baseObject setPurgeableState:a3];
  v7 = v18;
  *(v18 + 8) = -16367;
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
  v12 = [(CaptureMTLBuffer *)self traceStream];
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
  *(v9 + 2) = a3;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
  return v6;
}

- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5
{
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceContext = self->_traceContext;
  v9 = a3;
  v29 = traceContext;
  *&v30 = 0;
  *(&v30 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v31 = v12;
  BYTE8(v31) = *(v10 + 8);
  *(&v31 + 9) = 16400;
  *(&v31 + 11) = 0;
  HIBYTE(v31) = 0;
  v14 = [(MTLBufferSPI *)self->_baseObject newTextureWithDescriptor:v9 offset:a4 bytesPerRow:a5];
  v15 = [(MTLDevice *)self->_captureDevice dummyEncodeTextureIntoArgumentBufferForResourceIndex:v14 withDescriptor:v9];

  if (v14)
  {
    v16 = [[CaptureMTLTexture alloc] initWithBaseObject:v14 captureBuffer:self];
  }

  else
  {
    v16 = 0;
  }

  GTTraceEncoder_setStream(&v29, [(CaptureMTLTexture *)v16 traceStream]);
  v17 = v30;
  *(v30 + 8) = -16368;
  v18 = BYTE9(v31);
  if (BYTE9(v31) > 0x18uLL)
  {
    v20 = *(*(&v29 + 1) + 24);
    v21 = BYTE10(v31);
    ++BYTE10(v31);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v30 + 1), v21 | 0x2800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v31));
    BYTE9(v31) += 40;
  }

  *(v17 + 13) = v18;
  SaveMTLTextureInfo(&v29, v14);
  v22 = [(CaptureMTLBuffer *)self traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  v24 = [(CaptureMTLTexture *)v16 traceStream];
  if (v24)
  {
    v25 = v24->var0;
  }

  else
  {
    v25 = 0;
  }

  v26 = SaveMTLTextureDescriptor(&v29, v15);
  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  v19[32] = v26;
  *(v19 + 33) = 0;
  *(v19 + 9) = 0;
  v27 = v30;
  *v11 = v31;
  *(v11 + 8) = BYTE8(v31);
  *(v27 + 15) |= 8u;

  return v16;
}

- (id)newTensorWithDescriptor:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceContext = self->_traceContext;
  v9 = a3;
  v30 = traceContext;
  *&v31 = 0;
  *(&v31 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v11 = v10;
  v12 = *v10;
  *v10 = v13;
  *&v32 = v12;
  BYTE8(v32) = *(v10 + 8);
  *(&v32 + 9) = 16400;
  *(&v32 + 11) = 0;
  HIBYTE(v32) = 0;
  v14 = [(MTLBufferSPI *)self->_baseObject newTensorWithDescriptor:v9 offset:a4 error:a5];
  v15 = [v9 copy];

  v16 = DEVICEOBJECT(v14);
  [v15 setResourceIndex:{objc_msgSend(v16, "resourceIndex")}];

  if (v14)
  {
    v17 = [[CaptureMTLTensor alloc] initWithBaseObject:v14 captureBuffer:self];
  }

  else
  {
    v17 = 0;
  }

  GTTraceEncoder_setStream(&v30, [(CaptureMTLTensor *)v17 traceStream]);
  v18 = v31;
  *(v31 + 8) = -14840;
  v19 = BYTE9(v32);
  if (BYTE9(v32) > 0x18uLL)
  {
    v21 = *(*(&v30 + 1) + 24);
    v22 = BYTE10(v32);
    ++BYTE10(v32);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v31 + 1), v22 | 0x2800000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v32));
    BYTE9(v32) += 40;
  }

  *(v18 + 13) = v19;
  SaveMTLTensorInfo(&v30, v14);
  v23 = [(CaptureMTLBuffer *)self traceStream];
  if (v23)
  {
    var0 = v23->var0;
  }

  else
  {
    var0 = 0;
  }

  v25 = [(CaptureMTLTensor *)v17 traceStream];
  if (!v25)
  {
    v26 = 0;
    if (!a5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v26 = v25->var0;
  if (a5)
  {
LABEL_12:
    a5 = *a5;
  }

LABEL_13:
  v27 = SaveMTLTensorDescriptor(&v30, v15);
  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  v20[32] = v27;
  *(v20 + 33) = 0;
  *(v20 + 9) = 0;
  v28 = v31;
  *v11 = v32;
  *(v11 + 8) = BYTE8(v32);
  *(v28 + 15) |= 8u;

  return v17;
}

- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6
{
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  traceContext = self->_traceContext;
  v11 = a3;
  v36 = traceContext;
  *&v37 = 0;
  *(&v37 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v13 = v12;
  v14 = *v12;
  *v12 = v15;
  *&v38 = v14;
  BYTE8(v38) = *(v12 + 8);
  *(&v38 + 9) = 16400;
  *(&v38 + 11) = 0;
  HIBYTE(v38) = 0;
  v16 = [(MTLBufferSPI *)self->_baseObject newLinearTextureWithDescriptor:v11 offset:a4 bytesPerRow:a5 bytesPerImage:a6];
  v17 = [(MTLDevice *)self->_captureDevice dummyEncodeTextureIntoArgumentBufferForResourceIndex:v16 withDescriptor:v11];

  if (v16)
  {
    v18 = [[CaptureMTLTexture alloc] initWithBaseObject:v16 captureBuffer:self];
  }

  else
  {
    v18 = 0;
  }

  GTTraceEncoder_setStream(&v36, [(CaptureMTLTexture *)v18 traceStream]);
  v19 = v37;
  *(v37 + 8) = -16098;
  v20 = BYTE9(v38);
  if (BYTE9(v38) > 0x10uLL)
  {
    v22 = *(*(&v36 + 1) + 24);
    v35 = v18;
    v23 = v17;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = BYTE10(v38);
    ++BYTE10(v38);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v37 + 1), v27 | 0x3000000000) + 16;
    v20 = v27;
    a6 = v26;
    a5 = v25;
    a4 = v24;
    v17 = v23;
    v18 = v35;
  }

  else
  {
    v21 = (v19 + BYTE9(v38));
    BYTE9(v38) += 48;
  }

  *(v19 + 13) = v20;
  SaveMTLTextureInfo(&v36, v16);
  v28 = [(CaptureMTLBuffer *)self traceStream];
  if (v28)
  {
    var0 = v28->var0;
  }

  else
  {
    var0 = 0;
  }

  v30 = [(CaptureMTLTexture *)v18 traceStream];
  if (v30)
  {
    v31 = v30->var0;
  }

  else
  {
    v31 = 0;
  }

  v32 = SaveMTLTextureDescriptor(&v36, v17);
  *v21 = var0;
  *(v21 + 1) = v31;
  *(v21 + 2) = a4;
  *(v21 + 3) = a5;
  *(v21 + 4) = a6;
  v21[40] = v32;
  *(v21 + 41) = 0;
  *(v21 + 11) = 0;
  v33 = v37;
  *v13 = v38;
  *(v13 + 8) = BYTE8(v38);
  *(v33 + 15) |= 8u;

  return v18;
}

- (void)makeAliasable
{
  if (!qword_31F7B8)
  {
    v18 = v2;
    v19 = v3;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
    [(MTLBufferSPI *)self->_baseObject makeAliasable];
    [(MTLHeap *)self->_captureHeap usedSize];
    [(MTLHeap *)self->_captureHeap currentAllocatedSize];
    v6 = v16;
    *(v16 + 8) = -16122;
    v7 = BYTE9(v17);
    if (BYTE9(v17) > 0x38uLL)
    {
      v9 = *(*(&v15 + 1) + 24);
      v10 = BYTE10(v17);
      ++BYTE10(v17);
      v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x800000000) + 16;
      v7 = v10;
    }

    else
    {
      v8 = (v6 + BYTE9(v17));
      BYTE9(v17) += 8;
    }

    *(v6 + 13) = v7;
    v11 = [(CaptureMTLBuffer *)self traceStream];
    if (v11)
    {
      var0 = v11->var0;
    }

    else
    {
      var0 = 0;
    }

    *v8 = var0;
    s();
    *v13 = v14;
    *(v13 + 8) = BYTE8(v17);
    *(v16 + 15) |= 8u;
  }
}

- (BOOL)isPurgeable
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  v4 = [(MTLBufferSPI *)self->_baseObject isPurgeable];
  v5 = v16;
  *(v16 + 8) = -16366;
  v6 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v8 = *(*(&v15 + 1) + 24);
    v9 = BYTE10(v17);
    ++BYTE10(v17);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v16 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v5 + 13) = v6;
  v10 = [(CaptureMTLBuffer *)self traceStream];
  if (v10)
  {
    var0 = v10->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = v4;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  return v4;
}

- (BOOL)isAliasable
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  v4 = [(MTLBufferSPI *)self->_baseObject isAliasable];
  v5 = v16;
  *(v16 + 8) = -16113;
  v6 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v8 = *(*(&v15 + 1) + 24);
    v9 = BYTE10(v17);
    ++BYTE10(v17);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v16 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v5 + 13) = v6;
  v10 = [(CaptureMTLBuffer *)self traceStream];
  if (v10)
  {
    var0 = v10->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = v4;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  return v4;
}

- (BOOL)doesAliasResource:(id)a3
{
  baseObject = self->_baseObject;
  v4 = [a3 baseObject];
  LOBYTE(baseObject) = [(MTLBufferSPI *)baseObject doesAliasResource:v4];

  return baseObject;
}

- (BOOL)doesAliasAnyResources:(const void *)a3 count:(unint64_t)a4
{
  baseObject = self->_baseObject;
  __chkstk_darwin(self, 8 * a4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  if (a4)
  {
    v9 = v8;
    v10 = a4;
    do
    {
      v11 = *a3++;
      *v9 = [v11 baseObject];
      v9 += 8;
      --v10;
    }

    while (v10);
  }

  return [(MTLBufferSPI *)baseObject doesAliasAnyResources:v8 count:a4];
}

- (BOOL)doesAliasAllResources:(const void *)a3 count:(unint64_t)a4
{
  baseObject = self->_baseObject;
  __chkstk_darwin(self, 8 * a4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  if (a4)
  {
    v9 = v8;
    v10 = a4;
    do
    {
      v11 = *a3++;
      *v9 = [v11 baseObject];
      v9 += 8;
      --v10;
    }

    while (v10);
  }

  return [(MTLBufferSPI *)baseObject doesAliasAllResources:v8 count:a4];
}

- (void)didModifyRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
    [(MTLBufferSPI *)self->_baseObject didModifyRange:location, length];
    v7 = v18;
    *(v18 + 8) = -16208;
    v8 = BYTE9(v19);
    if (BYTE9(v19) > 0x28uLL)
    {
      v11 = *(*(&v17 + 1) + 24);
      v12 = BYTE10(v19);
      ++BYTE10(v19);
      v9 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
      v8 = v12;
    }

    else
    {
      v9 = (v7 + BYTE9(v19));
      BYTE9(v19) += 24;
    }

    *(v7 + 13) = v8;
    v13 = [(CaptureMTLBuffer *)self traceStream];
    if (v13)
    {
      var0 = v13->var0;
    }

    else
    {
      var0 = 0;
    }

    *v9 = var0;
    *(v9 + 1) = location;
    *(v9 + 2) = length;
    s();
    *v15 = v16;
    *(v15 + 8) = BYTE8(v19);
    *(v18 + 15) |= 8u;
  }

  else
  {
    baseObject = self->_baseObject;

    [(MTLBufferSPI *)baseObject didModifyRange:?];
  }
}

- (void)addDebugMarker:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  [(MTLBufferSPI *)self->_baseObject addDebugMarker:v7 range:location, length];
  v9 = v22;
  *(v22 + 8) = -16103;
  v10 = BYTE9(v23);
  if (BYTE9(v23) > 0x20uLL)
  {
    v12 = *(*(&v21 + 1) + 24);
    v13 = BYTE10(v23);
    ++BYTE10(v23);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v22 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v23));
    BYTE9(v23) += 32;
  }

  *(v9 + 13) = v10;
  v14 = [(CaptureMTLBuffer *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [v7 UTF8String];
  if (v16)
  {
    v17 = [v7 UTF8String];
    v18 = strlen([v7 UTF8String]);
    LOBYTE(v16) = GTTraceEncoder_storeBytes(&v21, v17, v18 + 1);
  }

  *v11 = var0;
  *(v11 + 1) = location;
  *(v11 + 2) = length;
  v11[24] = v16;
  *(v11 + 25) = 0;
  *(v11 + 7) = 0;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLBufferSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -16372;
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
  v11 = [(CaptureMTLBuffer *)self traceStream];
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
  v5 = [(MTLBufferSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLBuffer;
  v3 = [(CaptureMTLBuffer *)&v7 description];
  v4 = [(MTLBufferSPI *)self->_baseObject description];
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

- (void)contents
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    p_var1 = &traceStream[1].var1;
    v5 = atomic_load(p_var1);
    v6 = v5;
    do
    {
      atomic_compare_exchange_strong(p_var1, &v6, v5 | 3);
      v7 = v6 == v5;
      v5 = v6;
    }

    while (!v7);
    v8 = self->_traceStream;
  }

  else
  {
    v8 = 0;
  }

  CaptureMTLBuffer_registerBaseBufferForTracing(self->_baseObject, v8, 0);
  baseObject = self->_baseObject;

  return [(MTLBufferSPI *)baseObject contents];
}

- (void)dealloc
{
  if (ShouldRegisterBufferForTracing(self->_baseObject))
  {
    GTMemoryGuard_unregisterRegion(self->_traceStream);
  }

  [(MTLDevice *)self->_captureDevice deallocateResource:self];
  baseObject = self->_baseObject;
  self->_baseObject = 0;

  [(MTLHeap *)self->_captureHeap usedSize];
  [(MTLHeap *)self->_captureHeap currentAllocatedSize];
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  v5 = v16;
  *(v16 + 8) = -16370;
  v6 = BYTE9(v17);
  if (BYTE9(v17) > 0x38uLL)
  {
    v8 = *(*(&v15 + 1) + 24);
    v9 = BYTE10(v17);
    ++BYTE10(v17);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v16 + 1), v9 | 0x800000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v17));
    BYTE9(v17) += 8;
  }

  *(v5 + 13) = v6;
  v10 = [(CaptureMTLBuffer *)self traceStream];
  if (v10)
  {
    var0 = v10->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v14.receiver = self;
  v14.super_class = CaptureMTLBuffer;
  [(CaptureMTLBuffer *)&v14 dealloc];
}

- (CaptureMTLBuffer)initWithBaseObject:(id)a3 captureBuffer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CaptureMTLBuffer;
  v9 = [(CaptureMTLBuffer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    v11 = [v8 device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = v11;

    objc_storeStrong(&v10->_captureRemoteStorageBuffer, a4);
    v13 = [v8 traceContext];
    v10->_traceContext = v13;
    v14 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v13, v14, v10);
  }

  return v10;
}

- (CaptureMTLBuffer)initWithBaseObject:(id)a3 captureHeap:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CaptureMTLBuffer;
  v9 = [(CaptureMTLBuffer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    v11 = [v8 device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = v11;

    objc_storeStrong(&v10->_captureHeap, a4);
    v13 = [v8 traceContext];
    v10->_traceContext = v13;
    v14 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v13, v14, v10);

    [v8 usedSize];
    [v8 currentAllocatedSize];
  }

  return v10;
}

- (CaptureMTLBuffer)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CaptureMTLBuffer;
  v9 = [(CaptureMTLBuffer *)&v14 init];
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