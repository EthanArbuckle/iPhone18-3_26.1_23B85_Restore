@interface CaptureMTLPipelineLibrary
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLPipelineLibrary)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (id)newComputePipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newRenderPipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setDisableRunTimeCompilation:(BOOL)compilation;
- (void)setLabel:(id)label;
- (void)touch;
@end

@implementation CaptureMTLPipelineLibrary

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15742;
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
  traceStream = [(CaptureMTLPipelineLibrary *)self traceStream];
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
  v13.super_class = CaptureMTLPipelineLibrary;
  [(CaptureMTLPipelineLibrary *)&v13 dealloc];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLPipelineLibrarySPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLPipelineLibrary;
  v3 = [(CaptureMTLPipelineLibrary *)&v7 description];
  v4 = [(MTLPipelineLibrarySPI *)self->_baseObject description];
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

- (void)setLabel:(id)label
{
  labelCopy = label;
  [(MTLPipelineLibrarySPI *)self->_baseObject setLabel:labelCopy];
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  v6 = v19;
  *(v19 + 8) = -15743;
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
  traceStream = [(CaptureMTLPipelineLibrary *)self traceStream];
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

- (void)setDisableRunTimeCompilation:(BOOL)compilation
{
  compilationCopy = compilation;
  [(MTLPipelineLibrarySPI *)self->_baseObject setDisableRunTimeCompilation:?];
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  v6 = v16;
  *(v16 + 8) = -15744;
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
  traceStream = [(CaptureMTLPipelineLibrary *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 2) = compilationCopy;
  *(v8 + 3) = 0;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (id)newRenderPipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  nameCopy = name;
  baseObject = self->_baseObject;
  if (self->_isBaseObjectDebugDevice)
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = 65539;
  }

  v53 = 0;
  v13 = [(MTLPipelineLibrarySPI *)baseObject newRenderPipelineStateWithName:nameCopy options:optionsCopy reflection:&v53 error:error];
  v14 = v53;
  if (v13)
  {
    v15 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v13 capturePipelineLibrary:self];
  }

  else
  {
    v15 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  traceContext = self->_traceContext;
  v50 = traceContext;
  *&v51 = 0;
  *(&v51 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v18 = *v17;
  *v17 = v19;
  *&v52 = v18;
  v47 = v17;
  BYTE8(v52) = *(v17 + 8);
  *(&v52 + 9) = 16400;
  *(&v52 + 11) = 0;
  HIBYTE(v52) = 0;
  GTTraceEncoder_setStream(&v50, [(CaptureMTLRenderPipelineState *)v15 traceStream]);
  v20 = v51;
  *(v51 + 8) = -15738;
  v21 = BYTE9(v52);
  optionsCopy2 = options;
  if (BYTE9(v52) > 0x18uLL)
  {
    v23 = *(*(&v50 + 1) + 24);
    v24 = v15;
    v25 = BYTE10(v52);
    ++BYTE10(v52);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v51 + 1), v25 | 0x2800000000) + 16;
    v21 = v25;
    v15 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v52));
    BYTE9(v52) += 40;
  }

  *(v20 + 13) = v21;
  if (v13)
  {
    SaveMTLRenderPipelineReflectionCommon(&v50, v13, v14, 0, 0);
  }

  traceStream = [(CaptureMTLPipelineLibrary *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLRenderPipelineState *)v15 traceStream];
  if (traceStream2)
  {
    v28 = traceStream2->var0;
    if (error)
    {
LABEL_17:
      v29 = *error;
      goto LABEL_20;
    }
  }

  else
  {
    v28 = 0;
    if (error)
    {
      goto LABEL_17;
    }
  }

  v29 = 0;
LABEL_20:
  errorCopy = error;
  uTF8String = [nameCopy UTF8String];
  if (uTF8String)
  {
    v31 = v15;
    v32 = v13;
    v33 = v14;
    reflectionCopy = reflection;
    uTF8String2 = [nameCopy UTF8String];
    v36 = strlen([nameCopy UTF8String]);
    v37 = uTF8String2;
    reflection = reflectionCopy;
    v14 = v33;
    v13 = v32;
    v15 = v31;
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v50, v37, v36 + 1);
  }

  *v22 = var0;
  *(v22 + 1) = v28;
  *(v22 + 2) = optionsCopy2;
  *(v22 + 3) = v29;
  v22[32] = uTF8String;
  *(v22 + 33) = 0;
  *(v22 + 9) = 0;
  if (optionsCopy2 && reflection)
  {
    if ((~optionsCopy2 & 3) != 0 && !self->_isBaseObjectDebugDevice)
    {
      v38 = DEVICEOBJECT(self->_baseObject);
      v49 = v14;
      v39 = [v38 newRenderPipelineStateWithName:nameCopy options:optionsCopy2 reflection:&v49 error:errorCopy];
      v40 = v49;
      v41 = v14;
      v14 = v40;
    }

    v42 = v14;
    *reflection = v14;
  }

  v43 = v51;
  *v47 = v52;
  *(v47 + 8) = BYTE8(v52);
  *(v43 + 15) |= 8u;

  return v15;
}

- (id)newComputePipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  nameCopy = name;
  baseObject = self->_baseObject;
  optionsCopy = options;
  if (self->_isBaseObjectDebugDevice)
  {
    optionsCopy2 = options;
  }

  else
  {
    optionsCopy2 = 65539;
  }

  v54 = 0;
  v12 = [(MTLPipelineLibrarySPI *)baseObject newComputePipelineStateWithName:nameCopy options:optionsCopy2 reflection:&v54 error:error];
  v13 = v54;
  if (v12)
  {
    v14 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v12 capturePipelineLibrary:self];
  }

  else
  {
    v14 = 0;
  }

  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  traceContext = self->_traceContext;
  v51 = traceContext;
  *&v52 = 0;
  *(&v52 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v17 = v16;
  v18 = *v16;
  *v16 = v19;
  *&v53 = v18;
  BYTE8(v53) = *(v16 + 8);
  *(&v53 + 9) = 16400;
  *(&v53 + 11) = 0;
  HIBYTE(v53) = 0;
  GTTraceEncoder_setStream(&v51, [(CaptureMTLComputePipelineState *)v14 traceStream]);
  v20 = v52;
  *(v52 + 8) = -15740;
  v21 = BYTE9(v53);
  if (BYTE9(v53) > 0x18uLL)
  {
    v23 = *(*(&v51 + 1) + 24);
    errorCopy = error;
    v25 = v14;
    v26 = BYTE10(v53);
    ++BYTE10(v53);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v52 + 1), v26 | 0x2800000000) + 16;
    v21 = v26;
    v14 = v25;
    error = errorCopy;
  }

  else
  {
    v22 = (v20 + BYTE9(v53));
    BYTE9(v53) += 40;
  }

  *(v20 + 13) = v21;
  SaveMTLComputePipelineReflection(&v51, v12, v13, 0, 0);
  traceStream = [(CaptureMTLPipelineLibrary *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLComputePipelineState *)v14 traceStream];
  if (traceStream2)
  {
    v47 = traceStream2->var0;
    if (error)
    {
LABEL_15:
      v30 = *error;
      goto LABEL_18;
    }
  }

  else
  {
    v47 = 0;
    if (error)
    {
      goto LABEL_15;
    }
  }

  v30 = 0;
LABEL_18:
  errorCopy2 = error;
  uTF8String = [nameCopy UTF8String];
  if (uTF8String)
  {
    v32 = v14;
    v33 = v13;
    v34 = v12;
    v35 = var0;
    uTF8String2 = [nameCopy UTF8String];
    v37 = strlen([nameCopy UTF8String]);
    v38 = uTF8String2;
    var0 = v35;
    v12 = v34;
    v13 = v33;
    v14 = v32;
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v51, v38, v37 + 1);
  }

  *v22 = var0;
  *(v22 + 1) = v47;
  *(v22 + 2) = optionsCopy;
  *(v22 + 3) = v30;
  v22[32] = uTF8String;
  *(v22 + 33) = 0;
  *(v22 + 9) = 0;
  if (optionsCopy && reflection)
  {
    if ((~optionsCopy & 3) != 0 && !self->_isBaseObjectDebugDevice)
    {
      v39 = DEVICEOBJECT(self->_baseObject);
      v50 = v13;
      v40 = [v39 newComputePipelineStateWithName:nameCopy options:optionsCopy reflection:&v50 error:errorCopy2];
      v41 = v50;
      v42 = v13;
      v13 = v41;
    }

    v43 = v13;
    *reflection = v13;
  }

  v44 = v52;
  *v17 = v53;
  *(v17 + 8) = BYTE8(v53);
  *(v44 + 15) |= 8u;

  return v14;
}

- (CaptureMTLPipelineLibrary)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLPipelineLibrary;
  v9 = [(CaptureMTLPipelineLibrary *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    objc_storeStrong(&v10->_captureDevice, device);
    traceContext = [deviceCopy traceContext];
    v10->_traceContext = traceContext;
    v12 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v12, v10);

    NSClassFromString(@"MTLDebugPipelineLibrary");
    v10->_isBaseObjectDebugDevice = objc_opt_isKindOfClass() & 1;
  }

  return v10;
}

@end