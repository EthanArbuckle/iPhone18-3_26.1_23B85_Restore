@interface CaptureMTLTexture
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasResource:(id)resource;
- (BOOL)isAliasable;
- (BOOL)isPurgeable;
- (CaptureMTLTexture)initWithBaseObject:(id)object captureBuffer:(id)buffer;
- (CaptureMTLTexture)initWithBaseObject:(id)object captureDevice:(id)device;
- (CaptureMTLTexture)initWithBaseObject:(id)object captureHeap:(id)heap;
- (CaptureMTLTexture)initWithBaseObject:(id)object captureTexture:(id)texture;
- (MTLBuffer)buffer;
- (MTLTexture)parentTexture;
- (NSString)description;
- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice;
- (id)newSharedTextureHandle;
- (id)newTextureViewWithDescriptor:(id)descriptor;
- (id)newTextureViewWithPixelFormat:(unint64_t)format;
- (id)newTextureViewWithPixelFormat:(unint64_t)format resourceIndex:(unint64_t)index;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle resourceIndex:(unint64_t)index;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)getBytes:(void *)bytes bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image fromRegion:(id *)region mipmapLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)getBytes:(void *)bytes bytesPerRow:(unint64_t)row fromRegion:(id *)region mipmapLevel:(unint64_t)level;
- (void)makeAliasable;
- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level slice:(unint64_t)slice withBytes:(const void *)bytes bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level withBytes:(const void *)bytes bytesPerRow:(unint64_t)row;
- (void)setLabel:(id)label;
- (void)touch;
- (void)updateDrawableStream:(GTTraceStream *)stream;
@end

@implementation CaptureMTLTexture

- (unint64_t)setPurgeableState:(unint64_t)state
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLTextureSPI *)self->_baseObject setPurgeableState:state];
  v7 = v18;
  *(v18 + 8) = -16232;
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
  traceStream = [(CaptureMTLTexture *)self traceStream];
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

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle resourceIndex:(unint64_t)index
{
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  traceContext = self->_traceContext;
  v39 = traceContext;
  *&v40 = 0;
  *(&v40 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v13 = v12;
  v14 = *v12;
  *v12 = v15;
  *&v41 = v14;
  BYTE8(v41) = *(v12 + 8);
  *(&v41 + 9) = 16400;
  *(&v41 + 11) = 0;
  HIBYTE(v41) = 0;
  v34 = v17;
  v35 = v16;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v21 = [MTLTextureSPI newTextureViewWithPixelFormat:"newTextureViewWithPixelFormat:textureType:levels:slices:swizzle:resourceIndex:" textureType:*&swizzle levels:v17 slices:? swizzle:? resourceIndex:?];
  if (v21)
  {
    v22 = [[CaptureMTLTexture alloc] initWithBaseObject:v21 captureTexture:self];
  }

  else
  {
    v22 = 0;
  }

  GTTraceEncoder_setStream(&v39, [(CaptureMTLTexture *)v22 traceStream]);
  v23 = *(&v39 + 1);
  v24 = v40;
  *(v40 + 8) = -15688;
  v25 = *(v23 + 24);
  v26 = BYTE10(v41);
  ++BYTE10(v41);
  Bytes = GTTraceMemPool_allocateBytes(v25, *(&v40 + 1), v26 | 0x5000000000);
  *(v24 + 13) = v26;
  SaveMTLTextureInfo(&v39, v21);
  traceStream = [(CaptureMTLTexture *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v22 traceStream];
  if (traceStream2)
  {
    v31 = traceStream2->var0;
  }

  else
  {
    v31 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v31;
  *(Bytes + 4) = format;
  *(Bytes + 5) = type;
  *(Bytes + 6) = v35;
  *(Bytes + 7) = v36;
  *(Bytes + 8) = v37;
  *(Bytes + 9) = v38;
  *(Bytes + 10) = v34;
  *(Bytes + 22) = swizzle;
  *(Bytes + 23) = 0;
  v32 = v40;
  *v13 = v41;
  *(v13 + 8) = BYTE8(v41);
  *(v32 + 15) |= 8u;

  return v22;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle
{
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  traceContext = self->_traceContext;
  v36 = traceContext;
  *&v37 = 0;
  *(&v37 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v12 = v11;
  v13 = *v11;
  *v11 = v14;
  *&v38 = v13;
  BYTE8(v38) = *(v11 + 8);
  *(&v38 + 9) = 16400;
  *(&v38 + 11) = 0;
  HIBYTE(v38) = 0;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v19 = [MTLTextureSPI newTextureViewWithPixelFormat:"newTextureViewWithPixelFormat:textureType:levels:slices:swizzle:" textureType:*&swizzle levels:? slices:? swizzle:?];
  if (v19)
  {
    v20 = [[CaptureMTLTexture alloc] initWithBaseObject:v19 captureTexture:self];
  }

  else
  {
    v20 = 0;
  }

  GTTraceEncoder_setStream(&v36, [(CaptureMTLTexture *)v20 traceStream]);
  v21 = *(&v36 + 1);
  v22 = v37;
  *(v37 + 8) = -15775;
  v23 = *(v21 + 24);
  v24 = BYTE10(v38);
  ++BYTE10(v38);
  Bytes = GTTraceMemPool_allocateBytes(v23, *(&v37 + 1), v24 | 0x4800000000);
  *(v22 + 13) = v24;
  SaveMTLTextureInfo(&v36, v19);
  traceStream = [(CaptureMTLTexture *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v20 traceStream];
  if (traceStream2)
  {
    v29 = traceStream2->var0;
  }

  else
  {
    v29 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v29;
  *(Bytes + 4) = format;
  *(Bytes + 5) = type;
  *(Bytes + 6) = v32;
  *(Bytes + 7) = v33;
  *(Bytes + 8) = v34;
  *(Bytes + 9) = v35;
  *(Bytes + 20) = swizzle;
  *(Bytes + 21) = 0;
  v30 = v37;
  *v12 = v38;
  *(v12 + 8) = BYTE8(v38);
  *(v30 + 15) |= 8u;

  return v20;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index
{
  location = levels.location;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  traceContext = self->_traceContext;
  v37 = traceContext;
  *&v38 = 0;
  *(&v38 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v13 = v12;
  v14 = *v12;
  *v12 = v15;
  *&v39 = v14;
  BYTE8(v39) = *(v12 + 8);
  *(&v39 + 9) = 16400;
  *(&v39 + 11) = 0;
  HIBYTE(v39) = 0;
  v33 = v17;
  v34 = v16;
  v35 = v18;
  v36 = v19;
  v20 = [MTLTextureSPI newTextureViewWithPixelFormat:"newTextureViewWithPixelFormat:textureType:levels:slices:resourceIndex:" textureType:v17 levels:? slices:? resourceIndex:?];
  if (v20)
  {
    v21 = [[CaptureMTLTexture alloc] initWithBaseObject:v20 captureTexture:self];
  }

  else
  {
    v21 = 0;
  }

  GTTraceEncoder_setStream(&v37, [(CaptureMTLTexture *)v21 traceStream]);
  v22 = *(&v37 + 1);
  v23 = v38;
  *(v38 + 8) = -15689;
  v24 = *(v22 + 24);
  v25 = BYTE10(v39);
  ++BYTE10(v39);
  Bytes = GTTraceMemPool_allocateBytes(v24, *(&v38 + 1), v25 | 0x4800000000);
  *(v23 + 13) = v25;
  SaveMTLTextureInfo(&v37, v20);
  traceStream = [(CaptureMTLTexture *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v21 traceStream];
  if (traceStream2)
  {
    v30 = traceStream2->var0;
  }

  else
  {
    v30 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v30;
  *(Bytes + 4) = format;
  *(Bytes + 5) = type;
  *(Bytes + 6) = location;
  *(Bytes + 7) = v34;
  *(Bytes + 8) = v35;
  *(Bytes + 9) = v36;
  *(Bytes + 10) = v33;
  v31 = v38;
  *v13 = v39;
  *(v13 + 8) = BYTE8(v39);
  *(v31 + 15) |= 8u;

  return v21;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices
{
  location = levels.location;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceContext = self->_traceContext;
  v33 = traceContext;
  *&v34 = 0;
  *(&v34 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v12 = v11;
  v13 = *v11;
  *v11 = v14;
  *&v35 = v13;
  BYTE8(v35) = *(v11 + 8);
  *(&v35 + 9) = 16400;
  *(&v35 + 11) = 0;
  HIBYTE(v35) = 0;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v18 = [MTLTextureSPI newTextureViewWithPixelFormat:"newTextureViewWithPixelFormat:textureType:levels:slices:" textureType:? levels:? slices:?];
  if (v18)
  {
    v19 = [[CaptureMTLTexture alloc] initWithBaseObject:v18 captureTexture:self];
  }

  else
  {
    v19 = 0;
  }

  GTTraceEncoder_setStream(&v33, [(CaptureMTLTexture *)v19 traceStream]);
  v20 = v34;
  *(v34 + 8) = -16196;
  if (BYTE9(v35))
  {
    v21 = *(*(&v33 + 1) + 24);
    v22 = BYTE10(v35);
    ++BYTE10(v35);
    v23 = GTTraceMemPool_allocateBytes(v21, *(&v34 + 1), v22 | 0x4000000000) + 16;
  }

  else
  {
    LOBYTE(v22) = 0;
    BYTE9(v35) = 64;
    v23 = v20;
  }

  v20[13] = v22;
  SaveMTLTextureInfo(&v33, v18);
  traceStream = [(CaptureMTLTexture *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v19 traceStream];
  if (traceStream2)
  {
    v27 = traceStream2->var0;
  }

  else
  {
    v27 = 0;
  }

  *v23 = var0;
  *(v23 + 1) = v27;
  *(v23 + 2) = format;
  *(v23 + 3) = type;
  *(v23 + 4) = location;
  *(v23 + 5) = v30;
  *(v23 + 6) = v31;
  *(v23 + 7) = v32;
  v28 = v34;
  *v12 = v35;
  *(v12 + 8) = BYTE8(v35);
  *(v28 + 15) |= 8u;

  return v19;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format resourceIndex:(unint64_t)index
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceContext = self->_traceContext;
  v25 = traceContext;
  *&v26 = 0;
  *(&v26 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v27 = v10;
  BYTE8(v27) = *(v8 + 8);
  *(&v27 + 9) = 16400;
  *(&v27 + 11) = 0;
  HIBYTE(v27) = 0;
  v12 = [MTLTextureSPI newTextureViewWithPixelFormat:"newTextureViewWithPixelFormat:resourceIndex:" resourceIndex:?];
  if (v12)
  {
    v13 = [[CaptureMTLTexture alloc] initWithBaseObject:v12 captureTexture:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v25, [(CaptureMTLTexture *)v13 traceStream]);
  v14 = v26;
  *(v26 + 8) = -15690;
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
  SaveMTLTextureInfo(&v25, v12);
  traceStream = [(CaptureMTLTexture *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v13 traceStream];
  if (traceStream2)
  {
    v22 = traceStream2->var0;
  }

  else
  {
    v22 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = format;
  *(v16 + 3) = index;
  v23 = v26;
  *v9 = v27;
  *(v9 + 8) = BYTE8(v27);
  *(v23 + 15) |= 8u;

  return v13;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format
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
  v10 = [(MTLTextureSPI *)self->_baseObject newTextureViewWithPixelFormat:?];
  if (v10)
  {
    v11 = [[CaptureMTLTexture alloc] initWithBaseObject:v10 captureTexture:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v23, [(CaptureMTLTexture *)v11 traceStream]);
  v12 = v24;
  *(v24 + 8) = -16233;
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
  SaveMTLTextureInfo(&v23, v10);
  traceStream = [(CaptureMTLTexture *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v11 traceStream];
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
  *(v14 + 2) = format;
  v21 = v24;
  *v7 = v25;
  *(v7 + 8) = BYTE8(v25);
  *(v21 + 15) |= 8u;

  return v11;
}

- (id)newTextureViewWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  v24 = traceContext;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v26 = v8;
  BYTE8(v26) = *(v6 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  v10 = [(MTLTextureSPI *)self->_baseObject newTextureViewWithDescriptor:descriptorCopy];
  if (v10)
  {
    v11 = [[CaptureMTLTexture alloc] initWithBaseObject:v10 captureTexture:self];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLTexture *)v11 traceStream]);
  v12 = v25;
  *(v25 + 8) = -14801;
  v13 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v15 = *(*(&v24 + 1) + 24);
    v16 = BYTE10(v26);
    ++BYTE10(v26);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v25 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v12 + 13) = v13;
  SaveMTLTextureInfo(&v24, v10);
  traceStream = [(CaptureMTLTexture *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  v21 = SaveMTLTextureViewDescriptor(&v24, descriptorCopy);
  *v14 = var0;
  *(v14 + 1) = v20;
  v14[16] = v21;
  *(v14 + 17) = 0;
  *(v14 + 5) = 0;
  v22 = v25;
  *v7 = v26;
  *(v7 + 8) = BYTE8(v26);
  *(v22 + 15) |= 8u;

  return v11;
}

- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice
{
  v7 = [(MTLTextureSPI *)self->_baseObject newCompressedTextureViewWithPixelFormat:format textureType:type level:level slice:slice];
  if (v7)
  {
    v8 = [[CaptureMTLTexture alloc] initWithBaseObject:v7 captureTexture:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
    [(MTLTextureSPI *)self->_baseObject makeAliasable];
    [(MTLHeap *)self->_captureHeap usedSize];
    [(MTLHeap *)self->_captureHeap currentAllocatedSize];
    v6 = v16;
    *(v16 + 8) = -16114;
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
    traceStream = [(CaptureMTLTexture *)self traceStream];
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
  isPurgeable = [(MTLTextureSPI *)self->_baseObject isPurgeable];
  v5 = v16;
  *(v16 + 8) = -16231;
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
  traceStream = [(CaptureMTLTexture *)self traceStream];
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
  isAliasable = [(MTLTextureSPI *)self->_baseObject isAliasable];
  v5 = v16;
  *(v16 + 8) = -16108;
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
  traceStream = [(CaptureMTLTexture *)self traceStream];
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
  LOBYTE(baseObject) = [(MTLTextureSPI *)baseObject doesAliasResource:baseObject];

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

  return [(MTLTextureSPI *)baseObject doesAliasAnyResources:v8 count:count];
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

  return [(MTLTextureSPI *)baseObject doesAliasAllResources:v8 count:count];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLTextureSPI *)self->_baseObject setLabel:labelCopy];
  v6 = v19;
  *(v19 + 8) = -16240;
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
  traceStream = [(CaptureMTLTexture *)self traceStream];
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
  v5 = [(MTLTextureSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLTexture;
  v3 = [(CaptureMTLTexture *)&v7 description];
  v4 = [(MTLTextureSPI *)self->_baseObject description];
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

- (void)updateDrawableStream:(GTTraceStream *)stream
{
  drawableStream = self->_drawableStream;
  if (drawableStream)
  {
    v6 = drawableStream == stream;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
    v7 = v18;
    *(v18 + 8) = -7161;
    v8 = BYTE9(v19);
    if (BYTE9(v19) > 0x38uLL)
    {
      v10 = *(*(&v17 + 1) + 24);
      v11 = BYTE10(v19);
      ++BYTE10(v19);
      v9 = GTTraceMemPool_allocateBytes(v10, *(&v18 + 1), v11 | 0x800000000) + 16;
      v8 = v11;
    }

    else
    {
      v9 = (v7 + BYTE9(v19));
      BYTE9(v19) += 8;
    }

    *(v7 + 13) = v8;
    v12 = self->_drawableStream;
    if (v12)
    {
      var0 = v12->var0;
    }

    else
    {
      var0 = 0;
    }

    *v9 = var0;
    s();
    *v14 = v15;
    *(v14 + 8) = BYTE8(v19);
    *(v18 + 15) |= 8u;
    GTTraceContext_closeStream(self->_traceContext, v16);
  }

  self->_drawableStream = stream;
}

- (void)getBytes:(void *)bytes bytesPerRow:(unint64_t)row fromRegion:(id *)region mipmapLevel:(unint64_t)level
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    p_var1 = &traceStream[1].var1;
    v13 = atomic_load(p_var1);
    v14 = v13;
    do
    {
      atomic_compare_exchange_strong(p_var1, &v14, v13 | 1);
      v15 = v14 == v13;
      v13 = v14;
    }

    while (!v15);
  }

  baseObject = self->_baseObject;
  v17 = *&region->var0.var2;
  v32 = *&region->var0.var0;
  v33 = v17;
  v34 = *&region->var1.var1;
  [(MTLTextureSPI *)baseObject getBytes:bytes bytesPerRow:row fromRegion:&v32 mipmapLevel:level];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v18 = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v32);
    v19 = v33;
    *(v33 + 8) = -16235;
    v20 = *(*(&v32 + 1) + 24);
    v21 = BYTE10(v34);
    ++BYTE10(v34);
    Bytes = GTTraceMemPool_allocateBytes(v20, *(&v33 + 1), v21 | 0x5000000000);
    *(v19 + 13) = v21;
    traceStream = [(CaptureMTLTexture *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    var1 = region->var1.var1;
    var2 = region->var1.var2;
    v30 = *&region->var0.var2;
    v31 = *&region->var0.var0;
    v27 = TransferBytes(&v32, bytes, &dword_0 + 1);
    *(Bytes + 2) = var0;
    *(Bytes + 3) = row;
    *(Bytes + 2) = v31;
    *(Bytes + 3) = v30;
    *(Bytes + 8) = var1;
    *(Bytes + 9) = var2;
    *(Bytes + 10) = level;
    Bytes[88] = v27;
    *(Bytes + 89) = 0;
    *(Bytes + 23) = 0;
    s();
    *v28 = v29;
    *(v28 + 8) = BYTE8(v34);
    *(v33 + 15) |= 8u;
  }
}

- (void)getBytes:(void *)bytes bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image fromRegion:(id *)region mipmapLevel:(unint64_t)level slice:(unint64_t)slice
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    p_var1 = &traceStream[1].var1;
    v17 = atomic_load(p_var1);
    v18 = v17;
    do
    {
      atomic_compare_exchange_strong(p_var1, &v18, v17 | 1);
      v19 = v18 == v17;
      v17 = v18;
    }

    while (!v19);
  }

  baseObject = self->_baseObject;
  v21 = *&region->var0.var2;
  v36 = *&region->var0.var0;
  v37 = v21;
  v38 = *&region->var1.var1;
  [(MTLTextureSPI *)baseObject getBytes:bytes bytesPerRow:row bytesPerImage:image fromRegion:&v36 mipmapLevel:level slice:slice];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v22 = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v36);
    v23 = v37;
    *(v37 + 8) = -16237;
    v24 = *(*(&v36 + 1) + 24);
    v25 = BYTE10(v38);
    ++BYTE10(v38);
    Bytes = GTTraceMemPool_allocateBytes(v24, *(&v37 + 1), v25 | 0x6000000000);
    *(v23 + 13) = v25;
    traceStream = [(CaptureMTLTexture *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    var1 = region->var1.var1;
    var2 = region->var1.var2;
    v34 = *&region->var0.var2;
    v35 = *&region->var0.var0;
    v31 = TransferBytes(&v36, bytes, &dword_0 + 1);
    *(Bytes + 2) = var0;
    *(Bytes + 3) = row;
    *(Bytes + 4) = image;
    *(Bytes + 56) = v34;
    *(Bytes + 40) = v35;
    *(Bytes + 9) = var1;
    *(Bytes + 10) = var2;
    *(Bytes + 11) = level;
    *(Bytes + 12) = slice;
    Bytes[104] = v31;
    *(Bytes + 105) = 0;
    *(Bytes + 27) = 0;
    s();
    *v32 = v33;
    *(v32 + 8) = BYTE8(v38);
    *(v37 + 15) |= 8u;
  }
}

- (id)newSharedTextureHandle
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  newSharedTextureHandle = [(MTLTextureSPI *)self->_baseObject newSharedTextureHandle];
  v5 = v16;
  *(v16 + 8) = -15910;
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
  traceStream = [(CaptureMTLTexture *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = newSharedTextureHandle;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  return newSharedTextureHandle;
}

- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level withBytes:(const void *)bytes bytesPerRow:(unint64_t)row
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    p_var1 = &traceStream[1].var1;
    v13 = atomic_load(p_var1);
    v14 = v13;
    do
    {
      atomic_compare_exchange_strong(p_var1, &v14, v13 | 2);
      v15 = v14 == v13;
      v13 = v14;
    }

    while (!v15);
  }

  baseObject = self->_baseObject;
  v17 = *&region->var0.var2;
  v34 = *&region->var0.var0;
  v35 = v17;
  v36 = *&region->var1.var1;
  [(MTLTextureSPI *)baseObject replaceRegion:&v34 mipmapLevel:level withBytes:bytes bytesPerRow:row];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v18 = DEVICEOBJECT(self);
    v34 = *&region->var1.var0;
    *&v35 = region->var1.var2;
    ClientMemorySize = GetClientMemorySize(v18, &v34, row, 0);

    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v20 = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
    v21 = v35;
    *(v35 + 8) = -16234;
    v22 = *(*(&v34 + 1) + 24);
    v23 = BYTE10(v36);
    ++BYTE10(v36);
    Bytes = GTTraceMemPool_allocateBytes(v22, *(&v35 + 1), v23 | 0x5000000000);
    *(v21 + 13) = v23;
    traceStream = [(CaptureMTLTexture *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    var1 = region->var1.var1;
    var2 = region->var1.var2;
    v32 = *&region->var0.var2;
    v33 = *&region->var0.var0;
    v29 = TransferBytes(&v34, bytes, ClientMemorySize);
    *(Bytes + 2) = var0;
    *(Bytes + 40) = v32;
    *(Bytes + 24) = v33;
    *(Bytes + 7) = var1;
    *(Bytes + 8) = var2;
    *(Bytes + 9) = level;
    *(Bytes + 10) = row;
    Bytes[88] = v29;
    *(Bytes + 89) = 0;
    *(Bytes + 23) = 0;
    s();
    *v30 = v31;
    *(v30 + 8) = BYTE8(v36);
    *(v35 + 15) |= 8u;
  }
}

- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level slice:(unint64_t)slice withBytes:(const void *)bytes bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    p_var1 = &traceStream[1].var1;
    v17 = atomic_load(p_var1);
    v18 = v17;
    do
    {
      atomic_compare_exchange_strong(p_var1, &v18, v17 | 2);
      v19 = v18 == v17;
      v17 = v18;
    }

    while (!v19);
  }

  baseObject = self->_baseObject;
  v21 = *&region->var0.var2;
  v38 = *&region->var0.var0;
  v39 = v21;
  v40 = *&region->var1.var1;
  [(MTLTextureSPI *)baseObject replaceRegion:&v38 mipmapLevel:level slice:slice withBytes:bytes bytesPerRow:row bytesPerImage:image];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v22 = DEVICEOBJECT(self);
    v38 = *&region->var1.var0;
    *&v39 = region->var1.var2;
    ClientMemorySize = GetClientMemorySize(v22, &v38, row, image);

    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v23 = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
    v24 = v39;
    *(v39 + 8) = -16236;
    v25 = *(*(&v38 + 1) + 24);
    v26 = BYTE10(v40);
    ++BYTE10(v40);
    Bytes = GTTraceMemPool_allocateBytes(v25, *(&v39 + 1), v26 | 0x6800000000);
    *(v24 + 13) = v26;
    traceStream = [(CaptureMTLTexture *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    var1 = region->var1.var1;
    var2 = region->var1.var2;
    v35 = *&region->var0.var2;
    v36 = *&region->var0.var0;
    v32 = TransferBytes(&v38, bytes, ClientMemorySize);
    *(Bytes + 2) = var0;
    *(Bytes + 40) = v35;
    *(Bytes + 24) = v36;
    *(Bytes + 7) = var1;
    *(Bytes + 8) = var2;
    *(Bytes + 9) = level;
    *(Bytes + 10) = slice;
    *(Bytes + 11) = row;
    *(Bytes + 12) = image;
    *(Bytes + 13) = 0;
    Bytes[112] = v32;
    *(Bytes + 113) = 0;
    *(Bytes + 29) = 0;
    s();
    *v33 = v34;
    *(v33 + 8) = BYTE8(v40);
    *(v39 + 15) |= 8u;
  }
}

- (MTLTexture)parentTexture
{
  if ([(MTLResource *)self->_captureRootResource conformsToProtocol:&OBJC_PROTOCOL___MTLTexture])
  {
    captureRootResource = self->_captureRootResource;
  }

  else
  {
    captureRootResource = 0;
  }

  return captureRootResource;
}

- (MTLBuffer)buffer
{
  if ([(MTLResource *)self->_captureRootResource conformsToProtocol:&OBJC_PROTOCOL___MTLBuffer])
  {
    captureRootResource = self->_captureRootResource;
  }

  else
  {
    captureRootResource = 0;
  }

  return captureRootResource;
}

- (void)dealloc
{
  [(CaptureMTLTexture *)self updateDrawableStream:0];
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
  *(v16 + 8) = -16238;
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
  traceStream = [(CaptureMTLTexture *)self traceStream];
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
  v14.super_class = CaptureMTLTexture;
  [(CaptureMTLTexture *)&v14 dealloc];
}

- (CaptureMTLTexture)initWithBaseObject:(id)object captureTexture:(id)texture
{
  objectCopy = object;
  textureCopy = texture;
  v18.receiver = self;
  v18.super_class = CaptureMTLTexture;
  v9 = [(CaptureMTLTexture *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [textureCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    heap = [textureCopy heap];
    captureHeap = v10->_captureHeap;
    v10->_captureHeap = heap;

    objc_storeStrong(&v10->_captureRootResource, texture);
    traceContext = [textureCopy traceContext];
    v10->_traceContext = traceContext;
    v16 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v16, v10);
  }

  return v10;
}

- (CaptureMTLTexture)initWithBaseObject:(id)object captureBuffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v18.receiver = self;
  v18.super_class = CaptureMTLTexture;
  v9 = [(CaptureMTLTexture *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [bufferCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    heap = [bufferCopy heap];
    captureHeap = v10->_captureHeap;
    v10->_captureHeap = heap;

    objc_storeStrong(&v10->_captureRootResource, buffer);
    traceContext = [bufferCopy traceContext];
    v10->_traceContext = traceContext;
    v16 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v16, v10);
  }

  return v10;
}

- (CaptureMTLTexture)initWithBaseObject:(id)object captureHeap:(id)heap
{
  objectCopy = object;
  heapCopy = heap;
  v16.receiver = self;
  v16.super_class = CaptureMTLTexture;
  v9 = [(CaptureMTLTexture *)&v16 init];
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

- (CaptureMTLTexture)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLTexture;
  v9 = [(CaptureMTLTexture *)&v14 init];
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