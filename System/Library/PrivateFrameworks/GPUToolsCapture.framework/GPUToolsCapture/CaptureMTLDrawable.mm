@interface CaptureMTLDrawable
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLDrawable)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)texture;
- (unint64_t)deviceRef;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)present;
- (void)presentAfterMinimumDuration:(double)duration;
- (void)presentAtTime:(double)time;
- (void)touch;
@end

@implementation CaptureMTLDrawable

- (void)presentAfterMinimumDuration:(double)duration
{
  PresentTelemetry(self);
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLDrawable *)self->_baseObject presentAfterMinimumDuration:duration];
  v6 = v16;
  *(v16 + 8) = -7156;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTLDrawable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = duration;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  PresentTrigger(self, &v15);
}

- (void)presentAtTime:(double)time
{
  PresentTelemetry(self);
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLDrawable *)self->_baseObject presentAtTime:time];
  v6 = v16;
  *(v16 + 8) = -7157;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTLDrawable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = time;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  PresentTrigger(self, &v15);
}

- (void)present
{
  PresentTelemetry(self);
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLDrawable *)self->_baseObject present];
  v4 = v14;
  *(v14 + 8) = -7158;
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
  traceStream = [(CaptureMTLDrawable *)self traceStream];
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
  *(v11 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
  PresentTrigger(self, &v13);
}

- (id)texture
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  texture = [(MTLDrawable *)self->_baseObject texture];
  v5 = RetrieveGPUCaptureTexture(texture);
  v6 = v19;
  *(v19 + 8) = -7167;
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
  traceStream = [(CaptureMTLDrawable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v5 traceStream];
  if (traceStream2)
  {
    v14 = *traceStream2;
  }

  else
  {
    v14 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = v14;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;

  return texture;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CaptureMTLDrawable;
  [(CaptureMTLDrawable *)&v2 dealloc];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLDrawable *)baseObject conformsToProtocol:protocolCopy];

  if (&OBJC_PROTOCOL___CaptureMTLObject == protocolCopy)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if (s_logUsingOsLog == 1)
  {
    v5 = gt_tagged_log(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ClassName = object_getClassName(self->_baseObject);
      *buf = 136315394;
      v13 = ClassName;
      v14 = 2080;
      Name = sel_getName(selector);
      _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "warning: Uncaught selector, [%s %s]", buf, 0x16u);
    }
  }

  else
  {
    v6 = __stderrp;
    v7 = object_getClassName(self->_baseObject);
    v8 = [NSString stringWithFormat:@"warning: Uncaught selector, [%s %s]", v7, sel_getName(selector)];
    fprintf(v6, "%s\n", [v8 UTF8String]);
  }

  baseObject = self->_baseObject;

  return baseObject;
}

- (unint64_t)deviceRef
{
  layer = [(CaptureMTLDrawable *)self layer];
  device = [layer device];
  traceStream = [device traceStream];
  if (traceStream)
  {
    v5 = *traceStream;
  }

  else
  {
    v5 = 0;
  }

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

- (CaptureMTLDrawable)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = CaptureMTLDrawable;
  v8 = [(CaptureMTLDrawable *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseObject, object);
    v9->_traceContext = context;
    v10 = DEVICEOBJECT(objectCopy);
    v9->_traceStream = GTTraceContext_openStream(context, v10, v9);

    texture = [objectCopy texture];
    v12 = RetrieveGPUCaptureTexture(texture);

    [v12 updateDrawableStream:v9->_traceStream];
  }

  return v9;
}

@end