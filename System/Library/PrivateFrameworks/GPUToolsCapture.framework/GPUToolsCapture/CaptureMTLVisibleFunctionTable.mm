@interface CaptureMTLVisibleFunctionTable
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasResource:(id)resource;
- (CaptureMTLVisibleFunctionTable)initWithBaseObject:(id)object captureComputePipelineState:(id)state descriptor:(id)descriptor;
- (CaptureMTLVisibleFunctionTable)initWithBaseObject:(id)object captureRenderPipelineState:(id)state descriptor:(id)descriptor;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFunction:(id)function atIndex:(unint64_t)index;
- (void)setFunctions:(const void *)functions withRange:(_NSRange)range;
- (void)setGlobalBuffer:(id)buffer;
- (void)setGlobalBufferOffset:(unint64_t)offset;
- (void)setLabel:(id)label;
- (void)setValue:(unint64_t)value atIndex:(unint64_t)index;
- (void)setValue:(unint64_t)value withRange:(_NSRange)range;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)touch;
@end

@implementation CaptureMTLVisibleFunctionTable

- (BOOL)doesAliasResource:(id)resource
{
  baseObject = self->_baseObject;
  baseObject = [resource baseObject];
  LOBYTE(baseObject) = [(MTLVisibleFunctionTableSPI *)baseObject doesAliasResource:baseObject];

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

  return [(MTLVisibleFunctionTableSPI *)baseObject doesAliasAnyResources:v8 count:count];
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

  return [(MTLVisibleFunctionTableSPI *)baseObject doesAliasAllResources:v8 count:count];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLVisibleFunctionTableSPI *)self->_baseObject setLabel:labelCopy];
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
  traceStream = [(CaptureMTLVisibleFunctionTable *)self traceStream];
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
  v5 = [(MTLVisibleFunctionTableSPI *)baseObject conformsToProtocol:protocolCopy];

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

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setVisibleFunctionTable_atBufferIndex", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];

  [(MTLVisibleFunctionTableSPI *)baseObject setVisibleFunctionTable:baseObject atBufferIndex:index];
}

- (void)setValue:(unint64_t)value withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setValue_withRange", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;

  [(MTLVisibleFunctionTableSPI *)baseObject setValue:value withRange:location, length];
}

- (void)setValue:(unint64_t)value atIndex:(unint64_t)index
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setValue_atIndex", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;

  [(MTLVisibleFunctionTableSPI *)baseObject setValue:value atIndex:index];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      v16 = *buffers++;
      *v14 = [v16 baseObject];
      v14 += 8;
      --v15;
    }

    while (v15);
  }

  [(MTLVisibleFunctionTableSPI *)baseObject setBuffers:v13 offsets:offsets withRange:location, length];
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setBuffer_offset_atIndex", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];

  [(MTLVisibleFunctionTableSPI *)baseObject setBuffer:baseObject offset:offset atIndex:index];
}

- (void)setGlobalBufferOffset:(unint64_t)offset
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setGlobalBufferOffset", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;

  [(MTLVisibleFunctionTableSPI *)baseObject setGlobalBufferOffset:offset];
}

- (void)setGlobalBuffer:(id)buffer
{
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setGlobalBuffer", "Function Pointers", 0, 0);
  [(MTLVisibleFunctionTableSPI *)self->_baseObject setGlobalBuffer:bufferCopy];
}

- (void)setFunction:(id)function atIndex:(unint64_t)index
{
  functionCopy = function;
  if (functionCopy)
  {
    [(NSMutableArray *)self->_functionArray setObject:functionCopy atIndexedSubscript:index];
  }

  else
  {
    v7 = +[NSNull null];
    [(NSMutableArray *)self->_functionArray setObject:v7 atIndexedSubscript:index];
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
    baseObject = [functionCopy baseObject];
    [(MTLVisibleFunctionTableSPI *)baseObject setFunction:baseObject atIndex:index];

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
    traceStream = [(CaptureMTLVisibleFunctionTable *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [functionCopy traceStream];
    if (traceStream2)
    {
      v26 = *traceStream2;
    }

    else
    {
      v26 = 0;
    }

    *v18 = var0;
    *(v18 + 1) = v26;
    *(v18 + 2) = index;
    s();
    *v27 = v28;
    *(v27 + 8) = BYTE8(v31);
    *(v30 + 15) |= 8u;
  }

  else
  {
    v19 = self->_baseObject;
    baseObject2 = [functionCopy baseObject];
    [(MTLVisibleFunctionTableSPI *)v19 setFunction:baseObject2 atIndex:index];
  }
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      v14 = *tables++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLVisibleFunctionTableSPI *)baseObject setVisibleFunctionTables:v11 withBufferRange:location, length];
}

- (void)setFunctions:(const void *)functions withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  functionsCopy = functions;
  selfCopy = self;
  if (range.length)
  {
    v8 = range.location;
    functionsCopy2 = functions;
    v10 = range.length;
    do
    {
      self = [(NSMutableArray *)selfCopy->_functionArray count];
      if (v8 < self)
      {
        if (*functionsCopy2)
        {
          self = [(NSMutableArray *)selfCopy->_functionArray setObject:*functionsCopy2 atIndexedSubscript:v8];
        }

        else
        {
          v11 = +[NSNull null];
          [(NSMutableArray *)selfCopy->_functionArray setObject:v11 atIndexedSubscript:v8];
        }
      }

      ++functionsCopy2;
      ++v8;
      --v10;
    }

    while (v10);
  }

  traceStream = selfCopy->_traceStream;
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
    v18 = selfCopy->_traceStream;
    v19 = GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v44);
    baseObject = selfCopy->_baseObject;
    v21 = 8 * length;
    __chkstk_darwin(v19, v22);
    bzero(&v44 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      v23 = functionsCopy;
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
    traceStream = [(CaptureMTLVisibleFunctionTable *)selfCopy traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
    {
      __chkstk_darwin(traceStream, v39);
      bzero(&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
      v41 = StreamArrayURL(&v44, (&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0)), functionsCopy, length);
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
    v30 = selfCopy->_baseObject;
    __chkstk_darwin(self, 8 * length);
    v32 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v32, v31);
    if (length)
    {
      v33 = v32;
      v34 = length;
      do
      {
        v35 = *functionsCopy++;
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
  traceStream = [(CaptureMTLVisibleFunctionTable *)self traceStream];
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
  v14.super_class = CaptureMTLVisibleFunctionTable;
  [(CaptureMTLVisibleFunctionTable *)&v14 dealloc];
}

- (CaptureMTLVisibleFunctionTable)initWithBaseObject:(id)object captureRenderPipelineState:(id)state descriptor:(id)descriptor
{
  objectCopy = object;
  stateCopy = state;
  descriptorCopy = descriptor;
  v24.receiver = self;
  v24.super_class = CaptureMTLVisibleFunctionTable;
  v12 = [(CaptureMTLVisibleFunctionTable *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    device = [stateCopy device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = device;

    objc_storeStrong(&v13->_renderPipelineState, state);
    traceContext = [stateCopy traceContext];
    v13->_traceContext = traceContext;
    v17 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v17, v13);

    v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [descriptorCopy functionCount]);
    functionArray = v13->_functionArray;
    v13->_functionArray = v18;

    if ([descriptorCopy functionCount])
    {
      v20 = 0;
      do
      {
        v21 = v13->_functionArray;
        v22 = +[NSNull null];
        [(NSMutableArray *)v21 addObject:v22];

        ++v20;
      }

      while ([descriptorCopy functionCount] > v20);
    }
  }

  return v13;
}

- (CaptureMTLVisibleFunctionTable)initWithBaseObject:(id)object captureComputePipelineState:(id)state descriptor:(id)descriptor
{
  objectCopy = object;
  stateCopy = state;
  descriptorCopy = descriptor;
  v24.receiver = self;
  v24.super_class = CaptureMTLVisibleFunctionTable;
  v12 = [(CaptureMTLVisibleFunctionTable *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    device = [stateCopy device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = device;

    objc_storeStrong(&v13->_computePipelineState, state);
    traceContext = [stateCopy traceContext];
    v13->_traceContext = traceContext;
    v17 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v17, v13);

    v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [descriptorCopy functionCount]);
    functionArray = v13->_functionArray;
    v13->_functionArray = v18;

    if ([descriptorCopy functionCount])
    {
      v20 = 0;
      do
      {
        v21 = v13->_functionArray;
        v22 = +[NSNull null];
        [(NSMutableArray *)v21 addObject:v22];

        ++v20;
      }

      while ([descriptorCopy functionCount] > v20);
    }
  }

  return v13;
}

@end