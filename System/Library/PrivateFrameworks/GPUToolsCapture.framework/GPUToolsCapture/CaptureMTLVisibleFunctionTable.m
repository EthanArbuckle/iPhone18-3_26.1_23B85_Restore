@interface CaptureMTLVisibleFunctionTable
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)doesAliasAllResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasAnyResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasResource:(id)a3;
- (CaptureMTLVisibleFunctionTable)initWithBaseObject:(id)a3 captureComputePipelineState:(id)a4 descriptor:(id)a5;
- (CaptureMTLVisibleFunctionTable)initWithBaseObject:(id)a3 captureRenderPipelineState:(id)a4 descriptor:(id)a5;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setFunction:(id)a3 atIndex:(unint64_t)a4;
- (void)setFunctions:(const void *)a3 withRange:(_NSRange)a4;
- (void)setGlobalBuffer:(id)a3;
- (void)setGlobalBufferOffset:(unint64_t)a3;
- (void)setLabel:(id)a3;
- (void)setValue:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setValue:(unint64_t)a3 withRange:(_NSRange)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)touch;
@end

@implementation CaptureMTLVisibleFunctionTable

- (BOOL)doesAliasResource:(id)a3
{
  baseObject = self->_baseObject;
  v4 = [a3 baseObject];
  LOBYTE(baseObject) = [(MTLVisibleFunctionTableSPI *)baseObject doesAliasResource:v4];

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

  return [(MTLVisibleFunctionTableSPI *)baseObject doesAliasAnyResources:v8 count:a4];
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

  return [(MTLVisibleFunctionTableSPI *)baseObject doesAliasAllResources:v8 count:a4];
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLVisibleFunctionTableSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -15607;
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
  v11 = [(CaptureMTLVisibleFunctionTable *)self traceStream];
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
  v5 = [(MTLVisibleFunctionTableSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLVisibleFunctionTable;
  v3 = [(CaptureMTLVisibleFunctionTable *)&v7 description];
  v4 = [(MTLVisibleFunctionTableSPI *)self->_baseObject description];
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

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setVisibleFunctionTable_atBufferIndex", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  v8 = [v6 baseObject];

  [(MTLVisibleFunctionTableSPI *)baseObject setVisibleFunctionTable:v8 atBufferIndex:a4];
}

- (void)setValue:(unint64_t)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setValue_withRange", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;

  [(MTLVisibleFunctionTableSPI *)baseObject setValue:a3 withRange:location, length];
}

- (void)setValue:(unint64_t)a3 atIndex:(unint64_t)a4
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setValue_atIndex", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;

  [(MTLVisibleFunctionTableSPI *)baseObject setValue:a3 atIndex:a4];
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setBuffers_offsets_withRange", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  __chkstk_darwin(v11, 8 * length);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v13, v12);
  if (length)
  {
    v14 = v13;
    v15 = length;
    do
    {
      v16 = *a3++;
      *v14 = [v16 baseObject];
      v14 += 8;
      --v15;
    }

    while (v15);
  }

  [(MTLVisibleFunctionTableSPI *)baseObject setBuffers:v13 offsets:a4 withRange:location, length];
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setBuffer_offset_atIndex", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  v10 = [v8 baseObject];

  [(MTLVisibleFunctionTableSPI *)baseObject setBuffer:v10 offset:a4 atIndex:a5];
}

- (void)setGlobalBufferOffset:(unint64_t)a3
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setGlobalBufferOffset", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;

  [(MTLVisibleFunctionTableSPI *)baseObject setGlobalBufferOffset:a3];
}

- (void)setGlobalBuffer:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setGlobalBuffer", "Function Pointers", 0, 0);
  [(MTLVisibleFunctionTableSPI *)self->_baseObject setGlobalBuffer:v4];
}

- (void)setFunction:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    [(NSMutableArray *)self->_functionArray setObject:v6 atIndexedSubscript:a4];
  }

  else
  {
    v7 = +[NSNull null];
    [(NSMutableArray *)self->_functionArray setObject:v7 atIndexedSubscript:a4];
  }

  traceStream = self->_traceStream;
  if (traceStream)
  {
    p_var1 = &traceStream[1].var1;
    v10 = atomic_load(p_var1);
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong(p_var1, &v11, v10 | 2);
      v12 = v11 == v10;
      v10 = v11;
    }

    while (!v12);
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v13 = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
    baseObject = self->_baseObject;
    v15 = [v6 baseObject];
    [(MTLVisibleFunctionTableSPI *)baseObject setFunction:v15 atIndex:a4];

    v16 = v30;
    *(v30 + 8) = -15598;
    v17 = BYTE9(v31);
    if (BYTE9(v31) > 0x28uLL)
    {
      v21 = *(*(&v29 + 1) + 24);
      v22 = BYTE10(v31);
      ++BYTE10(v31);
      v18 = GTTraceMemPool_allocateBytes(v21, *(&v30 + 1), v22 | 0x1800000000) + 16;
      v17 = v22;
    }

    else
    {
      v18 = (v16 + BYTE9(v31));
      BYTE9(v31) += 24;
    }

    *(v16 + 13) = v17;
    v23 = [(CaptureMTLVisibleFunctionTable *)self traceStream];
    if (v23)
    {
      var0 = v23->var0;
    }

    else
    {
      var0 = 0;
    }

    v25 = [v6 traceStream];
    if (v25)
    {
      v26 = *v25;
    }

    else
    {
      v26 = 0;
    }

    *v18 = var0;
    *(v18 + 1) = v26;
    *(v18 + 2) = a4;
    s();
    *v27 = v28;
    *(v27 + 8) = BYTE8(v31);
    *(v30 + 15) |= 8u;
  }

  else
  {
    v19 = self->_baseObject;
    v20 = [v6 baseObject];
    [(MTLVisibleFunctionTableSPI *)v19 setFunction:v20 atIndex:a4];
  }
}

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setVisibleFunctionTables_withBufferRange", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  __chkstk_darwin(v9, 8 * length);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  if (length)
  {
    v12 = v11;
    v13 = length;
    do
    {
      v14 = *a3++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLVisibleFunctionTableSPI *)baseObject setVisibleFunctionTables:v11 withBufferRange:location, length];
}

- (void)setFunctions:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = self;
  if (a4.length)
  {
    v8 = a4.location;
    v9 = a3;
    v10 = a4.length;
    do
    {
      self = [(NSMutableArray *)v7->_functionArray count];
      if (v8 < self)
      {
        if (*v9)
        {
          self = [(NSMutableArray *)v7->_functionArray setObject:*v9 atIndexedSubscript:v8];
        }

        else
        {
          v11 = +[NSNull null];
          [(NSMutableArray *)v7->_functionArray setObject:v11 atIndexedSubscript:v8];
        }
      }

      ++v9;
      ++v8;
      --v10;
    }

    while (v10);
  }

  traceStream = v7->_traceStream;
  if (traceStream)
  {
    p_var1 = &traceStream[1].var1;
    v14 = atomic_load(p_var1);
    v15 = v14;
    do
    {
      atomic_compare_exchange_strong(p_var1, &v15, v14 | 2);
      v16 = v15 == v14;
      v14 = v15;
    }

    while (!v16);
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v17 = location;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v18 = v7->_traceStream;
    v19 = GTTraceContext_pushEncoderWithStream(v7->_traceContext, &v44);
    baseObject = v7->_baseObject;
    v21 = 8 * length;
    __chkstk_darwin(v19, v22);
    bzero(&v44 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      v23 = v6;
      v24 = (&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = length;
      do
      {
        v26 = *v23++;
        *v24++ = [v26 baseObject];
        --v25;
      }

      while (v25);
    }

    [(MTLVisibleFunctionTableSPI *)baseObject setFunctions:&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:v17, length];
    v27 = v45;
    *(v45 + 8) = -15597;
    v28 = BYTE9(v46);
    if (BYTE9(v46) > 0x20uLL)
    {
      v36 = *(*(&v44 + 1) + 24);
      v37 = BYTE10(v46);
      ++BYTE10(v46);
      v29 = GTTraceMemPool_allocateBytes(v36, *(&v45 + 1), v37 | 0x2000000000) + 16;
      v28 = v37;
    }

    else
    {
      v29 = (v27 + BYTE9(v46));
      BYTE9(v46) += 32;
    }

    *(v27 + 13) = v28;
    v38 = [(CaptureMTLVisibleFunctionTable *)v7 traceStream];
    if (v38)
    {
      var0 = v38->var0;
    }

    else
    {
      var0 = 0;
    }

    if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
    {
      __chkstk_darwin(v38, v39);
      bzero(&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
      v41 = StreamArrayURL(&v44, (&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0)), v6, length);
    }

    else
    {
      v41 = 0;
    }

    *v29 = var0;
    *(v29 + 1) = v17;
    *(v29 + 2) = length;
    v29[24] = v41;
    *(v29 + 25) = 0;
    *(v29 + 7) = 0;
    s();
    *v42 = v43;
    *(v42 + 8) = BYTE8(v46);
    *(v45 + 15) |= 8u;
  }

  else
  {
    v30 = v7->_baseObject;
    __chkstk_darwin(self, 8 * length);
    v32 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v32, v31);
    if (length)
    {
      v33 = v32;
      v34 = length;
      do
      {
        v35 = *v6++;
        *v33 = [v35 baseObject];
        v33 += 8;
        --v34;
      }

      while (v34);
    }

    [(MTLVisibleFunctionTableSPI *)v30 setFunctions:v32 withRange:location, length];
  }
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
  *(v16 + 8) = -15605;
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
  v10 = [(CaptureMTLVisibleFunctionTable *)self traceStream];
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
  v14.super_class = CaptureMTLVisibleFunctionTable;
  [(CaptureMTLVisibleFunctionTable *)&v14 dealloc];
}

- (CaptureMTLVisibleFunctionTable)initWithBaseObject:(id)a3 captureRenderPipelineState:(id)a4 descriptor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = CaptureMTLVisibleFunctionTable;
  v12 = [(CaptureMTLVisibleFunctionTable *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, a3);
    v14 = [v10 device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = v14;

    objc_storeStrong(&v13->_renderPipelineState, a4);
    v16 = [v10 traceContext];
    v13->_traceContext = v16;
    v17 = DEVICEOBJECT(v9);
    v13->_traceStream = GTTraceContext_openStream(v16, v17, v13);

    v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 functionCount]);
    functionArray = v13->_functionArray;
    v13->_functionArray = v18;

    if ([v11 functionCount])
    {
      v20 = 0;
      do
      {
        v21 = v13->_functionArray;
        v22 = +[NSNull null];
        [(NSMutableArray *)v21 addObject:v22];

        ++v20;
      }

      while ([v11 functionCount] > v20);
    }
  }

  return v13;
}

- (CaptureMTLVisibleFunctionTable)initWithBaseObject:(id)a3 captureComputePipelineState:(id)a4 descriptor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = CaptureMTLVisibleFunctionTable;
  v12 = [(CaptureMTLVisibleFunctionTable *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, a3);
    v14 = [v10 device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = v14;

    objc_storeStrong(&v13->_computePipelineState, a4);
    v16 = [v10 traceContext];
    v13->_traceContext = v16;
    v17 = DEVICEOBJECT(v9);
    v13->_traceStream = GTTraceContext_openStream(v16, v17, v13);

    v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 functionCount]);
    functionArray = v13->_functionArray;
    v13->_functionArray = v18;

    if ([v11 functionCount])
    {
      v20 = 0;
      do
      {
        v21 = v13->_functionArray;
        v22 = +[NSNull null];
        [(NSMutableArray *)v21 addObject:v22];

        ++v20;
      }

      while ([v11 functionCount] > v20);
    }
  }

  return v13;
}

@end