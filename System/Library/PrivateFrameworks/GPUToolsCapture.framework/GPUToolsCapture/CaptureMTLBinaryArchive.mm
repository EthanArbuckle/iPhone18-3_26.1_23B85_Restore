@interface CaptureMTLBinaryArchive
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addFunctionWithDescriptor:(id)a3 library:(id)a4 error:(id *)a5;
- (BOOL)addLibraryWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)enumerateArchivesFromBackingFile:(id)a3;
- (BOOL)enumerateArchivesFromPipelineCollection:(id)a3;
- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)storeComputePipelineDescriptor:(id)a3;
- (BOOL)storeMeshRenderPipelineDescriptor:(id)a3;
- (BOOL)storeRenderPipelineDescriptor:(id)a3;
- (BOOL)storeTileRenderPipelineDescriptor:(id)a3;
- (CaptureMTLBinaryArchive)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (MTLPipelineCollection)pipelineCollection;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setLabel:(id)a3;
- (void)touch;
@end

@implementation CaptureMTLBinaryArchive

- (BOOL)storeTileRenderPipelineDescriptor:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_storeTileRenderPipelineDescriptor", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v6 = unwrapMTLTileRenderPipelineDescriptor(v4);

  LOBYTE(baseObject) = [(MTLBinaryArchiveSPI *)baseObject storeTileRenderPipelineDescriptor:v6];
  return baseObject;
}

- (BOOL)storeRenderPipelineDescriptor:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_storeRenderPipelineDescriptor", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v6 = unwrapMTLRenderPipelineDescriptor(v4);

  LOBYTE(baseObject) = [(MTLBinaryArchiveSPI *)baseObject storeRenderPipelineDescriptor:v6];
  return baseObject;
}

- (BOOL)storeMeshRenderPipelineDescriptor:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_storeMeshRenderPipelineDescriptor", "Mesh Shaders with Binary Archives", 0, 0);
  baseObject = self->_baseObject;
  v6 = unwrapMTLMeshRenderPipelineDescriptor(v4);

  LOBYTE(baseObject) = [(MTLBinaryArchiveSPI *)baseObject storeMeshRenderPipelineDescriptor:v6];
  return baseObject;
}

- (BOOL)storeComputePipelineDescriptor:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_storeComputePipelineDescriptor", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v6 = unwrapMTLComputePipelineDescriptor(v4);

  LOBYTE(baseObject) = [(MTLBinaryArchiveSPI *)baseObject storeComputePipelineDescriptor:v6];
  return baseObject;
}

- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_serializeToURL_options_error", "Binary Archives SPI", 0, 0);
  LOBYTE(a5) = [(MTLBinaryArchiveSPI *)self->_baseObject serializeToURL:v8 options:a4 error:a5];

  return a5;
}

- (MTLPipelineCollection)pipelineCollection
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_pipelineCollection", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;

  return [(MTLBinaryArchiveSPI *)baseObject pipelineCollection];
}

- (BOOL)enumerateArchivesFromPipelineCollection:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_enumerateArchivesFromPipelineCollection", "Binary Linking", 0, 0);
  LOBYTE(self) = [(MTLBinaryArchiveSPI *)self->_baseObject enumerateArchivesFromPipelineCollection:v4];

  return self;
}

- (BOOL)enumerateArchivesFromBackingFile:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_enumerateArchivesFromBackingFile", "Binary Linking", 0, 0);
  LOBYTE(self) = [(MTLBinaryArchiveSPI *)self->_baseObject enumerateArchivesFromBackingFile:v4];

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
  v9 = [(CaptureMTLBinaryArchive *)self traceStream];
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
  v13.super_class = CaptureMTLBinaryArchive;
  [(CaptureMTLBinaryArchive *)&v13 dealloc];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addTileRenderPipelineFunctionsWithDescriptor_options_error", "Binary Archives SPI", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapMTLTileRenderPipelineDescriptor(v8);

  LOBYTE(a5) = [(MTLBinaryArchiveSPI *)baseObject addTileRenderPipelineFunctionsWithDescriptor:v10 options:a4 error:a5];
  return a5;
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v8 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  v10 = unwrapMTLTileRenderPipelineDescriptor(v8);
  v11 = [(MTLBinaryArchiveSPI *)baseObject addTileRenderPipelineFunctionsWithDescriptor:v10 error:a4, v24];

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
  v17 = [(CaptureMTLBinaryArchive *)self traceStream];
  if (!v17)
  {
    var0 = 0;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  var0 = v17->var0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = *a4;
LABEL_9:
  v20 = SaveMTLTileRenderPipelineDescriptor(&v24, v8);

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

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addRenderPipelineFunctionsWithDescriptor_options_error", "Binary Archives SPI", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapMTLRenderPipelineDescriptor(v8);

  LOBYTE(a5) = [(MTLBinaryArchiveSPI *)baseObject addRenderPipelineFunctionsWithDescriptor:v10 options:a4 error:a5];
  return a5;
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v8 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  v10 = unwrapMTLRenderPipelineDescriptor(v8);
  v11 = [(MTLBinaryArchiveSPI *)baseObject addRenderPipelineFunctionsWithDescriptor:v10 error:a4, v24];

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
  v17 = [(CaptureMTLBinaryArchive *)self traceStream];
  if (!v17)
  {
    var0 = 0;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  var0 = v17->var0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = *a4;
LABEL_9:
  v20 = SaveMTLRenderPipelineDescriptor(&v24, v8);

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

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addMeshRenderPipelineFunctionsWithDescriptor_options_error", "Mesh Shaders with Binary Archives", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapMTLMeshRenderPipelineDescriptor(v8);

  LOBYTE(a5) = [(MTLBinaryArchiveSPI *)baseObject addMeshRenderPipelineFunctionsWithDescriptor:v10 options:a4 error:a5];
  return a5;
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addMeshRenderPipelineFunctionsWithDescriptor_error", "Mesh Shaders with Binary Archives", 0, 0);
  baseObject = self->_baseObject;
  v8 = unwrapMTLMeshRenderPipelineDescriptor(v6);

  LOBYTE(a4) = [(MTLBinaryArchiveSPI *)baseObject addMeshRenderPipelineFunctionsWithDescriptor:v8 error:a4];
  return a4;
}

- (BOOL)addLibraryWithDescriptor:(id)a3 error:(id *)a4
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v8 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  v10 = unwrapMTLStitchedLibraryDescriptor(v8);
  v11 = [(MTLBinaryArchiveSPI *)baseObject addLibraryWithDescriptor:v10 error:a4, v24];

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
  v17 = [(CaptureMTLBinaryArchive *)self traceStream];
  if (!v17)
  {
    var0 = 0;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  var0 = v17->var0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = *a4;
LABEL_9:
  v20 = SaveMTLStitchedLibraryDescriptor(&v24, v8);

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

- (BOOL)addFunctionWithDescriptor:(id)a3 library:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addFunctionWithDescriptor_library_error", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v11 = unwrapMTLFunctionDescriptor(v9);

  v12 = [v8 baseObject];

  LOBYTE(a5) = [(MTLBinaryArchiveSPI *)baseObject addFunctionWithDescriptor:v11 library:v12 error:a5];
  return a5;
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addComputePipelineFunctionsWithDescriptor_options_error", "Binary Archives SPI", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapMTLComputePipelineDescriptor(v8);

  LOBYTE(a5) = [(MTLBinaryArchiveSPI *)baseObject addComputePipelineFunctionsWithDescriptor:v10 options:a4 error:a5];
  return a5;
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v8 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  v10 = unwrapMTLComputePipelineDescriptor(v8);
  v11 = [(MTLBinaryArchiveSPI *)baseObject addComputePipelineFunctionsWithDescriptor:v10 error:a4, v24];

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
  v17 = [(CaptureMTLBinaryArchive *)self traceStream];
  if (!v17)
  {
    var0 = 0;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  var0 = v17->var0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = *a4;
LABEL_9:
  v20 = SaveMTLComputePipelineDescriptor(&v24, v8);

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

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLBinaryArchiveSPI *)self->_baseObject setLabel:v4];
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
  v11 = [(CaptureMTLBinaryArchive *)self traceStream];
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
  v5 = [(MTLBinaryArchiveSPI *)baseObject conformsToProtocol:v4];

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

- (CaptureMTLBinaryArchive)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CaptureMTLBinaryArchive;
  v9 = [(CaptureMTLBinaryArchive *)&v14 init];
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

@end