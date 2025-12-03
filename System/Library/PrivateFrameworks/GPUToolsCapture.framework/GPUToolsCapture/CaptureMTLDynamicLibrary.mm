@interface CaptureMTLDynamicLibrary
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)serializeToURL:(id)l error:(id *)error;
- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error;
- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)object captureCompiler:(id)compiler;
- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)object captureCompiler:(id)compiler captureLibrary:(id)library;
- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)object captureDevice:(id)device captureLibrary:(id)library;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setLabel:(id)label;
- (void)setRelocations:(id)relocations;
- (void)touch;
@end

@implementation CaptureMTLDynamicLibrary

- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDynamicLibrary_serializeToURL_options_error", "Dynamic Libraries", 0, 0);
  LOBYTE(error) = [(MTLDynamicLibrarySPI *)self->_baseObject serializeToURL:lCopy options:options error:error];

  return error;
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
  traceStream = [(CaptureMTLDynamicLibrary *)self traceStream];
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
  v13.super_class = CaptureMTLDynamicLibrary;
  [(CaptureMTLDynamicLibrary *)&v13 dealloc];
}

- (void)setRelocations:(id)relocations
{
  relocationsCopy = relocations;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDynamicLibrary_setRelocations", "Relocations", 0, 0);
  [(MTLDynamicLibrarySPI *)self->_baseObject setRelocations:relocationsCopy];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLDynamicLibrarySPI *)self->_baseObject setLabel:labelCopy];
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
  traceStream = [(CaptureMTLDynamicLibrary *)self traceStream];
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
  v5 = [(MTLDynamicLibrarySPI *)baseObject conformsToProtocol:protocolCopy];

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

- (BOOL)serializeToURL:(id)l error:(id *)error
{
  lCopy = l;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  v8 = [(MTLDynamicLibrarySPI *)self->_baseObject serializeToURL:lCopy error:error];
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
  traceStream = [(CaptureMTLDynamicLibrary *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
    if (error)
    {
LABEL_6:
      v16 = *error;
      goto LABEL_9;
    }
  }

  else
  {
    var0 = 0;
    if (error)
    {
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_9:
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    fileSystemRepresentation2 = [lCopy fileSystemRepresentation];
    v19 = strlen([lCopy fileSystemRepresentation]);
    LOBYTE(fileSystemRepresentation) = GTTraceEncoder_storeBytes(&v23, fileSystemRepresentation2, v19 + 1);
  }

  *v11 = var0;
  *(v11 + 1) = v16;
  *(v11 + 4) = v8;
  v11[20] = fileSystemRepresentation;
  *(v11 + 21) = 0;
  v11[23] = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;

  return v8;
}

- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)object captureCompiler:(id)compiler captureLibrary:(id)library
{
  libraryCopy = library;
  objectCopy = object;
  device = [compiler device];
  v11 = [(CaptureMTLDynamicLibrary *)self initWithBaseObject:objectCopy captureDevice:device captureLibrary:libraryCopy];

  return v11;
}

- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)object captureCompiler:(id)compiler
{
  objectCopy = object;
  device = [compiler device];
  v8 = [(CaptureMTLDynamicLibrary *)self initWithBaseObject:objectCopy captureDevice:device captureLibrary:0];

  return v8;
}

- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)object captureDevice:(id)device captureLibrary:(id)library
{
  objectCopy = object;
  deviceCopy = device;
  libraryCopy = library;
  v17.receiver = self;
  v17.super_class = CaptureMTLDynamicLibrary;
  v12 = [(CaptureMTLDynamicLibrary *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    objc_storeStrong(&v13->_captureDevice, device);
    objc_storeStrong(&v13->_captureLibrary, library);
    traceContext = [deviceCopy traceContext];
    v13->_traceContext = traceContext;
    v15 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v15, v13);
  }

  return v13;
}

@end