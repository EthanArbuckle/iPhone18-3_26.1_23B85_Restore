@interface CaptureMTLComputePipelineState
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerThreadgroup;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)newFunctionHandle:(id *)handle associatedWithBaseFunctionHandle:(id)functionHandle captureFunction:(id)function;
- (CaptureMTLComputePipelineState)initWithBaseObject:(id)object captureComputePipelineState:(id)state additionalBinaryFunctions:(id)functions;
- (CaptureMTLComputePipelineState)initWithBaseObject:(id)object captureDevice:(id)device;
- (CaptureMTLComputePipelineState)initWithBaseObject:(id)object capturePipelineLibrary:(id)library;
- (CaptureMTLComputePipelineState)initWithBaseObject:(id)object descriptor:(id)descriptor captureCompiler:(id)compiler;
- (CaptureMTLComputePipelineState)initWithBaseObject:(id)object descriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor captureCompiler:(id)compiler;
- (NSString)description;
- (id)functionHandleMap;
- (id)functionHandleWithBinaryFunction:(id)function;
- (id)functionHandleWithFunction:(id)function;
- (id)functionHandleWithName:(id)name;
- (id)functionReflectionWithFunctionDescriptor:(id)descriptor;
- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error;
- (id)newComputePipelineStateWithBinaryFunctions:(id)functions error:(id *)error;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor;
- (unint64_t)imageblockMemoryLengthForDimensions:(id *)dimensions;
- (unint64_t)streamReference;
- (void)commonInit:(id)init captureDevice:(id)device;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTLComputePipelineState

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor
{
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
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
  v11 = [descriptorCopy copy];
  v12 = [(MTLComputePipelineStateSPI *)baseObject newVisibleFunctionTableWithDescriptor:v11];

  v13 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeVisibleFunctionTableIntoArgumentBufferForResourceIndex:v12 withDescriptor:descriptorCopy];

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
  traceStream = [(CaptureMTLComputePipelineState *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLVisibleFunctionTable *)v14 traceStream];
  if (traceStream2)
  {
    v23 = traceStream2->var0;
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

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
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
  v11 = [descriptorCopy copy];
  v12 = [(MTLComputePipelineStateSPI *)baseObject newIntersectionFunctionTableWithDescriptor:v11];

  v13 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeIntersectionFunctionTableIntoArgumentBufferForResourceIndex:v12 withDescriptor:descriptorCopy];

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
  traceStream = [(CaptureMTLComputePipelineState *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLIntersectionFunctionTable *)v14 traceStream];
  if (traceStream2)
  {
    v23 = traceStream2->var0;
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

- (unint64_t)imageblockMemoryLengthForDimensions:(id *)dimensions
{
  baseObject = self->_baseObject;
  v5 = *dimensions;
  return [(MTLComputePipelineStateSPI *)baseObject imageblockMemoryLengthForDimensions:&v5];
}

- (id)functionReflectionWithFunctionDescriptor:(id)descriptor
{
  baseObject = self->_baseObject;
  v4 = unwrapMTL4FunctionDescriptor(descriptor);
  v5 = [(MTLComputePipelineStateSPI *)baseObject functionReflectionWithFunctionDescriptor:v4];

  return v5;
}

- (id)functionHandleWithFunction:(id)function
{
  functionCopy = function;
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];
  v7 = [(MTLComputePipelineStateSPI *)baseObject functionHandleWithFunction:baseObject];

  v30 = 0;
  if (!v7)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v8 = [(CaptureMTLComputePipelineState *)self newFunctionHandle:&v30 associatedWithBaseFunctionHandle:v7 captureFunction:functionCopy];
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
    traceStream = [(CaptureMTLComputePipelineState *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v30 traceStream];
    if (traceStream2)
    {
      v20 = *traceStream2;
    }

    else
    {
      v20 = 0;
    }

    traceStream3 = [functionCopy traceStream];
    if (traceStream3)
    {
      v22 = *traceStream3;
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

- (id)functionHandleWithBinaryFunction:(id)function
{
  functionCopy = function;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputePipelineState_functionHandleWithBinaryFunction", "Metal 4 Additional Binary Functions", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];

  v7 = [(MTLComputePipelineStateSPI *)baseObject functionHandleWithBinaryFunction:baseObject];

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
  traceStream = [(CaptureMTLComputePipelineState *)self traceStream];
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

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLComputePipelineStateSPI *)baseObject conformsToProtocol:protocolCopy];

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

- (id)functionHandleWithName:(id)name
{
  nameCopy = name;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputePipelineState_functionHandleWithName", "Metal 4 Additional Binary Functions", 0, 0);
  v5 = [(MTLComputePipelineStateSPI *)self->_baseObject functionHandleWithName:nameCopy];

  return v5;
}

- (id)newComputePipelineStateWithBinaryFunctions:(id)functions error:(id *)error
{
  functionsCopy = functions;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputePipelineState_newComputePipelineStateWithBinaryFunctions_error", "Metal 4 Additional Binary Functions", 0, 0);
  baseObject = self->_baseObject;
  v8 = unwrapNSArray(functionsCopy);

  v9 = [(MTLComputePipelineStateSPI *)baseObject newComputePipelineStateWithBinaryFunctions:v8 error:error];
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

- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error
{
  functionsCopy = functions;
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
  v13 = unwrapNSArray(functionsCopy);
  v14 = [(MTLComputePipelineStateSPI *)baseObject newComputePipelineStateWithAdditionalBinaryFunctions:v13 error:error];

  if (v14)
  {
    v15 = [CaptureMTLComputePipelineState alloc];
    v16 = [functionsCopy copy];
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
  baseObject = [(MTLFunction *)self->_function baseObject];
  SaveMTLComputePipelineReflection(&v33, v14, reflection, v24, baseObject);

  traceStream = [(CaptureMTLComputePipelineState *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLComputePipelineState *)v17 traceStream];
  if (!traceStream2)
  {
    v29 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v29 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v30 = StreamMTLNameArray(&v33, functionsCopy);
  *v20 = var0;
  *(v20 + 1) = v29;
  *(v20 + 2) = error;
  v20[24] = v30;
  *(v20 + 25) = 0;
  *(v20 + 7) = 0;
  v31 = v34;
  *v9 = v35;
  *(v9 + 8) = BYTE8(v35);
  *(v31 + 15) |= 8u;

  return v17;
}

- (BOOL)newFunctionHandle:(id *)handle associatedWithBaseFunctionHandle:(id)functionHandle captureFunction:(id)function
{
  functionHandleCopy = functionHandle;
  functionCopy = function;
  functionHandleMap = [(CaptureMTLComputePipelineState *)self functionHandleMap];
  v11 = [functionHandleMap objectForKey:functionHandleCopy];
  v12 = *handle;
  *handle = v11;

  v13 = *handle;
  if (!*handle)
  {
    v14 = [[CaptureMTLFunctionHandle alloc] initWithBaseObject:functionHandleCopy captureComputePipelineState:self captureFunction:functionCopy];
    v15 = *handle;
    *handle = v14;

    functionHandleMap2 = [(CaptureMTLComputePipelineState *)self functionHandleMap];
    [functionHandleMap2 setObject:*handle forKey:functionHandleCopy];
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

- (CaptureMTLComputePipelineState)initWithBaseObject:(id)object descriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor captureCompiler:(id)compiler
{
  objectCopy = object;
  descriptorCopy = descriptor;
  linkingDescriptorCopy = linkingDescriptor;
  compilerCopy = compiler;
  v17.receiver = self;
  v17.super_class = CaptureMTLComputePipelineState;
  v14 = [(CaptureMTLComputePipelineState *)&v17 init];
  if (v14)
  {
    captureDevice = [compilerCopy captureDevice];
    [(CaptureMTLComputePipelineState *)v14 commonInit:objectCopy captureDevice:captureDevice];

    objc_storeStrong(&v14->_captureCompiler, compiler);
    objc_storeStrong(&v14->_mtl4Descriptor, descriptor);
    objc_storeStrong(&v14->_dynamicLinkingDescriptor, linkingDescriptor);
  }

  return v14;
}

- (CaptureMTLComputePipelineState)initWithBaseObject:(id)object descriptor:(id)descriptor captureCompiler:(id)compiler
{
  objectCopy = object;
  descriptorCopy = descriptor;
  compilerCopy = compiler;
  v14.receiver = self;
  v14.super_class = CaptureMTLComputePipelineState;
  v11 = [(CaptureMTLComputePipelineState *)&v14 init];
  if (v11)
  {
    captureDevice = [compilerCopy captureDevice];
    [(CaptureMTLComputePipelineState *)v11 commonInit:objectCopy captureDevice:captureDevice];

    objc_storeStrong(&v11->_captureCompiler, compiler);
    objc_storeStrong(&v11->_mtl4Descriptor, descriptor);
  }

  return v11;
}

- (CaptureMTLComputePipelineState)initWithBaseObject:(id)object capturePipelineLibrary:(id)library
{
  objectCopy = object;
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = CaptureMTLComputePipelineState;
  v8 = [(CaptureMTLComputePipelineState *)&v11 init];
  if (v8)
  {
    device = [libraryCopy device];
    [(CaptureMTLComputePipelineState *)v8 commonInit:objectCopy captureDevice:device];

    objc_storeStrong(&v8->_retainedPipelineLibrary, library);
  }

  return v8;
}

- (CaptureMTLComputePipelineState)initWithBaseObject:(id)object captureComputePipelineState:(id)state additionalBinaryFunctions:(id)functions
{
  objectCopy = object;
  stateCopy = state;
  functionsCopy = functions;
  v14.receiver = self;
  v14.super_class = CaptureMTLComputePipelineState;
  v11 = [(CaptureMTLComputePipelineState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CaptureMTLComputePipelineState *)v11 commonInit:objectCopy captureDevice:stateCopy[2]];
    objc_storeStrong(&v12->_captureComputePipelineState, state);
    objc_storeStrong(&v12->_functions, functions);
  }

  return v12;
}

- (CaptureMTLComputePipelineState)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = CaptureMTLComputePipelineState;
  v8 = [(CaptureMTLComputePipelineState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CaptureMTLComputePipelineState *)v8 commonInit:objectCopy captureDevice:deviceCopy];
  }

  return v9;
}

- (void)commonInit:(id)init captureDevice:(id)device
{
  initCopy = init;
  deviceCopy = device;
  baseObject = self->_baseObject;
  self->_baseObject = initCopy;
  v17 = initCopy;

  captureDevice = self->_captureDevice;
  self->_captureDevice = deviceCopy;
  v10 = deviceCopy;

  captureComputePipelineState = self->_captureComputePipelineState;
  self->_captureComputePipelineState = 0;

  functions = self->_functions;
  self->_functions = 0;

  traceContext = [(CaptureMTLDevice *)v10 traceContext];
  self->_traceContext = traceContext;
  v14 = DEVICEOBJECT(v17);
  self->_traceStream = GTTraceContext_openStream(traceContext, v14, self);

  functionHandleMap = self->_functionHandleMap;
  self->_functionHandleMap = 0;

  retainedPipelineLibrary = self->_retainedPipelineLibrary;
  self->_retainedPipelineLibrary = 0;
}

@end