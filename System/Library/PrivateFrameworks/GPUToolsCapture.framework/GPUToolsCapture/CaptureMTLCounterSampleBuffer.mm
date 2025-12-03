@interface CaptureMTLCounterSampleBuffer
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLCounterSampleBuffer)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (id)resolveCounterRange:(_NSRange)range;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTLCounterSampleBuffer

- (id)resolveCounterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
    v7 = [(MTLCounterSampleBuffer *)self->_baseObject resolveCounterRange:location, length];
    v8 = v20;
    *(v20 + 8) = -15753;
    v9 = BYTE9(v21);
    if (BYTE9(v21) > 0x20uLL)
    {
      v11 = *(*(&v19 + 1) + 24);
      v12 = BYTE10(v21);
      ++BYTE10(v21);
      v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x2000000000) + 16;
      v9 = v12;
    }

    else
    {
      v10 = (v8 + BYTE9(v21));
      BYTE9(v21) += 32;
    }

    *(v8 + 13) = v9;
    traceStream = [(CaptureMTLCounterSampleBuffer *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    v15 = SaveNSData(&v19, v7);
    *v10 = var0;
    *(v10 + 1) = location;
    *(v10 + 2) = length;
    v10[24] = v15;
    *(v10 + 25) = 0;
    *(v10 + 7) = 0;
    s();
    *v16 = v17;
    *(v16 + 8) = BYTE8(v21);
    *(v20 + 15) |= 8u;
  }

  else
  {
    v7 = [(MTLCounterSampleBuffer *)self->_baseObject resolveCounterRange:range.location, range.length];
  }

  return v7;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLCounterSampleBuffer *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLCounterSampleBuffer;
  v3 = [(CaptureMTLCounterSampleBuffer *)&v7 description];
  v4 = [(MTLCounterSampleBuffer *)self->_baseObject description];
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
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15867;
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
  traceStream = [(CaptureMTLCounterSampleBuffer *)self traceStream];
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
  v13.super_class = CaptureMTLCounterSampleBuffer;
  [(CaptureMTLCounterSampleBuffer *)&v13 dealloc];
}

- (CaptureMTLCounterSampleBuffer)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLCounterSampleBuffer;
  v9 = [(CaptureMTLCounterSampleBuffer *)&v14 init];
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