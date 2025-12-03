@interface CaptureMTLFunctionHandle
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLFunctionHandle)initWithBaseObject:(id)object captureComputePipelineState:(id)state captureFunction:(id)function;
- (CaptureMTLFunctionHandle)initWithBaseObject:(id)object captureDevice:(id)device captureFunction:(id)function;
- (CaptureMTLFunctionHandle)initWithBaseObject:(id)object captureRenderPipelineState:(id)state captureFunction:(id)function;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTLFunctionHandle

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15610;
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
  traceStream = [(CaptureMTLFunctionHandle *)self traceStream];
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
  v13.super_class = CaptureMTLFunctionHandle;
  [(CaptureMTLFunctionHandle *)&v13 dealloc];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLFunctionHandleSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLFunctionHandle;
  v3 = [(CaptureMTLFunctionHandle *)&v7 description];
  v4 = [(MTLFunctionHandleSPI *)self->_baseObject description];
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

- (CaptureMTLFunctionHandle)initWithBaseObject:(id)object captureDevice:(id)device captureFunction:(id)function
{
  objectCopy = object;
  deviceCopy = device;
  functionCopy = function;
  v17.receiver = self;
  v17.super_class = CaptureMTLFunctionHandle;
  v12 = [(CaptureMTLFunctionHandle *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    objc_storeStrong(&v13->_captureDevice, device);
    objc_storeStrong(&v13->_captureFunction, function);
    traceContext = [deviceCopy traceContext];
    v13->_traceContext = traceContext;
    v15 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v15, v13);
  }

  return v13;
}

- (CaptureMTLFunctionHandle)initWithBaseObject:(id)object captureRenderPipelineState:(id)state captureFunction:(id)function
{
  objectCopy = object;
  stateCopy = state;
  functionCopy = function;
  v19.receiver = self;
  v19.super_class = CaptureMTLFunctionHandle;
  v12 = [(CaptureMTLFunctionHandle *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    objc_storeStrong(&v13->_renderPipelineState, state);
    device = [(CaptureMTLRenderPipelineState *)v13->_renderPipelineState device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = device;

    objc_storeStrong(&v13->_captureFunction, function);
    traceContext = [(CaptureMTLRenderPipelineState *)v13->_renderPipelineState traceContext];
    v13->_traceContext = traceContext;
    v17 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v17, v13);
  }

  return v13;
}

- (CaptureMTLFunctionHandle)initWithBaseObject:(id)object captureComputePipelineState:(id)state captureFunction:(id)function
{
  objectCopy = object;
  stateCopy = state;
  functionCopy = function;
  v19.receiver = self;
  v19.super_class = CaptureMTLFunctionHandle;
  v12 = [(CaptureMTLFunctionHandle *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    objc_storeStrong(&v13->_computePipelineState, state);
    device = [(CaptureMTLComputePipelineState *)v13->_computePipelineState device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = device;

    objc_storeStrong(&v13->_captureFunction, function);
    traceContext = [(CaptureMTLComputePipelineState *)v13->_computePipelineState traceContext];
    v13->_traceContext = traceContext;
    v17 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v17, v13);
  }

  return v13;
}

@end