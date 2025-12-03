@interface CaptureMTL4MachineLearningPipelineState
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTL4MachineLearningPipelineState)initWithBaseObject:(id)object descriptor:(id)descriptor captureCompiler:(id)compiler;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTL4MachineLearningPipelineState

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -14825;
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
  traceStream = [(CaptureMTL4MachineLearningPipelineState *)self traceStream];
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
  v13.super_class = CaptureMTL4MachineLearningPipelineState;
  [(CaptureMTL4MachineLearningPipelineState *)&v13 dealloc];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTL4MachineLearningPipelineState *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTL4MachineLearningPipelineState;
  v3 = [(CaptureMTL4MachineLearningPipelineState *)&v7 description];
  v4 = [(MTL4MachineLearningPipelineState *)self->_baseObject description];
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

- (CaptureMTL4MachineLearningPipelineState)initWithBaseObject:(id)object descriptor:(id)descriptor captureCompiler:(id)compiler
{
  objectCopy = object;
  descriptorCopy = descriptor;
  compilerCopy = compiler;
  v23.receiver = self;
  v23.super_class = CaptureMTL4MachineLearningPipelineState;
  v12 = [(CaptureMTL4MachineLearningPipelineState *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    objc_storeStrong(&v13->_captureCompiler, compiler);
    objc_storeStrong(&v13->_mtl4Descriptor, descriptor);
    captureDevice = [compilerCopy captureDevice];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = captureDevice;

    traceContext = [(CaptureMTLDevice *)v13->_captureDevice traceContext];
    v13->_traceContext = traceContext;
    v17 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v17, v13);

    machineLearningFunctionDescriptor = [descriptorCopy machineLearningFunctionDescriptor];
    objc_opt_class();
    LOBYTE(v17) = objc_opt_isKindOfClass();

    if (v17)
    {
      machineLearningFunctionDescriptor2 = [descriptorCopy machineLearningFunctionDescriptor];
      library = [machineLearningFunctionDescriptor2 library];
      captureLibrary = v13->_captureLibrary;
      v13->_captureLibrary = library;
    }
  }

  return v13;
}

@end