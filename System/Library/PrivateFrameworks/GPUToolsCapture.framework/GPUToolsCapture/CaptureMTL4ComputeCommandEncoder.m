@interface CaptureMTL4ComputeCommandEncoder
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4;
- (CaptureMTL4ComputeCommandEncoder)initWithBaseObject:(id)a3 captureCommandBuffer:(id)a4;
- (GTAccelerationStructureDescriptorDownloader_MTL4)descriptorDownloader;
- (NSString)description;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (unint64_t)streamReference;
- (void)barrierAfterEncoderStages:(unint64_t)a3 beforeEncoderStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5;
- (void)barrierAfterStages:(unint64_t)a3 beforeQueueStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5;
- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(MTL4BufferRange)a5;
- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7;
- (void)copyFromTensor:(id)a3 sourceOrigin:(id)a4 sourceDimensions:(id)a5 toTensor:(id)a6 destinationOrigin:(id)a7 destinationDimensions:(id)a8;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10;
- (void)copyFromTexture:(id)a3 toTexture:(id)a4;
- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 fromBuffer:(MTL4BufferRange)a5;
- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(MTL4BufferRange)a4;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)a3;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8;
- (void)generateMipmapsForTexture:(id)a3;
- (void)insertDebugSignpost:(id)a3;
- (void)optimizeContentsForCPUAccess:(id)a3;
- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeContentsForGPUAccess:(id)a3;
- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeIndirectCommandBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6;
- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6 options:(unint64_t)a7;
- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)serializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 toBuffer:(MTL4BufferRange)a5;
- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)setArgumentTable:(id)a3;
- (void)setComputePipelineState:(id)a3;
- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4;
- (void)setLabel:(id)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)touch;
- (void)updateFence:(id)a3 afterEncoderStages:(unint64_t)a4;
- (void)waitForFence:(id)a3 beforeEncoderStages:(unint64_t)a4;
- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeAccelerationStructureTraversalDepth:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4;
@end

@implementation CaptureMTL4ComputeCommandEncoder

- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v11 = a3;
  [v11 touch];
  v7 = v11;
  if (v11)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v11];
      v7 = v11;
    }
  }

  baseObject = self->_baseObject;
  v10 = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeSerializedAccelerationStructureSize:v10 toBuffer:var0, var1];
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v11 = a3;
  [v11 touch];
  v7 = v11;
  if (v11)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v11];
      v7 = v11;
    }
  }

  baseObject = self->_baseObject;
  v10 = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeGenericBVHStructureSizesOfAccelerationStructure:v10 toBuffer:var0, var1];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  LOBYTE(baseObject) = [(MTL4CommandEncoderSPI *)baseObject writeGenericBVHStructureSizesOfAccelerationStructure:v10 into:v7];

  return baseObject;
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  v11 = unwrapMTLGenericBVHBuffersSPI(v7);

  v12 = [(MTL4CommandEncoderSPI *)baseObject writeGenericBVHStructureOfAccelerationStructure:v10 into:v11];
  return v12;
}

- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  [v7 touch];
  if (v7)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v7];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  v11 = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeCompactedAccelerationStructureSize:v11 toBuffer:var0, var1];

  v12 = v24;
  *(v24 + 8) = -14826;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x20uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 32;
  }

  *(v12 + 13) = v13;
  v17 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v17)
  {
    v18 = v17->var0;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v7 traceStream];
  if (v19)
  {
    v20 = *v19;
  }

  else
  {
    v20 = 0;
  }

  *v14 = v18;
  *(v14 + 1) = v20;
  *(v14 + 2) = var0;
  *(v14 + 3) = var1;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)writeAccelerationStructureTraversalDepth:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  [v7 touch];
  if (v7)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v7];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  v11 = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeAccelerationStructureTraversalDepth:v11 toBuffer:var0, var1];

  v12 = v24;
  *(v24 + 8) = -14827;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x20uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 32;
  }

  *(v12 + 13) = v13;
  v17 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v17)
  {
    v18 = v17->var0;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v7 traceStream];
  if (v19)
  {
    v20 = *v19;
  }

  else
  {
    v20 = 0;
  }

  *v14 = v18;
  *(v14 + 1) = v20;
  *(v14 + 2) = var0;
  *(v14 + 3) = var1;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v11 = a3;
  [v11 touch];
  v7 = v11;
  if (v11)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v11];
      v7 = v11;
    }
  }

  baseObject = self->_baseObject;
  v10 = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeAccelerationStructureSerializationData:v10 toBuffer:var0, var1];
}

- (void)waitForFence:(id)a3 beforeEncoderStages:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject waitForFence:v10 beforeEncoderStages:a4];

  v11 = v23;
  *(v23 + 8) = -15081;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)updateFence:(id)a3 afterEncoderStages:(unint64_t)a4
{
  v6 = a3;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v10 = [v6 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject updateFence:v10 afterEncoderStages:a4];

  v11 = v23;
  *(v23 + 8) = -15082;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [v6 traceStream];
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = a4;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4CommandEncoderSPI *)self->_baseObject setThreadgroupMemoryLength:a3 atIndex:a4];
  v8 = v18;
  *(v18 + 8) = -15083;
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
  v13 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4CommandEncoderSPI *)self->_baseObject setImageblockWidth:a3 height:a4];
  v8 = v18;
  *(v18 + 8) = -15084;
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
  v13 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)setComputePipelineState:(id)a3
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
  [(MTL4CommandEncoderSPI *)baseObject setComputePipelineState:v8];

  v9 = v21;
  *(v21 + 8) = -15085;
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
  v14 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)setArgumentTable:(id)a3
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
  [(MTL4CommandEncoderSPI *)baseObject setArgumentTable:v8];

  v9 = v21;
  *(v21 + 8) = -15086;
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
  v14 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v11 = a3;
  [v11 touch];
  v7 = v11;
  if (v11)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v11];
      v7 = v11;
    }
  }

  baseObject = self->_baseObject;
  v10 = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject serializePrimitiveAccelerationStructure:v10 toBuffer:var0, var1];
}

- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_resetCommandsInBuffer_withRange", "Metal 4 Compute Command Encoder", 0, 0);
  [v11 touch];
  v7 = v11;
  if (v11)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v11];
      v7 = v11;
    }
  }

  baseObject = self->_baseObject;
  v10 = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject resetCommandsInBuffer:v10 withRange:location, length];
}

- (void)pushDebugGroup:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4CommandEncoderSPI *)self->_baseObject pushDebugGroup:v4];
  v6 = v19;
  *(v19 + 8) = -15088;
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
  v11 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
  [(MTL4CommandEncoderSPI *)self->_baseObject popDebugGroup];
  v4 = v14;
  *(v14 + 8) = -15089;
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
  v9 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)optimizeIndirectCommandBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_optimizeIndirectCommandBuffer_withRange", "Metal 4 Compute Command Encoder", 0, 0);
  [v11 touch];
  v7 = v11;
  if (v11)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v11];
      v7 = v11;
    }
  }

  baseObject = self->_baseObject;
  v10 = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject optimizeIndirectCommandBuffer:v10 withRange:location, length];
}

- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v8 = a3;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v8 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject optimizeContentsForGPUAccess:v12 slice:a4 level:a5];

  v13 = v25;
  *(v25 + 8) = -15091;
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
  v18 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v8 traceStream];
  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)optimizeContentsForGPUAccess:(id)a3
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
  [(MTL4CommandEncoderSPI *)baseObject optimizeContentsForGPUAccess:v8];

  v9 = v21;
  *(v21 + 8) = -15092;
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
  v14 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v8 = a3;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v8 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject optimizeContentsForCPUAccess:v12 slice:a4 level:a5];

  v13 = v25;
  *(v25 + 8) = -15093;
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
  v18 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v8 traceStream];
  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)optimizeContentsForCPUAccess:(id)a3
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
  [(MTL4CommandEncoderSPI *)baseObject optimizeContentsForCPUAccess:v8];

  v9 = v21;
  *(v21 + 8) = -15094;
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
  v14 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)insertDebugSignpost:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4CommandEncoderSPI *)self->_baseObject insertDebugSignpost:v4];
  v6 = v19;
  *(v19 + 8) = -15095;
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
  v11 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)generateMipmapsForTexture:(id)a3
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
  [(MTL4CommandEncoderSPI *)baseObject generateMipmapsForTexture:v8];

  v9 = v21;
  *(v21 + 8) = -15096;
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
  v14 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  v17 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_color_pixelFormat", "Metal 4 Compute Command Encoder", 0, 0);
  [v17 touch];
  if (v17)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v17];
    }
  }

  baseObject = self->_baseObject;
  v20 = [v17 baseObject];
  v21 = *&a6->var0.var2;
  v22[0] = *&a6->var0.var0;
  v22[1] = v21;
  v22[2] = *&a6->var1.var1;
  [(MTL4CommandEncoderSPI *)baseObject fillTexture:v20 level:a4 slice:a5 region:v22 color:a8 pixelFormat:var0, var1, var2, var3];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  v15 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_color", "Metal 4 Compute Command Encoder", 0, 0);
  [v15 touch];
  if (v15)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v15];
    }
  }

  baseObject = self->_baseObject;
  v18 = [v15 baseObject];
  v19 = *&a6->var0.var2;
  v20[0] = *&a6->var0.var0;
  v20[1] = v19;
  v20[2] = *&a6->var1.var1;
  [(MTL4CommandEncoderSPI *)baseObject fillTexture:v18 level:a4 slice:a5 region:v20 color:var0, var1, var2, var3];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8
{
  v14 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_bytes_length", "Metal 4 Compute Command Encoder", 0, 0);
  [v14 touch];
  if (v14)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v14];
    }
  }

  baseObject = self->_baseObject;
  v17 = [v14 baseObject];
  v18 = *&a6->var0.var2;
  v19[0] = *&a6->var0.var0;
  v19[1] = v18;
  v19[2] = *&a6->var1.var1;
  [(MTL4CommandEncoderSPI *)baseObject fillTexture:v17 level:a4 slice:a5 region:v19 bytes:a7 length:a8];
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_executeCommandsInBuffer_withRange", "Metal 4 Compute Command Encoder", 0, 0);
  [v11 touch];
  v7 = v11;
  if (v11)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v11];
      v7 = v11;
    }
  }

  baseObject = self->_baseObject;
  v10 = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject executeCommandsInBuffer:v10 withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4
{
  v10 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_executeCommandsInBuffer_indirectBuffer", "Metal 4 Compute Command Encoder", 0, 0);
  [v10 touch];
  v6 = v10;
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
      v6 = v10;
    }
  }

  baseObject = self->_baseObject;
  v9 = [v6 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject executeCommandsInBuffer:v9 indirectBuffer:a4];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_endEncodingAndRetrieveProgramAddressTable", "Metal 4 Profiling SPI", 0, 0);
  baseObject = self->_baseObject;

  return [(MTL4CommandEncoderSPI *)baseObject endEncodingAndRetrieveProgramAddressTable];
}

- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTL4CommandEncoderSPI *)self->_baseObject dispatchThreadsWithIndirectBuffer:a3];
  v6 = v16;
  *(v16 + 8) = -15105;
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
  v11 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  v22 = *a3;
  v21 = *a4;
  [(MTL4CommandEncoderSPI *)baseObject dispatchThreads:&v22 threadsPerThreadgroup:&v21];
  v9 = v24;
  *(v24 + 8) = -15106;
  v10 = BYTE9(v25);
  if (BYTE9(v25) > 8uLL)
  {
    v12 = *(*(&v23 + 1) + 24);
    v13 = BYTE10(v25);
    ++BYTE10(v25);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v24 + 1), v13 | 0x3800000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v25));
    BYTE9(v25) += 56;
  }

  *(v9 + 13) = v10;
  v14 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = a3->var2;
  v17 = a4->var2;
  *v11 = var0;
  v18 = *&a4->var0;
  *(v11 + 8) = *&a3->var0;
  *(v11 + 3) = var2;
  *(v11 + 2) = v18;
  *(v11 + 6) = v17;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerThreadgroup:(id *)a4
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  v19 = *a4;
  [(MTL4CommandEncoderSPI *)baseObject dispatchThreadgroupsWithIndirectBuffer:a3 threadsPerThreadgroup:&v19];
  v9 = v21;
  *(v21 + 8) = -15107;
  v10 = BYTE9(v22);
  if (BYTE9(v22) > 0x18uLL)
  {
    v12 = *(*(&v20 + 1) + 24);
    v13 = BYTE10(v22);
    ++BYTE10(v22);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v21 + 1), v13 | 0x2800000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v22));
    BYTE9(v22) += 40;
  }

  *(v9 + 13) = v10;
  v14 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = a4->var2;
  *v11 = var0;
  *(v11 + 1) = a3;
  *(v11 + 1) = *&a4->var0;
  *(v11 + 4) = var2;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  v22 = *a3;
  v21 = *a4;
  [(MTL4CommandEncoderSPI *)baseObject dispatchThreadgroups:&v22 threadsPerThreadgroup:&v21];
  v9 = v24;
  *(v24 + 8) = -15108;
  v10 = BYTE9(v25);
  if (BYTE9(v25) > 8uLL)
  {
    v12 = *(*(&v23 + 1) + 24);
    v13 = BYTE10(v25);
    ++BYTE10(v25);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v24 + 1), v13 | 0x3800000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v25));
    BYTE9(v25) += 56;
  }

  *(v9 + 13) = v10;
  v14 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = a3->var2;
  v17 = a4->var2;
  *v11 = var0;
  v18 = *&a4->var0;
  *(v11 + 8) = *&a3->var0;
  *(v11 + 3) = var2;
  *(v11 + 2) = v18;
  *(v11 + 6) = v17;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v11 = a3;
  [v11 touch];
  v7 = v11;
  if (v11)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v11];
      v7 = v11;
    }
  }

  baseObject = self->_baseObject;
  v10 = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject deserializePrimitiveAccelerationStructure:v10 fromBuffer:var0, var1];
}

- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6
{
  length = a4.length;
  location = a4.location;
  v17 = a3;
  v11 = a5;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_copyIndirectCommandBuffer_sourceRange_destination_destinationIndex", "Metal 4 Compute Command Encoder", 0, 0);
  [v17 touch];
  if (v17)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v17];
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

  baseObject = self->_baseObject;
  v15 = [v17 baseObject];
  v16 = [v11 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyIndirectCommandBuffer:v15 sourceRange:location destination:length destinationIndex:v16, a6];
}

- (void)copyFromTexture:(id)a3 toTexture:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  [v7 touch];
  if (v7)
  {
    v9 = self->_retainedObjects;
    if (v9)
    {
      [(NSMutableSet *)v9 addObject:v7];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  v12 = [v6 baseObject];
  v13 = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:v12 toTexture:v13];

  v14 = v28;
  *(v28 + 8) = -15111;
  v15 = BYTE9(v29);
  if (BYTE9(v29) > 0x28uLL)
  {
    v17 = *(*(&v27 + 1) + 24);
    v18 = BYTE10(v29);
    ++BYTE10(v29);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v28 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v29));
    BYTE9(v29) += 24;
  }

  *(v14 + 13) = v15;
  v19 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v21 = [v6 traceStream];
  if (v21)
  {
    v22 = *v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v7 traceStream];
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = v24;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10
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

  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v37);
  baseObject = self->_baseObject;
  v20 = [v14 baseObject];
  v21 = [v15 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:v20 sourceSlice:a4 sourceLevel:a5 toTexture:v21 destinationSlice:a7 destinationLevel:a8 sliceCount:a9 levelCount:a10];

  v22 = *(&v37 + 1);
  v23 = v38;
  *(v38 + 8) = -15112;
  v24 = *(v22 + 24);
  v25 = BYTE10(v39);
  ++BYTE10(v39);
  Bytes = GTTraceMemPool_allocateBytes(v24, *(&v38 + 1), v25 | 0x4800000000);
  *(v23 + 13) = v25;
  v27 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v30;
  *(Bytes + 4) = a4;
  *(Bytes + 5) = a5;
  *(Bytes + 6) = v32;
  *(Bytes + 7) = a7;
  *(Bytes + 8) = a8;
  *(Bytes + 9) = a9;
  *(Bytes + 10) = a10;
  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v39);
  *(v38 + 15) |= 8u;
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v16 = a3;
  v17 = a8;
  [v16 touch];
  if (v16)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v16];
    }
  }

  [v17 touch];
  if (v17)
  {
    v19 = self->_retainedObjects;
    if (v19)
    {
      [(NSMutableSet *)v19 addObject:v17];
    }
  }

  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v53);
  baseObject = self->_baseObject;
  v22 = [v16 baseObject];
  v23 = [v17 baseObject];
  v51 = *&a6->var0;
  var2 = a6->var2;
  v49 = *&a7->var0;
  v50 = a7->var2;
  v48 = *a11;
  v45 = a5;
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:v22 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v51 sourceSize:&v49 toTexture:v23 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v48];

  v24 = *(&v53 + 1);
  v25 = v54;
  *(v54 + 8) = -15113;
  v26 = *(v24 + 24);
  v27 = BYTE10(v55);
  ++BYTE10(v55);
  Bytes = GTTraceMemPool_allocateBytes(v26, *(&v54 + 1), v27 | 0x8000000000);
  *(v25 + 13) = v27;
  v29 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v29)
  {
    var0 = v29->var0;
  }

  else
  {
    var0 = 0;
  }

  v31 = [v16 traceStream];
  v46 = v16;
  if (v31)
  {
    v32 = *v31;
  }

  else
  {
    v32 = 0;
  }

  v34 = a6->var0;
  var1 = a6->var1;
  v35 = a6->var2;
  v37 = a7->var0;
  v36 = a7->var1;
  v38 = a7->var2;
  v39 = [v17 traceStream];
  if (v39)
  {
    v40 = *v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = a11->var2;
  *(Bytes + 2) = var0;
  *(Bytes + 3) = v32;
  *(Bytes + 4) = a4;
  *(Bytes + 5) = v45;
  *(Bytes + 12) = v40;
  *(Bytes + 13) = a9;
  *(Bytes + 14) = a10;
  v42 = *&a11->var0;
  *(Bytes + 6) = v34;
  *(Bytes + 7) = var1;
  *(Bytes + 8) = v35;
  *(Bytes + 9) = v37;
  *(Bytes + 10) = v36;
  *(Bytes + 11) = v38;
  *(Bytes + 120) = v42;
  *(Bytes + 17) = v41;
  s();
  *v43 = v44;
  *(v43 + 8) = BYTE8(v55);
  *(v54 + 15) |= 8u;
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12
{
  v18 = a3;
  v19 = a8;
  [v18 touch];
  if (v18)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v18];
    }
  }

  [v19 touch];
  if (v19)
  {
    v21 = self->_retainedObjects;
    if (v21)
    {
      [(NSMutableSet *)v21 addObject:v19];
    }
  }

  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v52);
  baseObject = self->_baseObject;
  v24 = [v18 baseObject];
  v25 = [v19 baseObject];
  v50 = *&a6->var0;
  var2 = a6->var2;
  v48 = *&a7->var0;
  v49 = a7->var2;
  v45 = a4;
  v46 = a5;
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:v24 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v50 sourceSize:&v48 toBuffer:v25 destinationOffset:a9 destinationBytesPerRow:a10 destinationBytesPerImage:a11 options:a12];

  v26 = *(&v52 + 1);
  v27 = v53;
  *(v53 + 8) = -15114;
  v28 = *(v26 + 24);
  v29 = BYTE10(v54);
  ++BYTE10(v54);
  Bytes = GTTraceMemPool_allocateBytes(v28, *(&v53 + 1), v29 | 0x7800000000);
  *(v27 + 13) = v29;
  v31 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v31)
  {
    var0 = v31->var0;
  }

  else
  {
    var0 = 0;
  }

  v33 = [v18 traceStream];
  v47 = v18;
  if (v33)
  {
    v34 = *v33;
  }

  else
  {
    v34 = 0;
  }

  v36 = a6->var0;
  var1 = a6->var1;
  v37 = a6->var2;
  v39 = a7->var0;
  v38 = a7->var1;
  v40 = a7->var2;
  v41 = [v19 traceStream];
  if (v41)
  {
    v42 = *v41;
  }

  else
  {
    v42 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v34;
  *(Bytes + 4) = v45;
  *(Bytes + 5) = v46;
  *(Bytes + 6) = v36;
  *(Bytes + 7) = var1;
  *(Bytes + 8) = v37;
  *(Bytes + 9) = v39;
  *(Bytes + 10) = v38;
  *(Bytes + 11) = v40;
  *(Bytes + 12) = v42;
  *(Bytes + 13) = a9;
  *(Bytes + 14) = a10;
  *(Bytes + 15) = a11;
  *(Bytes + 16) = a12;
  s();
  *v43 = v44;
  *(v43 + 8) = BYTE8(v54);
  *(v53 + 15) |= 8u;
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11
{
  v17 = a3;
  v18 = a8;
  [v17 touch];
  if (v17)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v17];
    }
  }

  [v18 touch];
  if (v18)
  {
    v20 = self->_retainedObjects;
    if (v20)
    {
      [(NSMutableSet *)v20 addObject:v18];
    }
  }

  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v51);
  baseObject = self->_baseObject;
  v23 = [v17 baseObject];
  v24 = [v18 baseObject];
  v49 = *&a6->var0;
  var2 = a6->var2;
  v47 = *&a7->var0;
  v48 = a7->var2;
  v44 = a4;
  v45 = a5;
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:v23 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v49 sourceSize:&v47 toBuffer:v24 destinationOffset:a9 destinationBytesPerRow:a10 destinationBytesPerImage:a11];

  v25 = *(&v51 + 1);
  v26 = v52;
  *(v52 + 8) = -15115;
  v27 = *(v25 + 24);
  v28 = BYTE10(v53);
  ++BYTE10(v53);
  Bytes = GTTraceMemPool_allocateBytes(v27, *(&v52 + 1), v28 | 0x7000000000);
  *(v26 + 13) = v28;
  v30 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v30)
  {
    var0 = v30->var0;
  }

  else
  {
    var0 = 0;
  }

  v32 = [v17 traceStream];
  v46 = v17;
  if (v32)
  {
    v33 = *v32;
  }

  else
  {
    v33 = 0;
  }

  v35 = a6->var0;
  var1 = a6->var1;
  v36 = a6->var2;
  v38 = a7->var0;
  v37 = a7->var1;
  v39 = a7->var2;
  v40 = [v18 traceStream];
  if (v40)
  {
    v41 = *v40;
  }

  else
  {
    v41 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v33;
  *(Bytes + 4) = v44;
  *(Bytes + 5) = v45;
  *(Bytes + 6) = v35;
  *(Bytes + 7) = var1;
  *(Bytes + 8) = v36;
  *(Bytes + 9) = v38;
  *(Bytes + 10) = v37;
  *(Bytes + 11) = v39;
  *(Bytes + 12) = v41;
  *(Bytes + 13) = a9;
  *(Bytes + 14) = a10;
  *(Bytes + 15) = a11;
  s();
  *v42 = v43;
  *(v42 + 8) = BYTE8(v53);
  *(v52 + 15) |= 8u;
}

- (void)copyFromTensor:(id)a3 sourceOrigin:(id)a4 sourceDimensions:(id)a5 toTensor:(id)a6 destinationOrigin:(id)a7 destinationDimensions:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v17 = a7;
  v18 = a5;
  v19 = a4;
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
    v21 = self->_retainedObjects;
    if (v21)
    {
      [(NSMutableSet *)v21 addObject:v15];
    }
  }

  v114 = 0u;
  v115 = 0u;
  v113 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v113);
  baseObject = self->_baseObject;
  v112 = v14;
  v24 = [v14 baseObject];
  v111 = v15;
  v25 = [v15 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyFromTensor:v24 sourceOrigin:v19 sourceDimensions:v18 toTensor:v25 destinationOrigin:v17 destinationDimensions:v16];

  v26 = *(&v113 + 1);
  v27 = v114;
  *(v114 + 8) = -14812;
  v28 = *(v26 + 24);
  v29 = BYTE10(v115);
  ++BYTE10(v115);
  Bytes = GTTraceMemPool_allocateBytes(v28, *(&v114 + 1), v29 | 0x23800000000);
  *(v27 + 13) = v29;
  v31 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v31)
  {
    var0 = v31->var0;
  }

  else
  {
    var0 = 0;
  }

  v32 = [v112 traceStream];
  if (v32)
  {
    v109 = *v32;
  }

  else
  {
    v109 = 0;
  }

  v108 = [v19 rank];
  v107 = *[v19 extents];
  v106 = *([v19 extents] + 1);
  v105 = *([v19 extents] + 2);
  v104 = *([v19 extents] + 3);
  v103 = *([v19 extents] + 4);
  v102 = *([v19 extents] + 5);
  v101 = *([v19 extents] + 6);
  v100 = *([v19 extents] + 7);
  v99 = *([v19 extents] + 8);
  v98 = *([v19 extents] + 9);
  v97 = *([v19 extents] + 10);
  v96 = *([v19 extents] + 11);
  v95 = *([v19 extents] + 12);
  v94 = *([v19 extents] + 13);
  v93 = *([v19 extents] + 14);
  v33 = [v19 extents];

  v92 = v33[15];
  v91 = [v18 rank];
  v90 = *[v18 extents];
  v89 = *([v18 extents] + 1);
  v88 = *([v18 extents] + 2);
  v87 = *([v18 extents] + 3);
  v86 = *([v18 extents] + 4);
  v85 = *([v18 extents] + 5);
  v84 = *([v18 extents] + 6);
  v83 = *([v18 extents] + 7);
  v82 = *([v18 extents] + 8);
  v81 = *([v18 extents] + 9);
  v80 = *([v18 extents] + 10);
  v79 = *([v18 extents] + 11);
  v78 = *([v18 extents] + 12);
  v77 = *([v18 extents] + 13);
  v76 = *([v18 extents] + 14);
  v34 = [v18 extents];

  v75 = v34[15];
  v35 = [v111 traceStream];
  if (v35)
  {
    v74 = *v35;
  }

  else
  {
    v74 = 0;
  }

  v73 = [v17 rank];
  v72 = *[v17 extents];
  v71 = *([v17 extents] + 1);
  v70 = *([v17 extents] + 2);
  v69 = *([v17 extents] + 3);
  v68 = *([v17 extents] + 4);
  v67 = *([v17 extents] + 5);
  v66 = *([v17 extents] + 6);
  v65 = *([v17 extents] + 7);
  v64 = *([v17 extents] + 8);
  v63 = *([v17 extents] + 9);
  v62 = *([v17 extents] + 10);
  v61 = *([v17 extents] + 11);
  v60 = *([v17 extents] + 12);
  v59 = *([v17 extents] + 13);
  v58 = *([v17 extents] + 14);
  v36 = [v17 extents];

  v57 = v36[15];
  v56 = [v16 rank];
  v55 = *[v16 extents];
  v54 = *([v16 extents] + 1);
  v53 = *([v16 extents] + 2);
  v52 = *([v16 extents] + 3);
  v51 = *([v16 extents] + 4);
  v50 = *([v16 extents] + 5);
  v49 = *([v16 extents] + 6);
  v48 = *([v16 extents] + 7);
  v37 = *([v16 extents] + 8);
  v38 = *([v16 extents] + 9);
  v39 = *([v16 extents] + 10);
  v40 = *([v16 extents] + 11);
  v41 = *([v16 extents] + 12);
  v42 = *([v16 extents] + 13);
  v43 = *([v16 extents] + 14);
  v44 = [v16 extents];

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v109;
  v45 = v44[15];
  *(Bytes + 4) = v108;
  *(Bytes + 5) = v107;
  *(Bytes + 6) = v106;
  *(Bytes + 7) = v105;
  *(Bytes + 8) = v104;
  *(Bytes + 9) = v103;
  *(Bytes + 10) = v102;
  *(Bytes + 11) = v101;
  *(Bytes + 12) = v100;
  *(Bytes + 13) = v99;
  *(Bytes + 14) = v98;
  *(Bytes + 15) = v97;
  *(Bytes + 16) = v96;
  *(Bytes + 17) = v95;
  *(Bytes + 18) = v94;
  *(Bytes + 19) = v93;
  *(Bytes + 20) = v92;
  *(Bytes + 21) = v91;
  *(Bytes + 22) = v90;
  *(Bytes + 23) = v89;
  *(Bytes + 24) = v88;
  *(Bytes + 25) = v87;
  *(Bytes + 26) = v86;
  *(Bytes + 27) = v85;
  *(Bytes + 28) = v84;
  *(Bytes + 29) = v83;
  *(Bytes + 30) = v82;
  *(Bytes + 31) = v81;
  *(Bytes + 32) = v80;
  *(Bytes + 33) = v79;
  *(Bytes + 34) = v78;
  *(Bytes + 35) = v77;
  *(Bytes + 36) = v76;
  *(Bytes + 37) = v75;
  *(Bytes + 38) = v74;
  *(Bytes + 39) = v73;
  *(Bytes + 40) = v72;
  *(Bytes + 41) = v71;
  *(Bytes + 42) = v70;
  *(Bytes + 43) = v69;
  *(Bytes + 44) = v68;
  *(Bytes + 45) = v67;
  *(Bytes + 46) = v66;
  *(Bytes + 47) = v65;
  *(Bytes + 48) = v64;
  *(Bytes + 49) = v63;
  *(Bytes + 50) = v62;
  *(Bytes + 51) = v61;
  *(Bytes + 52) = v60;
  *(Bytes + 53) = v59;
  *(Bytes + 54) = v58;
  *(Bytes + 55) = v57;
  *(Bytes + 56) = v56;
  *(Bytes + 57) = v55;
  *(Bytes + 58) = v54;
  *(Bytes + 59) = v53;
  *(Bytes + 60) = v52;
  *(Bytes + 61) = v51;
  *(Bytes + 62) = v50;
  *(Bytes + 63) = v49;
  *(Bytes + 64) = v48;
  *(Bytes + 65) = v37;
  *(Bytes + 66) = v38;
  *(Bytes + 67) = v39;
  *(Bytes + 68) = v40;
  *(Bytes + 69) = v41;
  *(Bytes + 70) = v42;
  *(Bytes + 71) = v43;
  *(Bytes + 72) = v45;
  s();
  *v46 = v47;
  *(v46 + 8) = BYTE8(v115);
  *(v114 + 15) |= 8u;
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  [v12 touch];
  if (v12)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v12];
    }
  }

  [v13 touch];
  if (v13)
  {
    v15 = self->_retainedObjects;
    if (v15)
    {
      [(NSMutableSet *)v15 addObject:v13];
    }
  }

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  baseObject = self->_baseObject;
  v18 = [v12 baseObject];
  v19 = [v13 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyFromBuffer:v18 sourceOffset:a4 toBuffer:v19 destinationOffset:a6 size:a7];

  v20 = v34;
  *(v34 + 8) = -15117;
  v21 = BYTE9(v35);
  if (BYTE9(v35) > 0x10uLL)
  {
    v23 = *(*(&v33 + 1) + 24);
    v24 = BYTE10(v35);
    ++BYTE10(v35);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v34 + 1), v24 | 0x3000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v35));
    BYTE9(v35) += 48;
  }

  *(v20 + 13) = v21;
  v25 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v25)
  {
    var0 = v25->var0;
  }

  else
  {
    var0 = 0;
  }

  v27 = [v12 traceStream];
  if (v27)
  {
    v28 = *v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = [v13 traceStream];
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
  *(v22 + 2) = a4;
  *(v22 + 3) = v30;
  *(v22 + 4) = a6;
  *(v22 + 5) = a7;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  v17 = a3;
  v18 = a8;
  [v17 touch];
  if (v17)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v17];
    }
  }

  [v18 touch];
  if (v18)
  {
    v20 = self->_retainedObjects;
    if (v20)
    {
      [(NSMutableSet *)v20 addObject:v18];
    }
  }

  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v50);
  baseObject = self->_baseObject;
  v23 = [v17 baseObject];
  v24 = [v18 baseObject];
  v48 = *&a7->var0;
  var2 = a7->var2;
  v47 = *a11;
  v45 = a5;
  v25 = a5;
  v26 = a6;
  [(MTL4CommandEncoderSPI *)baseObject copyFromBuffer:v23 sourceOffset:a4 sourceBytesPerRow:v25 sourceBytesPerImage:a6 sourceSize:&v48 toTexture:v24 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v47 options:a12];

  v27 = *(&v50 + 1);
  v28 = v51;
  *(v51 + 8) = -15118;
  v29 = *(v27 + 24);
  v30 = BYTE10(v52);
  ++BYTE10(v52);
  Bytes = GTTraceMemPool_allocateBytes(v29, *(&v51 + 1), v30 | 0x7800000000);
  *(v28 + 13) = v30;
  v32 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v32)
  {
    var0 = v32->var0;
  }

  else
  {
    var0 = 0;
  }

  v34 = [v17 traceStream];
  if (v34)
  {
    v35 = *v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = a7->var0;
  var1 = a7->var1;
  v38 = a7->var2;
  v39 = [v18 traceStream];
  if (v39)
  {
    v40 = *v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = a11->var2;
  *(Bytes + 2) = var0;
  *(Bytes + 3) = v35;
  *(Bytes + 4) = a4;
  *(Bytes + 5) = v45;
  *(Bytes + 10) = v40;
  *(Bytes + 11) = a9;
  *(Bytes + 12) = a10;
  v42 = *&a11->var0;
  *(Bytes + 6) = v26;
  *(Bytes + 7) = v36;
  *(Bytes + 8) = var1;
  *(Bytes + 9) = v38;
  *(Bytes + 104) = v42;
  *(Bytes + 15) = v41;
  *(Bytes + 16) = a12;
  s();
  *v43 = v44;
  *(v43 + 8) = BYTE8(v52);
  *(v51 + 15) |= 8u;
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v16 = a3;
  v17 = a8;
  [v16 touch];
  if (v16)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v16];
    }
  }

  [v17 touch];
  if (v17)
  {
    v19 = self->_retainedObjects;
    if (v19)
    {
      [(NSMutableSet *)v19 addObject:v17];
    }
  }

  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v49);
  baseObject = self->_baseObject;
  v22 = [v16 baseObject];
  v23 = [v17 baseObject];
  v47 = *&a7->var0;
  var2 = a7->var2;
  v46 = *a11;
  v44 = a5;
  v24 = a5;
  v25 = a6;
  [(MTL4CommandEncoderSPI *)baseObject copyFromBuffer:v22 sourceOffset:a4 sourceBytesPerRow:v24 sourceBytesPerImage:a6 sourceSize:&v47 toTexture:v23 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v46];

  v26 = *(&v49 + 1);
  v27 = v50;
  *(v50 + 8) = -15119;
  v28 = *(v26 + 24);
  v29 = BYTE10(v51);
  ++BYTE10(v51);
  Bytes = GTTraceMemPool_allocateBytes(v28, *(&v50 + 1), v29 | 0x7000000000);
  *(v27 + 13) = v29;
  v31 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v31)
  {
    var0 = v31->var0;
  }

  else
  {
    var0 = 0;
  }

  v33 = [v16 traceStream];
  if (v33)
  {
    v34 = *v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = a7->var0;
  var1 = a7->var1;
  v37 = a7->var2;
  v38 = [v17 traceStream];
  if (v38)
  {
    v39 = *v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = a11->var2;
  *(Bytes + 2) = var0;
  *(Bytes + 3) = v34;
  *(Bytes + 4) = a4;
  *(Bytes + 5) = v44;
  *(Bytes + 10) = v39;
  *(Bytes + 11) = a9;
  *(Bytes + 12) = a10;
  v41 = *&a11->var0;
  *(Bytes + 6) = v25;
  *(Bytes + 7) = v35;
  *(Bytes + 8) = var1;
  *(Bytes + 9) = v37;
  *(Bytes + 104) = v41;
  *(Bytes + 15) = v40;
  s();
  *v42 = v43;
  *(v42 + 8) = BYTE8(v51);
  *(v50 + 15) |= 8u;
}

- (void)barrierAfterStages:(unint64_t)a3 beforeQueueStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTL4CommandEncoderSPI *)self->_baseObject barrierAfterStages:a3 beforeQueueStages:a4 visibilityOptions:a5];
  v10 = v20;
  *(v20 + 8) = -14813;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = a3;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTL4CommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:a3 beforeStages:a4 visibilityOptions:a5];
  v10 = v20;
  *(v20 + 8) = -14814;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = a3;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)barrierAfterEncoderStages:(unint64_t)a3 beforeEncoderStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTL4CommandEncoderSPI *)self->_baseObject barrierAfterEncoderStages:a3 beforeEncoderStages:a4 visibilityOptions:a5];
  v10 = v20;
  *(v20 + 8) = -14815;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v10 + 13) = v11;
  v15 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = a3;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4CommandEncoderSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -15127;
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
  v11 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
  v5 = [(MTL4CommandEncoderSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTL4ComputeCommandEncoder;
  v3 = [(CaptureMTL4ComputeCommandEncoder *)&v7 description];
  v4 = [(MTL4CommandEncoderSPI *)self->_baseObject description];
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

- (void)deserializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 fromBuffer:(MTL4BufferRange)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v14 = a3;
  v9 = a4;
  [v14 touch];
  if (v14)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v14];
    }
  }

  RetainNSArray(self->_retainedObjects, v9);
  baseObject = self->_baseObject;
  v12 = [v14 baseObject];
  v13 = unwrapNSArray(v9);

  [(MTL4CommandEncoderSPI *)baseObject deserializeInstanceAccelerationStructure:v12 referencedAccelerationStructures:v13 fromBuffer:var0, var1];
}

- (void)serializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 toBuffer:(MTL4BufferRange)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v14 = a3;
  v9 = a4;
  [v14 touch];
  if (v14)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v14];
    }
  }

  RetainNSArray(self->_retainedObjects, v9);
  baseObject = self->_baseObject;
  v12 = [v14 baseObject];
  v13 = unwrapNSArray(v9);

  [(MTL4CommandEncoderSPI *)baseObject serializeInstanceAccelerationStructure:v12 referencedAccelerationStructures:v13 toBuffer:var0, var1];
}

- (void)dealloc
{
  GTAccelerationStructureDescriptorDownloader_MTL4_destroy(self->_descriptorDownloader);
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15109;
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
  v9 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
  v13.super_class = CaptureMTL4ComputeCommandEncoder;
  [(CaptureMTL4ComputeCommandEncoder *)&v13 dealloc];
}

- (void)endEncoding
{
  GTAccelerationStructureDescriptorDownloader_processEndEncoding(self->_descriptorDownloader);
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTL4CommandEncoderSPI *)self->_baseObject endEncoding];
  descriptorDownloader = self->_descriptorDownloader;
  v5 = [(CaptureMTL4CommandBuffer *)self->_captureCommandBuffer accelerationStructureDescriptorProcessEvent];
  GTAccelerationStructureDescriptorDownloader_MTL4_postProcess(descriptorDownloader, v5);

  v6 = v16;
  *(v16 + 8) = -15104;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x38uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x800000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 8;
  }

  *(v6 + 13) = v7;
  v11 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6 options:(unint64_t)a7
{
  var1 = a6.var1;
  var0 = a6.var0;
  v13 = a3;
  v14 = a5;
  v15 = a4;
  [v13 touch];
  if (v13)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v13];
    }
  }

  [v14 touch];
  if (v14)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:v14];
    }
  }

  RetainObjectForDescriptorDownloader(v13, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(v14, self->_retainedDescriptorObjectsByStreamRef);
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v43);
  baseObject = self->_baseObject;
  v20 = [v13 baseObject];
  v21 = [v14 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject refitAccelerationStructure:v20 descriptor:v15 destination:v21 scratchBuffer:var0 options:var1, a7];

  v22 = v44;
  *(v44 + 8) = -14828;
  v23 = BYTE9(v45);
  v42 = a7;
  if (BYTE9(v45) > 8uLL)
  {
    v25 = *(*(&v43 + 1) + 24);
    v26 = BYTE10(v45);
    ++BYTE10(v45);
    v24 = GTTraceMemPool_allocateBytes(v25, *(&v44 + 1), v26 | 0x3800000000) + 16;
    v23 = v26;
  }

  else
  {
    v24 = (v22 + BYTE9(v45));
    BYTE9(v45) += 56;
  }

  *(v22 + 13) = v23;
  v27 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v27)
  {
    v40 = v27->var0;
  }

  else
  {
    v40 = 0;
  }

  v28 = v15;
  v29 = [v13 traceStream];
  v30 = var0;
  if (v29)
  {
    v31 = *v29;
  }

  else
  {
    v31 = 0;
  }

  v32 = var1;
  v33 = [v14 traceStream];
  if (v33)
  {
    v34 = *v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = SaveMTL4AccelerationStructureDescriptor(&v43, v28);

  *v24 = v41;
  *(v24 + 1) = v31;
  *(v24 + 2) = v34;
  *(v24 + 3) = v30;
  *(v24 + 4) = v32;
  *(v24 + 5) = v42;
  v24[48] = v35;
  *(v24 + 49) = 0;
  *(v24 + 13) = 0;
  v36 = v14;
  v37 = v13;
  GTAccelerationStructureDescriptorDownloader_processRefit([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v37, v36);

  s();
  *v38 = v39;
  *(v38 + 8) = BYTE8(v45);
  *(v44 + 15) |= 8u;
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v11 = a3;
  v12 = a5;
  v13 = a4;
  [v11 touch];
  if (v11)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v11];
    }
  }

  [v12 touch];
  if (v12)
  {
    v15 = self->_retainedObjects;
    if (v15)
    {
      [(NSMutableSet *)v15 addObject:v12];
    }
  }

  RetainObjectForDescriptorDownloader(v11, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(v12, self->_retainedDescriptorObjectsByStreamRef);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v18 = [v11 baseObject];
  v19 = [v12 baseObject];
  v37 = var0;
  [(MTL4CommandEncoderSPI *)baseObject refitAccelerationStructure:v18 descriptor:v13 destination:v19 scratchBuffer:var0, var1];

  v20 = v39;
  *(v39 + 8) = -14829;
  v21 = BYTE9(v40);
  v22 = var1;
  if (BYTE9(v40) > 0x10uLL)
  {
    v24 = *(*(&v38 + 1) + 24);
    v25 = BYTE10(v40);
    ++BYTE10(v40);
    v23 = GTTraceMemPool_allocateBytes(v24, *(&v39 + 1), v25 | 0x3000000000) + 16;
    v21 = v25;
  }

  else
  {
    v23 = (v20 + BYTE9(v40));
    BYTE9(v40) += 48;
  }

  *(v20 + 13) = v21;
  v26 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v26)
  {
    v27 = v26->var0;
  }

  else
  {
    v27 = 0;
  }

  v28 = [v11 traceStream];
  if (v28)
  {
    v29 = *v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = [v12 traceStream];
  if (v30)
  {
    v31 = *v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = SaveMTL4AccelerationStructureDescriptor(&v38, v13);

  *v23 = v27;
  *(v23 + 1) = v29;
  *(v23 + 2) = v31;
  *(v23 + 3) = v37;
  *(v23 + 4) = v22;
  v23[40] = v32;
  *(v23 + 41) = 0;
  *(v23 + 11) = 0;
  v33 = v12;
  v34 = v11;
  GTAccelerationStructureDescriptorDownloader_processRefit([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v34, v33);

  s();
  *v35 = v36;
  *(v35 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  [v7 touch];
  if (v7)
  {
    v9 = self->_retainedObjects;
    if (v9)
    {
      [(NSMutableSet *)v9 addObject:v7];
    }
  }

  RetainObjectForDescriptorDownloader(v6, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(v7, self->_retainedDescriptorObjectsByStreamRef);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v12 = [v6 baseObject];
  v13 = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyAndCompactAccelerationStructure:v12 toAccelerationStructure:v13];

  v14 = v30;
  *(v30 + 8) = -14830;
  v15 = BYTE9(v31);
  if (BYTE9(v31) > 0x28uLL)
  {
    v17 = *(*(&v29 + 1) + 24);
    v18 = BYTE10(v31);
    ++BYTE10(v31);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v30 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v31));
    BYTE9(v31) += 24;
  }

  *(v14 + 13) = v15;
  v19 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v21 = [v6 traceStream];
  if (v21)
  {
    v22 = *v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v7 traceStream];
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = v24;
  v25 = v7;
  v26 = v6;
  GTAccelerationStructureDescriptorDownloader_processCopy([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v26, v25, 1);

  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 touch];
  if (v6)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v6];
    }
  }

  [v7 touch];
  if (v7)
  {
    v9 = self->_retainedObjects;
    if (v9)
    {
      [(NSMutableSet *)v9 addObject:v7];
    }
  }

  RetainObjectForDescriptorDownloader(v6, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(v7, self->_retainedDescriptorObjectsByStreamRef);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v12 = [v6 baseObject];
  v13 = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyAccelerationStructure:v12 toAccelerationStructure:v13];

  v14 = v30;
  *(v30 + 8) = -14831;
  v15 = BYTE9(v31);
  if (BYTE9(v31) > 0x28uLL)
  {
    v17 = *(*(&v29 + 1) + 24);
    v18 = BYTE10(v31);
    ++BYTE10(v31);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v30 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v31));
    BYTE9(v31) += 24;
  }

  *(v14 + 13) = v15;
  v19 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v21 = [v6 traceStream];
  if (v21)
  {
    v22 = *v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v7 traceStream];
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = v24;
  v25 = v7;
  v26 = v6;
  GTAccelerationStructureDescriptorDownloader_processCopy([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v26, v25, 0);

  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(MTL4BufferRange)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v9 = a3;
  v10 = a4;
  [v9 touch];
  if (v9)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v9];
    }
  }

  RetainObjectForDescriptorDownloader(v9, self->_retainedDescriptorObjectsByStreamRef);
  v12 = unwrapMTL4AccelerationStructureDescriptor(v10);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v15 = [v9 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject buildAccelerationStructure:v15 descriptor:v12 scratchBuffer:var0, var1];

  v16 = v30;
  *(v30 + 8) = -14832;
  v17 = BYTE9(v31);
  if (BYTE9(v31) > 0x18uLL)
  {
    v19 = *(*(&v29 + 1) + 24);
    v20 = BYTE10(v31);
    ++BYTE10(v31);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v30 + 1), v20 | 0x2800000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v31));
    BYTE9(v31) += 40;
  }

  *(v16 + 13) = v17;
  v21 = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (v21)
  {
    v22 = v21->var0;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v9 traceStream];
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = SaveMTL4AccelerationStructureDescriptor(&v29, v10);

  *v18 = v22;
  *(v18 + 1) = v24;
  *(v18 + 2) = var0;
  *(v18 + 3) = var1;
  v18[32] = v25;
  *(v18 + 33) = 0;
  *(v18 + 9) = 0;
  v26 = v9;
  GTAccelerationStructureDescriptorDownloader_processBuild([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v26, v12);

  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (CaptureMTL4ComputeCommandEncoder)initWithBaseObject:(id)a3 captureCommandBuffer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = CaptureMTL4ComputeCommandEncoder;
  v9 = [(CaptureMTL4ComputeCommandEncoder *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    v11 = [v8 device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = v11;

    objc_storeStrong(&v10->_captureCommandBuffer, a4);
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

    v19 = objc_alloc_init(NSMutableDictionary);
    retainedDescriptorObjectsByStreamRef = v10->_retainedDescriptorObjectsByStreamRef;
    v10->_retainedDescriptorObjectsByStreamRef = v19;

    v10->_descriptorDownloader = 0;
  }

  return v10;
}

- (GTAccelerationStructureDescriptorDownloader_MTL4)descriptorDownloader
{
  result = self->_descriptorDownloader;
  if (!result)
  {
    result = GTAccelerationStructureDescriptorDownloader_MTL4_make(self->_captureDevice, self->_captureCommandBuffer, self, [(CaptureMTL4CommandBuffer *)self->_captureCommandBuffer accelerationStructureCommandEncodingPreamble]);
    self->_descriptorDownloader = result;
  }

  return result;
}

@end