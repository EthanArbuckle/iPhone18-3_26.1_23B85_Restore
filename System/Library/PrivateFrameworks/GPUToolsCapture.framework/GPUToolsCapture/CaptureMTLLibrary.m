@interface CaptureMTLLibrary
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLLibrary)initWithBaseObject:(id)a3 captureCompiler:(id)a4;
- (CaptureMTLLibrary)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (CaptureMTLLibrary)initWithBaseObject:(id)a3 captureDevice:(id)a4 captureFunctions:(id)a5;
- (NSString)description;
- (id)newExternFunctionWithName:(id)a3;
- (id)newFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 error:(id *)a5;
- (id)newFunctionWithDescriptor:(id)a3 error:(id *)a4;
- (id)newFunctionWithName:(id)a3;
- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 error:(id *)a5;
- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 error:(id *)a6;
- (id)newIntersectionFunctionWithDescriptor:(id)a3 error:(id *)a4;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)newFunctionWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 completionHandler:(id)a5;
- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 completionHandler:(id)a6;
- (void)newIntersectionFunctionWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)setLabel:(id)a3;
- (void)setOverrideTriple:(id)a3;
- (void)touch;
@end

@implementation CaptureMTLLibrary

- (id)newFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLLibrary_newFunctionWithDescriptor_destinationArchive_error", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v11 = unwrapMTLFunctionDescriptor(v9);

  v12 = [v8 baseObject];

  v13 = [(MTLLibrarySPI *)baseObject newFunctionWithDescriptor:v11 destinationArchive:v12 error:a5];
  if (v13)
  {
    v14 = [CaptureMTLFunction alloc];
    v15 = [(CaptureMTLLibrary *)self device];
    v16 = [(CaptureMTLFunction *)v14 initWithBaseObject:v13 captureDevice:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setOverrideTriple:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLLibrarySPI *)self->_baseObject setOverrideTriple:v4];
  v6 = v19;
  *(v19 + 8) = -16083;
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
  v11 = [(CaptureMTLLibrary *)self traceStream];
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

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLLibrarySPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -16292;
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
  v11 = [(CaptureMTLLibrary *)self traceStream];
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
  v5 = [(MTLLibrarySPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLLibrary;
  v3 = [(CaptureMTLLibrary *)&v7 description];
  v4 = [(MTLLibrarySPI *)self->_baseObject description];
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

- (void)newIntersectionFunctionWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  baseObject = self->_baseObject;
  v9 = unwrapMTLFunctionDescriptor(v6);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __77__CaptureMTLLibrary_newIntersectionFunctionWithDescriptor_completionHandler___block_invoke;
  v12[3] = &unk_2F1B98;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(MTLLibrarySPI *)baseObject newIntersectionFunctionWithDescriptor:v9 completionHandler:v12];
}

void __77__CaptureMTLLibrary_newIntersectionFunctionWithDescriptor_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v36 = 0;
  if (v5 && [*(*(a1 + 32) + 16) newCaptureFunction:&v36 associatedWithBaseFunction:v5 captureLibrary:?])
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = [*(a1 + 40) name];
    v9 = [v7 newFunctionWithName:v8];

    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v10 = *(*(a1 + 32) + 32);
    v33 = v10;
    *&v34 = 0;
    *(&v34 + 1) = atomic_fetch_add((v10 + 80), 1uLL);
    s();
    v12 = v11;
    v13 = *v11;
    *v11 = v14;
    *&v35 = v13;
    BYTE8(v35) = *(v11 + 8);
    *(&v35 + 9) = 16400;
    *(&v35 + 11) = 0;
    HIBYTE(v35) = 0;
    GTTraceEncoder_setStream(&v33, [v36 traceStream]);
    v15 = v34;
    *(v34 + 8) = -15551;
    v16 = BYTE9(v35);
    if (BYTE9(v35) > 0x18uLL)
    {
      v19 = *(*(&v33 + 1) + 24);
      v20 = BYTE10(v35);
      ++BYTE10(v35);
      v17 = GTTraceMemPool_allocateBytes(v19, *(&v34 + 1), v20 | 0x2800000000) + 16;
      v16 = v20;
    }

    else
    {
      v17 = (v15 + BYTE9(v35));
      BYTE9(v35) += 40;
    }

    *(v15 + 13) = v16;
    v21 = [*(a1 + 32) baseObject];
    SaveMTLFunctionInfo(&v33, v5, v9, v21);

    v22 = [*(a1 + 32) traceStream];
    if (v22)
    {
      v23 = *v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = [v36 traceStream];
    if (v24)
    {
      v25 = *v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(a1 + 40);
    [v9 functionConstantsDictionary];
    v28 = v27 = v9;
    v29 = SaveMTLIntersectionFunctionDescriptor(&v33, v26, v28);
    *v17 = v23;
    *(v17 + 1) = v25;
    *(v17 + 2) = 0;
    *(v17 + 3) = v6;
    v17[32] = v29;
    *(v17 + 33) = 0;
    *(v17 + 9) = 0;

    v18 = *(&v34 + 1);
    *v12 = v35;
    *(v12 + 8) = BYTE8(v35);
    *(v34 + 15) |= 8u;
  }

  else
  {
    v18 = 0;
  }

  s();
  v31 = v30;
  v32 = *v30;
  *v30 = v18;
  (*(*(a1 + 48) + 16))();
  *v31 = v32;
}

- (id)newIntersectionFunctionWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  baseObject = self->_baseObject;
  v8 = unwrapMTLFunctionDescriptor(v6);
  v9 = [(MTLLibrarySPI *)baseObject newIntersectionFunctionWithDescriptor:v8 error:a4];

  v36 = 0;
  if (v9 && [(CaptureMTLDevice *)self->_captureDevice newCaptureFunction:&v36 associatedWithBaseFunction:v9 captureLibrary:self])
  {
    v10 = self->_baseObject;
    v11 = [v6 name];
    v12 = [(MTLLibrarySPI *)v10 newFunctionWithName:v11];

    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    traceContext = self->_traceContext;
    v33 = traceContext;
    *&v34 = 0;
    *(&v34 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
    s();
    v15 = v14;
    v16 = *v14;
    *v14 = v17;
    *&v35 = v16;
    BYTE8(v35) = *(v14 + 8);
    *(&v35 + 9) = 16400;
    *(&v35 + 11) = 0;
    HIBYTE(v35) = 0;
    GTTraceEncoder_setStream(&v33, [v36 traceStream]);
    v18 = v34;
    *(v34 + 8) = -15550;
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
    SaveMTLFunctionInfo(&v33, v9, v12, self->_baseObject);
    v23 = [(CaptureMTLLibrary *)self traceStream];
    if (v23)
    {
      var0 = v23->var0;
    }

    else
    {
      var0 = 0;
    }

    v25 = [v36 traceStream];
    if (v25)
    {
      v26 = *v25;
      if (a4)
      {
LABEL_11:
        v27 = *a4;
LABEL_14:
        v28 = [v12 functionConstantsDictionary];
        v29 = SaveMTLIntersectionFunctionDescriptor(&v33, v6, v28);
        *v20 = var0;
        *(v20 + 1) = v26;
        *(v20 + 2) = v27;
        v20[24] = v29;
        *(v20 + 25) = 0;
        *(v20 + 7) = 0;

        v30 = v34;
        *v15 = v35;
        *(v15 + 8) = BYTE8(v35);
        *(v30 + 15) |= 8u;

        goto LABEL_15;
      }
    }

    else
    {
      v26 = 0;
      if (a4)
      {
        goto LABEL_11;
      }
    }

    v27 = 0;
    goto LABEL_14;
  }

LABEL_15:
  v31 = v36;

  return v31;
}

- (void)newFunctionWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  baseObject = v8->_baseObject;
  v10 = unwrapMTLFunctionDescriptor(v6);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __65__CaptureMTLLibrary_newFunctionWithDescriptor_completionHandler___block_invoke;
  v14[3] = &unk_2F1B70;
  v14[4] = v8;
  v15 = v8;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v8;
  [(MTLLibrarySPI *)baseObject newFunctionWithDescriptor:v10 completionHandler:v14];
}

void __65__CaptureMTLLibrary_newFunctionWithDescriptor_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v54 = 0;
  if (v5)
  {
    [*(*(a1 + 32) + 16) newCaptureFunction:&v54 associatedWithBaseFunction:v5 captureLibrary:*(a1 + 40)];
    s();
    v8 = v7;
    v50 = v6;
    if (v9)
    {
      v52 = 0uLL;
      v53 = 0uLL;
      v51 = 0uLL;
      v10 = *(*(a1 + 32) + 32);
      v51 = v10;
      *&v52 = 0;
      *(&v52 + 1) = atomic_fetch_add((v10 + 80), 1uLL);
      v11 = *v7;
      *v7 = *(&v52 + 1);
      *&v53 = v11;
      BYTE8(v53) = *(v7 + 8);
      *(&v53 + 9) = 16400;
      *(&v53 + 11) = 0;
      HIBYTE(v53) = 0;
      GTTraceEncoder_setStream(&v51, [v54 traceStream]);
      v12 = v52;
      *(v52 + 8) = -15609;
      v13 = BYTE9(v53);
      if (BYTE9(v53) > 0x20uLL)
      {
        v22 = *(*(&v51 + 1) + 24);
        v23 = BYTE10(v53);
        ++BYTE10(v53);
        v14 = GTTraceMemPool_allocateBytes(v22, *(&v52 + 1), v23 | 0x2000000000) + 16;
        v13 = v23;
      }

      else
      {
        v14 = (v12 + BYTE9(v53));
        BYTE9(v53) += 32;
      }

      *(v12 + 13) = v13;
      v24 = *(*(a1 + 32) + 8);
      v25 = [*(a1 + 48) name];
      v26 = [v24 newFunctionWithName:v25];

      v27 = [*(a1 + 32) baseObject];
      SaveMTLFunctionInfo(&v51, v5, v26, v27);

      v28 = [*(a1 + 32) traceStream];
      if (v28)
      {
        v29 = *v28;
      }

      else
      {
        v29 = 0;
      }

      v37 = [v54 traceStream];
      if (v37)
      {
        v38 = *v37;
      }

      else
      {
        v38 = 0;
      }

      v42 = *(a1 + 48);
      v43 = [v26 functionConstantsDictionary];
      v44 = SaveMTLFunctionDescriptor(&v51, v42, v43);
      *v14 = v29;
      *(v14 + 1) = v38;
      *(v14 + 2) = 0;
      v14[24] = v44;
      *(v14 + 25) = 0;
      *(v14 + 7) = 0;

      v16 = *(&v52 + 1);
      *v8 = v53;
      *(v8 + 8) = BYTE8(v53);
      *(v52 + 15) |= 8u;
    }

    else
    {
      v52 = 0uLL;
      v53 = 0uLL;
      v51 = 0uLL;
      v17 = *(*(a1 + 32) + 32);
      v51 = v17;
      *&v52 = 0;
      *(&v52 + 1) = atomic_fetch_add((v17 + 80), 1uLL);
      v18 = *v7;
      *v7 = *(&v52 + 1);
      *&v53 = v18;
      BYTE8(v53) = *(v7 + 8);
      *(&v53 + 9) = 16400;
      *(&v53 + 11) = 0;
      HIBYTE(v53) = 0;
      GTTraceEncoder_setStream(&v51, [v54 traceStream]);
      v19 = v52;
      *(v52 + 8) = -10157;
      v20 = BYTE9(v53);
      if (BYTE9(v53) > 0x28uLL)
      {
        v30 = *(*(&v51 + 1) + 24);
        v31 = BYTE10(v53);
        ++BYTE10(v53);
        v21 = GTTraceMemPool_allocateBytes(v30, *(&v52 + 1), v31 | 0x1800000000) + 16;
        v20 = v31;
      }

      else
      {
        v21 = (v19 + BYTE9(v53));
        BYTE9(v53) += 24;
      }

      *(v19 + 13) = v20;
      v32 = *(*(a1 + 32) + 8);
      v33 = [*(a1 + 48) name];
      v34 = [v32 newFunctionWithName:v33];

      v35 = [v54 traceStream];
      if (v35)
      {
        v36 = *v35;
      }

      else
      {
        v36 = 0;
      }

      v39 = [v54 captureLibrary];
      v40 = [v39 traceStream];
      if (v40)
      {
        v41 = *v40;
      }

      else
      {
        v41 = 0;
      }

      v45 = *(a1 + 48);
      v46 = [v34 functionConstantsDictionary];
      v47 = SaveMTLFunctionDescriptor(&v51, v45, v46);
      *v21 = v36;
      *(v21 + 1) = v41;
      v21[16] = v47;
      *(v21 + 17) = 0;
      *(v21 + 5) = 0;

      v48 = v52;
      *v8 = v53;
      *(v8 + 8) = BYTE8(v53);
      *(v48 + 15) |= 8u;

      v16 = 0;
    }

    v6 = v50;
  }

  else
  {
    s();
    v8 = v15;
    v16 = 0;
  }

  v49 = *v8;
  *v8 = v16;
  (*(*(a1 + 56) + 16))();
  *v8 = v49;
}

- (id)newFunctionWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  baseObject = self->_baseObject;
  v8 = unwrapMTLFunctionDescriptor(v6);
  v9 = [(MTLLibrarySPI *)baseObject newFunctionWithDescriptor:v8 error:a4];

  v53 = 0;
  if (v9)
  {
    [(CaptureMTLDevice *)self->_captureDevice newCaptureFunction:&v53 associatedWithBaseFunction:v9 captureLibrary:self];
    s();
    v11 = v10;
    if (v12)
    {
      v51 = 0uLL;
      v52 = 0uLL;
      v50 = 0uLL;
      traceContext = self->_traceContext;
      v50 = traceContext;
      *&v51 = 0;
      *(&v51 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
      v14 = *v10;
      *v10 = *(&v51 + 1);
      *&v52 = v14;
      BYTE8(v52) = *(v10 + 8);
      *(&v52 + 9) = 16400;
      *(&v52 + 11) = 0;
      HIBYTE(v52) = 0;
      GTTraceEncoder_setStream(&v50, [v53 traceStream]);
      v15 = v51;
      *(v51 + 8) = -15608;
      v16 = BYTE9(v52);
      if (BYTE9(v52) > 0x20uLL)
      {
        v23 = *(*(&v50 + 1) + 24);
        v24 = BYTE10(v52);
        ++BYTE10(v52);
        v17 = GTTraceMemPool_allocateBytes(v23, *(&v51 + 1), v24 | 0x2000000000) + 16;
        v16 = v24;
      }

      else
      {
        v17 = (v15 + BYTE9(v52));
        BYTE9(v52) += 32;
      }

      *(v15 + 13) = v16;
      v25 = self->_baseObject;
      v26 = [v6 name];
      v27 = [(MTLLibrarySPI *)v25 newFunctionWithName:v26];

      SaveMTLFunctionInfo(&v50, v9, v27, self->_baseObject);
      v28 = [(CaptureMTLLibrary *)self traceStream];
      if (v28)
      {
        var0 = v28->var0;
      }

      else
      {
        var0 = 0;
      }

      v37 = [v53 traceStream];
      if (v37)
      {
        v38 = *v37;
        if (!a4)
        {
LABEL_17:
          v39 = [v27 functionConstantsDictionary];
          v40 = SaveMTLFunctionDescriptor(&v50, v6, v39);
          *v17 = var0;
          *(v17 + 1) = v38;
          *(v17 + 2) = a4;
          v17[24] = v40;
          *(v17 + 25) = 0;
          *(v17 + 7) = 0;

          v41 = v51;
          *v11 = v52;
          *(v11 + 8) = BYTE8(v52);
          *(v41 + 15) |= 8u;

          goto LABEL_25;
        }
      }

      else
      {
        v38 = 0;
        if (!a4)
        {
          goto LABEL_17;
        }
      }

      a4 = *a4;
      goto LABEL_17;
    }

    v51 = 0uLL;
    v52 = 0uLL;
    v50 = 0uLL;
    v18 = self->_traceContext;
    v50 = v18;
    *&v51 = 0;
    *(&v51 + 1) = atomic_fetch_add(&v18->var3, 1uLL);
    v19 = *v10;
    *v10 = *(&v51 + 1);
    *&v52 = v19;
    BYTE8(v52) = *(v10 + 8);
    *(&v52 + 9) = 16400;
    *(&v52 + 11) = 0;
    HIBYTE(v52) = 0;
    GTTraceEncoder_setStream(&v50, [v53 traceStream]);
    v20 = v51;
    *(v51 + 8) = -10157;
    v21 = BYTE9(v52);
    if (BYTE9(v52) > 0x28uLL)
    {
      v30 = *(*(&v50 + 1) + 24);
      v31 = BYTE10(v52);
      ++BYTE10(v52);
      v22 = GTTraceMemPool_allocateBytes(v30, *(&v51 + 1), v31 | 0x1800000000) + 16;
      v21 = v31;
    }

    else
    {
      v22 = (v20 + BYTE9(v52));
      BYTE9(v52) += 24;
    }

    *(v20 + 13) = v21;
    v32 = self->_baseObject;
    v33 = [v6 name];
    v34 = [(MTLLibrarySPI *)v32 newFunctionWithName:v33];

    v35 = [v53 traceStream];
    if (v35)
    {
      v36 = *v35;
    }

    else
    {
      v36 = 0;
    }

    v42 = [v53 captureLibrary];
    v43 = [v42 traceStream];
    if (v43)
    {
      v44 = *v43;
    }

    else
    {
      v44 = 0;
    }

    v45 = [v34 functionConstantsDictionary];
    v46 = SaveMTLFunctionDescriptor(&v50, v6, v45);
    *v22 = v36;
    *(v22 + 1) = v44;
    v22[16] = v46;
    *(v22 + 17) = 0;
    *(v22 + 5) = 0;

    v47 = v51;
    *v11 = v52;
    *(v11 + 8) = BYTE8(v52);
    *(v47 + 15) |= 8u;
  }

LABEL_25:
  v48 = v53;

  return v48;
}

- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = [a3 copy];
  v14 = [v12 copy];

  v15 = self;
  baseObject = v15->_baseObject;
  v17 = [v10 baseObject];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __90__CaptureMTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler___block_invoke;
  v23[3] = &unk_2F1B48;
  v23[4] = v15;
  v24 = v15;
  v25 = v13;
  v26 = v14;
  v27 = v10;
  v28 = v11;
  v18 = v11;
  v19 = v10;
  v20 = v14;
  v21 = v13;
  v22 = v15;
  [(MTLLibrarySPI *)baseObject newFunctionWithName:v21 constantValues:v20 pipelineLibrary:v17 completionHandler:v23];
}

void __90__CaptureMTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v36 = 0;
  if (v5 && [*(*(a1 + 32) + 16) newCaptureFunction:&v36 associatedWithBaseFunction:v5 captureLibrary:*(a1 + 40)])
  {
    v7 = [*(a1 + 32) baseObject];
    v8 = [v7 newFunctionWithName:*(a1 + 48)];

    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v9 = [*(a1 + 40) traceContext];
    [v36 traceStream];
    GTTraceContext_pushEncoderWithStream(v9, &v33);
    v10 = v34;
    *(v34 + 8) = -16081;
    v11 = BYTE9(v35);
    if (BYTE9(v35) > 0x18uLL)
    {
      v14 = *(*(&v33 + 1) + 24);
      v15 = BYTE10(v35);
      ++BYTE10(v35);
      v12 = GTTraceMemPool_allocateBytes(v14, *(&v34 + 1), v15 | 0x2800000000) + 16;
      v11 = v15;
    }

    else
    {
      v12 = (v10 + BYTE9(v35));
      BYTE9(v35) += 40;
    }

    *(v10 + 13) = v11;
    v16 = [*(a1 + 32) baseObject];
    SaveMTLFunctionInfo(&v33, v5, v8, v16);

    v17 = [*(a1 + 40) traceStream];
    if (v17)
    {
      v32 = *v17;
    }

    else
    {
      v32 = 0;
    }

    v18 = [v36 traceStream];
    if (v18)
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [*(a1 + 64) traceStream];
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    if ([*(a1 + 48) UTF8String])
    {
      v22 = [*(a1 + 48) UTF8String];
      v23 = strlen([*(a1 + 48) UTF8String]);
      v24 = GTTraceEncoder_storeBytes(&v33, v22, v23 + 1);
    }

    else
    {
      v24 = 0;
    }

    v25 = [v8 functionConstantsDictionary];
    v26 = SaveMTLFunctionConstantValues(&v33, v25, *(a1 + 56));
    *v12 = v32;
    *(v12 + 1) = v19;
    *(v12 + 2) = v21;
    *(v12 + 3) = 0;
    v12[32] = v24;
    v12[33] = v26;
    *(v12 + 34) = 0;
    *(v12 + 19) = 0;

    v13 = *(&v34 + 1);
    [*(a1 + 40) traceContext];
    s();
    *v27 = v28;
    *(v27 + 8) = BYTE8(v35);
    *(v34 + 15) |= 8u;
  }

  else
  {
    v13 = 0;
  }

  s();
  v30 = v29;
  v31 = *v29;
  *v29 = v13;
  (*(*(a1 + 72) + 16))();
  *v30 = v31;
}

- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  baseObject = self->_baseObject;
  v14 = [v12 baseObject];
  v15 = [(MTLLibrarySPI *)baseObject newFunctionWithName:v10 constantValues:v11 pipelineLibrary:v14 error:a6];

  v42 = 0;
  if (!v15 || ![(CaptureMTLDevice *)self->_captureDevice newCaptureFunction:&v42 associatedWithBaseFunction:v15 captureLibrary:self])
  {
    goto LABEL_21;
  }

  v16 = [(MTLLibrarySPI *)self->_baseObject newFunctionWithName:v10];
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  traceContext = self->_traceContext;
  [v42 traceStream];
  GTTraceContext_pushEncoderWithStream(traceContext, &v39);
  v18 = v40;
  *(v40 + 8) = -16082;
  v19 = BYTE9(v41);
  if (BYTE9(v41) > 0x18uLL)
  {
    v21 = *(*(&v39 + 1) + 24);
    v22 = BYTE10(v41);
    ++BYTE10(v41);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v40 + 1), v22 | 0x2800000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v41));
    BYTE9(v41) += 40;
  }

  *(v18 + 13) = v19;
  SaveMTLFunctionInfo(&v39, v15, v16, self->_baseObject);
  v23 = [(CaptureMTLLibrary *)self traceStream];
  if (v23)
  {
    var0 = v23->var0;
  }

  else
  {
    var0 = 0;
  }

  v24 = [v42 traceStream];
  if (v24)
  {
    v25 = [v12 traceStream];
  }

  else
  {
    v25 = [v12 traceStream];
  }

  if (!v25)
  {
    v26 = 0;
    if (a6)
    {
      goto LABEL_14;
    }

LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v26 = *v25;
  if (!a6)
  {
    goto LABEL_16;
  }

LABEL_14:
  v27 = *a6;
LABEL_17:
  if ([v10 UTF8String])
  {
    v28 = [v10 UTF8String];
    v29 = strlen([v10 UTF8String]);
    v30 = GTTraceEncoder_storeBytes(&v39, v28, v29 + 1);
  }

  else
  {
    v30 = 0;
  }

  v31 = [v16 functionConstantsDictionary];
  v32 = SaveMTLFunctionConstantValues(&v39, v31, v11);
  *v20 = var0;
  *(v20 + 1) = v37;
  *(v20 + 2) = v26;
  *(v20 + 3) = v27;
  v20[32] = v30;
  v20[33] = v32;
  *(v20 + 34) = 0;
  *(v20 + 19) = 0;

  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v41);
  *(v40 + 15) |= 8u;

LABEL_21:
  v35 = v42;

  return v35;
}

- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MTLLibrarySPI *)self->_baseObject newFunctionWithName:v8 constantValues:v9 error:a5];
  v35 = 0;
  if (!v10 || ![(CaptureMTLDevice *)self->_captureDevice newCaptureFunction:&v35 associatedWithBaseFunction:v10 captureLibrary:self])
  {
    goto LABEL_18;
  }

  v11 = [(MTLLibrarySPI *)self->_baseObject newFunctionWithName:v8];
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  traceContext = self->_traceContext;
  [v35 traceStream];
  GTTraceContext_pushEncoderWithStream(traceContext, &v32);
  v13 = v33;
  *(v33 + 8) = -16107;
  v14 = BYTE9(v34);
  if (BYTE9(v34) > 0x20uLL)
  {
    v16 = *(*(&v32 + 1) + 24);
    v17 = BYTE10(v34);
    ++BYTE10(v34);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v33 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v34));
    BYTE9(v34) += 32;
  }

  *(v13 + 13) = v14;
  SaveMTLFunctionInfo(&v32, v10, v11, self->_baseObject);
  v18 = [(CaptureMTLLibrary *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v35 traceStream];
  if (!v20)
  {
    v21 = 0;
    if (a5)
    {
      goto LABEL_11;
    }

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  v21 = *v20;
  if (!a5)
  {
    goto LABEL_13;
  }

LABEL_11:
  v22 = *a5;
LABEL_14:
  if ([v8 UTF8String])
  {
    v23 = [v8 UTF8String];
    v24 = strlen([v8 UTF8String]);
    v25 = GTTraceEncoder_storeBytes(&v32, v23, v24 + 1);
  }

  else
  {
    v25 = 0;
  }

  v26 = [v11 functionConstantsDictionary];
  v27 = SaveMTLFunctionConstantValues(&v32, v26, v9);
  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = v22;
  v15[24] = v25;
  v15[25] = v27;
  *(v15 + 26) = 0;
  *(v15 + 15) = 0;

  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v34);
  *(v33 + 15) |= 8u;

LABEL_18:
  v30 = v35;

  return v30;
}

- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 copy];
  v11 = [v9 copy];

  v12 = self;
  baseObject = v12->_baseObject;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __74__CaptureMTLLibrary_newFunctionWithName_constantValues_completionHandler___block_invoke;
  v18[3] = &unk_2F1B20;
  v18[4] = v12;
  v19 = v12;
  v20 = v10;
  v21 = v11;
  v22 = v8;
  v14 = v8;
  v15 = v11;
  v16 = v10;
  v17 = v12;
  [(MTLLibrarySPI *)baseObject newFunctionWithName:v16 constantValues:v15 completionHandler:v18];
}

void __74__CaptureMTLLibrary_newFunctionWithName_constantValues_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v34 = 0;
  if (v5 && [*(*(a1 + 32) + 16) newCaptureFunction:&v34 associatedWithBaseFunction:v5 captureLibrary:*(a1 + 40)])
  {
    v7 = [*(a1 + 32) baseObject];
    v8 = [v7 newFunctionWithName:*(a1 + 48)];

    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v9 = [*(a1 + 40) traceContext];
    [v34 traceStream];
    GTTraceContext_pushEncoderWithStream(v9, &v31);
    v10 = v32;
    *(v32 + 8) = -16106;
    v11 = BYTE9(v33);
    if (BYTE9(v33) > 0x20uLL)
    {
      v14 = *(*(&v31 + 1) + 24);
      v15 = BYTE10(v33);
      ++BYTE10(v33);
      v12 = GTTraceMemPool_allocateBytes(v14, *(&v32 + 1), v15 | 0x2000000000) + 16;
      v11 = v15;
    }

    else
    {
      v12 = (v10 + BYTE9(v33));
      BYTE9(v33) += 32;
    }

    *(v10 + 13) = v11;
    v16 = [*(a1 + 32) baseObject];
    SaveMTLFunctionInfo(&v31, v5, v8, v16);

    v17 = [*(a1 + 40) traceStream];
    if (v17)
    {
      v18 = *v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [v34 traceStream];
    if (v19)
    {
      v20 = *v19;
    }

    else
    {
      v20 = 0;
    }

    if ([*(a1 + 48) UTF8String])
    {
      v21 = [*(a1 + 48) UTF8String];
      v22 = strlen([*(a1 + 48) UTF8String]);
      v23 = GTTraceEncoder_storeBytes(&v31, v21, v22 + 1);
    }

    else
    {
      v23 = 0;
    }

    v24 = [v8 functionConstantsDictionary];
    v25 = SaveMTLFunctionConstantValues(&v31, v24, *(a1 + 56));
    *v12 = v18;
    *(v12 + 1) = v20;
    *(v12 + 2) = 0;
    v12[24] = v23;
    v12[25] = v25;
    *(v12 + 26) = 0;
    *(v12 + 15) = 0;

    v13 = *(&v32 + 1);
    [*(a1 + 40) traceContext];
    s();
    *v26 = v27;
    *(v26 + 8) = BYTE8(v33);
    *(v32 + 15) |= 8u;
  }

  else
  {
    v13 = 0;
  }

  s();
  v29 = v28;
  v30 = *v28;
  *v28 = v13;
  (*(*(a1 + 64) + 16))();
  *v29 = v30;
}

- (id)newFunctionWithName:(id)a3
{
  v4 = a3;
  v5 = [(MTLLibrarySPI *)self->_baseObject newFunctionWithName:v4];
  v6 = v5;
  v27 = 0;
  if (v5)
  {
    if (![(CaptureMTLDevice *)self->_captureDevice newCaptureFunction:&v27 associatedWithBaseFunction:v5 captureLibrary:self])
    {
      goto LABEL_16;
    }

    v5 = v27;
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  [v5 traceStream];
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  v8 = v25;
  *(v25 + 8) = -16290;
  v9 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v11 = *(*(&v24 + 1) + 24);
    v12 = BYTE10(v26);
    ++BYTE10(v26);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v25 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v8 + 13) = v9;
  SaveMTLFunctionInfo(&v24, v6, 0, self->_baseObject);
  v13 = [(CaptureMTLLibrary *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  v15 = [v27 traceStream];
  if (v15)
  {
    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v4 UTF8String];
  if (v17)
  {
    v18 = [v4 UTF8String];
    v19 = strlen([v4 UTF8String]);
    LOBYTE(v17) = GTTraceEncoder_storeBytes(&v24, v18, v19 + 1);
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  v10[16] = v17;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
LABEL_16:
  v22 = v27;

  return v22;
}

- (id)newExternFunctionWithName:(id)a3
{
  v4 = a3;
  v5 = [(MTLLibrarySPI *)self->_baseObject newExternFunctionWithName:v4];
  v6 = v5;
  v27 = 0;
  if (v5)
  {
    if (![(CaptureMTLDevice *)self->_captureDevice newCaptureFunction:&v27 associatedWithBaseFunction:v5 captureLibrary:self])
    {
      goto LABEL_16;
    }

    v5 = v27;
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  [v5 traceStream];
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  v8 = v25;
  *(v25 + 8) = -16038;
  v9 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v11 = *(*(&v24 + 1) + 24);
    v12 = BYTE10(v26);
    ++BYTE10(v26);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v25 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v8 + 13) = v9;
  SaveMTLFunctionInfo(&v24, v6, 0, self->_baseObject);
  v13 = [(CaptureMTLLibrary *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  v15 = [v27 traceStream];
  if (v15)
  {
    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v4 UTF8String];
  if (v17)
  {
    v18 = [v4 UTF8String];
    v19 = strlen([v4 UTF8String]);
    LOBYTE(v17) = GTTraceEncoder_storeBytes(&v24, v18, v19 + 1);
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  v10[16] = v17;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
LABEL_16:
  v22 = v27;

  return v22;
}

- (void)dealloc
{
  baseObject = self->_baseObject;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ReleaseDebugObject(self->_traceContext, self->_traceStream, self->_baseObject);
  }

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  v5 = v16;
  *(v16 + 8) = -16291;
  v6 = BYTE9(v17);
  if (BYTE9(v17) > 0x38uLL)
  {
    v8 = *(*(&v15 + 1) + 24);
    v9 = BYTE10(v17);
    ++BYTE10(v17);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v16 + 1), v9 | 0x800000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v17));
    BYTE9(v17) += 8;
  }

  *(v5 + 13) = v6;
  v10 = [(CaptureMTLLibrary *)self traceStream];
  if (v10)
  {
    var0 = v10->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v14.receiver = self;
  v14.super_class = CaptureMTLLibrary;
  [(CaptureMTLLibrary *)&v14 dealloc];
}

- (CaptureMTLLibrary)initWithBaseObject:(id)a3 captureCompiler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = CaptureMTLLibrary;
  v9 = [(CaptureMTLLibrary *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    objc_storeStrong(&v10->_captureCompiler, a4);
    v11 = [v8 captureDevice];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = v11;

    v13 = [(CaptureMTLDevice *)v10->_captureDevice traceContext];
    v10->_traceContext = v13;
    v14 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v13, v14, v10);

    captureFunctions = v10->_captureFunctions;
    v10->_captureFunctions = 0;
  }

  return v10;
}

- (CaptureMTLLibrary)initWithBaseObject:(id)a3 captureDevice:(id)a4 captureFunctions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = CaptureMTLLibrary;
  v12 = [(CaptureMTLLibrary *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, a3);
    objc_storeStrong(&v13->_captureDevice, a4);
    v14 = [v10 traceContext];
    v13->_traceContext = v14;
    v15 = DEVICEOBJECT(v9);
    v13->_traceStream = GTTraceContext_openStream(v14, v15, v13);

    v16 = [v11 copy];
    captureFunctions = v13->_captureFunctions;
    v13->_captureFunctions = v16;
  }

  return v13;
}

- (CaptureMTLLibrary)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CaptureMTLLibrary;
  v9 = [(CaptureMTLLibrary *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    objc_storeStrong(&v10->_captureDevice, a4);
    v11 = [v8 traceContext];
    v10->_traceContext = v11;
    v12 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v11, v12, v10);

    captureFunctions = v10->_captureFunctions;
    v10->_captureFunctions = 0;
  }

  return v10;
}

@end