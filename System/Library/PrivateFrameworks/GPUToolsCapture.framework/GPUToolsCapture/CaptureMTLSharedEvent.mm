@interface CaptureMTLSharedEvent
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)waitUntilSignaledValue:(unint64_t)value timeoutMS:(unint64_t)s;
- (CaptureMTLSharedEvent)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (id)newSharedEventHandle;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)notifyListener:(id)listener atValue:(unint64_t)value block:(id)block;
- (void)setLabel:(id)label;
- (void)setSignaledValue:(unint64_t)value;
- (void)touch;
@end

@implementation CaptureMTLSharedEvent

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15973;
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
  traceStream = [(CaptureMTLSharedEvent *)self traceStream];
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
  v13.super_class = CaptureMTLSharedEvent;
  [(CaptureMTLSharedEvent *)&v13 dealloc];
}

- (void)setSignaledValue:(unint64_t)value
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLSharedEventSPI *)self->_baseObject setSignaledValue:value];
  v6 = v16;
  *(v16 + 8) = -15975;
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
  traceStream = [(CaptureMTLSharedEvent *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = value;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLSharedEventSPI *)self->_baseObject setLabel:labelCopy];
  v6 = v19;
  *(v19 + 8) = -15974;
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
  traceStream = [(CaptureMTLSharedEvent *)self traceStream];
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
  v5 = [(MTLSharedEventSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLSharedEvent;
  v3 = [(CaptureMTLSharedEvent *)&v7 description];
  v4 = [(MTLSharedEventSPI *)self->_baseObject description];
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

- (BOOL)waitUntilSignaledValue:(unint64_t)value timeoutMS:(unint64_t)s
{
  sCopy = s;
  if (s && ((dword_31F7C8 & 0x4000000) != 0 || *(boundaryTrackerInstance + 20)))
  {
    sCopy = s + 1000 * qword_31F7A8;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__CaptureMTLSharedEvent_waitUntilSignaledValue_timeoutMS___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = sCopy;
  if (waitUntilSignaledValue_timeoutMS__onceToken != -1)
  {
    dispatch_once(&waitUntilSignaledValue_timeoutMS__onceToken, block);
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  v8 = [(MTLSharedEventSPI *)self->_baseObject waitUntilSignaledValue:value timeoutMS:sCopy];
  v9 = v20;
  *(v20 + 8) = -15422;
  v10 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v12 = *(*(&v19 + 1) + 24);
    v13 = BYTE10(v21);
    ++BYTE10(v21);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v20 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLSharedEvent *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = value;
  *(v11 + 2) = sCopy;
  *(v11 + 6) = v8;
  *(v11 + 7) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
  return v8;
}

void __58__CaptureMTLSharedEvent_waitUntilSignaledValue_timeoutMS___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = 134217984;
    v4 = v2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "[ waitUntilSignaledValue:timeoutMS:] timeout changed to %llu ms due to capture being loaded.", &v3, 0xCu);
  }
}

- (void)notifyListener:(id)listener atValue:(unint64_t)value block:(id)block
{
  blockCopy = block;
  selfCopy = self;
  baseObject = selfCopy->_baseObject;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __54__CaptureMTLSharedEvent_notifyListener_atValue_block___block_invoke;
  v13[3] = &unk_2F26A8;
  v14 = selfCopy;
  v15 = blockCopy;
  valueCopy = value;
  v11 = selfCopy;
  v12 = blockCopy;
  [(MTLSharedEventSPI *)baseObject notifyListener:listener atValue:value block:v13];
}

- (id)newSharedEventHandle
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  newSharedEventHandle = [(MTLSharedEventSPI *)self->_baseObject newSharedEventHandle];
  v5 = v16;
  *(v16 + 8) = -15907;
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
  traceStream = [(CaptureMTLSharedEvent *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = newSharedEventHandle;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  return newSharedEventHandle;
}

- (CaptureMTLSharedEvent)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLSharedEvent;
  v9 = [(CaptureMTLSharedEvent *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_captureDevice, device);
    objc_storeStrong(&v10->_baseObject, object);
    traceContext = [deviceCopy traceContext];
    v10->_traceContext = traceContext;
    v12 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v12, v10);
  }

  return v10;
}

@end