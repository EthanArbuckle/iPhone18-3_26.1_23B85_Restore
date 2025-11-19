@interface CaptureMTLLateEvalEvent
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)waitUntilSignaledValue:(unint64_t)a3 timeoutMS:(unint64_t)a4;
- (CaptureMTLLateEvalEvent)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (NSString)description;
- (id)newSharedEventHandle;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)notifyListener:(id)a3 atValue:(unint64_t)a4 block:(id)a5;
- (void)setLabel:(id)a3;
- (void)setSignaledValue:(unint64_t)a3;
- (void)touch;
@end

@implementation CaptureMTLLateEvalEvent

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15489;
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
  v9 = [(CaptureMTLLateEvalEvent *)self traceStream];
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
  v13.super_class = CaptureMTLLateEvalEvent;
  [(CaptureMTLLateEvalEvent *)&v13 dealloc];
}

- (void)setSignaledValue:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLSharedEventSPI *)self->_baseObject setSignaledValue:a3];
  v6 = v16;
  *(v16 + 8) = -15490;
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
  v11 = [(CaptureMTLLateEvalEvent *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLSharedEventSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -15491;
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
  v11 = [(CaptureMTLLateEvalEvent *)self traceStream];
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
  v5 = [(MTLSharedEventSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLLateEvalEvent;
  v3 = [(CaptureMTLLateEvalEvent *)&v7 description];
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

- (BOOL)waitUntilSignaledValue:(unint64_t)a3 timeoutMS:(unint64_t)a4
{
  v4 = a4;
  if (a4 && ((dword_31F7C8 & 0x4000000) != 0 || *(boundaryTrackerInstance + 20)))
  {
    v4 = a4 + 1000 * qword_31F7A8;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __60__CaptureMTLLateEvalEvent_waitUntilSignaledValue_timeoutMS___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v4;
  if (waitUntilSignaledValue_timeoutMS__onceToken_13366 != -1)
  {
    dispatch_once(&waitUntilSignaledValue_timeoutMS__onceToken_13366, block);
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  v8 = [(MTLSharedEventSPI *)self->_baseObject waitUntilSignaledValue:a3 timeoutMS:v4];
  v9 = v20;
  *(v20 + 8) = -15424;
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
  v14 = [(CaptureMTLLateEvalEvent *)self traceStream];
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
  *(v11 + 2) = v4;
  *(v11 + 6) = v8;
  *(v11 + 7) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
  return v8;
}

void __60__CaptureMTLLateEvalEvent_waitUntilSignaledValue_timeoutMS___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = 134217984;
    v4 = v2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "[ waitUntilSignaledValue:timeoutMS:] timeout changed to %llu ms due to capture being loaded.", &v3, 0xCu);
  }
}

- (void)notifyListener:(id)a3 atValue:(unint64_t)a4 block:(id)a5
{
  v8 = a5;
  v9 = self;
  baseObject = v9->_baseObject;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __56__CaptureMTLLateEvalEvent_notifyListener_atValue_block___block_invoke;
  v13[3] = &unk_2F26A8;
  v14 = v9;
  v15 = v8;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  [(MTLSharedEventSPI *)baseObject notifyListener:a3 atValue:a4 block:v13];
}

- (id)newSharedEventHandle
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  v4 = [(MTLSharedEventSPI *)self->_baseObject newSharedEventHandle];
  v5 = v16;
  *(v16 + 8) = -15488;
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
  v10 = [(CaptureMTLLateEvalEvent *)self traceStream];
  if (v10)
  {
    var0 = v10->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = v4;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  return v4;
}

- (CaptureMTLLateEvalEvent)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CaptureMTLLateEvalEvent;
  v9 = [(CaptureMTLLateEvalEvent *)&v14 init];
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