@interface CaptureMTLDynamicLibrary
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)serializeToURL:(id)a3 error:(id *)a4;
- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)a3 captureCompiler:(id)a4;
- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)a3 captureCompiler:(id)a4 captureLibrary:(id)a5;
- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)a3 captureDevice:(id)a4 captureLibrary:(id)a5;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setLabel:(id)a3;
- (void)setRelocations:(id)a3;
- (void)touch;
@end

@implementation CaptureMTLDynamicLibrary

- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDynamicLibrary_serializeToURL_options_error", "Dynamic Libraries", 0, 0);
  LOBYTE(a5) = [(MTLDynamicLibrarySPI *)self->_baseObject serializeToURL:v8 options:a4 error:a5];

  return a5;
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15675;
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
  v9 = [(CaptureMTLDynamicLibrary *)self traceStream];
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
  v13.super_class = CaptureMTLDynamicLibrary;
  [(CaptureMTLDynamicLibrary *)&v13 dealloc];
}

- (void)setRelocations:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDynamicLibrary_setRelocations", "Relocations", 0, 0);
  [(MTLDynamicLibrarySPI *)self->_baseObject setRelocations:v4];
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLDynamicLibrarySPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -15676;
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
  v11 = [(CaptureMTLDynamicLibrary *)self traceStream];
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
  v5 = [(MTLDynamicLibrarySPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLDynamicLibrary;
  v3 = [(CaptureMTLDynamicLibrary *)&v7 description];
  v4 = [(MTLDynamicLibrarySPI *)self->_baseObject description];
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

- (BOOL)serializeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  v8 = [(MTLDynamicLibrarySPI *)self->_baseObject serializeToURL:v6 error:a4];
  v9 = v24;
  *(v24 + 8) = -15674;
  v10 = BYTE9(v25);
  if (BYTE9(v25) > 0x28uLL)
  {
    v12 = *(*(&v23 + 1) + 24);
    v13 = BYTE10(v25);
    ++BYTE10(v25);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v24 + 1), v13 | 0x1800000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v25));
    BYTE9(v25) += 24;
  }

  *(v9 + 13) = v10;
  v14 = [(CaptureMTLDynamicLibrary *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
    if (a4)
    {
LABEL_6:
      v16 = *a4;
      goto LABEL_9;
    }
  }

  else
  {
    var0 = 0;
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_9:
  v17 = [v6 fileSystemRepresentation];
  if (v17)
  {
    v18 = [v6 fileSystemRepresentation];
    v19 = strlen([v6 fileSystemRepresentation]);
    LOBYTE(v17) = GTTraceEncoder_storeBytes(&v23, v18, v19 + 1);
  }

  *v11 = var0;
  *(v11 + 1) = v16;
  *(v11 + 4) = v8;
  v11[20] = v17;
  *(v11 + 21) = 0;
  v11[23] = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;

  return v8;
}

- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)a3 captureCompiler:(id)a4 captureLibrary:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 device];
  v11 = [(CaptureMTLDynamicLibrary *)self initWithBaseObject:v9 captureDevice:v10 captureLibrary:v8];

  return v11;
}

- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)a3 captureCompiler:(id)a4
{
  v6 = a3;
  v7 = [a4 device];
  v8 = [(CaptureMTLDynamicLibrary *)self initWithBaseObject:v6 captureDevice:v7 captureLibrary:0];

  return v8;
}

- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)a3 captureDevice:(id)a4 captureLibrary:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CaptureMTLDynamicLibrary;
  v12 = [(CaptureMTLDynamicLibrary *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, a3);
    objc_storeStrong(&v13->_captureDevice, a4);
    objc_storeStrong(&v13->_captureLibrary, a5);
    v14 = [v10 traceContext];
    v13->_traceContext = v14;
    v15 = DEVICEOBJECT(v9);
    v13->_traceStream = GTTraceContext_openStream(v14, v15, v13);
  }

  return v13;
}

@end