@interface CaptureMTL4CommandQueue
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTL4CommandQueue)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (unint64_t)streamReference;
- (void)_addRequestsToDownloadQueueForCommandBuffers:(const void *)buffers count:(unint64_t)count atIndex:(unint64_t)index;
- (void)_addScheduledTrigger:(const void *)trigger count:(unint64_t)count atIndex:(unint64_t)index;
- (void)_commitCommandBuffers:(const void *)buffers count:(unint64_t)count atIndex:(unint64_t)index;
- (void)_encodeDownloadPoint:(apr_array_header_t *)point;
- (void)_postCommit:(const void *)commit count:(unint64_t)count;
- (void)_triggerCommit:(const void *)commit count:(unint64_t)count atIndex:(unint64_t)index;
- (void)addResidencySet:(id)set;
- (void)addResidencySets:(const void *)sets count:(unint64_t)count;
- (void)commit:(const void *)commit count:(unint64_t)count;
- (void)commit:(const void *)commit count:(unint64_t)count options:(id)options;
- (void)copyBufferMappingsFromBuffer:(id)buffer toBuffer:(id)toBuffer operations:(id *)operations count:(unint64_t)count;
- (void)copyTextureMappingsFromTexture:(id)texture toTexture:(id)toTexture operations:(id *)operations count:(unint64_t)count;
- (void)dealloc;
- (void)removeResidencySet:(id)set;
- (void)removeResidencySets:(const void *)sets count:(unint64_t)count;
- (void)signalDrawable:(id)drawable;
- (void)signalEvent:(id)event value:(unint64_t)value;
- (void)touch;
- (void)updateBufferMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count;
- (void)updateTextureMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count;
- (void)waitForDrawable:(id)drawable;
- (void)waitForEvent:(id)event value:(unint64_t)value;
@end

@implementation CaptureMTL4CommandQueue

- (void)waitForEvent:(id)event value:(unint64_t)value
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  eventCopy = event;
  GTTraceContext_pushEncoderWithStream(traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [eventCopy baseObject];
  [(MTL4CommandQueueSPI *)baseObject waitForEvent:baseObject value:value];

  v11 = v23;
  *(v23 + 8) = -14842;
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
  traceStream = [(CaptureMTL4CommandQueue *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [eventCopy traceStream];

  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = value;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)waitForDrawable:(id)drawable
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  drawableCopy = drawable;
  GTTraceContext_pushEncoderWithStream(traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [drawableCopy baseObject];
  [(MTL4CommandQueueSPI *)baseObject waitForDrawable:baseObject];

  v9 = v21;
  *(v21 + 8) = -14843;
  v10 = BYTE9(v22);
  if (BYTE9(v22) > 0x30uLL)
  {
    v12 = *(*(&v20 + 1) + 24);
    v13 = BYTE10(v22);
    ++BYTE10(v22);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v21 + 1), v13 | 0x1000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v22));
    BYTE9(v22) += 16;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTL4CommandQueue *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [drawableCopy traceStream];

  if (traceStream2)
  {
    v17 = *traceStream2;
  }

  else
  {
    v17 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = v17;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)updateTextureMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count
{
  heapCopy = heap;
  mappingsCopy = mappings;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4CommandQueue_updateTextureMappings_heap_operations_count", "Metal4 Sparse Textures", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [mappingsCopy baseObject];

  baseObject2 = [heapCopy baseObject];

  [(MTL4CommandQueueSPI *)baseObject updateTextureMappings:baseObject heap:baseObject2 operations:operations count:count];
}

- (void)updateBufferMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count
{
  heapCopy = heap;
  mappingsCopy = mappings;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4CommandQueue_updateBufferMappings_heap_operations_count", "Metal4 Sparse Buffers", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [mappingsCopy baseObject];

  baseObject2 = [heapCopy baseObject];

  [(MTL4CommandQueueSPI *)baseObject updateBufferMappings:baseObject heap:baseObject2 operations:operations count:count];
}

- (void)signalEvent:(id)event value:(unint64_t)value
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  eventCopy = event;
  GTTraceContext_pushEncoderWithStream(traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [eventCopy baseObject];
  [(MTL4CommandQueueSPI *)baseObject signalEvent:baseObject value:value];

  v11 = v23;
  *(v23 + 8) = -14844;
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
  traceStream = [(CaptureMTL4CommandQueue *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [eventCopy traceStream];

  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = value;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)signalDrawable:(id)drawable
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  drawableCopy = drawable;
  GTTraceContext_pushEncoderWithStream(traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [drawableCopy baseObject];
  [(MTL4CommandQueueSPI *)baseObject signalDrawable:baseObject];

  v9 = v21;
  *(v21 + 8) = -14845;
  v10 = BYTE9(v22);
  if (BYTE9(v22) > 0x30uLL)
  {
    v12 = *(*(&v20 + 1) + 24);
    v13 = BYTE10(v22);
    ++BYTE10(v22);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v21 + 1), v13 | 0x1000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v22));
    BYTE9(v22) += 16;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTL4CommandQueue *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [drawableCopy traceStream];

  if (traceStream2)
  {
    v17 = *traceStream2;
  }

  else
  {
    v17 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = v17;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)copyTextureMappingsFromTexture:(id)texture toTexture:(id)toTexture operations:(id *)operations count:(unint64_t)count
{
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  toTextureCopy = toTexture;
  textureCopy = texture;
  GTTraceContext_pushEncoderWithStream(traceContext, &v30);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [toTextureCopy baseObject];
  [(MTL4CommandQueueSPI *)baseObject copyTextureMappingsFromTexture:baseObject toTexture:baseObject2 operations:operations count:count];

  v17 = v31;
  *(v31 + 8) = -14822;
  v18 = BYTE9(v32);
  if (BYTE9(v32) > 0x18uLL)
  {
    v20 = *(*(&v30 + 1) + 24);
    v21 = BYTE10(v32);
    ++BYTE10(v32);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v31 + 1), v21 | 0x2800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v32));
    BYTE9(v32) += 40;
  }

  *(v17 + 13) = v18;
  traceStream = [(CaptureMTL4CommandQueue *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];

  if (traceStream2)
  {
    traceStream2 = *traceStream2;
  }

  traceStream3 = [toTextureCopy traceStream];

  if (traceStream3)
  {
    v26 = *traceStream3;
  }

  else
  {
    v26 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v27 = GTTraceEncoder_storeBlob(&v30, operations, count);
  }

  else
  {
    v27 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = traceStream2;
  *(v19 + 2) = v26;
  *(v19 + 3) = count;
  v19[32] = v27;
  *(v19 + 33) = 0;
  *(v19 + 9) = 0;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v32);
  *(v31 + 15) |= 8u;
}

- (void)copyBufferMappingsFromBuffer:(id)buffer toBuffer:(id)toBuffer operations:(id *)operations count:(unint64_t)count
{
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  toBufferCopy = toBuffer;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v30);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [toBufferCopy baseObject];
  [(MTL4CommandQueueSPI *)baseObject copyBufferMappingsFromBuffer:baseObject toBuffer:baseObject2 operations:operations count:count];

  v17 = v31;
  *(v31 + 8) = -14823;
  v18 = BYTE9(v32);
  if (BYTE9(v32) > 0x18uLL)
  {
    v20 = *(*(&v30 + 1) + 24);
    v21 = BYTE10(v32);
    ++BYTE10(v32);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v31 + 1), v21 | 0x2800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v32));
    BYTE9(v32) += 40;
  }

  *(v17 + 13) = v18;
  traceStream = [(CaptureMTL4CommandQueue *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];

  if (traceStream2)
  {
    traceStream2 = *traceStream2;
  }

  traceStream3 = [toBufferCopy traceStream];

  if (traceStream3)
  {
    v26 = *traceStream3;
  }

  else
  {
    v26 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v27 = GTTraceEncoder_storeBlob(&v30, operations, count);
  }

  else
  {
    v27 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = traceStream2;
  *(v19 + 2) = v26;
  *(v19 + 3) = count;
  v19[32] = v27;
  *(v19 + 33) = 0;
  *(v19 + 9) = 0;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v32);
  *(v31 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTL4CommandQueueSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTL4CommandQueue;
  v3 = [(CaptureMTL4CommandQueue *)&v7 description];
  v4 = [(MTL4CommandQueueSPI *)self->_baseObject description];
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

- (void)removeResidencySets:(const void *)sets count:(unint64_t)count
{
  MTL4CommandQueueTakeSnapshot(self);
  if (count)
  {
    v7 = 0;
    do
    {
      v8 = sets[v7];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        isKindOfClass = [(NSMutableSet *)self->_currentResidencySets removeObject:sets[v7]];
      }

      ++v7;
    }

    while (count != v7);
    baseObject = self->_baseObject;
    v12 = 8 * count;
    __chkstk_darwin(isKindOfClass, v10);
    v13 = &v27 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v13, 8 * count);
    v14 = 0;
    do
    {
      *&v13[8 * v14] = [sets[v14] baseObject];
      ++v14;
    }

    while (count != v14);
  }

  else
  {
    v12 = 0;
    baseObject = self->_baseObject;
    v13 = &v30;
  }

  [(MTL4CommandQueueSPI *)baseObject removeResidencySets:v13 count:count];
  if (self->_snapshotCreated)
  {
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
    v16 = v28;
    *(v28 + 8) = -15150;
    v17 = BYTE9(v29);
    if (BYTE9(v29) > 0x28uLL)
    {
      v19 = *(*(&v27 + 1) + 24);
      v20 = BYTE10(v29);
      ++BYTE10(v29);
      v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x1800000000) + 16;
      v17 = v20;
    }

    else
    {
      v18 = (v16 + BYTE9(v29));
      BYTE9(v29) += 24;
    }

    *(v16 + 13) = v17;
    traceStream = [(CaptureMTL4CommandQueue *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream, v22);
    bzero(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    v24 = StreamArray(&v27, (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), sets, count);
    *v18 = var0;
    *(v18 + 1) = count;
    v18[16] = v24;
    *(v18 + 17) = 0;
    *(v18 + 5) = 0;
    s();
    *v25 = v26;
    *(v25 + 8) = BYTE8(v29);
    *(v28 + 15) |= 8u;
  }
}

- (void)removeResidencySet:(id)set
{
  setCopy = set;
  MTL4CommandQueueTakeSnapshot(self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableSet *)self->_currentResidencySets removeObject:setCopy];
  }

  baseObject = self->_baseObject;
  baseObject = [setCopy baseObject];
  [(MTL4CommandQueueSPI *)baseObject removeResidencySet:baseObject];

  if (self->_snapshotCreated)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
    v8 = v20;
    *(v20 + 8) = -15151;
    v9 = BYTE9(v21);
    if (BYTE9(v21) > 0x30uLL)
    {
      v11 = *(*(&v19 + 1) + 24);
      v12 = BYTE10(v21);
      ++BYTE10(v21);
      v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
      v9 = v12;
    }

    else
    {
      v10 = (v8 + BYTE9(v21));
      BYTE9(v21) += 16;
    }

    *(v8 + 13) = v9;
    traceStream = [(CaptureMTL4CommandQueue *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [setCopy traceStream];
    if (traceStream2)
    {
      v16 = *traceStream2;
    }

    else
    {
      v16 = 0;
    }

    *v10 = var0;
    *(v10 + 1) = v16;
    s();
    *v17 = v18;
    *(v17 + 8) = BYTE8(v21);
    *(v20 + 15) |= 8u;
  }
}

- (void)addResidencySets:(const void *)sets count:(unint64_t)count
{
  MTL4CommandQueueTakeSnapshot(self);
  v7 = 0;
  if (count)
  {
    do
    {
      MTL4AddResidencySet(self, sets[v7++]);
    }

    while (count != v7);
    baseObject = self->_baseObject;
    v7 = 8 * count;
    __chkstk_darwin(v8, v9);
    v11 = &v25 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v11, 8 * count);
    v12 = 0;
    do
    {
      *&v11[8 * v12] = [sets[v12] baseObject];
      ++v12;
    }

    while (count != v12);
  }

  else
  {
    baseObject = self->_baseObject;
    v11 = &v28;
  }

  [(MTL4CommandQueueSPI *)baseObject addResidencySets:v11 count:count];
  if (self->_snapshotCreated)
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
    v14 = v26;
    *(v26 + 8) = -15160;
    v15 = BYTE9(v27);
    if (BYTE9(v27) > 0x28uLL)
    {
      v17 = *(*(&v25 + 1) + 24);
      v18 = BYTE10(v27);
      ++BYTE10(v27);
      v16 = GTTraceMemPool_allocateBytes(v17, *(&v26 + 1), v18 | 0x1800000000) + 16;
      v15 = v18;
    }

    else
    {
      v16 = (v14 + BYTE9(v27));
      BYTE9(v27) += 24;
    }

    *(v14 + 13) = v15;
    traceStream = [(CaptureMTL4CommandQueue *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream, v20);
    bzero(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v22 = StreamArray(&v25, (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0)), sets, count);
    *v16 = var0;
    *(v16 + 1) = count;
    v16[16] = v22;
    *(v16 + 17) = 0;
    *(v16 + 5) = 0;
    s();
    *v23 = v24;
    *(v23 + 8) = BYTE8(v27);
    *(v26 + 15) |= 8u;
  }
}

- (void)addResidencySet:(id)set
{
  setCopy = set;
  MTL4CommandQueueTakeSnapshot(self);
  MTL4AddResidencySet(self, setCopy);
  baseObject = self->_baseObject;
  baseObject = [setCopy baseObject];
  [(MTL4CommandQueueSPI *)baseObject addResidencySet:baseObject];

  if (self->_snapshotCreated)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
    v8 = v20;
    *(v20 + 8) = -15161;
    v9 = BYTE9(v21);
    if (BYTE9(v21) > 0x30uLL)
    {
      v11 = *(*(&v19 + 1) + 24);
      v12 = BYTE10(v21);
      ++BYTE10(v21);
      v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
      v9 = v12;
    }

    else
    {
      v10 = (v8 + BYTE9(v21));
      BYTE9(v21) += 16;
    }

    *(v8 + 13) = v9;
    traceStream = [(CaptureMTL4CommandQueue *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [setCopy traceStream];
    if (traceStream2)
    {
      v16 = *traceStream2;
    }

    else
    {
      v16 = 0;
    }

    *v10 = var0;
    *(v10 + 1) = v16;
    s();
    *v17 = v18;
    *(v17 + 8) = BYTE8(v21);
    *(v20 + 15) |= 8u;
  }
}

- (void)commit:(const void *)commit count:(unint64_t)count options:(id)options
{
  optionsCopy = options;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    MTL4CommandQueueCaptureResidencySetSnapshots(self);
  }

  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v30);
  v10 = v31;
  *(v31 + 8) = -14846;
  v11 = BYTE9(v32);
  if (BYTE9(v32) > 0x20uLL)
  {
    v13 = *(*(&v30 + 1) + 24);
    v14 = BYTE10(v32);
    ++BYTE10(v32);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v31 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v32));
    BYTE9(v32) += 32;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTL4CommandQueue *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v16);
  v18 = (8 * count + 15) & 0xFFFFFFFFFFFFFFF0;
  bzero(&v30 - v18, 8 * count);
  v19 = StreamArray(&v30, (&v30 - v18), commit, count);
  *v12 = var0;
  *(v12 + 1) = count;
  *(v12 + 2) = optionsCopy;
  v12[24] = v19;
  *(v12 + 25) = 0;
  *(v12 + 7) = 0;
  *(v31 + 15) |= 8u;
  GTTelemetry_trackMTL4Commit(self, optionsCopy);
  v20 = [(CaptureMTL4CommandQueue *)self _commitCommandBuffers:commit count:count atIndex:*v31];
  baseObject = self->_baseObject;
  __chkstk_darwin(v20, v22);
  v23 = &v30 - v18;
  bzero(&v30 - v18, 8 * count);
  if (count)
  {
    commitCopy = commit;
    v25 = (&v30 - v18);
    countCopy = count;
    do
    {
      v27 = *commitCopy++;
      *v25++ = [v27 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTL4CommandQueueSPI *)baseObject commit:v23 count:count options:optionsCopy];
  [(CaptureMTL4CommandQueue *)self _postCommit:commit count:count];
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v32);
  *(v31 + 15) |= 8u;
}

- (void)commit:(const void *)commit count:(unint64_t)count
{
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    MTL4CommandQueueCaptureResidencySetSnapshots(self);
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  v8 = v30;
  *(v30 + 8) = -14847;
  v9 = BYTE9(v31);
  if (BYTE9(v31) > 0x28uLL)
  {
    v11 = *(*(&v29 + 1) + 24);
    v12 = BYTE10(v31);
    ++BYTE10(v31);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v30 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v31));
    BYTE9(v31) += 24;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTL4CommandQueue *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v14);
  v16 = (8 * count + 15) & 0xFFFFFFFFFFFFFFF0;
  bzero(&v29 - v16, 8 * count);
  v17 = StreamArray(&v29, (&v29 - v16), commit, count);
  *v10 = var0;
  *(v10 + 1) = count;
  v10[16] = v17;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  *(v30 + 15) |= 8u;
  v18 = objc_opt_new();
  GTTelemetry_trackMTL4Commit(self, v18);
  v19 = [(CaptureMTL4CommandQueue *)self _commitCommandBuffers:commit count:count atIndex:*v30];
  baseObject = self->_baseObject;
  __chkstk_darwin(v19, v21);
  v22 = &v29 - v16;
  bzero(&v29 - v16, 8 * count);
  if (count)
  {
    commitCopy = commit;
    v24 = (&v29 - v16);
    countCopy = count;
    do
    {
      v26 = *commitCopy++;
      *v24++ = [v26 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTL4CommandQueueSPI *)baseObject commit:v22 count:count options:v18];
  [(CaptureMTL4CommandQueue *)self _postCommit:commit count:count];
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)_postCommit:(const void *)commit count:(unint64_t)count
{
  v15 = DEVICEOBJECT(self->_baseObject);
  if (count)
  {
    v7 = 0;
    do
    {
      v8 = commit[v7];
      accelerationStructureDescriptorProcessEvent = [v8 accelerationStructureDescriptorProcessEvent];

      if (accelerationStructureDescriptorProcessEvent)
      {
        accelerationStructureDescriptorProcessEventValue = [v8 accelerationStructureDescriptorProcessEventValue];
        v11 = accelerationStructureDescriptorProcessEventValue - 2;
        if (accelerationStructureDescriptorProcessEventValue != &dword_0 + 2)
        {
          v12 = 1;
          do
          {
            accelerationStructureDescriptorProcessEvent2 = [v8 accelerationStructureDescriptorProcessEvent];
            [v15 signalEvent:accelerationStructureDescriptorProcessEvent2 value:v12];

            accelerationStructureDescriptorProcessEvent3 = [v8 accelerationStructureDescriptorProcessEvent];
            [v15 waitForEvent:accelerationStructureDescriptorProcessEvent3 value:v12 + 1];

            v12 += 2;
          }

          while (v12 <= v11);
        }
      }

      ++v7;
    }

    while (v7 != count);
  }

  [v15 signalEvent:self->_inFlightCommandBuffersCompletedEvent value:self->_inFlightCommandBuffersCompletedEventValue++];
}

- (void)_commitCommandBuffers:(const void *)buffers count:(unint64_t)count atIndex:(unint64_t)index
{
  [CaptureMTL4CommandQueue _triggerCommit:"_triggerCommit:count:atIndex:" count:? atIndex:?];
  [(CaptureMTL4CommandQueue *)self _addScheduledTrigger:buffers count:count atIndex:index];
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    dispatchGroup = [(CaptureMTLDevice *)self->_captureDevice dispatchGroup];
    dispatch_group_enter(dispatchGroup);

    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__4417;
    v19[4] = __Block_byref_object_dispose__4418;
    dispatchGroup2 = [(CaptureMTLDevice *)self->_captureDevice dispatchGroup];
    listener = self->_listener;
    inFlightCommandBuffersCompletedEvent = self->_inFlightCommandBuffersCompletedEvent;
    inFlightCommandBuffersCompletedEventValue = self->_inFlightCommandBuffersCompletedEventValue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __63__CaptureMTL4CommandQueue__commitCommandBuffers_count_atIndex___block_invoke;
    v18[3] = &unk_2F1DD8;
    v18[4] = v19;
    [(MTLSharedEvent *)inFlightCommandBuffersCompletedEvent notifyListener:listener atValue:inFlightCommandBuffersCompletedEventValue block:v18];
    pthread_mutex_lock(&self->_downloadQueueLock);
    if (!self->_downloadQueue && (*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
    {
      baseObject = [(CaptureMTLDevice *)self->_captureDevice baseObject];
      v14 = DEVICEOBJECT(baseObject);

      if (qword_31F7B0)
      {
        newCommandQueue = [v14 newCommandQueueWithMaxCommandBufferCount:?];
      }

      else
      {
        newCommandQueue = [v14 newCommandQueue];
      }

      v16 = newCommandQueue;

      downloadQueue = self->_downloadQueue;
      self->_downloadQueue = v16;
    }

    [(CaptureMTL4CommandQueue *)self _addRequestsToDownloadQueueForCommandBuffers:buffers count:count atIndex:index];
    pthread_mutex_unlock(&self->_downloadQueueLock);
    atomic_fetch_add((_sharedCaptureManager + 216), count);
    _Block_object_dispose(v19, 8);
  }
}

- (void)_addScheduledTrigger:(const void *)trigger count:(unint64_t)count atIndex:(unint64_t)index
{
  add = atomic_fetch_add(&self->_scheduled.nextSignal, 1uLL);
  v9 = self->_scheduled.event;
  [(MTL4CommandQueueSPI *)self->_baseObject signalEvent:v9 value:add];
  for (i = [[NSMutableArray alloc] initWithCapacity:count]; count; --count)
  {
    if (*trigger)
    {
      traceStream = [*trigger traceStream];
      if (traceStream)
      {
        v12 = *traceStream;
      }

      else
      {
        v12 = 0;
      }

      v13 = [NSNumber numberWithUnsignedLongLong:v12];
      [i addObject:v13];
    }

    ++trigger;
  }

  submissionListener = self->_submissionListener;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __62__CaptureMTL4CommandQueue__addScheduledTrigger_count_atIndex___block_invoke;
  v16[3] = &unk_2F1DB0;
  v17 = i;
  selfCopy = self;
  v15 = i;
  [(MTLSharedEvent *)v9 notifyListener:submissionListener atValue:add block:v16];
}

void __62__CaptureMTL4CommandQueue__addScheduledTrigger_count_atIndex___block_invoke(uint64_t a1)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v7 unsignedLongLongValue];
        v9 = atomic_load((*(*(a1 + 40) + 24) + 80));
        v10 = [v7 unsignedLongLongValue];
        *&v11 = 0x600000008;
        *(&v11 + 1) = v8;
        v12 = v9;
        v13 = 0u;
        v14 = 0u;
        v15 = 0;
        v16 = v10;
        v17 = 1;
        memset(v18, 0, sizeof(v18));
        GTCaptureBoundaryTracker_handleTrigger(&v11);
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }
}

- (void)_triggerCommit:(const void *)commit count:(unint64_t)count atIndex:(unint64_t)index
{
  if (count)
  {
    countCopy = count;
    do
    {
      v9 = *commit;
      traceStream = [v9 traceStream];
      if (traceStream)
      {
        v11 = *traceStream;
      }

      else
      {
        v11 = 0;
      }

      traceStream2 = [(CaptureMTLDevice *)self->_captureDevice traceStream];
      if (traceStream2)
      {
        var0 = traceStream2->var0;
      }

      else
      {
        var0 = 0;
      }

      traceStream3 = [(CaptureMTL4CommandQueue *)self traceStream];
      if (traceStream3)
      {
        v15 = traceStream3->var0;
      }

      else
      {
        v15 = 0;
      }

      traceStream4 = [v9 traceStream];

      if (traceStream4)
      {
        v17 = *traceStream4;
      }

      else
      {
        v17 = 0;
      }

      *&v18 = 0x500000008;
      *(&v18 + 1) = v11;
      indexCopy = index;
      v20 = 0;
      v21 = 0;
      v22 = var0;
      v23 = 0;
      v24 = v15;
      v25 = v17;
      v26 = 1;
      memset(v27, 0, sizeof(v27));
      GTCaptureBoundaryTracker_handleTrigger(&v18);
      ++commit;
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)_addRequestsToDownloadQueueForCommandBuffers:(const void *)buffers count:(unint64_t)count atIndex:(unint64_t)index
{
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v9 = newpool;
  apr_array_make(newpool, 0, 456);
  v10 = GTTraceContext_copyStreamMap(self->_traceContext, v9);
  v11 = apr_hash_make(v9);
  *(v10 + 3) = 0;
  *(v10 + 4) = 0;
  *(v10 + 2) = v10;
  *(v10 + 10) = 0;
  v12 = apr_hash_next((v10 + 16));
  if (v12)
  {
    v13 = v12;
    do
    {
      GTTraceMemPool_buildMemoryMap(*(*(*(v13 + 1) + 32) + 24), v11);
      v13 = apr_hash_next(v13);
    }

    while (v13);
  }

  v14 = _sharedCaptureManager;
  v35[0] = v10;
  v35[1] = v11;
  v35[2] = v9;
  v36 = (dword_31F7C8 & 0x400000) != 0;
  memset(v37, 0, sizeof(v37));
  v15 = GTResourceTrackerMakeWithDescriptor(v35);
  if (count)
  {
    v32 = v14;
    indexCopy = index;
    selfCopy = self;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = buffers[v17];
      v19 = v18;
      if (v18)
      {
        if (!v16)
        {
          traceStream = [v18 traceStream];
          if (traceStream)
          {
            v16 = *traceStream;
          }

          else
          {
            v16 = 0;
          }
        }

        if ([v19 traceStream])
        {
          v21 = *([v19 traceStream] + 4);
          if (v21)
          {
            v22 = 0;
            while (1)
            {
              v23 = atomic_load((v21 + 4));
              v24 = v22 + (v23 >> 6) - 1;
              if (v24 > 0)
              {
                break;
              }

              v21 = *(v21 + 40);
              v22 = v24;
              if (!v21)
              {
                v22 = v24;
                goto LABEL_19;
              }
            }

            v24 = 0;
LABEL_19:
            v25 = v22 | (v24 << 32);
          }

          else
          {
            v25 = 0;
          }

          while (v21 && (*(v21 + 64 + ((HIDWORD(v25) - v25) << 6) + 15) & 8) != 0)
          {
            GTResourceTrackerProcessFunction();
            v26 = atomic_load((v21 + 4));
            v27 = v25 + (v26 >> 6);
            v28 = (HIDWORD(v25) + 1);
            v25 = (v28 << 32) | v25;
            if (v28 == v27 - 1)
            {
              v25 = (v28 << 32) | v28;
              v21 = *(v21 + 40);
            }
          }
        }
      }

      ++v17;
    }

    while (v17 != count);
    v9 = newpool;
    index = indexCopy;
    self = selfCopy;
    v14 = v32;
  }

  else
  {
    v16 = 0;
  }

  ResourceTracker_processUsedResidencySets(v15, index, self->_traceStream, v9);
  v29 = ResourceTracker_harvestResources(v15, v9);
  DownloadRequests = GTResourceHarvesterGetDownloadRequests([(CaptureMTLDevice *)self->_captureDevice harvester], v16, v29);
  v31 = GTResourceDownloaderProcessRequest(v9, DownloadRequests);
  GTMTLCaptureState_appendDownloadRequests(v14, v31);
  [(CaptureMTL4CommandQueue *)self _encodeDownloadPoint:v31];
  apr_pool_destroy(v9);
}

- (void)_encodeDownloadPoint:(apr_array_header_t *)point
{
  v11 = objc_alloc_init(GTDownloadPoint);
  ++self->_downloadSignal;
  [(GTDownloadPoint *)v11 setWaitValue:?];
  [(GTDownloadPoint *)v11 setWaitEvent:self->_downloadEvent];
  ++self->_downloadSignal;
  [(GTDownloadPoint *)v11 setDownloadValue:?];
  [(GTDownloadPoint *)v11 setDownloadEvent:self->_downloadEvent];
  [(GTDownloadPoint *)v11 setDownloadQueue:self->_downloadQueue];
  baseObject = self->_baseObject;
  waitEvent = [(GTDownloadPoint *)v11 waitEvent];
  [(MTL4CommandQueueSPI *)baseObject signalEvent:waitEvent value:[(GTDownloadPoint *)v11 waitValue]];

  downloader = [(CaptureMTLDevice *)self->_captureDevice downloader];
  [downloader downloadRequest:point atPoint:v11];

  v8 = self->_baseObject;
  downloadEvent = [(GTDownloadPoint *)v11 downloadEvent];
  downloadValue = [(GTDownloadPoint *)v11 downloadValue];
  [(MTL4CommandQueueSPI *)v8 waitForEvent:downloadEvent value:downloadValue timeout:GT_ENV];
}

- (void)dealloc
{
  GTMTLGuestAppClientRemoveMTL4CommandQueueInfo(g_guestAppClientMTL, self);
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15155;
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
  traceStream = [(CaptureMTL4CommandQueue *)self traceStream];
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
  v13.super_class = CaptureMTL4CommandQueue;
  [(CaptureMTL4CommandQueue *)&v13 dealloc];
}

- (CaptureMTL4CommandQueue)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v25.receiver = self;
  v25.super_class = CaptureMTL4CommandQueue;
  v9 = [(CaptureMTL4CommandQueue *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    objc_storeStrong(&v10->_captureDevice, device);
    traceContext = [deviceCopy traceContext];
    v10->_traceContext = traceContext;
    v12 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v12, v10);

    device = [objectCopy device];
    newSharedEvent = [device newSharedEvent];
    downloadEvent = v10->_downloadEvent;
    v10->_downloadEvent = newSharedEvent;

    v10->_downloadSignal = 0;
    pthread_mutex_init(&v10->_downloadQueueLock, 0);
    GTMTLGuestAppClientAddMTL4CommandQueueInfo(g_guestAppClientMTL, v10);
    v16 = +[NSMutableSet set];
    currentResidencySets = v10->_currentResidencySets;
    v10->_currentResidencySets = v16;

    lastSnapshot = v10->_lastSnapshot;
    v10->_lastSnapshot = 0;

    v10->_snapshotCreated = (*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2;
    if (initWithBaseObject_captureDevice__token != -1)
    {
      dispatch_once(&initWithBaseObject_captureDevice__token, &__block_literal_global_4426);
    }

    objc_storeStrong(&v10->_listener, initWithBaseObject_captureDevice__listener);
    objc_storeStrong(&v10->_submissionListener, initWithBaseObject_captureDevice__submissionListener);
    v19 = DEVICEOBJECT(v10->_captureDevice);
    newSharedEvent2 = [v19 newSharedEvent];
    inFlightCommandBuffersCompletedEvent = v10->_inFlightCommandBuffersCompletedEvent;
    v10->_inFlightCommandBuffersCompletedEvent = newSharedEvent2;

    v10->_inFlightCommandBuffersCompletedEventValue = 1;
    device2 = [objectCopy device];
    newSharedEvent3 = [device2 newSharedEvent];

    objc_storeStrong(&v10->_scheduled.event, newSharedEvent3);
    atomic_store(1uLL, &v10->_scheduled.nextSignal);
  }

  return v10;
}

void __60__CaptureMTL4CommandQueue_initWithBaseObject_captureDevice___block_invoke(id a1)
{
  v1 = dispatch_queue_create("com.apple.gputools.CaptureMTL4CommandQueue", 0);
  v2 = [[MTLSharedEventListener alloc] initWithDispatchQueue:v1];
  v3 = initWithBaseObject_captureDevice__listener;
  initWithBaseObject_captureDevice__listener = v2;

  v6 = dispatch_queue_create("com.apple.gputools.CaptureMTL4CommandBufferSubmission", 0);
  v4 = [[MTLSharedEventListener alloc] initWithDispatchQueue:v6];
  v5 = initWithBaseObject_captureDevice__submissionListener;
  initWithBaseObject_captureDevice__submissionListener = v4;
}

@end