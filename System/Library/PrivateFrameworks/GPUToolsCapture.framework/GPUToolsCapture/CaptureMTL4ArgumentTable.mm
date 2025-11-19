@interface CaptureMTL4ArgumentTable
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTL4ArgumentTable)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setAddress:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setAddress:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setResource:(MTLResourceID)a3 atBufferIndex:(unint64_t)a4;
- (void)setSamplerState:(MTLResourceID)a3 atIndex:(unint64_t)a4;
- (void)setTexture:(MTLResourceID)a3 atIndex:(unint64_t)a4;
- (void)touch;
@end

@implementation CaptureMTL4ArgumentTable

- (void)setTexture:(MTLResourceID)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4ArgumentTableSPI *)self->_baseObject setTexture:a3._impl atIndex:a4];
  v8 = v18;
  *(v18 + 8) = -15178;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = (GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16);
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTL4ArgumentTable *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  v10->_impl = var0;
  v10[1]._impl = a3._impl;
  v10[2]._impl = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setSamplerState:(MTLResourceID)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4ArgumentTableSPI *)self->_baseObject setSamplerState:a3._impl atIndex:a4];
  v8 = v18;
  *(v18 + 8) = -15179;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = (GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16);
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTL4ArgumentTable *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  v10->_impl = var0;
  v10[1]._impl = a3._impl;
  v10[2]._impl = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setResource:(MTLResourceID)a3 atBufferIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4ArgumentTableSPI *)self->_baseObject setResource:a3._impl atBufferIndex:a4];
  v8 = v18;
  *(v18 + 8) = -15180;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = (GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16);
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTL4ArgumentTable *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  v10->_impl = var0;
  v10[1]._impl = a3._impl;
  v10[2]._impl = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setAddress:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTL4ArgumentTableSPI *)self->_baseObject setAddress:a3 attributeStride:a4 atIndex:a5];
  v10 = v20;
  *(v20 + 8) = -14848;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTL4ArgumentTable *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = a3;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setAddress:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4ArgumentTableSPI *)self->_baseObject setAddress:a3 atIndex:a4];
  v8 = v18;
  *(v18 + 8) = -15181;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTL4ArgumentTable *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15182;
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
  v9 = [(CaptureMTL4ArgumentTable *)self traceStream];
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
  v13.super_class = CaptureMTL4ArgumentTable;
  [(CaptureMTL4ArgumentTable *)&v13 dealloc];
}

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTL4ArgumentTableSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTL4ArgumentTable;
  v3 = [(CaptureMTL4ArgumentTable *)&v7 description];
  v4 = [(MTL4ArgumentTableSPI *)self->_baseObject description];
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

- (CaptureMTL4ArgumentTable)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CaptureMTL4ArgumentTable;
  v9 = [(CaptureMTL4ArgumentTable *)&v14 init];
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