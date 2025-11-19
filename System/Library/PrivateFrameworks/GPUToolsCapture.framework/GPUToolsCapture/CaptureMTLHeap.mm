@interface CaptureMTLHeap
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLHeap)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (NSString)description;
- (id)newAccelerationStructureWithDescriptor:(id)a3;
- (id)newAccelerationStructureWithDescriptor:(id)a3 offset:(unint64_t)a4;
- (id)newAccelerationStructureWithSize:(unint64_t)a3;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 offset:(unint64_t)a5;
- (id)newTextureWithDescriptor:(id)a3;
- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4;
- (unint64_t)currentAllocatedSize;
- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)a3;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (unint64_t)streamReference;
- (unint64_t)usedSize;
- (void)dealloc;
- (void)setLabel:(id)a3;
- (void)touch;
@end

@implementation CaptureMTLHeap

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLHeapSPI *)self->_baseObject setPurgeableState:a3];
  v7 = v18;
  *(v18 + 8) = -16115;
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
  v12 = [(CaptureMTLHeap *)self traceStream];
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

- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((dword_31F7C8 & 0x4000) != 0)
  {
    captureDevice = self->_captureDevice;
    goto LABEL_5;
  }

  if (qword_31F7B8)
  {
    captureDevice = self;
LABEL_5:
    v9 = [captureDevice newTextureWithDescriptor:v7];
    goto LABEL_6;
  }

  if ((dword_31F7C8 & 0x200) != 0)
  {
    v11 = [v6 copy];

    [v11 setCompressionType:0];
    [v11 setCompressionMode:2];
    v7 = v11;
  }

  v12 = v7;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceContext = self->_traceContext;
  v30 = traceContext;
  *&v31 = 0;
  *(&v31 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v15 = v14;
  v16 = *v14;
  *v14 = v17;
  *&v32 = v16;
  BYTE8(v32) = *(v14 + 8);
  *(&v32 + 9) = 16400;
  *(&v32 + 11) = 0;
  HIBYTE(v32) = 0;
  v18 = [(MTLHeapSPI *)self->_baseObject newTextureWithDescriptor:v7 offset:a4];
  v7 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeTextureIntoArgumentBufferForResourceIndex:v18 withDescriptor:v7];

  if (v18)
  {
    v9 = [[CaptureMTLTexture alloc] initWithBaseObject:v18 captureHeap:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v30, [(CaptureMTLTexture *)v9 traceStream]);
  v19 = v31;
  *(v31 + 8) = -15777;
  v20 = BYTE9(v32);
  if (BYTE9(v32) > 0x20uLL)
  {
    v22 = *(*(&v30 + 1) + 24);
    v23 = BYTE10(v32);
    ++BYTE10(v32);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v31 + 1), v23 | 0x2000000000) + 16;
    v20 = v23;
  }

  else
  {
    v21 = (v19 + BYTE9(v32));
    BYTE9(v32) += 32;
  }

  *(v19 + 13) = v20;
  SaveMTLTextureInfo(&v30, v18);
  v24 = [(CaptureMTLHeap *)self traceStream];
  if (v24)
  {
    var0 = v24->var0;
  }

  else
  {
    var0 = 0;
  }

  v26 = [(CaptureMTLTexture *)v9 traceStream];
  if (v26)
  {
    v27 = v26->var0;
  }

  else
  {
    v27 = 0;
  }

  v28 = SaveMTLTextureDescriptor(&v30, v7);
  *v21 = var0;
  *(v21 + 1) = v27;
  *(v21 + 2) = a4;
  v21[24] = v28;
  *(v21 + 25) = 0;
  *(v21 + 7) = 0;
  v29 = v31;
  *v15 = v32;
  *(v15 + 8) = BYTE8(v32);
  *(v29 + 15) |= 8u;

LABEL_6:
  return v9;
}

- (id)newTextureWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((dword_31F7C8 & 0x4000) != 0)
  {
    v14 = [(CaptureMTLDevice *)self->_captureDevice newTextureWithDescriptor:v4];
  }

  else
  {
    if ((dword_31F7C8 & 0x200) != 0)
    {
      v6 = [v4 copy];

      [v6 setCompressionType:0];
      [v6 setCompressionMode:2];
      v5 = v6;
    }

    v7 = v5;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    traceContext = self->_traceContext;
    v27 = traceContext;
    *&v28 = 0;
    *(&v28 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
    s();
    v10 = v9;
    v11 = *v9;
    *v9 = v12;
    *&v29 = v11;
    BYTE8(v29) = *(v9 + 8);
    *(&v29 + 9) = 16400;
    *(&v29 + 11) = 0;
    HIBYTE(v29) = 0;
    v13 = [(MTLHeapSPI *)self->_baseObject newTextureWithDescriptor:v5];
    v5 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeTextureIntoArgumentBufferForResourceIndex:v13 withDescriptor:v5];

    if (v13)
    {
      v14 = [[CaptureMTLTexture alloc] initWithBaseObject:v13 captureHeap:self];
    }

    else
    {
      v14 = 0;
    }

    GTTraceEncoder_setStream(&v27, [(CaptureMTLTexture *)v14 traceStream]);
    v15 = v28;
    *(v28 + 8) = -16116;
    v16 = BYTE9(v29);
    if (BYTE9(v29) > 0x28uLL)
    {
      v18 = *(*(&v27 + 1) + 24);
      v19 = BYTE10(v29);
      ++BYTE10(v29);
      v17 = GTTraceMemPool_allocateBytes(v18, *(&v28 + 1), v19 | 0x1800000000) + 16;
      v16 = v19;
    }

    else
    {
      v17 = (v15 + BYTE9(v29));
      BYTE9(v29) += 24;
    }

    *(v15 + 13) = v16;
    SaveMTLTextureInfo(&v27, v13);
    v20 = [(CaptureMTLHeap *)self traceStream];
    if (v20)
    {
      var0 = v20->var0;
    }

    else
    {
      var0 = 0;
    }

    v22 = [(CaptureMTLTexture *)v14 traceStream];
    if (v22)
    {
      v23 = v22->var0;
    }

    else
    {
      v23 = 0;
    }

    v24 = SaveMTLTextureDescriptor(&v27, v5);
    *v17 = var0;
    *(v17 + 1) = v23;
    v17[16] = v24;
    *(v17 + 17) = 0;
    *(v17 + 5) = 0;
    v25 = v28;
    *v10 = v29;
    *(v10 + 8) = BYTE8(v29);
    *(v25 + 15) |= 8u;
  }

  return v14;
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 offset:(unint64_t)a5
{
  v7 = self;
  if ((dword_31F7C8 & 0x4000) != 0)
  {
    self = self->_captureDevice;
LABEL_5:

    return [(CaptureMTLHeap *)self newBufferWithLength:a3 options:a4, a5];
  }

  if (qword_31F7B8)
  {
    goto LABEL_5;
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceContext = self->_traceContext;
  v27 = traceContext;
  *&v28 = 0;
  *(&v28 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v12 = v11;
  v13 = *v11;
  *v11 = v14;
  *&v29 = v13;
  BYTE8(v29) = *(v11 + 8);
  *(&v29 + 9) = 16400;
  *(&v29 + 11) = 0;
  HIBYTE(v29) = 0;
  v15 = [(MTLHeapSPI *)v7->_baseObject newBufferWithLength:a3 options:a4 offset:?];
  if (v15)
  {
    v16 = [[CaptureMTLBuffer alloc] initWithBaseObject:v15 captureHeap:v7];
  }

  else
  {
    v16 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLBuffer *)v16 traceStream]);
  v17 = v28;
  *(v28 + 8) = -15778;
  v18 = BYTE9(v29);
  if (BYTE9(v29) > 0x18uLL)
  {
    v20 = *(*(&v27 + 1) + 24);
    v21 = BYTE10(v29);
    ++BYTE10(v29);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v28 + 1), v21 | 0x2800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v29));
    BYTE9(v29) += 40;
  }

  *(v17 + 13) = v18;
  SaveMTLBufferInfo(&v27, v15);
  v22 = [(CaptureMTLHeap *)v7 traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  v24 = [(CaptureMTLBuffer *)v16 traceStream];
  if (v24)
  {
    v25 = v24->var0;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  *(v19 + 4) = a5;
  v26 = v28;
  *v12 = v29;
  *(v12 + 8) = BYTE8(v29);
  *(v26 + 15) |= 8u;

  return v16;
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4
{
  if ((dword_31F7C8 & 0x4000) != 0)
  {
    captureDevice = self->_captureDevice;

    return [CaptureMTLDevice newBufferWithLength:"newBufferWithLength:options:" options:?];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    traceContext = self->_traceContext;
    v26 = traceContext;
    *&v27 = 0;
    *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
    s();
    v9 = v8;
    v10 = *v8;
    *v8 = v11;
    *&v28 = v10;
    BYTE8(v28) = *(v8 + 8);
    *(&v28 + 9) = 16400;
    *(&v28 + 11) = 0;
    HIBYTE(v28) = 0;
    v12 = [(MTLHeapSPI *)self->_baseObject newBufferWithLength:a3 options:a4];
    if (v12)
    {
      v13 = [[CaptureMTLBuffer alloc] initWithBaseObject:v12 captureHeap:self];
    }

    else
    {
      v13 = 0;
    }

    GTTraceEncoder_setStream(&v26, [(CaptureMTLBuffer *)v13 traceStream]);
    v16 = v27;
    *(v27 + 8) = -16117;
    v17 = BYTE9(v28);
    if (BYTE9(v28) > 0x20uLL)
    {
      v19 = *(*(&v26 + 1) + 24);
      v20 = BYTE10(v28);
      ++BYTE10(v28);
      v18 = GTTraceMemPool_allocateBytes(v19, *(&v27 + 1), v20 | 0x2000000000) + 16;
      v17 = v20;
    }

    else
    {
      v18 = (v16 + BYTE9(v28));
      BYTE9(v28) += 32;
    }

    *(v16 + 13) = v17;
    SaveMTLBufferInfo(&v26, v12);
    v21 = [(CaptureMTLHeap *)self traceStream];
    if (v21)
    {
      var0 = v21->var0;
    }

    else
    {
      var0 = 0;
    }

    v23 = [(CaptureMTLBuffer *)v13 traceStream];
    if (v23)
    {
      v24 = v23->var0;
    }

    else
    {
      v24 = 0;
    }

    *v18 = var0;
    *(v18 + 1) = v24;
    *(v18 + 2) = a3;
    *(v18 + 3) = a4;
    v25 = v27;
    *v9 = v28;
    *(v9 + 8) = BYTE8(v28);
    *(v25 + 15) |= 8u;

    return v13;
  }
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4
{
  if ((dword_31F7C8 & 0x4000) != 0)
  {
    captureDevice = self->_captureDevice;

    return [CaptureMTLDevice newAccelerationStructureWithSize:"newAccelerationStructureWithSize:resourceIndex:" resourceIndex:?];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    traceContext = self->_traceContext;
    v26 = traceContext;
    *&v27 = 0;
    *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
    s();
    v9 = v8;
    v10 = *v8;
    *v8 = v11;
    *&v28 = v10;
    BYTE8(v28) = *(v8 + 8);
    *(&v28 + 9) = 16400;
    *(&v28 + 11) = 0;
    HIBYTE(v28) = 0;
    v12 = [(MTLHeapSPI *)self->_baseObject newAccelerationStructureWithSize:a3 resourceIndex:a4];
    if (v12)
    {
      v13 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v12 captureHeap:self];
    }

    else
    {
      v13 = 0;
    }

    GTTraceEncoder_setStream(&v26, [(CaptureMTLAccelerationStructure *)v13 traceStream]);
    v16 = v27;
    *(v27 + 8) = -15351;
    v17 = BYTE9(v28);
    if (BYTE9(v28) > 0x20uLL)
    {
      v19 = *(*(&v26 + 1) + 24);
      v20 = BYTE10(v28);
      ++BYTE10(v28);
      v18 = GTTraceMemPool_allocateBytes(v19, *(&v27 + 1), v20 | 0x2000000000) + 16;
      v17 = v20;
    }

    else
    {
      v18 = (v16 + BYTE9(v28));
      BYTE9(v28) += 32;
    }

    *(v16 + 13) = v17;
    SaveMTLAccelerationStructureInfo(&v26, v12);
    v21 = [(CaptureMTLHeap *)self traceStream];
    if (v21)
    {
      var0 = v21->var0;
    }

    else
    {
      var0 = 0;
    }

    v23 = [(CaptureMTLAccelerationStructure *)v13 traceStream];
    if (v23)
    {
      v24 = v23->var0;
    }

    else
    {
      v24 = 0;
    }

    *v18 = var0;
    *(v18 + 1) = v24;
    *(v18 + 2) = a3;
    *(v18 + 3) = a4;
    v25 = v27;
    *v9 = v28;
    *(v9 + 8) = BYTE8(v28);
    *(v25 + 15) |= 8u;

    return v13;
  }
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5
{
  v7 = self;
  if ((dword_31F7C8 & 0x4000) != 0)
  {
    self = self->_captureDevice;
LABEL_5:

    return [(CaptureMTLHeap *)self newAccelerationStructureWithSize:a3 resourceIndex:a5];
  }

  if (qword_31F7B8)
  {
    goto LABEL_5;
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceContext = self->_traceContext;
  v27 = traceContext;
  *&v28 = 0;
  *(&v28 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v12 = v11;
  v13 = *v11;
  *v11 = v14;
  *&v29 = v13;
  BYTE8(v29) = *(v11 + 8);
  *(&v29 + 9) = 16400;
  *(&v29 + 11) = 0;
  HIBYTE(v29) = 0;
  v15 = [MTLHeapSPI newAccelerationStructureWithSize:"newAccelerationStructureWithSize:offset:resourceIndex:" offset:a3 resourceIndex:?];
  if (v15)
  {
    v16 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v15 captureHeap:v7];
  }

  else
  {
    v16 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLAccelerationStructure *)v16 traceStream]);
  v17 = v28;
  *(v28 + 8) = -15352;
  v18 = BYTE9(v29);
  if (BYTE9(v29) > 0x18uLL)
  {
    v20 = *(*(&v27 + 1) + 24);
    v21 = BYTE10(v29);
    ++BYTE10(v29);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v28 + 1), v21 | 0x2800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v29));
    BYTE9(v29) += 40;
  }

  *(v17 + 13) = v18;
  SaveMTLAccelerationStructureInfo(&v27, v15);
  v22 = [(CaptureMTLHeap *)v7 traceStream];
  if (v22)
  {
    var0 = v22->var0;
  }

  else
  {
    var0 = 0;
  }

  v24 = [(CaptureMTLAccelerationStructure *)v16 traceStream];
  if (v24)
  {
    v25 = v24->var0;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  *(v19 + 4) = a5;
  v26 = v28;
  *v12 = v29;
  *(v12 + 8) = BYTE8(v29);
  *(v26 + 15) |= 8u;

  return v16;
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4
{
  v5 = self;
  if ((dword_31F7C8 & 0x4000) != 0)
  {
    self = self->_captureDevice;
LABEL_5:

    return [(CaptureMTLHeap *)self newAccelerationStructureWithSize:a3, a4];
  }

  if (qword_31F7B8)
  {
    goto LABEL_5;
  }

  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceContext = self->_traceContext;
  v25 = traceContext;
  *&v26 = 0;
  *(&v26 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v10 = v9;
  v11 = *v9;
  *v9 = v12;
  *&v27 = v11;
  BYTE8(v27) = *(v9 + 8);
  *(&v27 + 9) = 16400;
  *(&v27 + 11) = 0;
  HIBYTE(v27) = 0;
  v13 = [(MTLHeapSPI *)v5->_baseObject newAccelerationStructureWithSize:a3 offset:?];
  if (v13)
  {
    v14 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v13 captureHeap:v5];
  }

  else
  {
    v14 = 0;
  }

  GTTraceEncoder_setStream(&v25, [(CaptureMTLAccelerationStructure *)v14 traceStream]);
  v15 = v26;
  *(v26 + 8) = -15353;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  SaveMTLAccelerationStructureInfo(&v25, v13);
  v20 = [(CaptureMTLHeap *)v5 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [(CaptureMTLAccelerationStructure *)v14 traceStream];
  if (v22)
  {
    v23 = v22->var0;
  }

  else
  {
    v23 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  v24 = v26;
  *v10 = v27;
  *(v10 + 8) = BYTE8(v27);
  *(v24 + 15) |= 8u;

  return v14;
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3
{
  if ((dword_31F7C8 & 0x4000) != 0)
  {
    captureDevice = self->_captureDevice;

    return [(CaptureMTLDevice *)captureDevice newAccelerationStructureWithSize:?];
  }

  else
  {
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
    v10 = [(MTLHeapSPI *)self->_baseObject newAccelerationStructureWithSize:a3];
    if (v10)
    {
      v11 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v10 captureHeap:self];
    }

    else
    {
      v11 = 0;
    }

    GTTraceEncoder_setStream(&v24, [(CaptureMTLAccelerationStructure *)v11 traceStream]);
    v14 = v25;
    *(v25 + 8) = -15354;
    v15 = BYTE9(v26);
    if (BYTE9(v26) > 0x28uLL)
    {
      v17 = *(*(&v24 + 1) + 24);
      v18 = BYTE10(v26);
      ++BYTE10(v26);
      v16 = GTTraceMemPool_allocateBytes(v17, *(&v25 + 1), v18 | 0x1800000000) + 16;
      v15 = v18;
    }

    else
    {
      v16 = (v14 + BYTE9(v26));
      BYTE9(v26) += 24;
    }

    *(v14 + 13) = v15;
    SaveMTLAccelerationStructureInfo(&v24, v10);
    v19 = [(CaptureMTLHeap *)self traceStream];
    if (v19)
    {
      var0 = v19->var0;
    }

    else
    {
      var0 = 0;
    }

    v21 = [(CaptureMTLAccelerationStructure *)v11 traceStream];
    if (v21)
    {
      v22 = v21->var0;
    }

    else
    {
      v22 = 0;
    }

    *v16 = var0;
    *(v16 + 1) = v22;
    *(v16 + 2) = a3;
    v23 = v25;
    *v7 = v26;
    *(v7 + 8) = BYTE8(v26);
    *(v23 + 15) |= 8u;

    return v11;
  }
}

- (id)newAccelerationStructureWithDescriptor:(id)a3 offset:(unint64_t)a4
{
  v6 = a3;
  if ((dword_31F7C8 & 0x4000) != 0)
  {
    captureDevice = self->_captureDevice;
    goto LABEL_5;
  }

  if (qword_31F7B8)
  {
    captureDevice = self;
LABEL_5:
    v8 = [captureDevice newAccelerationStructureWithDescriptor:v6];
    goto LABEL_6;
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceContext = self->_traceContext;
  v29 = traceContext;
  *&v30 = 0;
  *(&v30 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v12 = v11;
  v13 = *v11;
  *v11 = v14;
  *&v31 = v13;
  BYTE8(v31) = *(v11 + 8);
  *(&v31 + 9) = 16400;
  *(&v31 + 11) = 0;
  HIBYTE(v31) = 0;
  baseObject = self->_baseObject;
  v16 = unwrapMTLAccelerationStructureDescriptor(v6);
  v17 = [(MTLHeapSPI *)baseObject newAccelerationStructureWithDescriptor:v16 offset:a4];

  if (v17)
  {
    v8 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v17 captureHeap:self];
  }

  else
  {
    v8 = 0;
  }

  GTTraceEncoder_setStream(&v29, [(CaptureMTLAccelerationStructure *)v8 traceStream]);
  v18 = v30;
  *(v30 + 8) = -15355;
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
  SaveMTLAccelerationStructureInfo(&v29, v17);
  v23 = [(CaptureMTLHeap *)self traceStream];
  if (v23)
  {
    var0 = v23->var0;
  }

  else
  {
    var0 = 0;
  }

  v25 = [(CaptureMTLAccelerationStructure *)v8 traceStream];
  if (v25)
  {
    v26 = v25->var0;
  }

  else
  {
    v26 = 0;
  }

  v27 = SaveMTLAccelerationStructureDescriptor(&v29, v6);
  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = a4;
  v20[24] = v27;
  *(v20 + 25) = 0;
  *(v20 + 7) = 0;
  v28 = v30;
  *v12 = v31;
  *(v12 + 8) = BYTE8(v31);
  *(v28 + 15) |= 8u;

LABEL_6:
  return v8;
}

- (id)newAccelerationStructureWithDescriptor:(id)a3
{
  v4 = a3;
  if ((dword_31F7C8 & 0x4000) != 0)
  {
    v13 = [(CaptureMTLDevice *)self->_captureDevice newAccelerationStructureWithDescriptor:v4];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    traceContext = self->_traceContext;
    v26 = traceContext;
    *&v27 = 0;
    *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
    s();
    v7 = v6;
    v8 = *v6;
    *v6 = v9;
    *&v28 = v8;
    BYTE8(v28) = *(v6 + 8);
    *(&v28 + 9) = 16400;
    *(&v28 + 11) = 0;
    HIBYTE(v28) = 0;
    baseObject = self->_baseObject;
    v11 = unwrapMTLAccelerationStructureDescriptor(v4);
    v12 = [(MTLHeapSPI *)baseObject newAccelerationStructureWithDescriptor:v11];

    if (v12)
    {
      v13 = [[CaptureMTLAccelerationStructure alloc] initWithBaseObject:v12 captureHeap:self];
    }

    else
    {
      v13 = 0;
    }

    GTTraceEncoder_setStream(&v26, [(CaptureMTLAccelerationStructure *)v13 traceStream]);
    v14 = v27;
    *(v27 + 8) = -15356;
    v15 = BYTE9(v28);
    if (BYTE9(v28) > 0x28uLL)
    {
      v17 = *(*(&v26 + 1) + 24);
      v18 = BYTE10(v28);
      ++BYTE10(v28);
      v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x1800000000) + 16;
      v15 = v18;
    }

    else
    {
      v16 = (v14 + BYTE9(v28));
      BYTE9(v28) += 24;
    }

    *(v14 + 13) = v15;
    SaveMTLAccelerationStructureInfo(&v26, v12);
    v19 = [(CaptureMTLHeap *)self traceStream];
    if (v19)
    {
      var0 = v19->var0;
    }

    else
    {
      var0 = 0;
    }

    v21 = [(CaptureMTLAccelerationStructure *)v13 traceStream];
    if (v21)
    {
      v22 = v21->var0;
    }

    else
    {
      v22 = 0;
    }

    v23 = SaveMTLAccelerationStructureDescriptor(&v26, v4);
    *v16 = var0;
    *(v16 + 1) = v22;
    v16[16] = v23;
    *(v16 + 17) = 0;
    *(v16 + 5) = 0;
    v24 = v27;
    *v7 = v28;
    *(v7 + 8) = BYTE8(v28);
    *(v24 + 15) |= 8u;
  }

  return v13;
}

- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)a3
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLHeapSPI *)self->_baseObject maxAvailableSizeWithAlignment:a3];
  v7 = v18;
  *(v18 + 8) = -16105;
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
  v12 = [(CaptureMTLHeap *)self traceStream];
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

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLHeapSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -16119;
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
  v11 = [(CaptureMTLHeap *)self traceStream];
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
  v5 = [(MTLHeapSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLHeap;
  v3 = [(CaptureMTLHeap *)&v7 description];
  v4 = [(MTLHeapSPI *)self->_baseObject description];
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
  [(CaptureMTLDevice *)self->_captureDevice deallocateResource:self];
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -16118;
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
  v9 = [(CaptureMTLHeap *)self traceStream];
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
  v13.super_class = CaptureMTLHeap;
  [(CaptureMTLHeap *)&v13 dealloc];
}

- (unint64_t)currentAllocatedSize
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  v4 = [(MTLHeapSPI *)self->_baseObject currentAllocatedSize];
  v5 = v16;
  *(v16 + 8) = -10207;
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
  v10 = [(CaptureMTLHeap *)self traceStream];
  if (v10)
  {
    var0 = v10->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = v4;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  return v4;
}

- (unint64_t)usedSize
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  v4 = [(MTLHeapSPI *)self->_baseObject usedSize];
  v5 = v16;
  *(v16 + 8) = -10208;
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
  v10 = [(CaptureMTLHeap *)self traceStream];
  if (v10)
  {
    var0 = v10->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = v4;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  return v4;
}

- (CaptureMTLHeap)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CaptureMTLHeap;
  v9 = [(CaptureMTLHeap *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    objc_storeStrong(&v10->_captureDevice, a4);
    v11 = [v8 traceContext];
    v10->_traceContext = v11;
    v12 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v11, v12, v10);

    if ((dword_31F7C8 & 0x400000) != 0)
    {
      v13 = MTLHeap_backbuffer(v10->_baseObject);
      backbuffer = v10->_backbuffer;
      v10->_backbuffer = v13;
    }
  }

  return v10;
}

@end