@interface CaptureMTLTextureViewPool
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLTextureViewPool)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (MTLResourceID)copyResourceViewsFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationIndex:(unint64_t)a5;
- (MTLResourceID)setTextureView:(id)a3 atIndex:(unint64_t)a4;
- (MTLResourceID)setTextureView:(id)a3 descriptor:(id)a4 atIndex:(unint64_t)a5;
- (MTLResourceID)setTextureViewFromBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6 atIndex:(unint64_t)a7;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTLTextureViewPool

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTLTextureViewPool *)baseObject conformsToProtocol:v4];

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

- (MTLResourceID)copyResourceViewsFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationIndex:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  baseObject = self->_baseObject;
  v11 = [v9 baseObject];
  v12 = [(MTLTextureViewPool *)baseObject copyResourceViewsFromPool:v11 sourceRange:location destinationIndex:length, a5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = self;
    objc_sync_enter(v13);
    v14 = v9;
    if ([v14 resourceViewCount] >= location)
    {
      v15 = [v14 resourceViewCount] - location;
    }

    else
    {
      v15 = 0;
    }

    if ([(CaptureMTLTextureViewPool *)v13 resourceViewCount]>= a5)
    {
      v17 = [(CaptureMTLTextureViewPool *)v13 resourceViewCount]- a5;
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
      memmove(&v13->_textureViews[11 * a5], (v14[6] + 88 * location), 88 * v16);
      memmove(&v13->_streamRefs[a5], (v14[8] + 8 * location), 8 * v16);
    }

    objc_sync_exit(v13);
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
    v24 = [(CaptureMTLTextureViewPool *)self traceStream];
    if (v24)
    {
      var0 = v24->var0;
    }

    else
    {
      var0 = 0;
    }

    v26 = [v9 traceStream];
    if (v26)
    {
      v27 = *v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = GTTraceEncoder_storeBytes(&v32, &self->_streamRefs[a5], 8 * v16);
    *v23 = var0;
    *(v23 + 1) = v12;
    *(v23 + 2) = v27;
    *(v23 + 3) = location;
    *(v23 + 4) = length;
    *(v23 + 5) = a5;
    *(v23 + 6) = v16;
    v23[56] = v28;
    *(v23 + 57) = 0;
    *(v23 + 15) = 0;
    s();
    *v29 = v30;
    *(v29 + 8) = BYTE8(v34);
    *(v33 + 15) |= 8u;
  }

  return v12;
}

- (MTLResourceID)setTextureViewFromBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6 atIndex:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  TranslateGTMTLTextureDescriptorDirectly(v13, &v29);
  baseObject = self->_baseObject;
  v15 = [v12 baseObject];
  v16 = [(MTLTextureViewPool *)baseObject setTextureViewFromBuffer:v15 descriptor:v13 offset:a5 bytesPerRow:a6 atIndex:a7];

  v17 = self;
  objc_sync_enter(v17);
  if ([(MTLTextureViewPool *)self->_baseObject resourceViewCount]> a7)
  {
    textureViews = v17->_textureViews;
    v19 = [v12 traceStream];
    v20 = &textureViews[11 * a7];
    if (v19)
    {
      v21 = *v19 | 0x8000000000000000;
    }

    else
    {
      v21 = 0x8000000000000000;
    }

    v20->var0._impl = v16;
    v20[1].var0._impl = v21;
    v20[2].var0._impl = a5;
    v20[3].var0._impl = a6;
    *&v20[4].var0._impl = 0u;
    *&v20[6].var0._impl = 0u;
    *&v20[8].var0._impl = 0u;
    v20[10].var0._impl = 0;
    v22 = &v17->_textureViews[11 * a7];
    v23 = v29;
    v24 = v30;
    v25 = v31;
    *(v22 + 80) = v32;
    *(v22 + 48) = v24;
    *(v22 + 64) = v25;
    *(v22 + 32) = v23;
  }

  objc_sync_exit(v17);

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v26 = [v12 traceStream];
    if (v26)
    {
      v27 = *v26;
    }

    else
    {
      v27 = 0;
    }

    EncodeSetTextureViewFromBuffer(v17, v16, a7, v27, &v29, a5, a6);
  }

  return v16;
}

- (MTLResourceID)setTextureView:(id)a3 descriptor:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  TranslateGTMTLTextureViewDescriptorDirectly(v9, &v24);
  baseObject = self->_baseObject;
  v11 = [v8 baseObject];
  v12 = [(MTLTextureViewPool *)baseObject setTextureView:v11 descriptor:v9 atIndex:a5];

  v13 = self;
  objc_sync_enter(v13);
  if ([(MTLTextureViewPool *)self->_baseObject resourceViewCount]> a5)
  {
    textureViews = v13->_textureViews;
    v15 = [v8 traceStream];
    v16 = &textureViews[11 * a5];
    if (v15)
    {
      v17 = *v15 & 0x7FFFFFFFFFFFFFFFLL;
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
    v18 = &v13->_textureViews[11 * a5];
    v19 = v24;
    v20 = v25;
    *(v18 + 56) = v26;
    *(v18 + 40) = v20;
    *(v18 + 24) = v19;
  }

  objc_sync_exit(v13);

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v21 = [v8 traceStream];
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    EncodeSetTextureViewWithDescriptor(v13, v12, a5, v22, &v24);
  }

  return v12;
}

- (MTLResourceID)setTextureView:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  baseObject = self->_baseObject;
  v8 = [v6 baseObject];
  v9 = [(MTLTextureViewPool *)baseObject setTextureView:v8 atIndex:a4];

  v10 = self;
  objc_sync_enter(v10);
  if ([(MTLTextureViewPool *)self->_baseObject resourceViewCount]> a4)
  {
    textureViews = v10->_textureViews;
    v12 = [v6 traceStream];
    v13 = &textureViews[11 * a4];
    if (v12)
    {
      v14 = *v12 & 0x7FFFFFFFFFFFFFFFLL;
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

  objc_sync_exit(v10);

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v15 = [v6 traceStream];
    if (v15)
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    EncodeSetTextureView(v10, v9, a4, v16);
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
  v10 = [(CaptureMTLTextureViewPool *)self traceStream];
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
  apr_pool_destroy(self->_pool);
  v14.receiver = self;
  v14.super_class = CaptureMTLTextureViewPool;
  [(CaptureMTLTextureViewPool *)&v14 dealloc];
}

- (CaptureMTLTextureViewPool)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = CaptureMTLTextureViewPool;
  v9 = [(CaptureMTLTextureViewPool *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    objc_storeStrong(&v10->_captureDevice, a4);
    v11 = [v8 traceContext];
    v10->_traceContext = v11;
    v12 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v11, v12, v10);

    apr_pool_create_ex(&v10->_pool, 0, 0, 0);
    pool = v10->_pool;
    v14 = 184 * [v7 resourceViewCount];
    v15 = apr_palloc(pool, v14);
    v16 = v15;
    if (v15)
    {
      bzero(v15, v14);
    }

    v10->_textureViews = v16;
    v17 = &v16[11 * [v7 resourceViewCount]];
    v10->_textureViewsCopy = v17;
    v10->_streamRefs = &v17[11 * [v7 resourceViewCount]].var0._impl;
  }

  return v10;
}

@end