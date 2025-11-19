@interface CaptureMTLIntersectionFunctionTable
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)doesAliasAllResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasAnyResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasResource:(id)a3;
- (CaptureMTLIntersectionFunctionTable)initWithBaseObject:(id)a3 captureComputePipelineState:(id)a4 descriptor:(id)a5;
- (CaptureMTLIntersectionFunctionTable)initWithBaseObject:(id)a3 captureDevice:(id)a4 descriptor:(id)a5;
- (CaptureMTLIntersectionFunctionTable)initWithBaseObject:(id)a3 captureRenderPipelineState:(id)a4 descriptor:(id)a5;
- (NSString)description;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)makeAliasable;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setFunction:(id)a3 atIndex:(unint64_t)a4;
- (void)setFunctions:(const void *)a3 withRange:(_NSRange)a4;
- (void)setGlobalBuffer:(id)a3;
- (void)setGlobalBufferOffset:(unint64_t)a3;
- (void)setLabel:(id)a3;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)a3 withRange:(_NSRange)a4;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)a3 withRange:(_NSRange)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)touch;
@end

@implementation CaptureMTLIntersectionFunctionTable

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLIntersectionFunctionTableSPI *)self->_baseObject setPurgeableState:a3];
  v7 = v18;
  *(v18 + 8) = -15557;
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
  v12 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
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

- (void)makeAliasable
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject makeAliasable];
  v4 = v14;
  *(v14 + 8) = -15560;
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
  v9 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
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

- (BOOL)doesAliasResource:(id)a3
{
  baseObject = self->_baseObject;
  v4 = [a3 baseObject];
  LOBYTE(baseObject) = [(MTLIntersectionFunctionTableSPI *)baseObject doesAliasResource:v4];

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

  return [(MTLIntersectionFunctionTableSPI *)baseObject doesAliasAnyResources:v8 count:a4];
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

  return [(MTLIntersectionFunctionTableSPI *)baseObject doesAliasAllResources:v8 count:a4];
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -15570;
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
  v11 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
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

- (void)setGlobalBufferOffset:(unint64_t)a3
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLIntersectionFunctionTable_setGlobalBufferOffset", "Ray tracing", 0, 0);
  baseObject = self->_baseObject;

  [(MTLIntersectionFunctionTableSPI *)baseObject setGlobalBufferOffset:a3];
}

- (void)setGlobalBuffer:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLIntersectionFunctionTable_setGlobalBuffer", "Ray tracing", 0, 0);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject setGlobalBuffer:v4];
}

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTLIntersectionFunctionTableSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLIntersectionFunctionTable;
  v3 = [(CaptureMTLIntersectionFunctionTable *)&v7 description];
  v4 = [(MTLIntersectionFunctionTableSPI *)self->_baseObject description];
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

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.length)
  {
    v8 = a4.location;
    v9 = a3;
    v10 = a4.length;
    do
    {
      if (v8 < [(NSMutableArray *)self->_buffers count])
      {
        if (*v9)
        {
          [(NSMutableArray *)self->_buffers setObject:*v9 atIndexedSubscript:v8];
        }

        else
        {
          v11 = +[NSNull null];
          [(NSMutableArray *)self->_buffers setObject:v11 atIndexedSubscript:v8];
        }
      }

      ++v9;
      ++v8;
      --v10;
    }

    while (v10);
  }

  v34 = a3;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  s();
  v14 = v13;
  *(v13 + 8) |= 1u;
  baseObject = self->_baseObject;
  v16 = 8 * length;
  __chkstk_darwin(v13, v17);
  bzero(&v33 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v18 = v34;
    v19 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = length;
    do
    {
      v21 = *v18++;
      *v19++ = [v21 baseObject];
      --v20;
    }

    while (v20);
  }

  [(MTLIntersectionFunctionTableSPI *)baseObject setVisibleFunctionTables:&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v22 = v36;
  *(v36 + 8) = -15525;
  v23 = BYTE9(v37);
  if (BYTE9(v37) > 0x20uLL)
  {
    v25 = *(*(&v35 + 1) + 24);
    v26 = BYTE10(v37);
    ++BYTE10(v37);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v36 + 1), v26 | 0x2000000000) + 16;
    v23 = v26;
  }

  else
  {
    v24 = (v22 + BYTE9(v37));
    BYTE9(v37) += 32;
  }

  v27 = v34;
  *(v22 + 13) = v23;
  v28 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (v28)
  {
    var0 = v28->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v28, v29);
  bzero(&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v31 = StreamArray(&v35, (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)), v27, length);
  *v24 = var0;
  *(v24 + 1) = location;
  *(v24 + 2) = length;
  v24[24] = v31;
  *(v24 + 25) = 0;
  *(v24 + 7) = 0;
  v32 = v36;
  *v14 = v37;
  *(v14 + 8) = BYTE8(v37);
  *(v32 + 15) |= 8u;
}

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = a3;
  if ([(NSMutableArray *)self->_buffers count]> a4)
  {
    if (v6)
    {
      [(NSMutableArray *)self->_buffers setObject:v6 atIndexedSubscript:a4];
    }

    else
    {
      v7 = +[NSNull null];
      [(NSMutableArray *)self->_buffers setObject:v7 atIndexedSubscript:a4];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  s();
  v10 = v9;
  *(v9 + 8) |= 1u;
  baseObject = self->_baseObject;
  v12 = [v6 baseObject];
  [(MTLIntersectionFunctionTableSPI *)baseObject setVisibleFunctionTable:v12 atBufferIndex:a4];

  v13 = v24;
  *(v24 + 8) = -15526;
  v14 = BYTE9(v25);
  if (BYTE9(v25) > 0x28uLL)
  {
    v16 = *(*(&v23 + 1) + 24);
    v17 = BYTE10(v25);
    ++BYTE10(v25);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v24 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v25));
    BYTE9(v25) += 24;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v6 traceStream];
  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  v22 = v24;
  *v10 = v25;
  *(v10 + 8) = BYTE8(v25);
  *(v22 + 15) |= 8u;
}

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.length)
  {
    v8 = a4.location;
    v9 = a4.length;
    do
    {
      if (v8 < [(NSMutableArray *)self->_functions count])
      {
        v10 = +[NSNull null];
        [(NSMutableArray *)self->_functions setObject:v10 atIndexedSubscript:v8];
      }

      ++v8;
      --v9;
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject setOpaqueCurveIntersectionFunctionWithSignature:a3 withRange:location, length];
  v12 = v22;
  *(v22 + 8) = -15257;
  v13 = BYTE9(v23);
  if (BYTE9(v23) > 0x20uLL)
  {
    v15 = *(*(&v21 + 1) + 24);
    v16 = BYTE10(v23);
    ++BYTE10(v23);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v22 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v23));
    BYTE9(v23) += 32;
  }

  *(v12 + 13) = v13;
  v17 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (v17)
  {
    var0 = v17->var0;
  }

  else
  {
    var0 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = a3;
  *(v14 + 2) = location;
  *(v14 + 3) = length;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if ([(NSMutableArray *)self->_functions count]> a4)
  {
    v7 = +[NSNull null];
    [(NSMutableArray *)self->_functions setObject:v7 atIndexedSubscript:a4];
  }

  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject setOpaqueCurveIntersectionFunctionWithSignature:a3 atIndex:a4];
  v9 = v19;
  *(v19 + 8) = -15258;
  v10 = BYTE9(v20);
  if (BYTE9(v20) > 0x28uLL)
  {
    v12 = *(*(&v18 + 1) + 24);
    v13 = BYTE10(v20);
    ++BYTE10(v20);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v19 + 1), v13 | 0x1800000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v20));
    BYTE9(v20) += 24;
  }

  *(v9 + 13) = v10;
  v14 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = a3;
  *(v11 + 2) = a4;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.length)
  {
    v8 = a4.location;
    v9 = a4.length;
    do
    {
      if (v8 < [(NSMutableArray *)self->_functions count])
      {
        v10 = +[NSNull null];
        [(NSMutableArray *)self->_functions setObject:v10 atIndexedSubscript:v8];
      }

      ++v8;
      --v9;
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject setOpaqueTriangleIntersectionFunctionWithSignature:a3 withRange:location, length];
  v12 = v22;
  *(v22 + 8) = -15529;
  v13 = BYTE9(v23);
  if (BYTE9(v23) > 0x20uLL)
  {
    v15 = *(*(&v21 + 1) + 24);
    v16 = BYTE10(v23);
    ++BYTE10(v23);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v22 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v23));
    BYTE9(v23) += 32;
  }

  *(v12 + 13) = v13;
  v17 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (v17)
  {
    var0 = v17->var0;
  }

  else
  {
    var0 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = a3;
  *(v14 + 2) = location;
  *(v14 + 3) = length;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if ([(NSMutableArray *)self->_functions count]> a4)
  {
    v7 = +[NSNull null];
    [(NSMutableArray *)self->_functions setObject:v7 atIndexedSubscript:a4];
  }

  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject setOpaqueTriangleIntersectionFunctionWithSignature:a3 atIndex:a4];
  v9 = v19;
  *(v19 + 8) = -15530;
  v10 = BYTE9(v20);
  if (BYTE9(v20) > 0x28uLL)
  {
    v12 = *(*(&v18 + 1) + 24);
    v13 = BYTE10(v20);
    ++BYTE10(v20);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v19 + 1), v13 | 0x1800000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v20));
    BYTE9(v20) += 24;
  }

  *(v9 + 13) = v10;
  v14 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = a3;
  *(v11 + 2) = a4;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setFunctions:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.length)
  {
    v8 = a4.location;
    v9 = a3;
    v10 = a4.length;
    do
    {
      if (v8 < [(NSMutableArray *)self->_functions count])
      {
        if (*v9)
        {
          [(NSMutableArray *)self->_functions setObject:*v9 atIndexedSubscript:v8];
        }

        else
        {
          v11 = +[NSNull null];
          [(NSMutableArray *)self->_functions setObject:v11 atIndexedSubscript:v8];
        }
      }

      ++v9;
      ++v8;
      --v10;
    }

    while (v10);
  }

  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  traceStream = self->_traceStream;
  v13 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v32);
  baseObject = self->_baseObject;
  v15 = 8 * length;
  __chkstk_darwin(v13, v16);
  bzero(&v32 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v17 = a3;
    v18 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = length;
    do
    {
      v20 = *v17++;
      *v18++ = [v20 baseObject];
      --v19;
    }

    while (v19);
  }

  [(MTLIntersectionFunctionTableSPI *)baseObject setFunctions:&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v21 = v33;
  *(v33 + 8) = -15558;
  v22 = BYTE9(v34);
  if (BYTE9(v34) > 0x20uLL)
  {
    v24 = *(*(&v32 + 1) + 24);
    v25 = BYTE10(v34);
    ++BYTE10(v34);
    v23 = GTTraceMemPool_allocateBytes(v24, *(&v33 + 1), v25 | 0x2000000000) + 16;
    v22 = v25;
  }

  else
  {
    v23 = (v21 + BYTE9(v34));
    BYTE9(v34) += 32;
  }

  *(v21 + 13) = v22;
  v26 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (v26)
  {
    var0 = v26->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v26, v27);
  bzero(&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v29 = StreamArray(&v32, (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
  *v23 = var0;
  *(v23 + 1) = location;
  *(v23 + 2) = length;
  v23[24] = v29;
  *(v23 + 25) = 0;
  *(v23 + 7) = 0;
  s();
  *v30 = v31;
  *(v30 + 8) = BYTE8(v34);
  *(v33 + 15) |= 8u;
}

- (void)setFunction:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  if ([(NSMutableArray *)self->_functions count]> a4)
  {
    if (v6)
    {
      [(NSMutableArray *)self->_functions setObject:v6 atIndexedSubscript:a4];
    }

    else
    {
      v7 = +[NSNull null];
      [(NSMutableArray *)self->_functions setObject:v7 atIndexedSubscript:a4];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTLIntersectionFunctionTableSPI *)baseObject setFunction:v10 atIndex:a4];

  v11 = v23;
  *(v23 + 8) = -15559;
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
  v16 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
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

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v37 = a4;
  if (a5.length)
  {
    v9 = a5.location;
    v10 = a3;
    v11 = a5.length;
    do
    {
      if (v9 < [(NSMutableArray *)self->_buffers count])
      {
        if (*v10)
        {
          [(NSMutableArray *)self->_buffers setObject:*v10 atIndexedSubscript:v9];
        }

        else
        {
          v12 = +[NSNull null];
          [(NSMutableArray *)self->_buffers setObject:v12 atIndexedSubscript:v9];
        }
      }

      ++v10;
      ++v9;
      --v11;
    }

    while (v11);
  }

  v38 = a3;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v39);
  s();
  v15 = v14;
  *(v14 + 8) |= 1u;
  baseObject = self->_baseObject;
  v17 = 8 * length;
  __chkstk_darwin(v14, v18);
  bzero(&v37 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v19 = v38;
    v20 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = length;
    do
    {
      v22 = *v19++;
      *v20++ = [v22 baseObject];
      --v21;
    }

    while (v21);
  }

  v23 = v37;
  v24 = location;
  [(MTLIntersectionFunctionTableSPI *)baseObject setBuffers:&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:v37 withRange:location, length, v37];
  v25 = v40;
  *(v40 + 8) = -15544;
  v26 = BYTE9(v41);
  if (BYTE9(v41) > 0x20uLL)
  {
    v28 = *(*(&v39 + 1) + 24);
    v29 = BYTE10(v41);
    ++BYTE10(v41);
    v27 = GTTraceMemPool_allocateBytes(v28, *(&v40 + 1), v29 | 0x2000000000) + 16;
    v26 = v29;
  }

  else
  {
    v27 = (v25 + BYTE9(v41));
    BYTE9(v41) += 32;
  }

  v30 = v38;
  *(v25 + 13) = v26;
  v31 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (v31)
  {
    var0 = v31->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v31, v32);
  bzero(&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v34 = StreamArray(&v39, (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)), v30, length);
  v35 = GTTraceEncoder_storeBytes(&v39, v23, 8 * length);
  *v27 = var0;
  *(v27 + 1) = v24;
  *(v27 + 2) = length;
  v27[24] = v34;
  v27[25] = v35;
  *(v27 + 26) = 0;
  *(v27 + 15) = 0;
  v36 = v40;
  *v15 = v41;
  *(v15 + 8) = BYTE8(v41);
  *(v36 + 15) |= 8u;
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  if ([(NSMutableArray *)self->_buffers count]> a5)
  {
    if (v8)
    {
      [(NSMutableArray *)self->_buffers setObject:v8 atIndexedSubscript:a5];
    }

    else
    {
      v9 = +[NSNull null];
      [(NSMutableArray *)self->_buffers setObject:v9 atIndexedSubscript:a5];
    }
  }

  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  s();
  v12 = v11;
  *(v11 + 8) |= 1u;
  baseObject = self->_baseObject;
  v14 = [v8 baseObject];
  [(MTLIntersectionFunctionTableSPI *)baseObject setBuffer:v14 offset:a4 atIndex:a5];

  v15 = v26;
  *(v26 + 8) = -15545;
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
  v20 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [v8 traceStream];
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
  v24 = v26;
  *v12 = v27;
  *(v12 + 8) = BYTE8(v27);
  *(v24 + 15) |= 8u;
}

- (void)dealloc
{
  [(MTLDevice *)self->_captureDevice deallocateResource:self];
  baseObject = self->_baseObject;
  self->_baseObject = 0;

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  v5 = v16;
  *(v16 + 8) = -15568;
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
  v10 = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
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
  v14.super_class = CaptureMTLIntersectionFunctionTable;
  [(CaptureMTLIntersectionFunctionTable *)&v14 dealloc];
}

- (CaptureMTLIntersectionFunctionTable)initWithBaseObject:(id)a3 captureRenderPipelineState:(id)a4 descriptor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v29.receiver = self;
  v29.super_class = CaptureMTLIntersectionFunctionTable;
  v12 = [(CaptureMTLIntersectionFunctionTable *)&v29 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, a3);
    v14 = [v10 device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = v14;

    objc_storeStrong(&v13->_captureRenderPipelineState, a4);
    v16 = [v10 traceContext];
    v13->_traceContext = v16;
    v17 = DEVICEOBJECT(v9);
    v13->_traceStream = GTTraceContext_openStream(v16, v17, v13);

    v18 = 31;
    v19 = [[NSMutableArray alloc] initWithCapacity:31];
    buffers = v13->_buffers;
    v13->_buffers = v19;

    do
    {
      v21 = v13->_buffers;
      v22 = +[NSNull null];
      [(NSMutableArray *)v21 addObject:v22];

      --v18;
    }

    while (v18);
    v23 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "functionCount")}];
    functions = v13->_functions;
    v13->_functions = v23;

    if ([v11 functionCount])
    {
      v25 = 0;
      do
      {
        v26 = v13->_functions;
        v27 = +[NSNull null];
        [(NSMutableArray *)v26 addObject:v27];

        ++v25;
      }

      while ([v11 functionCount] > v25);
    }
  }

  return v13;
}

- (CaptureMTLIntersectionFunctionTable)initWithBaseObject:(id)a3 captureComputePipelineState:(id)a4 descriptor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v29.receiver = self;
  v29.super_class = CaptureMTLIntersectionFunctionTable;
  v12 = [(CaptureMTLIntersectionFunctionTable *)&v29 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, a3);
    v14 = [v10 device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = v14;

    objc_storeStrong(&v13->_captureComputePipelineState, a4);
    v16 = [v10 traceContext];
    v13->_traceContext = v16;
    v17 = DEVICEOBJECT(v9);
    v13->_traceStream = GTTraceContext_openStream(v16, v17, v13);

    v18 = 31;
    v19 = [[NSMutableArray alloc] initWithCapacity:31];
    buffers = v13->_buffers;
    v13->_buffers = v19;

    do
    {
      v21 = v13->_buffers;
      v22 = +[NSNull null];
      [(NSMutableArray *)v21 addObject:v22];

      --v18;
    }

    while (v18);
    v23 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "functionCount")}];
    functions = v13->_functions;
    v13->_functions = v23;

    if ([v11 functionCount])
    {
      v25 = 0;
      do
      {
        v26 = v13->_functions;
        v27 = +[NSNull null];
        [(NSMutableArray *)v26 addObject:v27];

        ++v25;
      }

      while ([v11 functionCount] > v25);
    }
  }

  return v13;
}

- (CaptureMTLIntersectionFunctionTable)initWithBaseObject:(id)a3 captureDevice:(id)a4 descriptor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v27.receiver = self;
  v27.super_class = CaptureMTLIntersectionFunctionTable;
  v12 = [(CaptureMTLIntersectionFunctionTable *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, a3);
    objc_storeStrong(&v13->_captureDevice, a4);
    v14 = [v10 traceContext];
    v13->_traceContext = v14;
    v15 = DEVICEOBJECT(v9);
    v13->_traceStream = GTTraceContext_openStream(v14, v15, v13);

    v16 = 31;
    v17 = [[NSMutableArray alloc] initWithCapacity:31];
    buffers = v13->_buffers;
    v13->_buffers = v17;

    do
    {
      v19 = v13->_buffers;
      v20 = +[NSNull null];
      [(NSMutableArray *)v19 addObject:v20];

      --v16;
    }

    while (v16);
    v21 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "functionCount")}];
    functions = v13->_functions;
    v13->_functions = v21;

    if ([v11 functionCount])
    {
      v23 = 0;
      do
      {
        v24 = v13->_functions;
        v25 = +[NSNull null];
        [(NSMutableArray *)v24 addObject:v25];

        ++v23;
      }

      while ([v11 functionCount] > v23);
    }
  }

  return v13;
}

@end