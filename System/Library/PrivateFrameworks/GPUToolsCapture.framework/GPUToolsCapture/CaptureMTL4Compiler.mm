@interface CaptureMTL4Compiler
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTL4Compiler)initWithBaseObject:(id)object captureDevice:(id)device descriptor:(id)descriptor;
- (NSString)description;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newDynamicLibrary:(id)library completionHandler:(id)handler;
- (id)newDynamicLibrary:(id)library error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l completionHandler:(id)handler;
- (id)newDynamicLibraryWithURL:(id)l error:(id *)error;
- (id)newLibraryWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (id)newLibraryWithDescriptor:(id)descriptor error:(id *)error;
- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error;
- (unint64_t)streamReference;
- (void)cancel;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTL4Compiler

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error
{
  descriptorCopy = descriptor;
  linkingDescriptorCopy = linkingDescriptor;
  optionsCopy = options;
  v13 = linkingDescriptorCopy;
  v14 = optionsCopy;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  traceContext = self->_traceContext;
  v44 = traceContext;
  *&v45 = 0;
  *(&v45 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v17 = *v16;
  *v16 = v18;
  *&v46 = v17;
  v42 = v16;
  BYTE8(v46) = *(v16 + 8);
  *(&v46 + 9) = 16400;
  *(&v46 + 11) = 0;
  HIBYTE(v46) = 0;
  baseObject = self->_baseObject;
  v20 = unwrapMTL4PipelineDescriptor(descriptorCopy);
  v21 = unwrapMTL4RenderPipelineDynamicLinkingDescriptor(v13);
  v43 = v14;
  v22 = [v14 copy];
  v23 = [(MTL4CompilerSPI *)baseObject newRenderPipelineStateWithDescriptor:v20 dynamicLinkingDescriptor:v21 compilerTaskOptions:v22 error:error];

  if (v23)
  {
    v24 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v23 descriptor:descriptorCopy dynamicLinkingDescriptor:v13 captureCompiler:self];
  }

  else
  {
    v24 = 0;
  }

  GTTraceEncoder_setStream(&v44, [(CaptureMTLRenderPipelineState *)v24 traceStream]);
  v25 = v45;
  *(v45 + 8) = -14867;
  v26 = BYTE9(v46);
  v27 = descriptorCopy;
  if (BYTE9(v46) > 0x20uLL)
  {
    v29 = *(*(&v44 + 1) + 24);
    v30 = BYTE10(v46);
    ++BYTE10(v46);
    v28 = GTTraceMemPool_allocateBytes(v29, *(&v45 + 1), v30 | 0x2000000000) + 16;
    v26 = v30;
    descriptorCopy = v27;
  }

  else
  {
    v28 = (v25 + BYTE9(v46));
    BYTE9(v46) += 32;
  }

  *(v25 + 13) = v26;
  SaveMTLPipelineReflectionMTL4(&v44, v23, descriptorCopy, v13);
  traceStream = [(CaptureMTL4Compiler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v33 = v13;
  traceStream2 = [(CaptureMTLRenderPipelineState *)v24 traceStream];
  if (traceStream2)
  {
    v35 = traceStream2->var0;
  }

  else
  {
    v35 = 0;
  }

  if (error)
  {
    v36 = *error;
  }

  else
  {
    v36 = 0;
  }

  v37 = SaveMTL4PipelineDescriptor(&v44, v27);
  v38 = SaveMTL4RenderPipelineDynamicLinkingDescriptor(&v44, v33);
  v39 = SaveMTL4CompilerTaskOptions(&v44, v43);
  *v28 = var0;
  *(v28 + 1) = v35;
  *(v28 + 2) = v36;
  v28[24] = v37;
  v28[25] = v38;
  v28[26] = v39;
  *(v28 + 27) = 0;
  v28[31] = 0;
  v40 = v45;
  *v42 = v46;
  *(v42 + 8) = BYTE8(v46);
  *(v40 + 15) |= 8u;

  return v24;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  linkingDescriptorCopy = linkingDescriptor;
  optionsCopy = options;
  handlerCopy = handler;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __123__CaptureMTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v27[3] = &unk_2F23D0;
  selfCopy = self;
  v28 = selfCopy;
  v15 = descriptorCopy;
  v29 = v15;
  v16 = linkingDescriptorCopy;
  v30 = v16;
  v31 = selfCopy;
  v17 = optionsCopy;
  v32 = v17;
  v26 = handlerCopy;
  v33 = v26;
  v18 = objc_retainBlock(v27);
  baseObject = selfCopy->_baseObject;
  v20 = unwrapMTL4PipelineDescriptor(v15);
  v21 = unwrapMTL4RenderPipelineDynamicLinkingDescriptor(v16);
  v22 = [v17 copy];
  v23 = [(MTL4CompilerSPI *)baseObject newRenderPipelineStateWithDescriptor:v20 dynamicLinkingDescriptor:v21 compilerTaskOptions:v22 completionHandler:v18];

  if (v23)
  {
    v24 = [[CaptureMTL4CompilerTask alloc] initWithBaseObject:v23 captureContext:selfCopy->_traceContext captureCompiler:selfCopy];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

void __123__CaptureMTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v6 = *(*(a1 + 32) + 32);
  v7 = a3;
  v26 = v6;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add((v6 + 80), 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  if (v5)
  {
    v12 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v5 descriptor:*(a1 + 40) dynamicLinkingDescriptor:*(a1 + 48) captureCompiler:*(a1 + 56)];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLRenderPipelineState *)v12 traceStream]);
  v13 = v27;
  *(v27 + 8) = -14836;
  v14 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v16 = *(*(&v26 + 1) + 24);
    v17 = BYTE10(v28);
    ++BYTE10(v28);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v27 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v13 + 13) = v14;
  SaveMTLPipelineReflectionMTL4(&v26, v5, *(a1 + 40), *(a1 + 48));
  v18 = [*(a1 + 56) traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CaptureMTLRenderPipelineState *)v12 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = SaveMTL4PipelineDescriptor(&v26, *(a1 + 40));
  v23 = SaveMTL4RenderPipelineDynamicLinkingDescriptor(&v26, *(a1 + 48));
  v24 = SaveMTL4CompilerTaskOptions(&v26, *(a1 + 64));
  *v15 = v19;
  *(v15 + 1) = var0;
  *(v15 + 2) = 0;
  v15[24] = v22;
  v15[25] = v23;
  v15[26] = v24;
  *(v15 + 27) = 0;
  v15[31] = 0;
  v25 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v25 + 15) |= 8u;
  (*(*(a1 + 72) + 16))();
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  descriptorCopy = descriptor;
  optionsCopy = options;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  traceContext = self->_traceContext;
  v34 = traceContext;
  *&v35 = 0;
  *(&v35 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v12 = v11;
  v13 = *v11;
  *v11 = v14;
  *&v36 = v13;
  BYTE8(v36) = *(v11 + 8);
  *(&v36 + 9) = 16400;
  *(&v36 + 11) = 0;
  HIBYTE(v36) = 0;
  baseObject = self->_baseObject;
  v16 = unwrapMTL4PipelineDescriptor(descriptorCopy);
  v17 = [optionsCopy copy];
  v18 = [(MTL4CompilerSPI *)baseObject newRenderPipelineStateWithDescriptor:v16 compilerTaskOptions:v17 error:error];

  if (v18)
  {
    v19 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v18 descriptor:descriptorCopy captureCompiler:self];
  }

  else
  {
    v19 = 0;
  }

  GTTraceEncoder_setStream(&v34, [(CaptureMTLRenderPipelineState *)v19 traceStream]);
  v20 = v35;
  *(v35 + 8) = -15130;
  v21 = BYTE9(v36);
  if (BYTE9(v36) > 0x20uLL)
  {
    v23 = *(*(&v34 + 1) + 24);
    v24 = BYTE10(v36);
    ++BYTE10(v36);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v35 + 1), v24 | 0x2000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v36));
    BYTE9(v36) += 32;
  }

  *(v20 + 13) = v21;
  SaveMTLPipelineReflectionMTL4(&v34, v18, descriptorCopy, 0);
  traceStream = [(CaptureMTL4Compiler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLRenderPipelineState *)v19 traceStream];
  if (!traceStream2)
  {
    v28 = 0;
    if (error)
    {
      goto LABEL_12;
    }

LABEL_14:
    v29 = 0;
    goto LABEL_15;
  }

  v28 = traceStream2->var0;
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  v29 = *error;
LABEL_15:
  v30 = SaveMTL4PipelineDescriptor(&v34, descriptorCopy);
  v31 = SaveMTL4CompilerTaskOptions(&v34, optionsCopy);
  *v22 = var0;
  *(v22 + 1) = v28;
  *(v22 + 2) = v29;
  v22[24] = v30;
  v22[25] = v31;
  *(v22 + 26) = 0;
  *(v22 + 15) = 0;
  v32 = v35;
  *v12 = v36;
  *(v12 + 8) = BYTE8(v36);
  *(v32 + 15) |= 8u;

  return v19;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  optionsCopy = options;
  handlerCopy = handler;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __98__CaptureMTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v22[3] = &unk_2F23A8;
  selfCopy = self;
  v23 = selfCopy;
  v12 = descriptorCopy;
  v24 = v12;
  v25 = selfCopy;
  v13 = optionsCopy;
  v26 = v13;
  v14 = handlerCopy;
  v27 = v14;
  v15 = objc_retainBlock(v22);
  baseObject = selfCopy->_baseObject;
  v17 = unwrapMTL4PipelineDescriptor(v12);
  v18 = [v13 copy];
  v19 = [(MTL4CompilerSPI *)baseObject newRenderPipelineStateWithDescriptor:v17 compilerTaskOptions:v18 completionHandler:v15];

  if (v19)
  {
    v20 = [[CaptureMTL4CompilerTask alloc] initWithBaseObject:v19 captureContext:selfCopy->_traceContext captureCompiler:selfCopy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __98__CaptureMTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v6 = *(*(a1 + 32) + 32);
  v7 = a3;
  v25 = v6;
  *&v26 = 0;
  *(&v26 + 1) = atomic_fetch_add((v6 + 80), 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v27 = v10;
  BYTE8(v27) = *(v8 + 8);
  *(&v27 + 9) = 16400;
  *(&v27 + 11) = 0;
  HIBYTE(v27) = 0;
  if (v5)
  {
    v12 = [[CaptureMTLRenderPipelineState alloc] initWithBaseObject:v5 descriptor:*(a1 + 40) captureCompiler:*(a1 + 48)];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v25, [(CaptureMTLRenderPipelineState *)v12 traceStream]);
  v13 = v26;
  *(v26 + 8) = -15131;
  v14 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v16 = *(*(&v25 + 1) + 24);
    v17 = BYTE10(v27);
    ++BYTE10(v27);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v26 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v13 + 13) = v14;
  SaveMTLPipelineReflectionMTL4(&v25, v5, *(a1 + 40), 0);
  v18 = [*(a1 + 48) traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CaptureMTLRenderPipelineState *)v12 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = SaveMTL4PipelineDescriptor(&v25, *(a1 + 40));
  v23 = SaveMTL4CompilerTaskOptions(&v25, *(a1 + 56));
  *v15 = v19;
  *(v15 + 1) = var0;
  *(v15 + 2) = 0;
  v15[24] = v22;
  v15[25] = v23;
  *(v15 + 26) = 0;
  *(v15 + 15) = 0;
  v24 = v26;
  *v9 = v27;
  *(v9 + 8) = BYTE8(v27);
  *(v24 + 15) |= 8u;
  (*(*(a1 + 64) + 16))();
}

- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v30 = v10;
  BYTE8(v30) = *(v8 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  baseObject = self->_baseObject;
  v13 = unwrapMTL4MachineLearningPipelineDescriptor(descriptorCopy);
  v14 = [(MTL4CompilerSPI *)baseObject newMachineLearningPipelineStateWithDescriptor:v13 error:error];

  if (v14)
  {
    v15 = [[CaptureMTL4MachineLearningPipelineState alloc] initWithBaseObject:v14 descriptor:descriptorCopy captureCompiler:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTL4MachineLearningPipelineState *)v15 traceStream]);
  v16 = v29;
  *(v29 + 8) = -14868;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v16 + 13) = v17;
  SaveMTL4MachineLearningPipelineReflection(&v28, v14);
  traceStream = [(CaptureMTL4Compiler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTL4MachineLearningPipelineState *)v15 traceStream];
  if (!traceStream2)
  {
    v24 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v25 = SaveMTL4PipelineDescriptor(&v28, descriptorCopy);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = error;
  v18[24] = v25;
  *(v18 + 25) = 0;
  *(v18 + 7) = 0;
  v26 = v29;
  *v9 = v30;
  *(v9 + 8) = BYTE8(v30);
  *(v26 + 15) |= 8u;

  return v15;
}

- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = __87__CaptureMTL4Compiler_newMachineLearningPipelineStateWithDescriptor_completionHandler___block_invoke;
  v20 = &unk_2F2380;
  selfCopy = self;
  v21 = selfCopy;
  v9 = descriptorCopy;
  v22 = v9;
  v23 = selfCopy;
  v10 = handlerCopy;
  v24 = v10;
  v11 = objc_retainBlock(&v17);
  baseObject = selfCopy->_baseObject;
  v13 = unwrapMTL4MachineLearningPipelineDescriptor(v9);
  v14 = [(MTL4CompilerSPI *)baseObject newMachineLearningPipelineStateWithDescriptor:v13 completionHandler:v11, v17, v18, v19, v20];

  if (v14)
  {
    v15 = [[CaptureMTL4CompilerTask alloc] initWithBaseObject:v14 captureContext:selfCopy->_traceContext captureCompiler:selfCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __87__CaptureMTL4Compiler_newMachineLearningPipelineStateWithDescriptor_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = *(*(a1 + 32) + 32);
  v7 = a3;
  v24 = v6;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add((v6 + 80), 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v26 = v10;
  BYTE8(v26) = *(v8 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  if (v5)
  {
    v12 = [[CaptureMTL4MachineLearningPipelineState alloc] initWithBaseObject:v5 descriptor:*(a1 + 40) captureCompiler:*(a1 + 48)];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTL4MachineLearningPipelineState *)v12 traceStream]);
  v13 = v25;
  *(v25 + 8) = -14869;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  SaveMTL4MachineLearningPipelineReflection(&v24, v5);
  v18 = [*(a1 + 48) traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CaptureMTL4MachineLearningPipelineState *)v12 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = SaveMTL4PipelineDescriptor(&v24, *(a1 + 40));
  *v15 = v19;
  *(v15 + 1) = var0;
  *(v15 + 2) = 0;
  v15[24] = v22;
  *(v15 + 25) = 0;
  *(v15 + 7) = 0;
  v23 = v25;
  *v9 = v26;
  *(v9 + 8) = BYTE8(v26);
  *(v23 + 15) |= 8u;
  (*(*(a1 + 56) + 16))();
}

- (id)newLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceContext = self->_traceContext;
  v28 = traceContext;
  *&v29 = 0;
  *(&v29 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v30 = v10;
  BYTE8(v30) = *(v8 + 8);
  *(&v30 + 9) = 16400;
  *(&v30 + 11) = 0;
  HIBYTE(v30) = 0;
  baseObject = self->_baseObject;
  v13 = unwrapMTL4LibraryDescriptor(descriptorCopy);
  v14 = [(MTL4CompilerSPI *)baseObject newLibraryWithDescriptor:v13 error:error];

  if (v14)
  {
    v15 = [[CaptureMTLLibrary alloc] initWithBaseObject:v14 captureCompiler:self];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v28, [(CaptureMTLLibrary *)v15 traceStream]);
  v16 = v29;
  *(v29 + 8) = -15134;
  v17 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v19 = *(*(&v28 + 1) + 24);
    v20 = BYTE10(v30);
    ++BYTE10(v30);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v29 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v16 + 13) = v17;
  SaveMTLLibraryInfoWithPath(&v28, v14, 0);
  traceStream = [(CaptureMTL4Compiler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLLibrary *)v15 traceStream];
  if (!traceStream2)
  {
    v24 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v25 = SaveMTL4LibraryDescriptor(&v28, descriptorCopy);
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = error;
  v18[24] = v25;
  *(v18 + 25) = 0;
  *(v18 + 7) = 0;
  v26 = v29;
  *v9 = v30;
  *(v9 + 8) = BYTE8(v30);
  *(v26 + 15) |= 8u;

  return v15;
}

- (id)newLibraryWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = __66__CaptureMTL4Compiler_newLibraryWithDescriptor_completionHandler___block_invoke;
  v20 = &unk_2F2358;
  selfCopy = self;
  v21 = selfCopy;
  v22 = selfCopy;
  v9 = descriptorCopy;
  v23 = v9;
  v10 = handlerCopy;
  v24 = v10;
  v11 = objc_retainBlock(&v17);
  baseObject = selfCopy->_baseObject;
  v13 = unwrapMTL4LibraryDescriptor(v9);
  v14 = [(MTL4CompilerSPI *)baseObject newLibraryWithDescriptor:v13 completionHandler:v11, v17, v18, v19, v20];

  if (v14)
  {
    v15 = [[CaptureMTL4CompilerTask alloc] initWithBaseObject:v14 captureContext:selfCopy->_traceContext captureCompiler:selfCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __66__CaptureMTL4Compiler_newLibraryWithDescriptor_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = *(*(a1 + 32) + 32);
  v7 = a3;
  v24 = v6;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add((v6 + 80), 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v26 = v10;
  BYTE8(v26) = *(v8 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  if (v5)
  {
    v12 = [[CaptureMTLLibrary alloc] initWithBaseObject:v5 captureCompiler:*(a1 + 40)];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLLibrary *)v12 traceStream]);
  v13 = v25;
  *(v25 + 8) = -15135;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  SaveMTLLibraryInfoWithPath(&v24, v5, 0);
  v18 = [*(a1 + 40) traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CaptureMTLLibrary *)v12 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = SaveMTL4LibraryDescriptor(&v24, *(a1 + 48));
  *v15 = v19;
  *(v15 + 1) = var0;
  *(v15 + 2) = 0;
  v15[24] = v22;
  *(v15 + 25) = 0;
  *(v15 + 7) = 0;
  v23 = v25;
  *v9 = v26;
  *(v9 + 8) = BYTE8(v26);
  *(v23 + 15) |= 8u;
  (*(*(a1 + 56) + 16))();
}

- (id)newDynamicLibraryWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v12 = [(MTL4CompilerSPI *)self->_baseObject newDynamicLibraryWithURL:lCopy error:error];
  if (v12)
  {
    v13 = [[CaptureMTLDynamicLibrary alloc] initWithBaseObject:v12 captureCompiler:self];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLDynamicLibrary *)v13 traceStream]);
  v14 = v27;
  *(v27 + 8) = -15136;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v14 + 13) = v15;
  SaveMTLDynamicLibraryInfo(&v26, v12);
  traceStream = [(CaptureMTL4Compiler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLDynamicLibrary *)v13 traceStream];
  if (!traceStream2)
  {
    v22 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = traceStream2->var0;
  if (error)
  {
LABEL_12:
    error = *error;
  }

LABEL_13:
  v23 = SaveNSURL(&v26, lCopy);
  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = error;
  v16[24] = v23;
  *(v16 + 25) = 0;
  *(v16 + 7) = 0;
  v24 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;

  return v13;
}

- (id)newDynamicLibraryWithURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = __66__CaptureMTL4Compiler_newDynamicLibraryWithURL_completionHandler___block_invoke;
  v18 = &unk_2F2330;
  selfCopy = self;
  v19 = selfCopy;
  v20 = selfCopy;
  v9 = lCopy;
  v21 = v9;
  v10 = handlerCopy;
  v22 = v10;
  v11 = objc_retainBlock(&v15);
  v12 = [(MTL4CompilerSPI *)selfCopy->_baseObject newDynamicLibraryWithURL:v9 completionHandler:v11, v15, v16, v17, v18];
  if (v12)
  {
    v13 = [[CaptureMTL4CompilerTask alloc] initWithBaseObject:v12 captureContext:selfCopy->_traceContext captureCompiler:selfCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __66__CaptureMTL4Compiler_newDynamicLibraryWithURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = *(*(a1 + 32) + 32);
  v7 = a3;
  v24 = v6;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add((v6 + 80), 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v26 = v10;
  BYTE8(v26) = *(v8 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  if (v5)
  {
    v12 = [[CaptureMTLDynamicLibrary alloc] initWithBaseObject:v5 captureCompiler:*(a1 + 40)];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLDynamicLibrary *)v12 traceStream]);
  v13 = v25;
  *(v25 + 8) = -15137;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  SaveMTLDynamicLibraryInfo(&v24, v5);
  v18 = [*(a1 + 40) traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CaptureMTLDynamicLibrary *)v12 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = SaveNSURL(&v24, *(a1 + 48));
  *v15 = v19;
  *(v15 + 1) = var0;
  *(v15 + 2) = 0;
  v15[24] = v22;
  *(v15 + 25) = 0;
  *(v15 + 7) = 0;
  v23 = v25;
  *v9 = v26;
  *(v9 + 8) = BYTE8(v26);
  *(v23 + 15) |= 8u;
  (*(*(a1 + 56) + 16))();
}

- (id)newDynamicLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  traceContext = self->_traceContext;
  v30 = traceContext;
  *&v31 = 0;
  *(&v31 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v32 = v10;
  BYTE8(v32) = *(v8 + 8);
  *(&v32 + 9) = 16400;
  *(&v32 + 11) = 0;
  HIBYTE(v32) = 0;
  baseObject = self->_baseObject;
  baseObject = [libraryCopy baseObject];
  v14 = [(MTL4CompilerSPI *)baseObject newDynamicLibrary:baseObject error:error];

  if (v14)
  {
    v15 = [[CaptureMTLDynamicLibrary alloc] initWithBaseObject:v14 captureCompiler:self captureLibrary:libraryCopy];
  }

  else
  {
    v15 = 0;
  }

  GTTraceEncoder_setStream(&v30, [(CaptureMTLDynamicLibrary *)v15 traceStream]);
  v16 = v31;
  *(v31 + 8) = -15138;
  v17 = BYTE9(v32);
  if (BYTE9(v32) > 0x20uLL)
  {
    v19 = *(*(&v30 + 1) + 24);
    v20 = BYTE10(v32);
    ++BYTE10(v32);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v31 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v32));
    BYTE9(v32) += 32;
  }

  *(v16 + 13) = v17;
  SaveMTLDynamicLibraryInfo(&v30, v14);
  traceStream = [(CaptureMTL4Compiler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLDynamicLibrary *)v15 traceStream];
  if (traceStream2)
  {
    v24 = traceStream2->var0;
  }

  else
  {
    v24 = 0;
  }

  traceStream3 = [libraryCopy traceStream];
  if (!traceStream3)
  {
    v26 = 0;
    if (error)
    {
      goto LABEL_15;
    }

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  v26 = *traceStream3;
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  v27 = *error;
LABEL_18:
  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = v27;
  v28 = v31;
  *v9 = v32;
  *(v9 + 8) = BYTE8(v32);
  *(v28 + 15) |= 8u;

  return v15;
}

- (id)newDynamicLibrary:(id)library completionHandler:(id)handler
{
  libraryCopy = library;
  handlerCopy = handler;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = __59__CaptureMTL4Compiler_newDynamicLibrary_completionHandler___block_invoke;
  v20 = &unk_2F2330;
  selfCopy = self;
  v21 = selfCopy;
  v22 = selfCopy;
  v9 = libraryCopy;
  v23 = v9;
  v10 = handlerCopy;
  v24 = v10;
  v11 = objc_retainBlock(&v17);
  baseObject = selfCopy->_baseObject;
  baseObject = [v9 baseObject];
  v14 = [(MTL4CompilerSPI *)baseObject newDynamicLibrary:baseObject completionHandler:v11];

  if (v14)
  {
    v15 = [[CaptureMTL4CompilerTask alloc] initWithBaseObject:v14 captureContext:selfCopy->_traceContext captureCompiler:selfCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __59__CaptureMTL4Compiler_newDynamicLibrary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v6 = *(*(a1 + 32) + 32);
  v7 = a3;
  v25 = v6;
  *&v26 = 0;
  *(&v26 + 1) = atomic_fetch_add((v6 + 80), 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v27 = v10;
  BYTE8(v27) = *(v8 + 8);
  *(&v27 + 9) = 16400;
  *(&v27 + 11) = 0;
  HIBYTE(v27) = 0;
  if (v5)
  {
    v12 = [[CaptureMTLDynamicLibrary alloc] initWithBaseObject:v5 captureCompiler:*(a1 + 40) captureLibrary:*(a1 + 48)];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v25, [(CaptureMTLDynamicLibrary *)v12 traceStream]);
  v13 = v26;
  *(v26 + 8) = -15139;
  v14 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v16 = *(*(&v25 + 1) + 24);
    v17 = BYTE10(v27);
    ++BYTE10(v27);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v26 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v13 + 13) = v14;
  SaveMTLDynamicLibraryInfo(&v25, v5);
  v18 = [*(a1 + 40) traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CaptureMTLDynamicLibrary *)v12 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [*(a1 + 48) traceStream];
  if (v22)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  *v15 = v19;
  *(v15 + 1) = var0;
  *(v15 + 2) = v23;
  *(v15 + 3) = 0;
  v24 = v26;
  *v9 = v27;
  *(v9 + 8) = BYTE8(v27);
  *(v24 + 15) |= 8u;
  (*(*(a1 + 56) + 16))();
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error
{
  descriptorCopy = descriptor;
  linkingDescriptorCopy = linkingDescriptor;
  optionsCopy = options;
  v13 = linkingDescriptorCopy;
  v14 = optionsCopy;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  traceContext = self->_traceContext;
  v44 = traceContext;
  *&v45 = 0;
  *(&v45 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v17 = *v16;
  *v16 = v18;
  *&v46 = v17;
  v42 = v16;
  BYTE8(v46) = *(v16 + 8);
  *(&v46 + 9) = 16400;
  *(&v46 + 11) = 0;
  HIBYTE(v46) = 0;
  baseObject = self->_baseObject;
  v20 = unwrapMTL4ComputePipelineDescriptor(descriptorCopy);
  v21 = unwrapMTL4PipelineStageDynamicLinkingDescriptor(v13);
  v43 = v14;
  v22 = [v14 copy];
  v23 = [(MTL4CompilerSPI *)baseObject newComputePipelineStateWithDescriptor:v20 dynamicLinkingDescriptor:v21 compilerTaskOptions:v22 error:error];

  if (v23)
  {
    v24 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v23 descriptor:descriptorCopy dynamicLinkingDescriptor:v13 captureCompiler:self];
  }

  else
  {
    v24 = 0;
  }

  GTTraceEncoder_setStream(&v44, [(CaptureMTLComputePipelineState *)v24 traceStream]);
  v25 = v45;
  *(v45 + 8) = -14870;
  v26 = BYTE9(v46);
  v27 = descriptorCopy;
  if (BYTE9(v46) > 0x20uLL)
  {
    v29 = *(*(&v44 + 1) + 24);
    v30 = BYTE10(v46);
    ++BYTE10(v46);
    v28 = GTTraceMemPool_allocateBytes(v29, *(&v45 + 1), v30 | 0x2000000000) + 16;
    v26 = v30;
    descriptorCopy = v27;
  }

  else
  {
    v28 = (v25 + BYTE9(v46));
    BYTE9(v46) += 32;
  }

  *(v25 + 13) = v26;
  SaveMTLComputePipelineReflectionMTL4(&v44, v23, descriptorCopy, v13);
  traceStream = [(CaptureMTL4Compiler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v33 = v13;
  traceStream2 = [(CaptureMTLComputePipelineState *)v24 traceStream];
  if (traceStream2)
  {
    v35 = traceStream2->var0;
  }

  else
  {
    v35 = 0;
  }

  if (error)
  {
    v36 = *error;
  }

  else
  {
    v36 = 0;
  }

  v37 = SaveMTL4PipelineDescriptor(&v44, v27);
  v38 = SaveMTL4PipelineStageDynamicLinkingDescriptor(&v44, v33);
  v39 = SaveMTL4CompilerTaskOptions(&v44, v43);
  *v28 = var0;
  *(v28 + 1) = v35;
  *(v28 + 2) = v36;
  v28[24] = v37;
  v28[25] = v38;
  v28[26] = v39;
  *(v28 + 27) = 0;
  v28[31] = 0;
  v40 = v45;
  *v42 = v46;
  *(v42 + 8) = BYTE8(v46);
  *(v40 + 15) |= 8u;

  return v24;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  linkingDescriptorCopy = linkingDescriptor;
  optionsCopy = options;
  handlerCopy = handler;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __124__CaptureMTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v27[3] = &unk_2F2308;
  selfCopy = self;
  v28 = selfCopy;
  v15 = descriptorCopy;
  v29 = v15;
  v16 = linkingDescriptorCopy;
  v30 = v16;
  v31 = selfCopy;
  v17 = optionsCopy;
  v32 = v17;
  v26 = handlerCopy;
  v33 = v26;
  v18 = objc_retainBlock(v27);
  baseObject = selfCopy->_baseObject;
  v20 = unwrapMTL4ComputePipelineDescriptor(v15);
  v21 = unwrapMTL4PipelineStageDynamicLinkingDescriptor(v16);
  v22 = [v17 copy];
  v23 = [(MTL4CompilerSPI *)baseObject newComputePipelineStateWithDescriptor:v20 dynamicLinkingDescriptor:v21 compilerTaskOptions:v22 completionHandler:v18];

  if (v23)
  {
    v24 = [[CaptureMTL4CompilerTask alloc] initWithBaseObject:v23 captureContext:selfCopy->_traceContext captureCompiler:selfCopy];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

void __124__CaptureMTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v6 = *(*(a1 + 32) + 32);
  v7 = a3;
  v26 = v6;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add((v6 + 80), 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v28 = v10;
  BYTE8(v28) = *(v8 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  if (v5)
  {
    v12 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v5 descriptor:*(a1 + 40) dynamicLinkingDescriptor:*(a1 + 48) captureCompiler:*(a1 + 56)];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v26, [(CaptureMTLComputePipelineState *)v12 traceStream]);
  v13 = v27;
  *(v27 + 8) = -14871;
  v14 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v16 = *(*(&v26 + 1) + 24);
    v17 = BYTE10(v28);
    ++BYTE10(v28);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v27 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v13 + 13) = v14;
  SaveMTLComputePipelineReflectionMTL4(&v26, v5, *(a1 + 40), *(a1 + 48));
  v18 = [*(a1 + 56) traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CaptureMTLComputePipelineState *)v12 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = SaveMTL4PipelineDescriptor(&v26, *(a1 + 40));
  v23 = SaveMTL4PipelineStageDynamicLinkingDescriptor(&v26, *(a1 + 48));
  v24 = SaveMTL4CompilerTaskOptions(&v26, *(a1 + 64));
  *v15 = v19;
  *(v15 + 1) = var0;
  *(v15 + 2) = 0;
  v15[24] = v22;
  v15[25] = v23;
  v15[26] = v24;
  *(v15 + 27) = 0;
  v15[31] = 0;
  v25 = v27;
  *v9 = v28;
  *(v9 + 8) = BYTE8(v28);
  *(v25 + 15) |= 8u;
  (*(*(a1 + 72) + 16))();
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  descriptorCopy = descriptor;
  optionsCopy = options;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  traceContext = self->_traceContext;
  v34 = traceContext;
  *&v35 = 0;
  *(&v35 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v12 = v11;
  v13 = *v11;
  *v11 = v14;
  *&v36 = v13;
  BYTE8(v36) = *(v11 + 8);
  *(&v36 + 9) = 16400;
  *(&v36 + 11) = 0;
  HIBYTE(v36) = 0;
  baseObject = self->_baseObject;
  v16 = unwrapMTL4ComputePipelineDescriptor(descriptorCopy);
  v17 = [optionsCopy copy];
  v18 = [(MTL4CompilerSPI *)baseObject newComputePipelineStateWithDescriptor:v16 compilerTaskOptions:v17 error:error];

  if (v18)
  {
    v19 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v18 descriptor:descriptorCopy captureCompiler:self];
  }

  else
  {
    v19 = 0;
  }

  GTTraceEncoder_setStream(&v34, [(CaptureMTLComputePipelineState *)v19 traceStream]);
  v20 = v35;
  *(v35 + 8) = -15140;
  v21 = BYTE9(v36);
  if (BYTE9(v36) > 0x20uLL)
  {
    v23 = *(*(&v34 + 1) + 24);
    v24 = BYTE10(v36);
    ++BYTE10(v36);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v35 + 1), v24 | 0x2000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v36));
    BYTE9(v36) += 32;
  }

  *(v20 + 13) = v21;
  SaveMTLComputePipelineReflectionMTL4(&v34, v18, descriptorCopy, 0);
  traceStream = [(CaptureMTL4Compiler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLComputePipelineState *)v19 traceStream];
  if (!traceStream2)
  {
    v28 = 0;
    if (error)
    {
      goto LABEL_12;
    }

LABEL_14:
    v29 = 0;
    goto LABEL_15;
  }

  v28 = traceStream2->var0;
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  v29 = *error;
LABEL_15:
  v30 = SaveMTL4PipelineDescriptor(&v34, descriptorCopy);
  v31 = SaveMTL4CompilerTaskOptions(&v34, optionsCopy);
  *v22 = var0;
  *(v22 + 1) = v28;
  *(v22 + 2) = v29;
  v22[24] = v30;
  v22[25] = v31;
  *(v22 + 26) = 0;
  *(v22 + 15) = 0;
  v32 = v35;
  *v12 = v36;
  *(v12 + 8) = BYTE8(v36);
  *(v32 + 15) |= 8u;

  return v19;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  optionsCopy = options;
  handlerCopy = handler;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __99__CaptureMTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v22[3] = &unk_2F22E0;
  selfCopy = self;
  v23 = selfCopy;
  v12 = descriptorCopy;
  v24 = v12;
  v25 = selfCopy;
  v13 = optionsCopy;
  v26 = v13;
  v14 = handlerCopy;
  v27 = v14;
  v15 = objc_retainBlock(v22);
  baseObject = selfCopy->_baseObject;
  v17 = unwrapMTL4ComputePipelineDescriptor(v12);
  v18 = [v13 copy];
  v19 = [(MTL4CompilerSPI *)baseObject newComputePipelineStateWithDescriptor:v17 compilerTaskOptions:v18 completionHandler:v15];

  if (v19)
  {
    v20 = [[CaptureMTL4CompilerTask alloc] initWithBaseObject:v19 captureContext:selfCopy->_traceContext captureCompiler:selfCopy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __99__CaptureMTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v6 = *(*(a1 + 32) + 32);
  v7 = a3;
  v25 = v6;
  *&v26 = 0;
  *(&v26 + 1) = atomic_fetch_add((v6 + 80), 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v27 = v10;
  BYTE8(v27) = *(v8 + 8);
  *(&v27 + 9) = 16400;
  *(&v27 + 11) = 0;
  HIBYTE(v27) = 0;
  if (v5)
  {
    v12 = [[CaptureMTLComputePipelineState alloc] initWithBaseObject:v5 descriptor:*(a1 + 40) captureCompiler:*(a1 + 48)];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v25, [(CaptureMTLComputePipelineState *)v12 traceStream]);
  v13 = v26;
  *(v26 + 8) = -15141;
  v14 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v16 = *(*(&v25 + 1) + 24);
    v17 = BYTE10(v27);
    ++BYTE10(v27);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v26 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v13 + 13) = v14;
  SaveMTLComputePipelineReflectionMTL4(&v25, v5, *(a1 + 40), 0);
  v18 = [*(a1 + 48) traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CaptureMTLComputePipelineState *)v12 traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = SaveMTL4PipelineDescriptor(&v25, *(a1 + 40));
  v23 = SaveMTL4CompilerTaskOptions(&v25, *(a1 + 56));
  *v15 = v19;
  *(v15 + 1) = var0;
  *(v15 + 2) = 0;
  v15[24] = v22;
  v15[25] = v23;
  *(v15 + 26) = 0;
  *(v15 + 15) = 0;
  v24 = v26;
  *v9 = v27;
  *(v9 + 8) = BYTE8(v27);
  *(v24 + 15) |= 8u;
  (*(*(a1 + 64) + 16))();
}

- (void)dealloc
{
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v3.receiver = self;
  v3.super_class = CaptureMTL4Compiler;
  [(CaptureMTL4Compiler *)&v3 dealloc];
}

- (void)cancel
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4Compiler_cancel", "Metal 4 Compiler", 0, 0);
  baseObject = self->_baseObject;

  [(MTL4CompilerSPI *)baseObject cancel];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTL4CompilerSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTL4Compiler;
  v3 = [(CaptureMTL4Compiler *)&v7 description];
  v4 = [(MTL4CompilerSPI *)self->_baseObject description];
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

- (CaptureMTL4Compiler)initWithBaseObject:(id)object captureDevice:(id)device descriptor:(id)descriptor
{
  objectCopy = object;
  deviceCopy = device;
  descriptorCopy = descriptor;
  v19.receiver = self;
  v19.super_class = CaptureMTL4Compiler;
  v12 = [(CaptureMTL4Compiler *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    objc_storeStrong(&v13->_captureDevice, device);
    pipelineDataSetSerializer = [descriptorCopy pipelineDataSetSerializer];
    capturePipelineDataSetSerializer = v13->_capturePipelineDataSetSerializer;
    v13->_capturePipelineDataSetSerializer = pipelineDataSetSerializer;

    traceContext = [deviceCopy traceContext];
    v13->_traceContext = traceContext;
    v17 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v17, v13);
  }

  return v13;
}

@end