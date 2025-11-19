@interface CaptureMTL4MachineLearningPipelineState
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTL4MachineLearningPipelineState)initWithBaseObject:(id)a3 descriptor:(id)a4 captureCompiler:(id)a5;
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
  v9 = [(CaptureMTL4MachineLearningPipelineState *)self traceStream];
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
  v13.super_class = CaptureMTL4MachineLearningPipelineState;
  [(CaptureMTL4MachineLearningPipelineState *)&v13 dealloc];
}

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTL4MachineLearningPipelineState *)baseObject conformsToProtocol:v4];

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

- (CaptureMTL4MachineLearningPipelineState)initWithBaseObject:(id)a3 descriptor:(id)a4 captureCompiler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = CaptureMTL4MachineLearningPipelineState;
  v12 = [(CaptureMTL4MachineLearningPipelineState *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, a3);
    objc_storeStrong(&v13->_captureCompiler, a5);
    objc_storeStrong(&v13->_mtl4Descriptor, a4);
    v14 = [v11 captureDevice];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = v14;

    v16 = [(CaptureMTLDevice *)v13->_captureDevice traceContext];
    v13->_traceContext = v16;
    v17 = DEVICEOBJECT(v9);
    v13->_traceStream = GTTraceContext_openStream(v16, v17, v13);

    v18 = [v10 machineLearningFunctionDescriptor];
    objc_opt_class();
    LOBYTE(v17) = objc_opt_isKindOfClass();

    if (v17)
    {
      v19 = [v10 machineLearningFunctionDescriptor];
      v20 = [v19 library];
      captureLibrary = v13->_captureLibrary;
      v13->_captureLibrary = v20;
    }
  }

  return v13;
}

@end