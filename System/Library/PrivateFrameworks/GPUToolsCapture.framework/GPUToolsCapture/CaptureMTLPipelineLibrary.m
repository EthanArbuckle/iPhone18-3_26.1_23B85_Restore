@interface CaptureMTLPipelineLibrary
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLPipelineLibrary)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (NSString)description;
- (id)newComputePipelineStateWithName:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newRenderPipelineStateWithName:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setDisableRunTimeCompilation:(BOOL)a3;
- (void)setLabel:(id)a3;
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
  v9 = [(CaptureMTLPipelineLibrary *)self traceStream];
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
  v13.super_class = CaptureMTLPipelineLibrary;
  [(CaptureMTLPipelineLibrary *)&v13 dealloc];
}

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTLPipelineLibrarySPI *)baseObject conformsToProtocol:v4];

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

- (void)setLabel:(id)a3
{
  v4 = a3;
  [(MTLPipelineLibrarySPI *)self->_baseObject setLabel:v4];
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
  v11 = [(CaptureMTLPipelineLibrary *)self traceStream];
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

- (void)setDisableRunTimeCompilation:(BOOL)a3
{
  v3 = a3;
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
  v11 = [(CaptureMTLPipelineLibrary *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 2) = v3;
  *(v8 + 3) = 0;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (id)newRenderPipelineStateWithName:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v10 = a3;
  baseObject = self->_baseObject;
  if (self->_isBaseObjectDebugDevice)
  {
    v12 = a4;
  }

  else
  {
    v12 = 65539;
  }

  v53 = 0;
  v13 = [(MTLPipelineLibrarySPI *)baseObject newRenderPipelineStateWithName:v10 options:v12 reflection:&v53 error:a6];
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
  v48 = a4;
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

  v26 = [(CaptureMTLPipelineLibrary *)self traceStream];
  if (v26)
  {
    var0 = v26->var0;
  }

  else
  {
    var0 = 0;
  }

  v27 = [(CaptureMTLRenderPipelineState *)v15 traceStream];
  if (v27)
  {
    v28 = v27->var0;
    if (a6)
    {
LABEL_17:
      v29 = *a6;
      goto LABEL_20;
    }
  }

  else
  {
    v28 = 0;
    if (a6)
    {
      goto LABEL_17;
    }
  }

  v29 = 0;
LABEL_20:
  v45 = a6;
  v30 = [v10 UTF8String];
  if (v30)
  {
    v31 = v15;
    v32 = v13;
    v33 = v14;
    v34 = a5;
    v35 = [v10 UTF8String];
    v36 = strlen([v10 UTF8String]);
    v37 = v35;
    a5 = v34;
    v14 = v33;
    v13 = v32;
    v15 = v31;
    LOBYTE(v30) = GTTraceEncoder_storeBytes(&v50, v37, v36 + 1);
  }

  *v22 = var0;
  *(v22 + 1) = v28;
  *(v22 + 2) = v48;
  *(v22 + 3) = v29;
  v22[32] = v30;
  *(v22 + 33) = 0;
  *(v22 + 9) = 0;
  if (v48 && a5)
  {
    if ((~v48 & 3) != 0 && !self->_isBaseObjectDebugDevice)
    {
      v38 = DEVICEOBJECT(self->_baseObject);
      v49 = v14;
      v39 = [v38 newRenderPipelineStateWithName:v10 options:v48 reflection:&v49 error:v45];
      v40 = v49;
      v41 = v14;
      v14 = v40;
    }

    v42 = v14;
    *a5 = v14;
  }

  v43 = v51;
  *v47 = v52;
  *(v47 + 8) = BYTE8(v52);
  *(v43 + 15) |= 8u;

  return v15;
}

- (id)newComputePipelineStateWithName:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v9 = a3;
  baseObject = self->_baseObject;
  v48 = a4;
  if (self->_isBaseObjectDebugDevice)
  {
    v11 = a4;
  }

  else
  {
    v11 = 65539;
  }

  v54 = 0;
  v12 = [(MTLPipelineLibrarySPI *)baseObject newComputePipelineStateWithName:v9 options:v11 reflection:&v54 error:a6];
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
    v24 = a6;
    v25 = v14;
    v26 = BYTE10(v53);
    ++BYTE10(v53);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v52 + 1), v26 | 0x2800000000) + 16;
    v21 = v26;
    v14 = v25;
    a6 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v53));
    BYTE9(v53) += 40;
  }

  *(v20 + 13) = v21;
  SaveMTLComputePipelineReflection(&v51, v12, v13, 0, 0);
  v27 = [(CaptureMTLPipelineLibrary *)self traceStream];
  if (v27)
  {
    var0 = v27->var0;
  }

  else
  {
    var0 = 0;
  }

  v29 = [(CaptureMTLComputePipelineState *)v14 traceStream];
  if (v29)
  {
    v47 = v29->var0;
    if (a6)
    {
LABEL_15:
      v30 = *a6;
      goto LABEL_18;
    }
  }

  else
  {
    v47 = 0;
    if (a6)
    {
      goto LABEL_15;
    }
  }

  v30 = 0;
LABEL_18:
  v46 = a6;
  v31 = [v9 UTF8String];
  if (v31)
  {
    v32 = v14;
    v33 = v13;
    v34 = v12;
    v35 = var0;
    v36 = [v9 UTF8String];
    v37 = strlen([v9 UTF8String]);
    v38 = v36;
    var0 = v35;
    v12 = v34;
    v13 = v33;
    v14 = v32;
    LOBYTE(v31) = GTTraceEncoder_storeBytes(&v51, v38, v37 + 1);
  }

  *v22 = var0;
  *(v22 + 1) = v47;
  *(v22 + 2) = v48;
  *(v22 + 3) = v30;
  v22[32] = v31;
  *(v22 + 33) = 0;
  *(v22 + 9) = 0;
  if (v48 && a5)
  {
    if ((~v48 & 3) != 0 && !self->_isBaseObjectDebugDevice)
    {
      v39 = DEVICEOBJECT(self->_baseObject);
      v50 = v13;
      v40 = [v39 newComputePipelineStateWithName:v9 options:v48 reflection:&v50 error:v46];
      v41 = v50;
      v42 = v13;
      v13 = v41;
    }

    v43 = v13;
    *a5 = v13;
  }

  v44 = v52;
  *v17 = v53;
  *(v17 + 8) = BYTE8(v53);
  *(v44 + 15) |= 8u;

  return v14;
}

- (CaptureMTLPipelineLibrary)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CaptureMTLPipelineLibrary;
  v9 = [(CaptureMTLPipelineLibrary *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    objc_storeStrong(&v10->_captureDevice, a4);
    v11 = [v8 traceContext];
    v10->_traceContext = v11;
    v12 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v11, v12, v10);

    NSClassFromString(@"MTLDebugPipelineLibrary");
    v10->_isBaseObjectDebugDevice = objc_opt_isKindOfClass() & 1;
  }

  return v10;
}

@end