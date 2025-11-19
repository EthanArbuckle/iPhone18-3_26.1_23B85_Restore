@interface CaptureMTLComputePipelineState
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerThreadgroup;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)newFunctionHandle:(id *)a3 associatedWithBaseFunctionHandle:(id)a4 captureFunction:(id)a5;
- (CaptureMTLComputePipelineState)initWithBaseObject:(id)a3 captureComputePipelineState:(id)a4 additionalBinaryFunctions:(id)a5;
- (CaptureMTLComputePipelineState)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (CaptureMTLComputePipelineState)initWithBaseObject:(id)a3 capturePipelineLibrary:(id)a4;
- (CaptureMTLComputePipelineState)initWithBaseObject:(id)a3 descriptor:(id)a4 captureCompiler:(id)a5;
- (CaptureMTLComputePipelineState)initWithBaseObject:(id)a3 descriptor:(id)a4 dynamicLinkingDescriptor:(id)a5 captureCompiler:(id)a6;
- (NSString)description;
- (id)functionHandleMap;
- (id)functionHandleWithBinaryFunction:(id)a3;
- (id)functionHandleWithFunction:(id)a3;
- (id)functionHandleWithName:(id)a3;
- (id)functionReflectionWithFunctionDescriptor:(id)a3;
- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3;
- (unint64_t)imageblockMemoryLengthForDimensions:(id *)a3;
- (unint64_t)streamReference;
- (void)commonInit:(id)a3 captureDevice:(id)a4;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTLComputePipelineState

- (id)newVisibleFunctionTableWithDescriptor:(id)a3
{
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceContext = self->_traceContext;
  v5 = a3;
  v27 = traceContext;
  *&v28 = 0;
  *(&v28 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v29 = v8;
  BYTE8(v29) = *(v6 + 8);
  *(&v29 + 9) = 16400;
  *(&v29 + 11) = 0;
  HIBYTE(v29) = 0;
  baseObject = self->_baseObject;
  v11 = [v5 copy];
  v12 = [(MTLComputePipelineStateSPI *)baseObject newVisibleFunctionTableWithDescriptor:v11];

  v13 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeVisibleFunctionTableIntoArgumentBufferForResourceIndex:v12 withDescriptor:v5];

  if (v12)
  {
    v14 = [[CaptureMTLVisibleFunctionTable alloc] initWithBaseObject:v12 captureComputePipelineState:self descriptor:v13];
  }

  else
  {
    v14 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLVisibleFunctionTable *)v14 traceStream]);
  v15 = v28;
  *(v28 + 8) = -15578;
  v16 = BYTE9(v29);
  if (BYTE9(v29) > 0x28uLL)
  {
    v18 = *(*(&v27 + 1) + 24);
    v19 = BYTE10(v29);
    ++BYTE10(v29);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v28 + 1), v19 | 0x1800000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v29));
    BYTE9(v29) += 24;
  }

  *(v15 + 13) = v16;
  SaveMTLVisibleFunctionTableInfo(&v27, v12);
  v20 = [(CaptureMTLComputePipelineState *)self traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [(CaptureMTLVisibleFunctionTable *)v14 traceStream];
  if (v22)
  {
    v23 = v22->var0;
  }

  else
  {
    v23 = 0;
  }

  v24 = SaveMTLVisibleFunctionTableDescriptor(&v27, v13);
  *v17 = var0;
  *(v17 + 1) = v23;
  v17[16] = v24;
  *(v17 + 17) = 0;
  *(v17 + 5) = 0;
  v25 = v28;
  *v7 = v29;
  *(v7 + 8) = BYTE8(v29);
  *(v25 + 15) |= 8u;

  return v14;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3
{
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceContext = self->_traceContext;
  v5 = a3;
  v27 = traceContext;
  *&v28 = 0;
  *(&v28 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v29 = v8;
  BYTE8(v29) = *(v6 + 8);
  *(&v29 + 9) = 16400;
  *(&v29 + 11) = 0;
  HIBYTE(v29) = 0;
  baseObject = self->_baseObject;
  v11 = [v5 copy];
  v12 = [(MTLComputePipelineStateSPI *)baseObject newIntersectionFunctionTableWithDescriptor:v11];

  v13 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeIntersectionFunctionTableIntoArgumentBufferForResourceIndex:v12 withDescriptor:v5];

  if (v12)
  {
    v14 = [[CaptureMTLIntersectionFunctionTable alloc] initWithBaseObject:v12 captureComputePipelineState:self descriptor:v13];
  }

  else
  {
    v14 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLIntersectionFunctionTable *)v14 traceStream]);
  v15 = v28;
  *(v28 + 8) = -15540;
  v16 = BYTE9(v29);
  if (BYTE9(v29) > 0x28uLL)
  {
    v18 = *(*(&v27 + 1) + 24);
    v19 = BYTE10(v29);
    ++BYTE10(v29);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v28 + 1), v19 | 0x1800000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v29));
    BYTE9(v29) += 24;
  }

  *(v15 + 13) = v16;
  SaveMTLIntersectionFunctionTableInfo(&v27, v12);
  v20 = [(CaptureMTLComputePipelineState *)self traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [(CaptureMTLIntersectionFunctionTable *)v14 traceStream];
  if (v22)
  {
    v23 = v22->var0;
  }

  else
  {
    v23 = 0;
  }

  v24 = SaveMTLIntersectionFunctionTableDescriptor(&v27, v13);
  *v17 = var0;
  *(v17 + 1) = v23;
  v17[16] = v24;
  *(v17 + 17) = 0;
  *(v17 + 5) = 0;
  v25 = v28;
  *v7 = v29;
  *(v7 + 8) = BYTE8(v29);
  *(v25 + 15) |= 8u;

  return v14;
}

- (unint64_t)imageblockMemoryLengthForDimensions:(id *)a3
{
  baseObject = self->_baseObject;
  v5 = *a3;
  return [(MTLComputePipelineStateSPI *)baseObject imageblockMemoryLengthForDimensions:&v5];
}

- (id)functionReflectionWithFunctionDescriptor:(id)a3
{
  baseObject = self->_baseObject;
  v4 = unwrapMTL4FunctionDescriptor(a3);
  v5 = [(MTLComputePipelineStateSPI *)baseObject functionReflectionWithFunctionDescriptor:v4];

  return v5;
}

- (id)functionHandleWithFunction:(id)a3
{
  v4 = a3;
  baseObject = self->_baseObject;
  v6 = [v4 baseObject];
  v7 = [(MTLComputePipelineStateSPI *)baseObject functionHandleWithFunction:v6];

  v30 = 0;
  if (!v7)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v8 = [(CaptureMTLComputePipelineState *)self newFunctionHandle:&v30 associatedWithBaseFunctionHandle:v7 captureFunction:v4];
  v9 = v30;
  if (v8)
  {
LABEL_5:
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    traceContext = self->_traceContext;
    [v9 traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v27);
    v12 = v28;
    *(v28 + 8) = -15620;
    v13 = BYTE9(v29);
    if (BYTE9(v29) > 0x28uLL)
    {
      v15 = *(*(&v27 + 1) + 24);
      v16 = BYTE10(v29);
      ++BYTE10(v29);
      v14 = GTTraceMemPool_allocateBytes(v15, *(&v28 + 1), v16 | 0x1800000000) + 16;
      v13 = v16;
    }

    else
    {
      v14 = (v12 + BYTE9(v29));
      BYTE9(v29) += 24;
    }

    *(v12 + 13) = v13;
    SaveMTLFunctionHandleInfo(&v27, v7);
    v17 = [(CaptureMTLComputePipelineState *)self traceStream];
    if (v17)
    {
      var0 = v17->var0;
    }

    else
    {
      var0 = 0;
    }

    v19 = [v30 traceStream];
    if (v19)
    {
      v20 = *v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v4 traceStream];
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    *v14 = var0;
    *(v14 + 1) = v20;
    *(v14 + 2) = v22;
    s();
    *v23 = v24;
    *(v23 + 8) = BYTE8(v29);
    *(v28 + 15) |= 8u;
    v10 = v30;
    goto LABEL_18;
  }

  v10 = v30;
LABEL_18:
  v25 = v10;

  return v25;
}

- (id)functionHandleWithBinaryFunction:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputePipelineState_functionHandleWithBinaryFunction", "Metal 4 Additional Binary Functions", 0, 0);
  baseObject = self->_baseObject;
  v6 = [v4 baseObject];

  v7 = [(MTLComputePipelineStateSPI *)baseObject functionHandleWithBinaryFunction:v6];

  return v7;
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -16321;
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
  v9 = [(CaptureMTLComputePipelineState *)self traceStream];
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
  v13.super_class = CaptureMTLComputePipelineState;
  [(CaptureMTLComputePipelineState *)&v13 dealloc];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerThreadgroup
{
  result = self->_baseObject;
  if (result)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result requiredThreadsPerThreadgroup];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return result;
}

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTLComputePipelineStateSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLComputePipelineState;
  v3 = [(CaptureMTLComputePipelineState *)&v7 description];
  v4 = [(MTLComputePipelineStateSPI *)self->_baseObject description];
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

- (id)functionHandleWithName:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputePipelineState_functionHandleWithName", "Metal 4 Additional Binary Functions", 0, 0);
  v5 = [(MTLComputePipelineStateSPI *)self->_baseObject functionHandleWithName:v4];

  return v5;
}

- (id)newComputePipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4
{
  v6 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputePipelineState_newComputePipelineStateWithBinaryFunctions_error", "Metal 4 Additional Binary Functions", 0, 0);
  baseObject = self->_baseObject;
  v8 = unwrapNSArray(v6);

  v9 = [(MTLComputePipelineStateSPI *)baseObject newComputePipelineStateWithBinaryFunctions:v8 error:a4];
  if (v9)
  {
    v10 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v9 captureDevice:self->_captureDevice];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceContext = self->_traceContext;
  v33 = traceContext;
  *&v34 = 0;
  *(&v34 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v35 = v10;
  BYTE8(v35) = *(v8 + 8);
  *(&v35 + 9) = 16400;
  *(&v35 + 11) = 0;
  HIBYTE(v35) = 0;
  baseObject = self->_baseObject;
  v13 = unwrapNSArray(v6);
  v14 = [(MTLComputePipelineStateSPI *)baseObject newComputePipelineStateWithAdditionalBinaryFunctions:v13 error:a4];

  if (v14)
  {
    v15 = [CaptureMTLComputePipelineState alloc];
    v16 = [v6 copy];
    v17 = [(CaptureMTLComputePipelineState *)v15 initWithBaseObject:v14 captureComputePipelineState:self additionalBinaryFunctions:v16];
  }

  else
  {
    v17 = 0;
  }

  GTTraceEncoder_setStream(&v33, [(CaptureMTLComputePipelineState *)v17 traceStream]);
  [(CaptureMTLComputePipelineState *)v17 setFunction:self->_function];
  [(CaptureMTLComputePipelineState *)v17 setDescriptor:self->_descriptor];
  [(CaptureMTLComputePipelineState *)v17 setReflection:self->_reflection];
  v18 = v34;
  *(v34 + 8) = -15541;
  v19 = BYTE9(v35);
  if (BYTE9(v35) > 0x20uLL)
  {
    v21 = *(*(&v33 + 1) + 24);
    v22 = BYTE10(v35);
    ++BYTE10(v35);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v34 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v35));
    BYTE9(v35) += 32;
  }

  *(v18 + 13) = v19;
  reflection = self->_reflection;
  v24 = unwrapMTLComputePipelineDescriptor(self->_descriptor);
  v25 = [(MTLFunction *)self->_function baseObject];
  SaveMTLComputePipelineReflection(&v33, v14, reflection, v24, v25);

  v26 = [(CaptureMTLComputePipelineState *)self traceStream];
  if (v26)
  {
    var0 = v26->var0;
  }

  else
  {
    var0 = 0;
  }

  v28 = [(CaptureMTLComputePipelineState *)v17 traceStream];
  if (!v28)
  {
    v29 = 0;
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v29 = v28->var0;
  if (a4)
  {
LABEL_12:
    a4 = *a4;
  }

LABEL_13:
  v30 = StreamMTLNameArray(&v33, v6);
  *v20 = var0;
  *(v20 + 1) = v29;
  *(v20 + 2) = a4;
  v20[24] = v30;
  *(v20 + 25) = 0;
  *(v20 + 7) = 0;
  v31 = v34;
  *v9 = v35;
  *(v9 + 8) = BYTE8(v35);
  *(v31 + 15) |= 8u;

  return v17;
}

- (BOOL)newFunctionHandle:(id *)a3 associatedWithBaseFunctionHandle:(id)a4 captureFunction:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CaptureMTLComputePipelineState *)self functionHandleMap];
  v11 = [v10 objectForKey:v8];
  v12 = *a3;
  *a3 = v11;

  v13 = *a3;
  if (!*a3)
  {
    v14 = [[CaptureMTLFunctionHandle alloc] initWithBaseObject:v8 captureComputePipelineState:self captureFunction:v9];
    v15 = *a3;
    *a3 = v14;

    v16 = [(CaptureMTLComputePipelineState *)self functionHandleMap];
    [v16 setObject:*a3 forKey:v8];
  }

  return v13 == 0;
}

- (id)functionHandleMap
{
  functionHandleMap = self->_functionHandleMap;
  if (!functionHandleMap)
  {
    v4 = [[NSMapTable alloc] initWithKeyOptions:2 valueOptions:0 capacity:8];
    v5 = self->_functionHandleMap;
    self->_functionHandleMap = v4;

    functionHandleMap = self->_functionHandleMap;
  }

  return functionHandleMap;
}

- (CaptureMTLComputePipelineState)initWithBaseObject:(id)a3 descriptor:(id)a4 dynamicLinkingDescriptor:(id)a5 captureCompiler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CaptureMTLComputePipelineState;
  v14 = [(CaptureMTLComputePipelineState *)&v17 init];
  if (v14)
  {
    v15 = [v13 captureDevice];
    [(CaptureMTLComputePipelineState *)v14 commonInit:v10 captureDevice:v15];

    objc_storeStrong(&v14->_captureCompiler, a6);
    objc_storeStrong(&v14->_mtl4Descriptor, a4);
    objc_storeStrong(&v14->_dynamicLinkingDescriptor, a5);
  }

  return v14;
}

- (CaptureMTLComputePipelineState)initWithBaseObject:(id)a3 descriptor:(id)a4 captureCompiler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CaptureMTLComputePipelineState;
  v11 = [(CaptureMTLComputePipelineState *)&v14 init];
  if (v11)
  {
    v12 = [v10 captureDevice];
    [(CaptureMTLComputePipelineState *)v11 commonInit:v8 captureDevice:v12];

    objc_storeStrong(&v11->_captureCompiler, a5);
    objc_storeStrong(&v11->_mtl4Descriptor, a4);
  }

  return v11;
}

- (CaptureMTLComputePipelineState)initWithBaseObject:(id)a3 capturePipelineLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CaptureMTLComputePipelineState;
  v8 = [(CaptureMTLComputePipelineState *)&v11 init];
  if (v8)
  {
    v9 = [v7 device];
    [(CaptureMTLComputePipelineState *)v8 commonInit:v6 captureDevice:v9];

    objc_storeStrong(&v8->_retainedPipelineLibrary, a4);
  }

  return v8;
}

- (CaptureMTLComputePipelineState)initWithBaseObject:(id)a3 captureComputePipelineState:(id)a4 additionalBinaryFunctions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CaptureMTLComputePipelineState;
  v11 = [(CaptureMTLComputePipelineState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CaptureMTLComputePipelineState *)v11 commonInit:v8 captureDevice:v9[2]];
    objc_storeStrong(&v12->_captureComputePipelineState, a4);
    objc_storeStrong(&v12->_functions, a5);
  }

  return v12;
}

- (CaptureMTLComputePipelineState)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CaptureMTLComputePipelineState;
  v8 = [(CaptureMTLComputePipelineState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CaptureMTLComputePipelineState *)v8 commonInit:v6 captureDevice:v7];
  }

  return v9;
}

- (void)commonInit:(id)a3 captureDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  baseObject = self->_baseObject;
  self->_baseObject = v6;
  v17 = v6;

  captureDevice = self->_captureDevice;
  self->_captureDevice = v7;
  v10 = v7;

  captureComputePipelineState = self->_captureComputePipelineState;
  self->_captureComputePipelineState = 0;

  functions = self->_functions;
  self->_functions = 0;

  v13 = [(CaptureMTLDevice *)v10 traceContext];
  self->_traceContext = v13;
  v14 = DEVICEOBJECT(v17);
  self->_traceStream = GTTraceContext_openStream(v13, v14, self);

  functionHandleMap = self->_functionHandleMap;
  self->_functionHandleMap = 0;

  retainedPipelineLibrary = self->_retainedPipelineLibrary;
  self->_retainedPipelineLibrary = 0;
}

@end