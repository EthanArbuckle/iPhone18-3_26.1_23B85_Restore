@interface CaptureMTLFunction
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLFunction)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (CaptureMTLFunction)initWithBaseObject:(id)a3 captureLibrary:(id)a4;
- (NSString)description;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 pipelineLibrary:(id)a4;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4 binaryArchives:(id)a5;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4 pipelineLibrary:(id)a5;
- (id)reflectionWithOptions:(unint64_t)a3 binaryArchives:(id)a4;
- (id)reflectionWithOptions:(unint64_t)a3 pipelineLibrary:(id)a4;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setLabel:(id)a3;
- (void)setRelocations:(id)a3;
- (void)touch;
@end

@implementation CaptureMTLFunction

- (id)reflectionWithOptions:(unint64_t)a3 pipelineLibrary:(id)a4
{
  baseObject = self->_baseObject;
  v6 = [a4 baseObject];
  v7 = [(MTLFunctionSPI *)baseObject reflectionWithOptions:a3 pipelineLibrary:v6];

  return v7;
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 pipelineLibrary:(id)a4
{
  v6 = a4;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  traceContext = self->_traceContext;
  v31 = traceContext;
  *&v32 = 0;
  *(&v32 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v33 = v10;
  BYTE8(v33) = *(v8 + 8);
  *(&v33 + 9) = 16400;
  *(&v33 + 11) = 0;
  HIBYTE(v33) = 0;
  baseObject = self->_baseObject;
  v13 = [v6 baseObject];
  v14 = [(MTLFunctionSPI *)baseObject newArgumentEncoderWithBufferIndex:a3 pipelineLibrary:v13];

  if (v14)
  {
    v15 = [CaptureMTLArgumentEncoder alloc];
    v16 = [(CaptureMTLFunction *)self device];
    v17 = [(CaptureMTLArgumentEncoder *)v15 initWithBaseObject:v14 captureDevice:v16];
  }

  else
  {
    v17 = 0;
  }

  GTTraceEncoder_setStream(&v31, [(CaptureMTLArgumentEncoder *)v17 traceStream]);
  v18 = v32;
  *(v32 + 8) = -15715;
  v19 = BYTE9(v33);
  if (BYTE9(v33) > 0x20uLL)
  {
    v21 = *(*(&v31 + 1) + 24);
    v22 = BYTE10(v33);
    ++BYTE10(v33);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v32 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v33));
    BYTE9(v33) += 32;
  }

  *(v18 + 13) = v19;
  v23 = [(CaptureMTLFunction *)self traceStream];
  if (v23)
  {
    var0 = v23->var0;
  }

  else
  {
    var0 = 0;
  }

  v25 = [(CaptureMTLArgumentEncoder *)v17 traceStream];
  if (v25)
  {
    v26 = v25->var0;
  }

  else
  {
    v26 = 0;
  }

  v27 = [v6 traceStream];
  if (v27)
  {
    v28 = *v27;
  }

  else
  {
    v28 = 0;
  }

  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = a3;
  *(v20 + 3) = v28;
  v29 = v32;
  *v9 = v33;
  *(v9 + 8) = BYTE8(v33);
  *(v29 + 15) |= 8u;

  return v17;
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceContext = self->_traceContext;
  v25 = traceContext;
  *&v26 = 0;
  *(&v26 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v27 = v8;
  BYTE8(v27) = *(v6 + 8);
  *(&v27 + 9) = 16400;
  *(&v27 + 11) = 0;
  HIBYTE(v27) = 0;
  v10 = [(MTLFunctionSPI *)self->_baseObject newArgumentEncoderWithBufferIndex:?];
  if (v10)
  {
    v11 = [CaptureMTLArgumentEncoder alloc];
    v12 = [(CaptureMTLFunction *)self device];
    v13 = [(CaptureMTLArgumentEncoder *)v11 initWithBaseObject:v10 captureDevice:v12];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v25, [(CaptureMTLArgumentEncoder *)v13 traceStream]);
  v14 = v26;
  *(v26 + 8) = -16052;
  v15 = BYTE9(v27);
  if (BYTE9(v27) > 0x28uLL)
  {
    v17 = *(*(&v25 + 1) + 24);
    v18 = BYTE10(v27);
    ++BYTE10(v27);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v26 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v27));
    BYTE9(v27) += 24;
  }

  *(v14 + 13) = v15;
  v19 = [(CaptureMTLFunction *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v21 = [(CaptureMTLArgumentEncoder *)v13 traceStream];
  if (v21)
  {
    v22 = v21->var0;
  }

  else
  {
    v22 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = a3;
  v23 = v26;
  *v7 = v27;
  *(v7 + 8) = BYTE8(v27);
  *(v23 + 15) |= 8u;

  return v13;
}

- (void)setRelocations:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLFunction_setRelocations", "Relocations", 0, 0);
  [(MTLFunctionSPI *)self->_baseObject setRelocations:v4];
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLFunctionSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -16123;
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
  v11 = [(CaptureMTLFunction *)self traceStream];
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
  v5 = [(MTLFunctionSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLFunction;
  v3 = [(CaptureMTLFunction *)&v7 description];
  v4 = [(MTLFunctionSPI *)self->_baseObject description];
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

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4 binaryArchives:(id)a5
{
  v8 = a5;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_reflection_binaryArchives", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapNSArray(v8);

  v11 = [(MTLFunctionSPI *)baseObject newArgumentEncoderWithBufferIndex:a3 reflection:a4 binaryArchives:v10];
  if (v11)
  {
    v12 = [CaptureMTLArgumentEncoder alloc];
    v13 = [(CaptureMTLFunction *)self device];
    v14 = [(CaptureMTLArgumentEncoder *)v12 initWithBaseObject:v11 captureDevice:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)reflectionWithOptions:(unint64_t)a3 binaryArchives:(id)a4
{
  v6 = a4;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLFunction_reflectionWithOptions_binaryArchives", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v8 = unwrapNSArray(v6);

  v9 = [(MTLFunctionSPI *)baseObject reflectionWithOptions:a3 binaryArchives:v8];

  return v9;
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4 pipelineLibrary:(id)a5
{
  baseObject = self->_baseObject;
  v9 = a5;
  v10 = [v9 baseObject];
  v11 = [(MTLFunctionSPI *)baseObject newArgumentEncoderWithBufferIndex:a3 reflection:a4 pipelineLibrary:v10];

  if (v11)
  {
    v12 = [CaptureMTLArgumentEncoder alloc];
    v13 = [(CaptureMTLFunction *)self device];
    v14 = [(CaptureMTLArgumentEncoder *)v12 initWithBaseObject:v11 captureDevice:v13];
  }

  else
  {
    v14 = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceContext = self->_traceContext;
  v33 = traceContext;
  *&v34 = 0;
  *(&v34 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v17 = v16;
  v18 = *v16;
  *v16 = v19;
  *&v35 = v18;
  BYTE8(v35) = *(v16 + 8);
  *(&v35 + 9) = 16400;
  *(&v35 + 11) = 0;
  HIBYTE(v35) = 0;
  GTTraceEncoder_setStream(&v33, [(CaptureMTLArgumentEncoder *)v14 traceStream]);
  v20 = v34;
  *(v34 + 8) = -15714;
  v21 = BYTE9(v35);
  if (BYTE9(v35) > 0x18uLL)
  {
    v23 = *(*(&v33 + 1) + 24);
    v24 = BYTE10(v35);
    ++BYTE10(v35);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v34 + 1), v24 | 0x2800000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v35));
    BYTE9(v35) += 40;
  }

  *(v20 + 13) = v21;
  v25 = [(CaptureMTLFunction *)self traceStream];
  if (v25)
  {
    var0 = v25->var0;
  }

  else
  {
    var0 = 0;
  }

  v27 = [(CaptureMTLArgumentEncoder *)v14 traceStream];
  if (v27)
  {
    v28 = v27->var0;
  }

  else
  {
    v28 = 0;
  }

  v29 = [v9 traceStream];

  if (v29)
  {
    v30 = *v29;
  }

  else
  {
    v30 = 0;
  }

  *v22 = var0;
  *(v22 + 1) = v28;
  *(v22 + 2) = a3;
  *(v22 + 3) = v30;
  *(v22 + 4) = 0;
  v31 = v34;
  *v17 = v35;
  *(v17 + 8) = BYTE8(v35);
  *(v31 + 15) |= 8u;

  return v14;
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  v24 = traceContext;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v8 = v7;
  v9 = *v7;
  *v7 = v10;
  *&v26 = v9;
  BYTE8(v26) = *(v7 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  v11 = [MTLFunctionSPI newArgumentEncoderWithBufferIndex:"newArgumentEncoderWithBufferIndex:reflection:" reflection:?];
  if (v11)
  {
    v12 = [[CaptureMTLArgumentEncoder alloc] initWithBaseObject:v11 captureDevice:self->_captureDevice];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLArgumentEncoder *)v12 traceStream]);
  v13 = v25;
  *(v25 + 8) = -16052;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLFunction *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [(CaptureMTLArgumentEncoder *)v12 traceStream];
  if (v20)
  {
    v21 = v20->var0;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a3;
  v22 = v25;
  *v8 = v26;
  *(v8 + 8) = BYTE8(v26);
  *(v22 + 15) |= 8u;

  return v12;
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -16293;
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
  v9 = [(CaptureMTLFunction *)self traceStream];
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
  v13.super_class = CaptureMTLFunction;
  [(CaptureMTLFunction *)&v13 dealloc];
}

- (CaptureMTLFunction)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CaptureMTLFunction;
  v9 = [(CaptureMTLFunction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    objc_storeStrong(&v10->_captureDevice, a4);
    v11 = [v8 traceContext];
    v10->_traceContext = v11;
    v12 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v11, v12, v10);
  }

  return v10;
}

- (CaptureMTLFunction)initWithBaseObject:(id)a3 captureLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CaptureMTLFunction;
  v9 = [(CaptureMTLFunction *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    objc_storeStrong(&v10->_captureLibrary, a4);
    v11 = [v8 device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = v11;

    v13 = [v8 traceContext];
    v10->_traceContext = v13;
    v14 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v13, v14, v10);
  }

  return v10;
}

@end