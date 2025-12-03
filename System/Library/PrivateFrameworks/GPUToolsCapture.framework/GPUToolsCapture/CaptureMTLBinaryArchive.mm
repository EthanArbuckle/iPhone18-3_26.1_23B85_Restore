@interface CaptureMTLBinaryArchive
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addFunctionWithDescriptor:(id)descriptor library:(id)library error:(id *)error;
- (BOOL)addLibraryWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)enumerateArchivesFromBackingFile:(id)file;
- (BOOL)enumerateArchivesFromPipelineCollection:(id)collection;
- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error;
- (BOOL)storeComputePipelineDescriptor:(id)descriptor;
- (BOOL)storeMeshRenderPipelineDescriptor:(id)descriptor;
- (BOOL)storeRenderPipelineDescriptor:(id)descriptor;
- (BOOL)storeTileRenderPipelineDescriptor:(id)descriptor;
- (CaptureMTLBinaryArchive)initWithBaseObject:(id)object captureDevice:(id)device;
- (MTLPipelineCollection)pipelineCollection;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setLabel:(id)label;
- (void)touch;
@end

@implementation CaptureMTLBinaryArchive

- (BOOL)storeTileRenderPipelineDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_storeTileRenderPipelineDescriptor", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v6 = unwrapMTLTileRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(baseObject) = [(MTLBinaryArchiveSPI *)baseObject storeTileRenderPipelineDescriptor:v6];
  return baseObject;
}

- (BOOL)storeRenderPipelineDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_storeRenderPipelineDescriptor", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v6 = unwrapMTLRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(baseObject) = [(MTLBinaryArchiveSPI *)baseObject storeRenderPipelineDescriptor:v6];
  return baseObject;
}

- (BOOL)storeMeshRenderPipelineDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_storeMeshRenderPipelineDescriptor", "Mesh Shaders with Binary Archives", 0, 0);
  baseObject = self->_baseObject;
  v6 = unwrapMTLMeshRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(baseObject) = [(MTLBinaryArchiveSPI *)baseObject storeMeshRenderPipelineDescriptor:v6];
  return baseObject;
}

- (BOOL)storeComputePipelineDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_storeComputePipelineDescriptor", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v6 = unwrapMTLComputePipelineDescriptor(descriptorCopy);

  LOBYTE(baseObject) = [(MTLBinaryArchiveSPI *)baseObject storeComputePipelineDescriptor:v6];
  return baseObject;
}

- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_serializeToURL_options_error", "Binary Archives SPI", 0, 0);
  LOBYTE(error) = [(MTLBinaryArchiveSPI *)self->_baseObject serializeToURL:lCopy options:options error:error];

  return error;
}

- (MTLPipelineCollection)pipelineCollection
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_pipelineCollection", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;

  return [(MTLBinaryArchiveSPI *)baseObject pipelineCollection];
}

- (BOOL)enumerateArchivesFromPipelineCollection:(id)collection
{
  collectionCopy = collection;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_enumerateArchivesFromPipelineCollection", "Binary Linking", 0, 0);
  LOBYTE(self) = [(MTLBinaryArchiveSPI *)self->_baseObject enumerateArchivesFromPipelineCollection:collectionCopy];

  return self;
}

- (BOOL)enumerateArchivesFromBackingFile:(id)file
{
  fileCopy = file;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_enumerateArchivesFromBackingFile", "Binary Linking", 0, 0);
  LOBYTE(self) = [(MTLBinaryArchiveSPI *)self->_baseObject enumerateArchivesFromBackingFile:fileCopy];

  return self;
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15685;
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
  traceStream = [(CaptureMTLBinaryArchive *)self traceStream];
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
  v13.super_class = CaptureMTLBinaryArchive;
  [(CaptureMTLBinaryArchive *)&v13 dealloc];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addTileRenderPipelineFunctionsWithDescriptor_options_error", "Binary Archives SPI", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapMTLTileRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(error) = [(MTLBinaryArchiveSPI *)baseObject addTileRenderPipelineFunctionsWithDescriptor:v10 options:options error:error];
  return error;
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  descriptorCopy = descriptor;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  v10 = unwrapMTLTileRenderPipelineDescriptor(descriptorCopy);
  v11 = [(MTLBinaryArchiveSPI *)baseObject addTileRenderPipelineFunctionsWithDescriptor:v10 error:error, v24];

  v12 = v25;
  *(v25 + 8) = -15664;
  v13 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v15 = *(*(&v24 + 1) + 24);
    v16 = BYTE10(v26);
    ++BYTE10(v26);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v25 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLBinaryArchive *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (error)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  var0 = traceStream->var0;
  if (!error)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = *error;
LABEL_9:
  v20 = SaveMTLTileRenderPipelineDescriptor(&v24, descriptorCopy);

  *v14 = var0;
  *(v14 + 1) = v19;
  *(v14 + 4) = v11;
  v14[20] = v20;
  *(v14 + 21) = 0;
  v14[23] = 0;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
  return v11;
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addRenderPipelineFunctionsWithDescriptor_options_error", "Binary Archives SPI", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapMTLRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(error) = [(MTLBinaryArchiveSPI *)baseObject addRenderPipelineFunctionsWithDescriptor:v10 options:options error:error];
  return error;
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  descriptorCopy = descriptor;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  v10 = unwrapMTLRenderPipelineDescriptor(descriptorCopy);
  v11 = [(MTLBinaryArchiveSPI *)baseObject addRenderPipelineFunctionsWithDescriptor:v10 error:error, v24];

  v12 = v25;
  *(v25 + 8) = -15665;
  v13 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v15 = *(*(&v24 + 1) + 24);
    v16 = BYTE10(v26);
    ++BYTE10(v26);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v25 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLBinaryArchive *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (error)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  var0 = traceStream->var0;
  if (!error)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = *error;
LABEL_9:
  v20 = SaveMTLRenderPipelineDescriptor(&v24, descriptorCopy);

  *v14 = var0;
  *(v14 + 1) = v19;
  *(v14 + 4) = v11;
  v14[20] = v20;
  *(v14 + 21) = 0;
  v14[23] = 0;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
  return v11;
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addMeshRenderPipelineFunctionsWithDescriptor_options_error", "Mesh Shaders with Binary Archives", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapMTLMeshRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(error) = [(MTLBinaryArchiveSPI *)baseObject addMeshRenderPipelineFunctionsWithDescriptor:v10 options:options error:error];
  return error;
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addMeshRenderPipelineFunctionsWithDescriptor_error", "Mesh Shaders with Binary Archives", 0, 0);
  baseObject = self->_baseObject;
  v8 = unwrapMTLMeshRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(error) = [(MTLBinaryArchiveSPI *)baseObject addMeshRenderPipelineFunctionsWithDescriptor:v8 error:error];
  return error;
}

- (BOOL)addLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  descriptorCopy = descriptor;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  v10 = unwrapMTLStitchedLibraryDescriptor(descriptorCopy);
  v11 = [(MTLBinaryArchiveSPI *)baseObject addLibraryWithDescriptor:v10 error:error, v24];

  v12 = v25;
  *(v25 + 8) = -15426;
  v13 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v15 = *(*(&v24 + 1) + 24);
    v16 = BYTE10(v26);
    ++BYTE10(v26);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v25 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLBinaryArchive *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (error)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  var0 = traceStream->var0;
  if (!error)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = *error;
LABEL_9:
  v20 = SaveMTLStitchedLibraryDescriptor(&v24, descriptorCopy);

  *v14 = var0;
  *(v14 + 1) = v19;
  *(v14 + 4) = v11;
  v14[20] = v20;
  *(v14 + 21) = 0;
  v14[23] = 0;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
  return v11;
}

- (BOOL)addFunctionWithDescriptor:(id)descriptor library:(id)library error:(id *)error
{
  libraryCopy = library;
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addFunctionWithDescriptor_library_error", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v11 = unwrapMTLFunctionDescriptor(descriptorCopy);

  baseObject = [libraryCopy baseObject];

  LOBYTE(error) = [(MTLBinaryArchiveSPI *)baseObject addFunctionWithDescriptor:v11 library:baseObject error:error];
  return error;
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addComputePipelineFunctionsWithDescriptor_options_error", "Binary Archives SPI", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapMTLComputePipelineDescriptor(descriptorCopy);

  LOBYTE(error) = [(MTLBinaryArchiveSPI *)baseObject addComputePipelineFunctionsWithDescriptor:v10 options:options error:error];
  return error;
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  descriptorCopy = descriptor;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  v10 = unwrapMTLComputePipelineDescriptor(descriptorCopy);
  v11 = [(MTLBinaryArchiveSPI *)baseObject addComputePipelineFunctionsWithDescriptor:v10 error:error, v24];

  v12 = v25;
  *(v25 + 8) = -15666;
  v13 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v15 = *(*(&v24 + 1) + 24);
    v16 = BYTE10(v26);
    ++BYTE10(v26);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v25 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLBinaryArchive *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (error)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  var0 = traceStream->var0;
  if (!error)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = *error;
LABEL_9:
  v20 = SaveMTLComputePipelineDescriptor(&v24, descriptorCopy);

  *v14 = var0;
  *(v14 + 1) = v19;
  *(v14 + 4) = v11;
  v14[20] = v20;
  *(v14 + 21) = 0;
  v14[23] = 0;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
  return v11;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLBinaryArchiveSPI *)self->_baseObject setLabel:labelCopy];
  v6 = v19;
  *(v19 + 8) = -15668;
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
  traceStream = [(CaptureMTLBinaryArchive *)self traceStream];
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
  v5 = [(MTLBinaryArchiveSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLBinaryArchive;
  v3 = [(CaptureMTLBinaryArchive *)&v7 description];
  v4 = [(MTLBinaryArchiveSPI *)self->_baseObject description];
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

- (CaptureMTLBinaryArchive)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLBinaryArchive;
  v9 = [(CaptureMTLBinaryArchive *)&v14 init];
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

@end