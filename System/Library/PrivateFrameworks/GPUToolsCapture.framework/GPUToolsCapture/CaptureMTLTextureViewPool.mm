@interface CaptureMTLTextureViewPool
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLTextureViewPool)initWithBaseObject:(id)object captureDevice:(id)device;
- (MTLResourceID)copyResourceViewsFromPool:(id)pool sourceRange:(_NSRange)range destinationIndex:(unint64_t)index;
- (MTLResourceID)setTextureView:(id)view atIndex:(unint64_t)index;
- (MTLResourceID)setTextureView:(id)view descriptor:(id)descriptor atIndex:(unint64_t)index;
- (MTLResourceID)setTextureViewFromBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row atIndex:(unint64_t)index;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTLTextureViewPool

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLTextureViewPool *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLTextureViewPool;
  v3 = [(CaptureMTLTextureViewPool *)&v7 description];
  v4 = [(MTLTextureViewPool *)self->_baseObject description];
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

- (MTLResourceID)copyResourceViewsFromPool:(id)pool sourceRange:(_NSRange)range destinationIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  poolCopy = pool;
  baseObject = self->_baseObject;
  baseObject = [poolCopy baseObject];
  index = [(MTLTextureViewPool *)baseObject copyResourceViewsFromPool:baseObject sourceRange:location destinationIndex:length, index];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v14 = poolCopy;
    if ([v14 resourceViewCount] >= location)
    {
      v15 = [v14 resourceViewCount] - location;
    }

    else
    {
      v15 = 0;
    }

    if ([(CaptureMTLTextureViewPool *)selfCopy resourceViewCount]>= index)
    {
      v17 = [(CaptureMTLTextureViewPool *)selfCopy resourceViewCount]- index;
    }

    else
    {
      v17 = 0;
    }

    if (length >= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = length;
    }

    if (v18 >= v17)
    {
      v16 = v17;
    }

    else
    {
      v16 = v18;
    }

    if (v16)
    {
      memmove(&selfCopy->_textureViews[11 * index], (v14[6] + 88 * location), 88 * v16);
      memmove(&selfCopy->_streamRefs[index], (v14[8] + 8 * location), 8 * v16);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v16 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v32);
    v20 = v33;
    *(v33 + 8) = -14855;
    if (BYTE9(v34))
    {
      v21 = *(*(&v32 + 1) + 24);
      v22 = BYTE10(v34);
      ++BYTE10(v34);
      v23 = GTTraceMemPool_allocateBytes(v21, *(&v33 + 1), v22 | 0x4000000000) + 16;
    }

    else
    {
      LOBYTE(v22) = 0;
      BYTE9(v34) = 64;
      v23 = v20;
    }

    v20[13] = v22;
    traceStream = [(CaptureMTLTextureViewPool *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [poolCopy traceStream];
    if (traceStream2)
    {
      v27 = *traceStream2;
    }

    else
    {
      v27 = 0;
    }

    v28 = GTTraceEncoder_storeBytes(&v32, &self->_streamRefs[index], 8 * v16);
    *v23 = var0;
    *(v23 + 1) = index;
    *(v23 + 2) = v27;
    *(v23 + 3) = location;
    *(v23 + 4) = length;
    *(v23 + 5) = index;
    *(v23 + 6) = v16;
    v23[56] = v28;
    *(v23 + 57) = 0;
    *(v23 + 15) = 0;
    s();
    *v29 = v30;
    *(v29 + 8) = BYTE8(v34);
    *(v33 + 15) |= 8u;
  }

  return index;
}

- (MTLResourceID)setTextureViewFromBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  TranslateGTMTLTextureDescriptorDirectly(descriptorCopy, &v29);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  v16 = [(MTLTextureViewPool *)baseObject setTextureViewFromBuffer:baseObject descriptor:descriptorCopy offset:offset bytesPerRow:row atIndex:index];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MTLTextureViewPool *)self->_baseObject resourceViewCount]> index)
  {
    textureViews = selfCopy->_textureViews;
    traceStream = [bufferCopy traceStream];
    v20 = &textureViews[11 * index];
    if (traceStream)
    {
      v21 = *traceStream | 0x8000000000000000;
    }

    else
    {
      v21 = 0x8000000000000000;
    }

    v20->var0._impl = v16;
    v20[1].var0._impl = v21;
    v20[2].var0._impl = offset;
    v20[3].var0._impl = row;
    *&v20[4].var0._impl = 0u;
    *&v20[6].var0._impl = 0u;
    *&v20[8].var0._impl = 0u;
    v20[10].var0._impl = 0;
    v22 = &selfCopy->_textureViews[11 * index];
    v23 = v29;
    v24 = v30;
    v25 = v31;
    *(v22 + 80) = v32;
    *(v22 + 48) = v24;
    *(v22 + 64) = v25;
    *(v22 + 32) = v23;
  }

  objc_sync_exit(selfCopy);

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    traceStream2 = [bufferCopy traceStream];
    if (traceStream2)
    {
      v27 = *traceStream2;
    }

    else
    {
      v27 = 0;
    }

    EncodeSetTextureViewFromBuffer(selfCopy, v16, index, v27, &v29, offset, row);
  }

  return v16;
}

- (MTLResourceID)setTextureView:(id)view descriptor:(id)descriptor atIndex:(unint64_t)index
{
  viewCopy = view;
  descriptorCopy = descriptor;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  TranslateGTMTLTextureViewDescriptorDirectly(descriptorCopy, &v24);
  baseObject = self->_baseObject;
  baseObject = [viewCopy baseObject];
  v12 = [(MTLTextureViewPool *)baseObject setTextureView:baseObject descriptor:descriptorCopy atIndex:index];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MTLTextureViewPool *)self->_baseObject resourceViewCount]> index)
  {
    textureViews = selfCopy->_textureViews;
    traceStream = [viewCopy traceStream];
    v16 = &textureViews[11 * index];
    if (traceStream)
    {
      v17 = *traceStream & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = 0;
    }

    v16->var0._impl = v12;
    v16[1].var0._impl = v17;
    LOBYTE(v16[2].var0._impl) = 1;
    *(&v16[6].var0._impl + 1) = 0u;
    *(&v16[4].var0._impl + 1) = 0u;
    *(&v16[2].var0._impl + 1) = 0u;
    *(&v16[8].var0._impl + 1) = 0u;
    v16[10].var0._impl = 0;
    v18 = &selfCopy->_textureViews[11 * index];
    v19 = v24;
    v20 = v25;
    *(v18 + 56) = v26;
    *(v18 + 40) = v20;
    *(v18 + 24) = v19;
  }

  objc_sync_exit(selfCopy);

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    traceStream2 = [viewCopy traceStream];
    if (traceStream2)
    {
      v22 = *traceStream2;
    }

    else
    {
      v22 = 0;
    }

    EncodeSetTextureViewWithDescriptor(selfCopy, v12, index, v22, &v24);
  }

  return v12;
}

- (MTLResourceID)setTextureView:(id)view atIndex:(unint64_t)index
{
  viewCopy = view;
  baseObject = self->_baseObject;
  baseObject = [viewCopy baseObject];
  v9 = [(MTLTextureViewPool *)baseObject setTextureView:baseObject atIndex:index];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MTLTextureViewPool *)self->_baseObject resourceViewCount]> index)
  {
    textureViews = selfCopy->_textureViews;
    traceStream = [viewCopy traceStream];
    v13 = &textureViews[11 * index];
    if (traceStream)
    {
      v14 = *traceStream & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = 0;
    }

    v13->var0._impl = v9;
    v13[1].var0._impl = v14;
    *&v13[2].var0._impl = 0u;
    *&v13[4].var0._impl = 0u;
    *&v13[6].var0._impl = 0u;
    *&v13[8].var0._impl = 0u;
    v13[10].var0._impl = 0;
  }

  objc_sync_exit(selfCopy);

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    traceStream2 = [viewCopy traceStream];
    if (traceStream2)
    {
      v16 = *traceStream2;
    }

    else
    {
      v16 = 0;
    }

    EncodeSetTextureView(selfCopy, v9, index, v16);
  }

  return v9;
}

- (void)dealloc
{
  [(CaptureMTLDevice *)self->_captureDevice deallocateResource:self];
  baseObject = self->_baseObject;
  self->_baseObject = 0;

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  v5 = v16;
  *(v16 + 8) = -14972;
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
  traceStream = [(CaptureMTLTextureViewPool *)self traceStream];
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
  apr_pool_destroy(self->_pool);
  v14.receiver = self;
  v14.super_class = CaptureMTLTextureViewPool;
  [(CaptureMTLTextureViewPool *)&v14 dealloc];
}

- (CaptureMTLTextureViewPool)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = CaptureMTLTextureViewPool;
  v9 = [(CaptureMTLTextureViewPool *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    objc_storeStrong(&v10->_captureDevice, device);
    traceContext = [deviceCopy traceContext];
    v10->_traceContext = traceContext;
    v12 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v12, v10);

    apr_pool_create_ex(&v10->_pool, 0, 0, 0);
    pool = v10->_pool;
    v14 = 184 * [objectCopy resourceViewCount];
    v15 = apr_palloc(pool, v14);
    v16 = v15;
    if (v15)
    {
      bzero(v15, v14);
    }

    v10->_textureViews = v16;
    v17 = &v16[11 * [objectCopy resourceViewCount]];
    v10->_textureViewsCopy = v17;
    v10->_streamRefs = &v17[11 * [objectCopy resourceViewCount]].var0._impl;
  }

  return v10;
}

@end