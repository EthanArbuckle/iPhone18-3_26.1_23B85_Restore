@interface CaptureMTLBuffer
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasResource:(id)resource;
- (BOOL)isAliasable;
- (BOOL)isPurgeable;
- (CaptureMTLBuffer)initWithBaseObject:(id)object captureBuffer:(id)buffer;
- (CaptureMTLBuffer)initWithBaseObject:(id)object captureDevice:(id)device;
- (CaptureMTLBuffer)initWithBaseObject:(id)object captureHeap:(id)heap;
- (NSString)description;
- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (id)newTensorWithDescriptor:(id)descriptor offset:(unint64_t)offset error:(id *)error;
- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (unint64_t)streamReference;
- (void)addDebugMarker:(id)marker range:(_NSRange)range;
- (void)contents;
- (void)dealloc;
- (void)didModifyRange:(_NSRange)range;
- (void)makeAliasable;
- (void)setLabel:(id)label;
- (void)touch;
@end

@implementation CaptureMTLBuffer

- (unint64_t)setPurgeableState:(unint64_t)state
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLBufferSPI *)self->_baseObject setPurgeableState:state];
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
  traceStream = [(CaptureMTLBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = v6;
  *(v9 + 2) = state;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
  return v6;
}

- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row
{
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
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
  v14 = [(MTLBufferSPI *)self->_baseObject newTextureWithDescriptor:descriptorCopy offset:offset bytesPerRow:row];
  v15 = [(MTLDevice *)self->_captureDevice dummyEncodeTextureIntoArgumentBufferForResourceIndex:v14 withDescriptor:descriptorCopy];

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
  traceStream = [(CaptureMTLBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v16 traceStream];
  if (traceStream2)
  {
    v25 = traceStream2->var0;
  }

  else
  {
    v25 = 0;
  }

  v26 = SaveMTLTextureDescriptor(&v29, v15);
  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = offset;
  *(v19 + 3) = row;
  v19[32] = v26;
  *(v19 + 33) = 0;
  *(v19 + 9) = 0;
  v27 = v30;
  *v11 = v31;
  *(v11 + 8) = BYTE8(v31);
  *(v27 + 15) |= 8u;

  return v16;
}

- (id)newTensorWithDescriptor:(id)descriptor offset:(unint64_t)offset error:(id *)error
{
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
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
  v14 = [(MTLBufferSPI *)self->_baseObject newTensorWithDescriptor:descriptorCopy offset:offset error:error];
  v15 = [descriptorCopy copy];

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
  traceStream = [(CaptureMTLBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTensor *)v17 traceStream];
  if (!traceStream2)
  {
    v26 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v26 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v27 = SaveMTLTensorDescriptor(&v30, v15);
  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = offset;
  *(v20 + 3) = error;
  v20[32] = v27;
  *(v20 + 33) = 0;
  *(v20 + 9) = 0;
  v28 = v31;
  *v11 = v32;
  *(v11 + 8) = BYTE8(v32);
  *(v28 + 15) |= 8u;

  return v17;
}

- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
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
  v16 = [(MTLBufferSPI *)self->_baseObject newLinearTextureWithDescriptor:descriptorCopy offset:offset bytesPerRow:row bytesPerImage:image];
  v17 = [(MTLDevice *)self->_captureDevice dummyEncodeTextureIntoArgumentBufferForResourceIndex:v16 withDescriptor:descriptorCopy];

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
    offsetCopy = offset;
    rowCopy = row;
    imageCopy = image;
    v27 = BYTE10(v38);
    ++BYTE10(v38);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v37 + 1), v27 | 0x3000000000) + 16;
    v20 = v27;
    image = imageCopy;
    row = rowCopy;
    offset = offsetCopy;
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
  traceStream = [(CaptureMTLBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v18 traceStream];
  if (traceStream2)
  {
    v31 = traceStream2->var0;
  }

  else
  {
    v31 = 0;
  }

  v32 = SaveMTLTextureDescriptor(&v36, v17);
  *v21 = var0;
  *(v21 + 1) = v31;
  *(v21 + 2) = offset;
  *(v21 + 3) = row;
  *(v21 + 4) = image;
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
    traceStream = [(CaptureMTLBuffer *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
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
  isPurgeable = [(MTLBufferSPI *)self->_baseObject isPurgeable];
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
  traceStream = [(CaptureMTLBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = isPurgeable;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  return isPurgeable;
}

- (BOOL)isAliasable
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  isAliasable = [(MTLBufferSPI *)self->_baseObject isAliasable];
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
  traceStream = [(CaptureMTLBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = isAliasable;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  return isAliasable;
}

- (BOOL)doesAliasResource:(id)resource
{
  baseObject = self->_baseObject;
  baseObject = [resource baseObject];
  LOBYTE(baseObject) = [(MTLBufferSPI *)baseObject doesAliasResource:baseObject];

  return baseObject;
}

- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count
{
  baseObject = self->_baseObject;
  __chkstk_darwin(self, 8 * count);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  if (count)
  {
    v9 = v8;
    countCopy = count;
    do
    {
      v11 = *resources++;
      *v9 = [v11 baseObject];
      v9 += 8;
      --countCopy;
    }

    while (countCopy);
  }

  return [(MTLBufferSPI *)baseObject doesAliasAnyResources:v8 count:count];
}

- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count
{
  baseObject = self->_baseObject;
  __chkstk_darwin(self, 8 * count);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  if (count)
  {
    v9 = v8;
    countCopy = count;
    do
    {
      v11 = *resources++;
      *v9 = [v11 baseObject];
      v9 += 8;
      --countCopy;
    }

    while (countCopy);
  }

  return [(MTLBufferSPI *)baseObject doesAliasAllResources:v8 count:count];
}

- (void)didModifyRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
    traceStream = [(CaptureMTLBuffer *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
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

- (void)addDebugMarker:(id)marker range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  markerCopy = marker;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  [(MTLBufferSPI *)self->_baseObject addDebugMarker:markerCopy range:location, length];
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
  traceStream = [(CaptureMTLBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [markerCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [markerCopy UTF8String];
    v18 = strlen([markerCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v21, uTF8String2, v18 + 1);
  }

  *v11 = var0;
  *(v11 + 1) = location;
  *(v11 + 2) = length;
  v11[24] = uTF8String;
  *(v11 + 25) = 0;
  *(v11 + 7) = 0;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLBufferSPI *)self->_baseObject setLabel:labelCopy];
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
  traceStream = [(CaptureMTLBuffer *)self traceStream];
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
  v5 = [(MTLBufferSPI *)baseObject conformsToProtocol:protocolCopy];

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
  traceStream = [(CaptureMTLBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
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

- (CaptureMTLBuffer)initWithBaseObject:(id)object captureBuffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v16.receiver = self;
  v16.super_class = CaptureMTLBuffer;
  v9 = [(CaptureMTLBuffer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [bufferCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    objc_storeStrong(&v10->_captureRemoteStorageBuffer, buffer);
    traceContext = [bufferCopy traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v14, v10);
  }

  return v10;
}

- (CaptureMTLBuffer)initWithBaseObject:(id)object captureHeap:(id)heap
{
  objectCopy = object;
  heapCopy = heap;
  v16.receiver = self;
  v16.super_class = CaptureMTLBuffer;
  v9 = [(CaptureMTLBuffer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [heapCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    objc_storeStrong(&v10->_captureHeap, heap);
    traceContext = [heapCopy traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v14, v10);

    [heapCopy usedSize];
    [heapCopy currentAllocatedSize];
  }

  return v10;
}

- (CaptureMTLBuffer)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLBuffer;
  v9 = [(CaptureMTLBuffer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    objc_storeStrong(&v10->_captureDevice, device);
    traceContext = [deviceCopy traceContext];
    v10->_traceContext = traceContext;
    v12 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v12, v10);
  }

  return v10;
}

@end