@interface CaptureMTLRenderPipelineState
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerMeshThreadgroup;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerObjectThreadgroup;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerTileThreadgroup;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)newFunctionHandle:(id *)handle associatedWithBaseFunctionHandle:(id)functionHandle captureFunction:(id)function;
- (CaptureMTLRenderPipelineState)initWithBaseObject:(id)object captureDevice:(id)device;
- (CaptureMTLRenderPipelineState)initWithBaseObject:(id)object capturePipelineLibrary:(id)library;
- (CaptureMTLRenderPipelineState)initWithBaseObject:(id)object captureRenderPipelineState:(id)state additionalBinaryFunctions:(id)functions;
- (CaptureMTLRenderPipelineState)initWithBaseObject:(id)object descriptor:(id)descriptor captureCompiler:(id)compiler;
- (CaptureMTLRenderPipelineState)initWithBaseObject:(id)object descriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor captureCompiler:(id)compiler;
- (NSString)description;
- (id)fragmentFunctionHandleWithFunction:(id)function;
- (id)functionHandleMap;
- (id)functionHandleWithBinaryFunction:(id)function stage:(unint64_t)stage;
- (id)functionHandleWithFunction:(id)function stage:(unint64_t)stage;
- (id)functionHandleWithName:(id)name stage:(unint64_t)stage;
- (id)functionReflectionWithFunctionDescriptor:(id)descriptor stage:(unint64_t)stage;
- (id)meshFunctionHandleWithFunction:(id)function;
- (id)newFragmentIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage;
- (id)newMeshIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newObjectIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions fragmentAdditionalBinaryFunctions:(id)binaryFunctions error:(id *)error;
- (id)newRenderPipelineStateWithBinaryFunctions:(id)functions error:(id *)error;
- (id)newTileIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error;
- (id)newVertexIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableFromFragmentStageWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableFromMeshStageWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableFromObjectStageWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableFromTileStageWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableFromVertexStageWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage;
- (id)objectFunctionHandleWithFunction:(id)function;
- (id)reflectionForFunctionDescriptor:(id)descriptor;
- (id)tileFunctionHandleWithFunction:(id)function;
- (id)vertexFunctionHandleWithFunction:(id)function;
- (unint64_t)imageblockMemoryLengthForDimensions:(id *)dimensions;
- (unint64_t)streamReference;
- (void)commonInit:(id)init captureDevice:(id)device;
- (void)dealloc;
- (void)swapObject:(id)object;
- (void)touch;
@end

@implementation CaptureMTLRenderPipelineState

- (id)vertexFunctionHandleWithFunction:(id)function
{
  functionCopy = function;
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];
  v7 = [(MTLRenderPipelineStateSPI *)baseObject vertexFunctionHandleWithFunction:baseObject];

  v30 = 0;
  if (!v7)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v8 = [(CaptureMTLRenderPipelineState *)self newFunctionHandle:&v30 associatedWithBaseFunctionHandle:v7 captureFunction:functionCopy];
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
    *(v28 + 8) = -15436;
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
    traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
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

- (id)tileFunctionHandleWithFunction:(id)function
{
  functionCopy = function;
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];
  v7 = [(MTLRenderPipelineStateSPI *)baseObject tileFunctionHandleWithFunction:baseObject];

  v30 = 0;
  if (!v7)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v8 = [(CaptureMTLRenderPipelineState *)self newFunctionHandle:&v30 associatedWithBaseFunctionHandle:v7 captureFunction:functionCopy];
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
    *(v28 + 8) = -15437;
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
    traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
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

- (id)reflectionForFunctionDescriptor:(id)descriptor
{
  baseObject = self->_baseObject;
  v4 = unwrapMTL4FunctionDescriptor(descriptor);
  v5 = [(MTLRenderPipelineStateSPI *)baseObject reflectionForFunctionDescriptor:v4];

  return v5;
}

- (id)objectFunctionHandleWithFunction:(id)function
{
  functionCopy = function;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderPipelineState_objectFunctionHandleWithFunction", "Mesh shaders with Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];

  v7 = [(MTLRenderPipelineStateSPI *)baseObject objectFunctionHandleWithFunction:baseObject];

  return v7;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage
{
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
  v29 = traceContext;
  *&v30 = 0;
  *(&v30 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v31 = v10;
  BYTE8(v31) = *(v8 + 8);
  *(&v31 + 9) = 16400;
  *(&v31 + 11) = 0;
  HIBYTE(v31) = 0;
  baseObject = self->_baseObject;
  v13 = [descriptorCopy copy];
  v14 = [(MTLRenderPipelineStateSPI *)baseObject newVisibleFunctionTableWithDescriptor:v13 stage:stage];

  v15 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeVisibleFunctionTableIntoArgumentBufferForResourceIndex:v14 withDescriptor:descriptorCopy];

  if (v14)
  {
    v16 = [[CaptureMTLVisibleFunctionTable alloc] initWithBaseObject:v14 captureRenderPipelineState:self descriptor:v15];
  }

  else
  {
    v16 = 0;
  }

  GTTraceEncoder_setStream(&v29, [(CaptureMTLVisibleFunctionTable *)v16 traceStream]);
  v17 = v30;
  *(v30 + 8) = -15460;
  v18 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v20 = *(*(&v29 + 1) + 24);
    v21 = BYTE10(v31);
    ++BYTE10(v31);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v30 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v17 + 13) = v18;
  SaveMTLVisibleFunctionTableInfo(&v29, v14);
  traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLVisibleFunctionTable *)v16 traceStream];
  if (traceStream2)
  {
    v25 = traceStream2->var0;
  }

  else
  {
    v25 = 0;
  }

  v26 = SaveMTLVisibleFunctionTableDescriptor(&v29, v15);
  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = stage;
  v19[24] = v26;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  v27 = v30;
  *v9 = v31;
  *(v9 + 8) = BYTE8(v31);
  *(v27 + 15) |= 8u;

  return v16;
}

- (id)newVisibleFunctionTableFromVertexStageWithDescriptor:(id)descriptor
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
  v12 = [(MTLRenderPipelineStateSPI *)baseObject newVisibleFunctionTableFromVertexStageWithDescriptor:v11];

  v13 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeVisibleFunctionTableIntoArgumentBufferForResourceIndex:v12 withDescriptor:descriptorCopy];

  if (v12)
  {
    v14 = [[CaptureMTLVisibleFunctionTable alloc] initWithBaseObject:v12 captureRenderPipelineState:self descriptor:v13];
  }

  else
  {
    v14 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLVisibleFunctionTable *)v14 traceStream]);
  v15 = v28;
  *(v28 + 8) = -15438;
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
  traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
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

- (id)newVisibleFunctionTableFromTileStageWithDescriptor:(id)descriptor
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
  v12 = [(MTLRenderPipelineStateSPI *)baseObject newVisibleFunctionTableFromTileStageWithDescriptor:v11];

  v13 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeVisibleFunctionTableIntoArgumentBufferForResourceIndex:v12 withDescriptor:descriptorCopy];

  if (v12)
  {
    v14 = [[CaptureMTLVisibleFunctionTable alloc] initWithBaseObject:v12 captureRenderPipelineState:self descriptor:v13];
  }

  else
  {
    v14 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLVisibleFunctionTable *)v14 traceStream]);
  v15 = v28;
  *(v28 + 8) = -15439;
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
  traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
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

- (id)newVisibleFunctionTableFromFragmentStageWithDescriptor:(id)descriptor
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
  v12 = [(MTLRenderPipelineStateSPI *)baseObject newVisibleFunctionTableFromFragmentStageWithDescriptor:v11];

  v13 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeVisibleFunctionTableIntoArgumentBufferForResourceIndex:v12 withDescriptor:descriptorCopy];

  if (v12)
  {
    v14 = [[CaptureMTLVisibleFunctionTable alloc] initWithBaseObject:v12 captureRenderPipelineState:self descriptor:v13];
  }

  else
  {
    v14 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLVisibleFunctionTable *)v14 traceStream]);
  v15 = v28;
  *(v28 + 8) = -15440;
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
  traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
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

- (id)newVertexIntersectionFunctionTableWithDescriptor:(id)descriptor
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
  v12 = [(MTLRenderPipelineStateSPI *)baseObject newVertexIntersectionFunctionTableWithDescriptor:v11];

  v13 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeIntersectionFunctionTableIntoArgumentBufferForResourceIndex:v12 withDescriptor:descriptorCopy];

  if (v12)
  {
    v14 = [[CaptureMTLIntersectionFunctionTable alloc] initWithBaseObject:v12 captureRenderPipelineState:self descriptor:v13];
  }

  else
  {
    v14 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLIntersectionFunctionTable *)v14 traceStream]);
  v15 = v28;
  *(v28 + 8) = -15441;
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
  traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
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

- (id)newTileIntersectionFunctionTableWithDescriptor:(id)descriptor
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
  v12 = [(MTLRenderPipelineStateSPI *)baseObject newTileIntersectionFunctionTableWithDescriptor:v11];

  v13 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeIntersectionFunctionTableIntoArgumentBufferForResourceIndex:v12 withDescriptor:descriptorCopy];

  if (v12)
  {
    v14 = [[CaptureMTLIntersectionFunctionTable alloc] initWithBaseObject:v12 captureRenderPipelineState:self descriptor:v13];
  }

  else
  {
    v14 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLIntersectionFunctionTable *)v14 traceStream]);
  v15 = v28;
  *(v28 + 8) = -15442;
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
  traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
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

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage
{
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
  v29 = traceContext;
  *&v30 = 0;
  *(&v30 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v31 = v10;
  BYTE8(v31) = *(v8 + 8);
  *(&v31 + 9) = 16400;
  *(&v31 + 11) = 0;
  HIBYTE(v31) = 0;
  baseObject = self->_baseObject;
  v13 = [descriptorCopy copy];
  v14 = [(MTLRenderPipelineStateSPI *)baseObject newIntersectionFunctionTableWithDescriptor:v13 stage:stage];

  v15 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeIntersectionFunctionTableIntoArgumentBufferForResourceIndex:v14 withDescriptor:descriptorCopy];

  if (v14)
  {
    v16 = [[CaptureMTLIntersectionFunctionTable alloc] initWithBaseObject:v14 captureRenderPipelineState:self descriptor:v15];
  }

  else
  {
    v16 = 0;
  }

  GTTraceEncoder_setStream(&v29, [(CaptureMTLIntersectionFunctionTable *)v16 traceStream]);
  v17 = v30;
  *(v30 + 8) = -15462;
  v18 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v20 = *(*(&v29 + 1) + 24);
    v21 = BYTE10(v31);
    ++BYTE10(v31);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v30 + 1), v21 | 0x2000000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v17 + 13) = v18;
  SaveMTLIntersectionFunctionTableInfo(&v29, v14);
  traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLIntersectionFunctionTable *)v16 traceStream];
  if (traceStream2)
  {
    v25 = traceStream2->var0;
  }

  else
  {
    v25 = 0;
  }

  v26 = SaveMTLIntersectionFunctionTableDescriptor(&v29, v15);
  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = stage;
  v19[24] = v26;
  *(v19 + 25) = 0;
  *(v19 + 7) = 0;
  v27 = v30;
  *v9 = v31;
  *(v9 + 8) = BYTE8(v31);
  *(v27 + 15) |= 8u;

  return v16;
}

- (id)newFragmentIntersectionFunctionTableWithDescriptor:(id)descriptor
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
  v12 = [(MTLRenderPipelineStateSPI *)baseObject newFragmentIntersectionFunctionTableWithDescriptor:v11];

  v13 = [(CaptureMTLDevice *)self->_captureDevice dummyEncodeIntersectionFunctionTableIntoArgumentBufferForResourceIndex:v12 withDescriptor:descriptorCopy];

  if (v12)
  {
    v14 = [[CaptureMTLIntersectionFunctionTable alloc] initWithBaseObject:v12 captureRenderPipelineState:self descriptor:v13];
  }

  else
  {
    v14 = 0;
  }

  GTTraceEncoder_setStream(&v27, [(CaptureMTLIntersectionFunctionTable *)v14 traceStream]);
  v15 = v28;
  *(v28 + 8) = -15443;
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
  traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
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

- (id)meshFunctionHandleWithFunction:(id)function
{
  functionCopy = function;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderPipelineState_meshFunctionHandleWithFunction", "Mesh shaders with Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];

  v7 = [(MTLRenderPipelineStateSPI *)baseObject meshFunctionHandleWithFunction:baseObject];

  return v7;
}

- (unint64_t)imageblockMemoryLengthForDimensions:(id *)dimensions
{
  baseObject = self->_baseObject;
  v5 = *dimensions;
  return [(MTLRenderPipelineStateSPI *)baseObject imageblockMemoryLengthForDimensions:&v5];
}

- (id)functionReflectionWithFunctionDescriptor:(id)descriptor stage:(unint64_t)stage
{
  baseObject = self->_baseObject;
  v6 = unwrapMTL4FunctionDescriptor(descriptor);
  v7 = [(MTLRenderPipelineStateSPI *)baseObject functionReflectionWithFunctionDescriptor:v6 stage:stage];

  return v7;
}

- (id)functionHandleWithFunction:(id)function stage:(unint64_t)stage
{
  functionCopy = function;
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];
  v9 = [(MTLRenderPipelineStateSPI *)baseObject functionHandleWithFunction:baseObject stage:stage];

  v32 = 0;
  if (!v9)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v10 = [(CaptureMTLRenderPipelineState *)self newFunctionHandle:&v32 associatedWithBaseFunctionHandle:v9 captureFunction:functionCopy];
  v11 = v32;
  if (v10)
  {
LABEL_5:
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    traceContext = self->_traceContext;
    [v11 traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v29);
    v14 = v30;
    *(v30 + 8) = -15463;
    v15 = BYTE9(v31);
    if (BYTE9(v31) > 0x20uLL)
    {
      v17 = *(*(&v29 + 1) + 24);
      v18 = BYTE10(v31);
      ++BYTE10(v31);
      v16 = GTTraceMemPool_allocateBytes(v17, *(&v30 + 1), v18 | 0x2000000000) + 16;
      v15 = v18;
    }

    else
    {
      v16 = (v14 + BYTE9(v31));
      BYTE9(v31) += 32;
    }

    *(v14 + 13) = v15;
    SaveMTLFunctionHandleInfo(&v29, v9);
    traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v32 traceStream];
    if (traceStream2)
    {
      v22 = *traceStream2;
    }

    else
    {
      v22 = 0;
    }

    traceStream3 = [functionCopy traceStream];
    if (traceStream3)
    {
      v24 = *traceStream3;
    }

    else
    {
      v24 = 0;
    }

    *v16 = var0;
    *(v16 + 1) = v22;
    *(v16 + 2) = v24;
    *(v16 + 3) = stage;
    s();
    *v25 = v26;
    *(v25 + 8) = BYTE8(v31);
    *(v30 + 15) |= 8u;
    v12 = v32;
    goto LABEL_18;
  }

  v12 = v32;
LABEL_18:
  v27 = v12;

  return v27;
}

- (id)functionHandleWithBinaryFunction:(id)function stage:(unint64_t)stage
{
  functionCopy = function;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderPipelineState_functionHandleWithBinaryFunction_stage", "Metal 4 Additional Binary Functions", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];

  v9 = [(MTLRenderPipelineStateSPI *)baseObject functionHandleWithBinaryFunction:baseObject stage:stage];

  return v9;
}

- (id)fragmentFunctionHandleWithFunction:(id)function
{
  functionCopy = function;
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];
  v7 = [(MTLRenderPipelineStateSPI *)baseObject fragmentFunctionHandleWithFunction:baseObject];

  v30 = 0;
  if (!v7)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v8 = [(CaptureMTLRenderPipelineState *)self newFunctionHandle:&v30 associatedWithBaseFunctionHandle:v7 captureFunction:functionCopy];
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
    *(v28 + 8) = -15444;
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
    traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
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

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -16242;
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
  traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
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
  v13.super_class = CaptureMTLRenderPipelineState;
  [(CaptureMTLRenderPipelineState *)&v13 dealloc];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerTileThreadgroup
{
  result = self->_baseObject;
  if (result)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result requiredThreadsPerTileThreadgroup];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerObjectThreadgroup
{
  result = self->_baseObject;
  if (result)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result requiredThreadsPerObjectThreadgroup];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)requiredThreadsPerMeshThreadgroup
{
  result = self->_baseObject;
  if (result)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result requiredThreadsPerMeshThreadgroup];
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
  v5 = [(MTLRenderPipelineStateSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLRenderPipelineState;
  v3 = [(CaptureMTLRenderPipelineState *)&v7 description];
  v4 = [(MTLRenderPipelineStateSPI *)self->_baseObject description];
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

- (id)functionHandleWithName:(id)name stage:(unint64_t)stage
{
  nameCopy = name;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderPipelineState_functionHandleWithName_stage", "Metal 4 Additional Binary Functions", 0, 0);
  v7 = [(MTLRenderPipelineStateSPI *)self->_baseObject functionHandleWithName:nameCopy stage:stage];

  return v7;
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions fragmentAdditionalBinaryFunctions:(id)binaryFunctions error:(id *)error
{
  binaryFunctionsCopy = binaryFunctions;
  functionsCopy = functions;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderPipelineState_newRenderPipelineStateWithAdditionalBinaryFunctions_fragmentAdditionalBinaryFunctions_error", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v11 = unwrapNSArray(functionsCopy);

  v12 = unwrapNSArray(binaryFunctionsCopy);

  v13 = [(MTLRenderPipelineStateSPI *)baseObject newRenderPipelineStateWithAdditionalBinaryFunctions:v11 fragmentAdditionalBinaryFunctions:v12 error:error];
  if (v13)
  {
    v14 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v13 captureRenderPipelineState:self additionalBinaryFunctions:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error
{
  functionsCopy = functions;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderPipelineState_newTileRenderPipelineStateWithAdditionalBinaryFunctions_error", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v8 = unwrapNSArray(functionsCopy);

  v9 = [(MTLRenderPipelineStateSPI *)baseObject newTileRenderPipelineStateWithAdditionalBinaryFunctions:v8 error:error];
  if (v9)
  {
    v10 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v9 captureRenderPipelineState:self additionalBinaryFunctions:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newRenderPipelineStateWithBinaryFunctions:(id)functions error:(id *)error
{
  functionsCopy = functions;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderPipelineState_newRenderPipelineStateWithBinaryFunctions_error", "Metal 4 Additional Binary Functions", 0, 0);
  baseObject = self->_baseObject;
  v8 = unwrapMTL4RenderPipelineBinaryFunctionsDescriptor(functionsCopy);

  v9 = [(MTLRenderPipelineStateSPI *)baseObject newRenderPipelineStateWithBinaryFunctions:v8 error:error];
  if (v9)
  {
    v10 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v9 captureDevice:self->_captureDevice];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error
{
  functionsCopy = functions;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  traceContext = self->_traceContext;
  v32 = traceContext;
  *&v33 = 0;
  *(&v33 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v34 = v10;
  BYTE8(v34) = *(v8 + 8);
  *(&v34 + 9) = 16400;
  *(&v34 + 11) = 0;
  HIBYTE(v34) = 0;
  baseObject = self->_baseObject;
  v13 = unwrapMTLRenderPipelineFunctionsDescriptor(functionsCopy);
  v14 = [(MTLRenderPipelineStateSPI *)baseObject newRenderPipelineStateWithAdditionalBinaryFunctions:v13 error:error];

  if (v14)
  {
    v15 = [CaptureMTLRenderPipelineState alloc];
    v16 = [functionsCopy copy];
    v17 = [(CaptureMTLRenderPipelineState *)v15 initWithBaseObject:v14 captureRenderPipelineState:self additionalBinaryFunctions:v16];
  }

  else
  {
    v17 = 0;
  }

  GTTraceEncoder_setStream(&v32, [(CaptureMTLRenderPipelineState *)v17 traceStream]);
  [(CaptureMTLRenderPipelineState *)v17 setDescriptor:self->_descriptor];
  [(CaptureMTLRenderPipelineState *)v17 setReflection:self->_reflection];
  v18 = v33;
  *(v33 + 8) = -15461;
  v19 = BYTE9(v34);
  if (BYTE9(v34) > 0x20uLL)
  {
    v21 = *(*(&v32 + 1) + 24);
    v22 = BYTE10(v34);
    ++BYTE10(v34);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v33 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v34));
    BYTE9(v34) += 32;
  }

  *(v18 + 13) = v19;
  reflection = self->_reflection;
  v24 = LoadDynamicLibrariesForRenderPipelineDescriptor(self->_descriptor);
  if (v17)
  {
    SaveMTLRenderPipelineReflectionCommon(&v32, v17, reflection, v24, 0);
  }

  traceStream = [(CaptureMTLRenderPipelineState *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLRenderPipelineState *)v17 traceStream];
  if (!traceStream2)
  {
    v28 = 0;
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v28 = traceStream2->var0;
  if (error)
  {
LABEL_14:
    error = *error;
  }

LABEL_15:
  v29 = SaveMTLRenderPipelineFunctionsDescriptor(&v32, functionsCopy);
  *v20 = var0;
  *(v20 + 1) = v28;
  *(v20 + 2) = error;
  v20[24] = v29;
  *(v20 + 25) = 0;
  *(v20 + 7) = 0;
  v30 = v33;
  *v9 = v34;
  *(v9 + 8) = BYTE8(v34);
  *(v30 + 15) |= 8u;

  return v17;
}

- (id)newObjectIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderPipelineState_newObjectIntersectionFunctionTableWithDescriptor", "Mesh Shaders with Raytracing", 0, 0);
  baseObject = self->_baseObject;
  v6 = [descriptorCopy copy];
  v7 = [(MTLRenderPipelineStateSPI *)baseObject newObjectIntersectionFunctionTableWithDescriptor:v6];

  if (v7)
  {
    v8 = [[CaptureMTLIntersectionFunctionTable alloc] initWithBaseObject:v7 captureRenderPipelineState:self descriptor:descriptorCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)newMeshIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderPipelineState_newMeshIntersectionFunctionTableWithDescriptor", "Mesh Shaders with Raytracing", 0, 0);
  baseObject = self->_baseObject;
  v6 = [descriptorCopy copy];
  v7 = [(MTLRenderPipelineStateSPI *)baseObject newMeshIntersectionFunctionTableWithDescriptor:v6];

  if (v7)
  {
    v8 = [[CaptureMTLIntersectionFunctionTable alloc] initWithBaseObject:v7 captureRenderPipelineState:self descriptor:descriptorCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)newVisibleFunctionTableFromObjectStageWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromObjectStageWithDescriptor", "Mesh Shaders with Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  v6 = [descriptorCopy copy];
  v7 = [(MTLRenderPipelineStateSPI *)baseObject newVisibleFunctionTableFromObjectStageWithDescriptor:v6];

  if (v7)
  {
    v8 = [[CaptureMTLVisibleFunctionTable alloc] initWithBaseObject:v7 captureRenderPipelineState:self descriptor:descriptorCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)newVisibleFunctionTableFromMeshStageWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromMeshStageWithDescriptor", "Mesh Shaders with Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  v6 = [descriptorCopy copy];
  v7 = [(MTLRenderPipelineStateSPI *)baseObject newVisibleFunctionTableFromMeshStageWithDescriptor:v6];

  if (v7)
  {
    v8 = [[CaptureMTLVisibleFunctionTable alloc] initWithBaseObject:v7 captureRenderPipelineState:self descriptor:descriptorCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)newFunctionHandle:(id *)handle associatedWithBaseFunctionHandle:(id)functionHandle captureFunction:(id)function
{
  functionHandleCopy = functionHandle;
  functionCopy = function;
  functionHandleMap = [(CaptureMTLRenderPipelineState *)self functionHandleMap];
  v11 = [functionHandleMap objectForKey:functionHandleCopy];
  v12 = *handle;
  *handle = v11;

  v13 = *handle;
  if (!*handle)
  {
    v14 = [[CaptureMTLFunctionHandle alloc] initWithBaseObject:functionHandleCopy captureRenderPipelineState:self captureFunction:functionCopy];
    v15 = *handle;
    *handle = v14;

    functionHandleMap2 = [(CaptureMTLRenderPipelineState *)self functionHandleMap];
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

- (void)swapObject:(id)object
{
  p_baseObject = &self->_baseObject;
  v5 = self->_baseObject;
  objc_storeStrong(p_baseObject, *(object + 1));
  objectCopy = object;
  v6 = *(object + 1);
  *(object + 1) = v5;
  v7 = v5;

  v8 = p_baseObject[7];
  p_baseObject[7] = objectCopy[8];
  objectCopy[8] = v8;
  v9 = p_baseObject[7];
  v10 = *(v9 + 2);
  *(v9 + 2) = *(v8 + 2);
  *(v8 + 2) = v10;
}

- (CaptureMTLRenderPipelineState)initWithBaseObject:(id)object descriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor captureCompiler:(id)compiler
{
  objectCopy = object;
  descriptorCopy = descriptor;
  linkingDescriptorCopy = linkingDescriptor;
  compilerCopy = compiler;
  v17.receiver = self;
  v17.super_class = CaptureMTLRenderPipelineState;
  v14 = [(CaptureMTLRenderPipelineState *)&v17 init];
  if (v14)
  {
    captureDevice = [compilerCopy captureDevice];
    [(CaptureMTLRenderPipelineState *)v14 commonInit:objectCopy captureDevice:captureDevice];

    objc_storeStrong(&v14->_captureCompiler, compiler);
    objc_storeStrong(&v14->_mtl4Descriptor, descriptor);
    objc_storeStrong(&v14->_dynamicLinkingDescriptor, linkingDescriptor);
  }

  return v14;
}

- (CaptureMTLRenderPipelineState)initWithBaseObject:(id)object descriptor:(id)descriptor captureCompiler:(id)compiler
{
  objectCopy = object;
  descriptorCopy = descriptor;
  compilerCopy = compiler;
  v14.receiver = self;
  v14.super_class = CaptureMTLRenderPipelineState;
  v11 = [(CaptureMTLRenderPipelineState *)&v14 init];
  if (v11)
  {
    captureDevice = [compilerCopy captureDevice];
    [(CaptureMTLRenderPipelineState *)v11 commonInit:objectCopy captureDevice:captureDevice];

    objc_storeStrong(&v11->_captureCompiler, compiler);
    objc_storeStrong(&v11->_mtl4Descriptor, descriptor);
  }

  return v11;
}

- (CaptureMTLRenderPipelineState)initWithBaseObject:(id)object capturePipelineLibrary:(id)library
{
  objectCopy = object;
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = CaptureMTLRenderPipelineState;
  v8 = [(CaptureMTLRenderPipelineState *)&v11 init];
  if (v8)
  {
    device = [libraryCopy device];
    [(CaptureMTLRenderPipelineState *)v8 commonInit:objectCopy captureDevice:device];

    objc_storeStrong(&v8->_retainedPipelineLibrary, library);
  }

  return v8;
}

- (CaptureMTLRenderPipelineState)initWithBaseObject:(id)object captureRenderPipelineState:(id)state additionalBinaryFunctions:(id)functions
{
  objectCopy = object;
  stateCopy = state;
  functionsCopy = functions;
  v14.receiver = self;
  v14.super_class = CaptureMTLRenderPipelineState;
  v11 = [(CaptureMTLRenderPipelineState *)&v14 init];
  if (v11)
  {
    device = [stateCopy device];
    [(CaptureMTLRenderPipelineState *)v11 commonInit:objectCopy captureDevice:device];

    objc_storeStrong(&v11->_capturePipelineState, state);
    objc_storeStrong(&v11->_additionalBinaryFunctions, functions);
  }

  return v11;
}

- (CaptureMTLRenderPipelineState)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = CaptureMTLRenderPipelineState;
  v8 = [(CaptureMTLRenderPipelineState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CaptureMTLRenderPipelineState *)v8 commonInit:objectCopy captureDevice:deviceCopy];
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

  capturePipelineState = self->_capturePipelineState;
  self->_capturePipelineState = 0;

  traceContext = [(CaptureMTLDevice *)v10 traceContext];
  self->_traceContext = traceContext;
  v13 = DEVICEOBJECT(v17);
  self->_traceStream = GTTraceContext_openStream(traceContext, v13, self);

  additionalBinaryFunctions = self->_additionalBinaryFunctions;
  self->_additionalBinaryFunctions = 0;

  functionHandleMap = self->_functionHandleMap;
  self->_functionHandleMap = 0;

  retainedPipelineLibrary = self->_retainedPipelineLibrary;
  self->_retainedPipelineLibrary = 0;
}

@end