@interface CaptureMTLResourceStateCommandEncoder
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLResourceStateCommandEncoder)initWithBaseObject:(id)a3 captureCommandBuffer:(id)a4;
- (NSString)description;
- (unint64_t)streamReference;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4;
- (void)copyMappingStateFromTexture:(id)a3 mipLevel:(unint64_t)a4 slice:(unint64_t)a5 toBuffer:(id)a6 offset:(unint64_t)a7 numTiles:(unint64_t)a8;
- (void)dealloc;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)a3;
- (void)insertSplit;
- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setLabel:(id)a3;
- (void)touch;
- (void)updateFence:(id)a3;
- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 indirectBuffer:(id)a5 indirectBufferOffset:(unint64_t)a6;
- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7;
- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8;
- (void)waitForFence:(id)a3;
@end

@implementation CaptureMTLResourceStateCommandEncoder

- (void)waitForFence:(id)a3
{
  v4 = a3;
  [v4 touch];
  if (v4)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v4];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  v8 = [v4 baseObject];
  [(MTLResourceStateCommandEncoderSPI *)baseObject waitForFence:v8];

  v9 = v21;
  *(v21 + 8) = -15781;
  v10 = BYTE9(v22);
  if (BYTE9(v22) > 0x30uLL)
  {
    v12 = *(*(&v20 + 1) + 24);
    v13 = BYTE10(v22);
    ++BYTE10(v22);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v21 + 1), v13 | 0x1000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v22));
    BYTE9(v22) += 16;
  }

  *(v9 + 13) = v10;
  v14 = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [v4 traceStream];
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = v17;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7
{
  v12 = a3;
  [v12 touch];
  if (v12)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v12];
    }
  }

  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v32);
  baseObject = self->_baseObject;
  v16 = [v12 baseObject];
  v17 = *&a5->var0.var2;
  v31[0] = *&a5->var0.var0;
  v31[1] = v17;
  v31[2] = *&a5->var1.var1;
  [(MTLResourceStateCommandEncoderSPI *)baseObject updateTextureMapping:v16 mode:a4 region:v31 mipLevel:a6 slice:a7];

  v18 = *(&v32 + 1);
  v19 = v33;
  *(v33 + 8) = -15783;
  v20 = *(v18 + 24);
  v21 = BYTE10(v34);
  ++BYTE10(v34);
  Bytes = GTTraceMemPool_allocateBytes(v20, *(&v33 + 1), v21 | 0x5800000000);
  *(v19 + 13) = v21;
  v23 = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (v23)
  {
    var0 = v23->var0;
  }

  else
  {
    var0 = 0;
  }

  v25 = [v12 traceStream];
  if (v25)
  {
    v26 = *v25;
  }

  else
  {
    v26 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v26;
  *(Bytes + 4) = a4;
  v27 = *&a5->var0.var2;
  v28 = *&a5->var1.var1;
  *(Bytes + 40) = *&a5->var0.var0;
  *(Bytes + 56) = v27;
  *(Bytes + 72) = v28;
  *(Bytes + 11) = a6;
  *(Bytes + 12) = a7;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v34);
  *(v33 + 15) |= 8u;
}

- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 indirectBuffer:(id)a5 indirectBufferOffset:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  [v10 touch];
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  [v11 touch];
  if (v11)
  {
    v13 = self->_retainedObjects;
    if (v13)
    {
      [(NSMutableSet *)v13 addObject:v11];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = self->_baseObject;
  v16 = [v10 baseObject];
  v17 = [v11 baseObject];
  [(MTLResourceStateCommandEncoderSPI *)baseObject updateTextureMapping:v16 mode:a4 indirectBuffer:v17 indirectBufferOffset:a6];

  v18 = v32;
  *(v32 + 8) = -15784;
  v19 = BYTE9(v33);
  if (BYTE9(v33) > 0x18uLL)
  {
    v21 = *(*(&v31 + 1) + 24);
    v22 = BYTE10(v33);
    ++BYTE10(v33);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v32 + 1), v22 | 0x2800000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v33));
    BYTE9(v33) += 40;
  }

  *(v18 + 13) = v19;
  v23 = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (v23)
  {
    var0 = v23->var0;
  }

  else
  {
    var0 = 0;
  }

  v25 = [v10 traceStream];
  if (v25)
  {
    v26 = *v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = [v11 traceStream];
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
  *(v20 + 2) = a4;
  *(v20 + 3) = v28;
  *(v20 + 4) = a6;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)updateFence:(id)a3
{
  v4 = a3;
  [v4 touch];
  if (v4)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v4];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  v8 = [v4 baseObject];
  [(MTLResourceStateCommandEncoderSPI *)baseObject updateFence:v8];

  v9 = v21;
  *(v21 + 8) = -15785;
  v10 = BYTE9(v22);
  if (BYTE9(v22) > 0x30uLL)
  {
    v12 = *(*(&v20 + 1) + 24);
    v13 = BYTE10(v22);
    ++BYTE10(v22);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v21 + 1), v13 | 0x1000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v22));
    BYTE9(v22) += 16;
  }

  *(v9 + 13) = v10;
  v14 = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [v4 traceStream];
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = v17;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)pushDebugGroup:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLResourceStateCommandEncoderSPI *)self->_baseObject pushDebugGroup:v4];
  v6 = v19;
  *(v19 + 8) = -15786;
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
  v11 = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
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

- (void)popDebugGroup
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLResourceStateCommandEncoderSPI *)self->_baseObject popDebugGroup];
  v4 = v14;
  *(v14 + 8) = -15787;
  v5 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v7 = *(*(&v13 + 1) + 24);
    v8 = BYTE10(v15);
    ++BYTE10(v15);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v14 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v4 + 13) = v5;
  v9 = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
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
  *(v11 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
}

- (void)insertSplit
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLResourceStateCommandEncoder_insertSplit", "Command Encoder Insert Split", 0, 0);
  baseObject = self->_baseObject;

  [(MTLResourceStateCommandEncoderSPI *)baseObject insertSplit];
}

- (void)insertDebugSignpost:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLResourceStateCommandEncoderSPI *)self->_baseObject insertDebugSignpost:v4];
  v6 = v19;
  *(v19 + 8) = -15788;
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
  v11 = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
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

- (void)endEncoding
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLResourceStateCommandEncoderSPI *)self->_baseObject endEncoding];
  v4 = v14;
  *(v14 + 8) = -15789;
  v5 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v7 = *(*(&v13 + 1) + 24);
    v8 = BYTE10(v15);
    ++BYTE10(v15);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v14 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v4 + 13) = v5;
  v9 = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
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
  *(v11 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15790;
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
  v9 = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
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
  v13.super_class = CaptureMTLResourceStateCommandEncoder;
  [(CaptureMTLResourceStateCommandEncoder *)&v13 dealloc];
}

- (void)copyMappingStateFromTexture:(id)a3 mipLevel:(unint64_t)a4 slice:(unint64_t)a5 toBuffer:(id)a6 offset:(unint64_t)a7 numTiles:(unint64_t)a8
{
  v14 = a3;
  v15 = a6;
  [v14 touch];
  if (v14)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v14];
    }
  }

  [v15 touch];
  if (v15)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:v15];
    }
  }

  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  v20 = [v14 baseObject];
  v21 = [v15 baseObject];
  [(MTLResourceStateCommandEncoderSPI *)baseObject copyMappingStateFromTexture:v20 mipLevel:a4 slice:a5 toBuffer:v21 offset:a7 numTiles:a8];

  v22 = v36;
  *(v36 + 8) = -15792;
  v23 = BYTE9(v37);
  if (BYTE9(v37) > 8uLL)
  {
    v25 = *(*(&v35 + 1) + 24);
    v26 = BYTE10(v37);
    ++BYTE10(v37);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v36 + 1), v26 | 0x3800000000) + 16;
    v23 = v26;
  }

  else
  {
    v24 = (v22 + BYTE9(v37));
    BYTE9(v37) += 56;
  }

  *(v22 + 13) = v23;
  v27 = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (v27)
  {
    var0 = v27->var0;
  }

  else
  {
    var0 = 0;
  }

  v29 = [v14 traceStream];
  if (v29)
  {
    v30 = *v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = [v15 traceStream];
  if (v31)
  {
    v32 = *v31;
  }

  else
  {
    v32 = 0;
  }

  *v24 = var0;
  *(v24 + 1) = v30;
  *(v24 + 2) = a4;
  *(v24 + 3) = a5;
  *(v24 + 4) = v32;
  *(v24 + 5) = a7;
  *(v24 + 6) = a8;
  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLResourceStateCommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:a3 beforeStages:a4];
  v8 = v18;
  *(v18 + 8) = -14952;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLResourceStateCommandEncoderSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -15794;
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
  v11 = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
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
  v5 = [(MTLResourceStateCommandEncoderSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLResourceStateCommandEncoder;
  v3 = [(CaptureMTLResourceStateCommandEncoder *)&v7 description];
  v4 = [(MTLResourceStateCommandEncoderSPI *)self->_baseObject description];
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

- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v15 = a3;
  v16 = a8;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLResourceStateCommandEncoder_moveTextureMappingsFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin", "Fast Storage", 0, 0);
  [v15 touch];
  if (v15)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v15];
    }
  }

  [v16 touch];
  if (v16)
  {
    v18 = self->_retainedObjects;
    if (v18)
    {
      [(NSMutableSet *)v18 addObject:v16];
    }
  }

  baseObject = self->_baseObject;
  v20 = [v15 baseObject];
  v21 = [v16 baseObject];
  v27 = *&a6->var0;
  var2 = a6->var2;
  v25 = *&a7->var0;
  v26 = a7->var2;
  v24 = *a11;
  [(MTLResourceStateCommandEncoderSPI *)baseObject moveTextureMappingsFromTexture:v20 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v27 sourceSize:&v25 toTexture:v21 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v24];
}

- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8
{
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v16 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v32);
  baseObject = self->_baseObject;
  v18 = [v16 baseObject];
  [(MTLResourceStateCommandEncoderSPI *)baseObject updateTextureMappings:v18 mode:a4 regions:a5 mipLevels:a6 slices:a7 numRegions:a8];

  v19 = v33;
  *(v33 + 8) = -15782;
  v20 = BYTE9(v34);
  if (BYTE9(v34) > 0x18uLL)
  {
    v22 = *(*(&v32 + 1) + 24);
    v23 = BYTE10(v34);
    ++BYTE10(v34);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v33 + 1), v23 | 0x2800000000) + 16;
    v20 = v23;
  }

  else
  {
    v21 = (v19 + BYTE9(v34));
    BYTE9(v34) += 40;
  }

  *(v19 + 13) = v20;
  v24 = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (v24)
  {
    var0 = v24->var0;
  }

  else
  {
    var0 = 0;
  }

  v26 = [v16 traceStream];

  if (v26)
  {
    v26 = *v26;
  }

  v27 = TransferBytes(&v32, a5, (48 * a8));
  v28 = TransferBytes(&v32, a6, (8 * a8));
  v29 = TransferBytes(&v32, a7, (8 * a8));
  *v21 = var0;
  *(v21 + 1) = v26;
  *(v21 + 2) = a4;
  *(v21 + 3) = a8;
  v21[32] = v27;
  v21[33] = v28;
  v21[34] = v29;
  *(v21 + 35) = 0;
  v21[39] = 0;
  s();
  *v30 = v31;
  *(v30 + 8) = BYTE8(v34);
  *(v33 + 15) |= 8u;
}

- (CaptureMTLResourceStateCommandEncoder)initWithBaseObject:(id)a3 captureCommandBuffer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = CaptureMTLResourceStateCommandEncoder;
  v9 = [(CaptureMTLResourceStateCommandEncoder *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    v11 = [v8 device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = v11;

    v13 = [v8 traceContext];
    v10->_traceContext = v13;
    v14 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openEncoderStream(v13, v14, *([v8 traceStream] + 3));

    v15 = [v8 retainedObjects];
    retainedObjects = v10->_retainedObjects;
    v10->_retainedObjects = v15;

    v17 = v10->_retainedObjects;
    v18 = DEVICEOBJECT(v10->_baseObject);
    [(NSMutableSet *)v17 addObject:v18];
  }

  return v10;
}

@end