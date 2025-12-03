@interface CaptureMTLFunction
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLFunction)initWithBaseObject:(id)object captureDevice:(id)device;
- (CaptureMTLFunction)initWithBaseObject:(id)object captureLibrary:(id)library;
- (NSString)description;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index pipelineLibrary:(id)library;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection binaryArchives:(id)archives;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection pipelineLibrary:(id)library;
- (id)reflectionWithOptions:(unint64_t)options binaryArchives:(id)archives;
- (id)reflectionWithOptions:(unint64_t)options pipelineLibrary:(id)library;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setLabel:(id)label;
- (void)setRelocations:(id)relocations;
- (void)touch;
@end

@implementation CaptureMTLFunction

- (id)reflectionWithOptions:(unint64_t)options pipelineLibrary:(id)library
{
  baseObject = self->_baseObject;
  baseObject = [library baseObject];
  v7 = [(MTLFunctionSPI *)baseObject reflectionWithOptions:options pipelineLibrary:baseObject];

  return v7;
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index pipelineLibrary:(id)library
{
  libraryCopy = library;
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
  baseObject = [libraryCopy baseObject];
  v14 = [(MTLFunctionSPI *)baseObject newArgumentEncoderWithBufferIndex:index pipelineLibrary:baseObject];

  if (v14)
  {
    v15 = [CaptureMTLArgumentEncoder alloc];
    device = [(CaptureMTLFunction *)self device];
    v17 = [(CaptureMTLArgumentEncoder *)v15 initWithBaseObject:v14 captureDevice:device];
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
  traceStream = [(CaptureMTLFunction *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLArgumentEncoder *)v17 traceStream];
  if (traceStream2)
  {
    v26 = traceStream2->var0;
  }

  else
  {
    v26 = 0;
  }

  traceStream3 = [libraryCopy traceStream];
  if (traceStream3)
  {
    v28 = *traceStream3;
  }

  else
  {
    v28 = 0;
  }

  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = index;
  *(v20 + 3) = v28;
  v29 = v32;
  *v9 = v33;
  *(v9 + 8) = BYTE8(v33);
  *(v29 + 15) |= 8u;

  return v17;
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index
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
    device = [(CaptureMTLFunction *)self device];
    v13 = [(CaptureMTLArgumentEncoder *)v11 initWithBaseObject:v10 captureDevice:device];
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
  traceStream = [(CaptureMTLFunction *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLArgumentEncoder *)v13 traceStream];
  if (traceStream2)
  {
    v22 = traceStream2->var0;
  }

  else
  {
    v22 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = index;
  v23 = v26;
  *v7 = v27;
  *(v7 + 8) = BYTE8(v27);
  *(v23 + 15) |= 8u;

  return v13;
}

- (void)setRelocations:(id)relocations
{
  relocationsCopy = relocations;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLFunction_setRelocations", "Relocations", 0, 0);
  [(MTLFunctionSPI *)self->_baseObject setRelocations:relocationsCopy];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLFunctionSPI *)self->_baseObject setLabel:labelCopy];
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
  traceStream = [(CaptureMTLFunction *)self traceStream];
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

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLFunctionSPI *)baseObject conformsToProtocol:protocolCopy];

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

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection binaryArchives:(id)archives
{
  archivesCopy = archives;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_reflection_binaryArchives", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapNSArray(archivesCopy);

  v11 = [(MTLFunctionSPI *)baseObject newArgumentEncoderWithBufferIndex:index reflection:reflection binaryArchives:v10];
  if (v11)
  {
    v12 = [CaptureMTLArgumentEncoder alloc];
    device = [(CaptureMTLFunction *)self device];
    v14 = [(CaptureMTLArgumentEncoder *)v12 initWithBaseObject:v11 captureDevice:device];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)reflectionWithOptions:(unint64_t)options binaryArchives:(id)archives
{
  archivesCopy = archives;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLFunction_reflectionWithOptions_binaryArchives", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v8 = unwrapNSArray(archivesCopy);

  v9 = [(MTLFunctionSPI *)baseObject reflectionWithOptions:options binaryArchives:v8];

  return v9;
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection pipelineLibrary:(id)library
{
  baseObject = self->_baseObject;
  libraryCopy = library;
  baseObject = [libraryCopy baseObject];
  v11 = [(MTLFunctionSPI *)baseObject newArgumentEncoderWithBufferIndex:index reflection:reflection pipelineLibrary:baseObject];

  if (v11)
  {
    v12 = [CaptureMTLArgumentEncoder alloc];
    device = [(CaptureMTLFunction *)self device];
    v14 = [(CaptureMTLArgumentEncoder *)v12 initWithBaseObject:v11 captureDevice:device];
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
  traceStream = [(CaptureMTLFunction *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLArgumentEncoder *)v14 traceStream];
  if (traceStream2)
  {
    v28 = traceStream2->var0;
  }

  else
  {
    v28 = 0;
  }

  traceStream3 = [libraryCopy traceStream];

  if (traceStream3)
  {
    v30 = *traceStream3;
  }

  else
  {
    v30 = 0;
  }

  *v22 = var0;
  *(v22 + 1) = v28;
  *(v22 + 2) = index;
  *(v22 + 3) = v30;
  *(v22 + 4) = 0;
  v31 = v34;
  *v17 = v35;
  *(v17 + 8) = BYTE8(v35);
  *(v31 + 15) |= 8u;

  return v14;
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection
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
  traceStream = [(CaptureMTLFunction *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLArgumentEncoder *)v12 traceStream];
  if (traceStream2)
  {
    v21 = traceStream2->var0;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = index;
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
  traceStream = [(CaptureMTLFunction *)self traceStream];
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
  v13.super_class = CaptureMTLFunction;
  [(CaptureMTLFunction *)&v13 dealloc];
}

- (CaptureMTLFunction)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLFunction;
  v9 = [(CaptureMTLFunction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    objc_storeStrong(&v10->_captureDevice, device);
    traceContext = [deviceCopy traceContext];
    v10->_traceContext = traceContext;
    v12 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v12, v10);
  }

  return v10;
}

- (CaptureMTLFunction)initWithBaseObject:(id)object captureLibrary:(id)library
{
  objectCopy = object;
  libraryCopy = library;
  v16.receiver = self;
  v16.super_class = CaptureMTLFunction;
  v9 = [(CaptureMTLFunction *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    objc_storeStrong(&v10->_captureLibrary, library);
    device = [libraryCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    traceContext = [libraryCopy traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v14, v10);
  }

  return v10;
}

@end