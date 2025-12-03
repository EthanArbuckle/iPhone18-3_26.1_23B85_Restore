@interface CaptureMTL4ComputeCommandEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into;
- (CaptureMTL4ComputeCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer;
- (GTAccelerationStructureDescriptorDownloader_MTL4)descriptorDownloader;
- (NSString)description;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (unint64_t)streamReference;
- (void)barrierAfterEncoderStages:(unint64_t)stages beforeEncoderStages:(unint64_t)encoderStages visibilityOptions:(unint64_t)options;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages visibilityOptions:(unint64_t)options;
- (void)barrierAfterStages:(unint64_t)stages beforeQueueStages:(unint64_t)queueStages visibilityOptions:(unint64_t)options;
- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(MTL4BufferRange)buffer;
- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size;
- (void)copyFromTensor:(id)tensor sourceOrigin:(id)origin sourceDimensions:(id)dimensions toTensor:(id)toTensor destinationOrigin:(id)destinationOrigin destinationDimensions:(id)destinationDimensions;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures fromBuffer:(MTL4BufferRange)buffer;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(MTL4BufferRange)buffer;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format;
- (void)generateMipmapsForTexture:(id)texture;
- (void)insertDebugSignpost:(id)signpost;
- (void)optimizeContentsForCPUAccess:(id)access;
- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForGPUAccess:(id)access;
- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options;
- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)serializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures toBuffer:(MTL4BufferRange)buffer;
- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer;
- (void)setArgumentTable:(id)table;
- (void)setComputePipelineState:(id)state;
- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height;
- (void)setLabel:(id)label;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)touch;
- (void)updateFence:(id)fence afterEncoderStages:(unint64_t)stages;
- (void)waitForFence:(id)fence beforeEncoderStages:(unint64_t)stages;
- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(MTL4BufferRange)buffer;
- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(MTL4BufferRange)buffer;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer;
- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer;
@end

@implementation CaptureMTL4ComputeCommandEncoder

- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  sizeCopy = size;
  [sizeCopy touch];
  v7 = sizeCopy;
  if (sizeCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizeCopy];
      v7 = sizeCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeSerializedAccelerationStructureSize:baseObject toBuffer:var0, var1];
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  [structureCopy touch];
  v7 = structureCopy;
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
      v7 = structureCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeGenericBVHStructureSizesOfAccelerationStructure:baseObject toBuffer:var0, var1];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into
{
  structureCopy = structure;
  intoCopy = into;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  LOBYTE(baseObject) = [(MTL4CommandEncoderSPI *)baseObject writeGenericBVHStructureSizesOfAccelerationStructure:baseObject into:intoCopy];

  return baseObject;
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into
{
  structureCopy = structure;
  intoCopy = into;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v11 = unwrapMTLGenericBVHBuffersSPI(intoCopy);

  v12 = [(MTL4CommandEncoderSPI *)baseObject writeGenericBVHStructureOfAccelerationStructure:baseObject into:v11];
  return v12;
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  sizeCopy = size;
  [sizeCopy touch];
  if (sizeCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizeCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [sizeCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeCompactedAccelerationStructureSize:baseObject toBuffer:var0, var1];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    v18 = traceStream->var0;
  }

  else
  {
    v18 = 0;
  }

  traceStream2 = [sizeCopy traceStream];
  if (traceStream2)
  {
    v20 = *traceStream2;
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

- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  depthCopy = depth;
  [depthCopy touch];
  if (depthCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:depthCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [depthCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeAccelerationStructureTraversalDepth:baseObject toBuffer:var0, var1];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    v18 = traceStream->var0;
  }

  else
  {
    v18 = 0;
  }

  traceStream2 = [depthCopy traceStream];
  if (traceStream2)
  {
    v20 = *traceStream2;
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

- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  dataCopy = data;
  [dataCopy touch];
  v7 = dataCopy;
  if (dataCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:dataCopy];
      v7 = dataCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeAccelerationStructureSerializationData:baseObject toBuffer:var0, var1];
}

- (void)waitForFence:(id)fence beforeEncoderStages:(unint64_t)stages
{
  fenceCopy = fence;
  [fenceCopy touch];
  if (fenceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:fenceCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject waitForFence:baseObject beforeEncoderStages:stages];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [fenceCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = stages;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)updateFence:(id)fence afterEncoderStages:(unint64_t)stages
{
  fenceCopy = fence;
  [fenceCopy touch];
  if (fenceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:fenceCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject updateFence:baseObject afterEncoderStages:stages];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [fenceCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = stages;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4CommandEncoderSPI *)self->_baseObject setThreadgroupMemoryLength:length atIndex:index];
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = length;
  *(v10 + 2) = index;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4CommandEncoderSPI *)self->_baseObject setImageblockWidth:width height:height];
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = width;
  *(v10 + 2) = height;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setComputePipelineState:(id)state
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject setComputePipelineState:baseObject];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v17 = *traceStream2;
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

- (void)setArgumentTable:(id)table
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject setArgumentTable:baseObject];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v17 = *traceStream2;
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

- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  [structureCopy touch];
  v7 = structureCopy;
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
      v7 = structureCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject serializePrimitiveAccelerationStructure:baseObject toBuffer:var0, var1];
}

- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_resetCommandsInBuffer_withRange", "Metal 4 Compute Command Encoder", 0, 0);
  [bufferCopy touch];
  v7 = bufferCopy;
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      v7 = bufferCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject resetCommandsInBuffer:baseObject withRange:location, length];
}

- (void)pushDebugGroup:(id)group
{
  groupCopy = group;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4CommandEncoderSPI *)self->_baseObject pushDebugGroup:groupCopy];
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [groupCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [groupCopy UTF8String];
    v15 = strlen([groupCopy UTF8String]);
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
  *(v11 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
}

- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_optimizeIndirectCommandBuffer_withRange", "Metal 4 Compute Command Encoder", 0, 0);
  [bufferCopy touch];
  v7 = bufferCopy;
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      v7 = bufferCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject optimizeIndirectCommandBuffer:baseObject withRange:location, length];
}

- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  accessCopy = access;
  [accessCopy touch];
  if (accessCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:accessCopy];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [accessCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject optimizeContentsForGPUAccess:baseObject slice:slice level:level];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [accessCopy traceStream];
  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = slice;
  *(v15 + 3) = level;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)optimizeContentsForGPUAccess:(id)access
{
  accessCopy = access;
  [accessCopy touch];
  if (accessCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:accessCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [accessCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject optimizeContentsForGPUAccess:baseObject];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [accessCopy traceStream];
  if (traceStream2)
  {
    v17 = *traceStream2;
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

- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  accessCopy = access;
  [accessCopy touch];
  if (accessCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:accessCopy];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [accessCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject optimizeContentsForCPUAccess:baseObject slice:slice level:level];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [accessCopy traceStream];
  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = slice;
  *(v15 + 3) = level;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)optimizeContentsForCPUAccess:(id)access
{
  accessCopy = access;
  [accessCopy touch];
  if (accessCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:accessCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [accessCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject optimizeContentsForCPUAccess:baseObject];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [accessCopy traceStream];
  if (traceStream2)
  {
    v17 = *traceStream2;
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

- (void)insertDebugSignpost:(id)signpost
{
  signpostCopy = signpost;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4CommandEncoderSPI *)self->_baseObject insertDebugSignpost:signpostCopy];
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [signpostCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [signpostCopy UTF8String];
    v15 = strlen([signpostCopy UTF8String]);
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

- (void)generateMipmapsForTexture:(id)texture
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject generateMipmapsForTexture:baseObject];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v17 = *traceStream2;
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

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  textureCopy = texture;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_color_pixelFormat", "Metal 4 Compute Command Encoder", 0, 0);
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  v21 = *&region->var0.var2;
  v22[0] = *&region->var0.var0;
  v22[1] = v21;
  v22[2] = *&region->var1.var1;
  [(MTL4CommandEncoderSPI *)baseObject fillTexture:baseObject level:level slice:slice region:v22 color:format pixelFormat:var0, var1, var2, var3];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  textureCopy = texture;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_color", "Metal 4 Compute Command Encoder", 0, 0);
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  v19 = *&region->var0.var2;
  v20[0] = *&region->var0.var0;
  v20[1] = v19;
  v20[2] = *&region->var1.var1;
  [(MTL4CommandEncoderSPI *)baseObject fillTexture:baseObject level:level slice:slice region:v20 color:var0, var1, var2, var3];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length
{
  textureCopy = texture;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_bytes_length", "Metal 4 Compute Command Encoder", 0, 0);
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  v18 = *&region->var0.var2;
  v19[0] = *&region->var0.var0;
  v19[1] = v18;
  v19[2] = *&region->var1.var1;
  [(MTL4CommandEncoderSPI *)baseObject fillTexture:baseObject level:level slice:slice region:v19 bytes:bytes length:length];
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_executeCommandsInBuffer_withRange", "Metal 4 Compute Command Encoder", 0, 0);
  [bufferCopy touch];
  v7 = bufferCopy;
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      v7 = bufferCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer
{
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_executeCommandsInBuffer_indirectBuffer", "Metal 4 Compute Command Encoder", 0, 0);
  [bufferCopy touch];
  v6 = bufferCopy;
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      v6 = bufferCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject indirectBuffer:indirectBuffer];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_endEncodingAndRetrieveProgramAddressTable", "Metal 4 Profiling SPI", 0, 0);
  baseObject = self->_baseObject;

  return [(MTL4CommandEncoderSPI *)baseObject endEncodingAndRetrieveProgramAddressTable];
}

- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTL4CommandEncoderSPI *)self->_baseObject dispatchThreadsWithIndirectBuffer:buffer];
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = buffer;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  v22 = *threads;
  v21 = *threadgroup;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threads->var2;
  v17 = threadgroup->var2;
  *v11 = var0;
  v18 = *&threadgroup->var0;
  *(v11 + 8) = *&threads->var0;
  *(v11 + 3) = var2;
  *(v11 + 2) = v18;
  *(v11 + 6) = v17;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  v19 = *threadgroup;
  [(MTL4CommandEncoderSPI *)baseObject dispatchThreadgroupsWithIndirectBuffer:buffer threadsPerThreadgroup:&v19];
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threadgroup->var2;
  *v11 = var0;
  *(v11 + 1) = buffer;
  *(v11 + 1) = *&threadgroup->var0;
  *(v11 + 4) = var2;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  v22 = *threadgroups;
  v21 = *threadgroup;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threadgroups->var2;
  v17 = threadgroup->var2;
  *v11 = var0;
  v18 = *&threadgroup->var0;
  *(v11 + 8) = *&threadgroups->var0;
  *(v11 + 3) = var2;
  *(v11 + 2) = v18;
  *(v11 + 6) = v17;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  [structureCopy touch];
  v7 = structureCopy;
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
      v7 = structureCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject deserializePrimitiveAccelerationStructure:baseObject fromBuffer:var0, var1];
}

- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  destinationCopy = destination;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_copyIndirectCommandBuffer_sourceRange_destination_destinationIndex", "Metal 4 Compute Command Encoder", 0, 0);
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [destinationCopy touch];
  if (destinationCopy)
  {
    v13 = self->_retainedObjects;
    if (v13)
    {
      [(NSMutableSet *)v13 addObject:destinationCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [destinationCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyIndirectCommandBuffer:baseObject sourceRange:location destination:length destinationIndex:baseObject2, index];
}

- (void)copyFromTexture:(id)texture toTexture:(id)toTexture
{
  textureCopy = texture;
  toTextureCopy = toTexture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [toTextureCopy touch];
  if (toTextureCopy)
  {
    v9 = self->_retainedObjects;
    if (v9)
    {
      [(NSMutableSet *)v9 addObject:toTextureCopy];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [toTextureCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:baseObject toTexture:baseObject2];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v22 = *traceStream2;
  }

  else
  {
    v22 = 0;
  }

  traceStream3 = [toTextureCopy traceStream];
  if (traceStream3)
  {
    v24 = *traceStream3;
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

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0
{
  textureCopy = texture;
  toTextureCopy = toTexture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [toTextureCopy touch];
  if (toTextureCopy)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:toTextureCopy];
    }
  }

  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v37);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [toTextureCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:baseObject sourceSlice:slice sourceLevel:level toTexture:baseObject2 destinationSlice:destinationSlice destinationLevel:destinationLevel sliceCount:count levelCount:levelCount];

  v22 = *(&v37 + 1);
  v23 = v38;
  *(v38 + 8) = -15112;
  v24 = *(v22 + 24);
  v25 = BYTE10(v39);
  ++BYTE10(v39);
  Bytes = GTTraceMemPool_allocateBytes(v24, *(&v38 + 1), v25 | 0x4800000000);
  *(v23 + 13) = v25;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v30 = *traceStream2;
  }

  else
  {
    v30 = 0;
  }

  traceStream3 = [toTextureCopy traceStream];
  if (traceStream3)
  {
    v32 = *traceStream3;
  }

  else
  {
    v32 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v30;
  *(Bytes + 4) = slice;
  *(Bytes + 5) = level;
  *(Bytes + 6) = v32;
  *(Bytes + 7) = destinationSlice;
  *(Bytes + 8) = destinationLevel;
  *(Bytes + 9) = count;
  *(Bytes + 10) = levelCount;
  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v39);
  *(v38 + 15) |= 8u;
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  textureCopy = texture;
  toTextureCopy = toTexture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [toTextureCopy touch];
  if (toTextureCopy)
  {
    v19 = self->_retainedObjects;
    if (v19)
    {
      [(NSMutableSet *)v19 addObject:toTextureCopy];
    }
  }

  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v53);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [toTextureCopy baseObject];
  v51 = *&origin->var0;
  var2 = origin->var2;
  v49 = *&size->var0;
  v50 = size->var2;
  v48 = *destinationOrigin;
  levelCopy = level;
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:baseObject sourceSlice:slice sourceLevel:level sourceOrigin:&v51 sourceSize:&v49 toTexture:baseObject2 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v48];

  v24 = *(&v53 + 1);
  v25 = v54;
  *(v54 + 8) = -15113;
  v26 = *(v24 + 24);
  v27 = BYTE10(v55);
  ++BYTE10(v55);
  Bytes = GTTraceMemPool_allocateBytes(v26, *(&v54 + 1), v27 | 0x8000000000);
  *(v25 + 13) = v27;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  v46 = textureCopy;
  if (traceStream2)
  {
    v32 = *traceStream2;
  }

  else
  {
    v32 = 0;
  }

  v34 = origin->var0;
  var1 = origin->var1;
  v35 = origin->var2;
  v37 = size->var0;
  v36 = size->var1;
  v38 = size->var2;
  traceStream3 = [toTextureCopy traceStream];
  if (traceStream3)
  {
    v40 = *traceStream3;
  }

  else
  {
    v40 = 0;
  }

  v41 = destinationOrigin->var2;
  *(Bytes + 2) = var0;
  *(Bytes + 3) = v32;
  *(Bytes + 4) = slice;
  *(Bytes + 5) = levelCopy;
  *(Bytes + 12) = v40;
  *(Bytes + 13) = destinationSlice;
  *(Bytes + 14) = destinationLevel;
  v42 = *&destinationOrigin->var0;
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

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2
{
  textureCopy = texture;
  bufferCopy = buffer;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v21 = self->_retainedObjects;
    if (v21)
    {
      [(NSMutableSet *)v21 addObject:bufferCopy];
    }
  }

  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v52);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  v50 = *&origin->var0;
  var2 = origin->var2;
  v48 = *&size->var0;
  v49 = size->var2;
  sliceCopy = slice;
  levelCopy = level;
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:baseObject sourceSlice:slice sourceLevel:level sourceOrigin:&v50 sourceSize:&v48 toBuffer:baseObject2 destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image options:options];

  v26 = *(&v52 + 1);
  v27 = v53;
  *(v53 + 8) = -15114;
  v28 = *(v26 + 24);
  v29 = BYTE10(v54);
  ++BYTE10(v54);
  Bytes = GTTraceMemPool_allocateBytes(v28, *(&v53 + 1), v29 | 0x7800000000);
  *(v27 + 13) = v29;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  v47 = textureCopy;
  if (traceStream2)
  {
    v34 = *traceStream2;
  }

  else
  {
    v34 = 0;
  }

  v36 = origin->var0;
  var1 = origin->var1;
  v37 = origin->var2;
  v39 = size->var0;
  v38 = size->var1;
  v40 = size->var2;
  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v42 = *traceStream3;
  }

  else
  {
    v42 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v34;
  *(Bytes + 4) = sliceCopy;
  *(Bytes + 5) = levelCopy;
  *(Bytes + 6) = v36;
  *(Bytes + 7) = var1;
  *(Bytes + 8) = v37;
  *(Bytes + 9) = v39;
  *(Bytes + 10) = v38;
  *(Bytes + 11) = v40;
  *(Bytes + 12) = v42;
  *(Bytes + 13) = offset;
  *(Bytes + 14) = row;
  *(Bytes + 15) = image;
  *(Bytes + 16) = options;
  s();
  *v43 = v44;
  *(v43 + 8) = BYTE8(v54);
  *(v53 + 15) |= 8u;
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1
{
  textureCopy = texture;
  bufferCopy = buffer;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v20 = self->_retainedObjects;
    if (v20)
    {
      [(NSMutableSet *)v20 addObject:bufferCopy];
    }
  }

  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v51);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  v49 = *&origin->var0;
  var2 = origin->var2;
  v47 = *&size->var0;
  v48 = size->var2;
  sliceCopy = slice;
  levelCopy = level;
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:baseObject sourceSlice:slice sourceLevel:level sourceOrigin:&v49 sourceSize:&v47 toBuffer:baseObject2 destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image];

  v25 = *(&v51 + 1);
  v26 = v52;
  *(v52 + 8) = -15115;
  v27 = *(v25 + 24);
  v28 = BYTE10(v53);
  ++BYTE10(v53);
  Bytes = GTTraceMemPool_allocateBytes(v27, *(&v52 + 1), v28 | 0x7000000000);
  *(v26 + 13) = v28;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  v46 = textureCopy;
  if (traceStream2)
  {
    v33 = *traceStream2;
  }

  else
  {
    v33 = 0;
  }

  v35 = origin->var0;
  var1 = origin->var1;
  v36 = origin->var2;
  v38 = size->var0;
  v37 = size->var1;
  v39 = size->var2;
  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v41 = *traceStream3;
  }

  else
  {
    v41 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v33;
  *(Bytes + 4) = sliceCopy;
  *(Bytes + 5) = levelCopy;
  *(Bytes + 6) = v35;
  *(Bytes + 7) = var1;
  *(Bytes + 8) = v36;
  *(Bytes + 9) = v38;
  *(Bytes + 10) = v37;
  *(Bytes + 11) = v39;
  *(Bytes + 12) = v41;
  *(Bytes + 13) = offset;
  *(Bytes + 14) = row;
  *(Bytes + 15) = image;
  s();
  *v42 = v43;
  *(v42 + 8) = BYTE8(v53);
  *(v52 + 15) |= 8u;
}

- (void)copyFromTensor:(id)tensor sourceOrigin:(id)origin sourceDimensions:(id)dimensions toTensor:(id)toTensor destinationOrigin:(id)destinationOrigin destinationDimensions:(id)destinationDimensions
{
  tensorCopy = tensor;
  toTensorCopy = toTensor;
  destinationDimensionsCopy = destinationDimensions;
  destinationOriginCopy = destinationOrigin;
  dimensionsCopy = dimensions;
  originCopy = origin;
  [tensorCopy touch];
  if (tensorCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tensorCopy];
    }
  }

  [toTensorCopy touch];
  if (toTensorCopy)
  {
    v21 = self->_retainedObjects;
    if (v21)
    {
      [(NSMutableSet *)v21 addObject:toTensorCopy];
    }
  }

  v114 = 0u;
  v115 = 0u;
  v113 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v113);
  baseObject = self->_baseObject;
  v112 = tensorCopy;
  baseObject = [tensorCopy baseObject];
  v111 = toTensorCopy;
  baseObject2 = [toTensorCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyFromTensor:baseObject sourceOrigin:originCopy sourceDimensions:dimensionsCopy toTensor:baseObject2 destinationOrigin:destinationOriginCopy destinationDimensions:destinationDimensionsCopy];

  v26 = *(&v113 + 1);
  v27 = v114;
  *(v114 + 8) = -14812;
  v28 = *(v26 + 24);
  v29 = BYTE10(v115);
  ++BYTE10(v115);
  Bytes = GTTraceMemPool_allocateBytes(v28, *(&v114 + 1), v29 | 0x23800000000);
  *(v27 + 13) = v29;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v112 traceStream];
  if (traceStream2)
  {
    v109 = *traceStream2;
  }

  else
  {
    v109 = 0;
  }

  rank = [originCopy rank];
  v107 = *[originCopy extents];
  v106 = *([originCopy extents] + 1);
  v105 = *([originCopy extents] + 2);
  v104 = *([originCopy extents] + 3);
  v103 = *([originCopy extents] + 4);
  v102 = *([originCopy extents] + 5);
  v101 = *([originCopy extents] + 6);
  v100 = *([originCopy extents] + 7);
  v99 = *([originCopy extents] + 8);
  v98 = *([originCopy extents] + 9);
  v97 = *([originCopy extents] + 10);
  v96 = *([originCopy extents] + 11);
  v95 = *([originCopy extents] + 12);
  v94 = *([originCopy extents] + 13);
  v93 = *([originCopy extents] + 14);
  extents = [originCopy extents];

  v92 = extents[15];
  rank2 = [dimensionsCopy rank];
  v90 = *[dimensionsCopy extents];
  v89 = *([dimensionsCopy extents] + 1);
  v88 = *([dimensionsCopy extents] + 2);
  v87 = *([dimensionsCopy extents] + 3);
  v86 = *([dimensionsCopy extents] + 4);
  v85 = *([dimensionsCopy extents] + 5);
  v84 = *([dimensionsCopy extents] + 6);
  v83 = *([dimensionsCopy extents] + 7);
  v82 = *([dimensionsCopy extents] + 8);
  v81 = *([dimensionsCopy extents] + 9);
  v80 = *([dimensionsCopy extents] + 10);
  v79 = *([dimensionsCopy extents] + 11);
  v78 = *([dimensionsCopy extents] + 12);
  v77 = *([dimensionsCopy extents] + 13);
  v76 = *([dimensionsCopy extents] + 14);
  extents2 = [dimensionsCopy extents];

  v75 = extents2[15];
  traceStream3 = [v111 traceStream];
  if (traceStream3)
  {
    v74 = *traceStream3;
  }

  else
  {
    v74 = 0;
  }

  rank3 = [destinationOriginCopy rank];
  v72 = *[destinationOriginCopy extents];
  v71 = *([destinationOriginCopy extents] + 1);
  v70 = *([destinationOriginCopy extents] + 2);
  v69 = *([destinationOriginCopy extents] + 3);
  v68 = *([destinationOriginCopy extents] + 4);
  v67 = *([destinationOriginCopy extents] + 5);
  v66 = *([destinationOriginCopy extents] + 6);
  v65 = *([destinationOriginCopy extents] + 7);
  v64 = *([destinationOriginCopy extents] + 8);
  v63 = *([destinationOriginCopy extents] + 9);
  v62 = *([destinationOriginCopy extents] + 10);
  v61 = *([destinationOriginCopy extents] + 11);
  v60 = *([destinationOriginCopy extents] + 12);
  v59 = *([destinationOriginCopy extents] + 13);
  v58 = *([destinationOriginCopy extents] + 14);
  extents3 = [destinationOriginCopy extents];

  v57 = extents3[15];
  rank4 = [destinationDimensionsCopy rank];
  v55 = *[destinationDimensionsCopy extents];
  v54 = *([destinationDimensionsCopy extents] + 1);
  v53 = *([destinationDimensionsCopy extents] + 2);
  v52 = *([destinationDimensionsCopy extents] + 3);
  v51 = *([destinationDimensionsCopy extents] + 4);
  v50 = *([destinationDimensionsCopy extents] + 5);
  v49 = *([destinationDimensionsCopy extents] + 6);
  v48 = *([destinationDimensionsCopy extents] + 7);
  v37 = *([destinationDimensionsCopy extents] + 8);
  v38 = *([destinationDimensionsCopy extents] + 9);
  v39 = *([destinationDimensionsCopy extents] + 10);
  v40 = *([destinationDimensionsCopy extents] + 11);
  v41 = *([destinationDimensionsCopy extents] + 12);
  v42 = *([destinationDimensionsCopy extents] + 13);
  v43 = *([destinationDimensionsCopy extents] + 14);
  extents4 = [destinationDimensionsCopy extents];

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v109;
  v45 = extents4[15];
  *(Bytes + 4) = rank;
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
  *(Bytes + 21) = rank2;
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
  *(Bytes + 39) = rank3;
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
  *(Bytes + 56) = rank4;
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

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size
{
  bufferCopy = buffer;
  toBufferCopy = toBuffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [toBufferCopy touch];
  if (toBufferCopy)
  {
    v15 = self->_retainedObjects;
    if (v15)
    {
      [(NSMutableSet *)v15 addObject:toBufferCopy];
    }
  }

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [toBufferCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyFromBuffer:baseObject sourceOffset:offset toBuffer:baseObject2 destinationOffset:destinationOffset size:size];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v28 = *traceStream2;
  }

  else
  {
    v28 = 0;
  }

  traceStream3 = [toBufferCopy traceStream];
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
  *(v22 + 2) = offset;
  *(v22 + 3) = v30;
  *(v22 + 4) = destinationOffset;
  *(v22 + 5) = size;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  bufferCopy = buffer;
  textureCopy = texture;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [textureCopy touch];
  if (textureCopy)
  {
    v20 = self->_retainedObjects;
    if (v20)
    {
      [(NSMutableSet *)v20 addObject:textureCopy];
    }
  }

  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v50);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [textureCopy baseObject];
  v48 = *&size->var0;
  var2 = size->var2;
  v47 = *origin;
  rowCopy = row;
  rowCopy2 = row;
  imageCopy = image;
  [(MTL4CommandEncoderSPI *)baseObject copyFromBuffer:baseObject sourceOffset:offset sourceBytesPerRow:rowCopy2 sourceBytesPerImage:image sourceSize:&v48 toTexture:baseObject2 destinationSlice:slice destinationLevel:level destinationOrigin:&v47 options:options];

  v27 = *(&v50 + 1);
  v28 = v51;
  *(v51 + 8) = -15118;
  v29 = *(v27 + 24);
  v30 = BYTE10(v52);
  ++BYTE10(v52);
  Bytes = GTTraceMemPool_allocateBytes(v29, *(&v51 + 1), v30 | 0x7800000000);
  *(v28 + 13) = v30;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v35 = *traceStream2;
  }

  else
  {
    v35 = 0;
  }

  v36 = size->var0;
  var1 = size->var1;
  v38 = size->var2;
  traceStream3 = [textureCopy traceStream];
  if (traceStream3)
  {
    v40 = *traceStream3;
  }

  else
  {
    v40 = 0;
  }

  v41 = origin->var2;
  *(Bytes + 2) = var0;
  *(Bytes + 3) = v35;
  *(Bytes + 4) = offset;
  *(Bytes + 5) = rowCopy;
  *(Bytes + 10) = v40;
  *(Bytes + 11) = slice;
  *(Bytes + 12) = level;
  v42 = *&origin->var0;
  *(Bytes + 6) = imageCopy;
  *(Bytes + 7) = v36;
  *(Bytes + 8) = var1;
  *(Bytes + 9) = v38;
  *(Bytes + 104) = v42;
  *(Bytes + 15) = v41;
  *(Bytes + 16) = options;
  s();
  *v43 = v44;
  *(v43 + 8) = BYTE8(v52);
  *(v51 + 15) |= 8u;
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  bufferCopy = buffer;
  textureCopy = texture;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [textureCopy touch];
  if (textureCopy)
  {
    v19 = self->_retainedObjects;
    if (v19)
    {
      [(NSMutableSet *)v19 addObject:textureCopy];
    }
  }

  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v49);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [textureCopy baseObject];
  v47 = *&size->var0;
  var2 = size->var2;
  v46 = *origin;
  rowCopy = row;
  rowCopy2 = row;
  imageCopy = image;
  [(MTL4CommandEncoderSPI *)baseObject copyFromBuffer:baseObject sourceOffset:offset sourceBytesPerRow:rowCopy2 sourceBytesPerImage:image sourceSize:&v47 toTexture:baseObject2 destinationSlice:slice destinationLevel:level destinationOrigin:&v46];

  v26 = *(&v49 + 1);
  v27 = v50;
  *(v50 + 8) = -15119;
  v28 = *(v26 + 24);
  v29 = BYTE10(v51);
  ++BYTE10(v51);
  Bytes = GTTraceMemPool_allocateBytes(v28, *(&v50 + 1), v29 | 0x7000000000);
  *(v27 + 13) = v29;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v34 = *traceStream2;
  }

  else
  {
    v34 = 0;
  }

  v35 = size->var0;
  var1 = size->var1;
  v37 = size->var2;
  traceStream3 = [textureCopy traceStream];
  if (traceStream3)
  {
    v39 = *traceStream3;
  }

  else
  {
    v39 = 0;
  }

  v40 = origin->var2;
  *(Bytes + 2) = var0;
  *(Bytes + 3) = v34;
  *(Bytes + 4) = offset;
  *(Bytes + 5) = rowCopy;
  *(Bytes + 10) = v39;
  *(Bytes + 11) = slice;
  *(Bytes + 12) = level;
  v41 = *&origin->var0;
  *(Bytes + 6) = imageCopy;
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

- (void)barrierAfterStages:(unint64_t)stages beforeQueueStages:(unint64_t)queueStages visibilityOptions:(unint64_t)options
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTL4CommandEncoderSPI *)self->_baseObject barrierAfterStages:stages beforeQueueStages:queueStages visibilityOptions:options];
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = stages;
  *(v12 + 2) = queueStages;
  *(v12 + 3) = options;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages visibilityOptions:(unint64_t)options
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTL4CommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:stages beforeStages:beforeStages visibilityOptions:options];
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = stages;
  *(v12 + 2) = beforeStages;
  *(v12 + 3) = options;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)barrierAfterEncoderStages:(unint64_t)stages beforeEncoderStages:(unint64_t)encoderStages visibilityOptions:(unint64_t)options
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTL4CommandEncoderSPI *)self->_baseObject barrierAfterEncoderStages:stages beforeEncoderStages:encoderStages visibilityOptions:options];
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = stages;
  *(v12 + 2) = encoderStages;
  *(v12 + 3) = options;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4CommandEncoderSPI *)self->_baseObject setLabel:labelCopy];
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
  v5 = [(MTL4CommandEncoderSPI *)baseObject conformsToProtocol:protocolCopy];

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

- (void)deserializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures fromBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  structuresCopy = structures;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  RetainNSArray(self->_retainedObjects, structuresCopy);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v13 = unwrapNSArray(structuresCopy);

  [(MTL4CommandEncoderSPI *)baseObject deserializeInstanceAccelerationStructure:baseObject referencedAccelerationStructures:v13 fromBuffer:var0, var1];
}

- (void)serializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  structuresCopy = structures;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  RetainNSArray(self->_retainedObjects, structuresCopy);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v13 = unwrapNSArray(structuresCopy);

  [(MTL4CommandEncoderSPI *)baseObject serializeInstanceAccelerationStructure:baseObject referencedAccelerationStructures:v13 toBuffer:var0, var1];
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
  accelerationStructureDescriptorProcessEvent = [(CaptureMTL4CommandBuffer *)self->_captureCommandBuffer accelerationStructureDescriptorProcessEvent];
  GTAccelerationStructureDescriptorDownloader_MTL4_postProcess(descriptorDownloader, accelerationStructureDescriptorProcessEvent);

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
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

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  destinationCopy = destination;
  descriptorCopy = descriptor;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  [destinationCopy touch];
  if (destinationCopy)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:destinationCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(destinationCopy, self->_retainedDescriptorObjectsByStreamRef);
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v43);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [destinationCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject refitAccelerationStructure:baseObject descriptor:descriptorCopy destination:baseObject2 scratchBuffer:var0 options:var1, options];

  v22 = v44;
  *(v44 + 8) = -14828;
  v23 = BYTE9(v45);
  optionsCopy = options;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    v40 = traceStream->var0;
  }

  else
  {
    v40 = 0;
  }

  v28 = descriptorCopy;
  traceStream2 = [structureCopy traceStream];
  v30 = var0;
  if (traceStream2)
  {
    v31 = *traceStream2;
  }

  else
  {
    v31 = 0;
  }

  v32 = var1;
  traceStream3 = [destinationCopy traceStream];
  if (traceStream3)
  {
    v34 = *traceStream3;
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
  *(v24 + 5) = optionsCopy;
  v24[48] = v35;
  *(v24 + 49) = 0;
  *(v24 + 13) = 0;
  v36 = destinationCopy;
  v37 = structureCopy;
  GTAccelerationStructureDescriptorDownloader_processRefit([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v37, v36);

  s();
  *v38 = v39;
  *(v38 + 8) = BYTE8(v45);
  *(v44 + 15) |= 8u;
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  destinationCopy = destination;
  descriptorCopy = descriptor;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  [destinationCopy touch];
  if (destinationCopy)
  {
    v15 = self->_retainedObjects;
    if (v15)
    {
      [(NSMutableSet *)v15 addObject:destinationCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(destinationCopy, self->_retainedDescriptorObjectsByStreamRef);
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [destinationCopy baseObject];
  v37 = var0;
  [(MTL4CommandEncoderSPI *)baseObject refitAccelerationStructure:baseObject descriptor:descriptorCopy destination:baseObject2 scratchBuffer:var0, var1];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    v27 = traceStream->var0;
  }

  else
  {
    v27 = 0;
  }

  traceStream2 = [structureCopy traceStream];
  if (traceStream2)
  {
    v29 = *traceStream2;
  }

  else
  {
    v29 = 0;
  }

  traceStream3 = [destinationCopy traceStream];
  if (traceStream3)
  {
    v31 = *traceStream3;
  }

  else
  {
    v31 = 0;
  }

  v32 = SaveMTL4AccelerationStructureDescriptor(&v38, descriptorCopy);

  *v23 = v27;
  *(v23 + 1) = v29;
  *(v23 + 2) = v31;
  *(v23 + 3) = v37;
  *(v23 + 4) = v22;
  v23[40] = v32;
  *(v23 + 41) = 0;
  *(v23 + 11) = 0;
  v33 = destinationCopy;
  v34 = structureCopy;
  GTAccelerationStructureDescriptorDownloader_processRefit([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v34, v33);

  s();
  *v35 = v36;
  *(v35 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  structureCopy = structure;
  accelerationStructureCopy = accelerationStructure;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  [accelerationStructureCopy touch];
  if (accelerationStructureCopy)
  {
    v9 = self->_retainedObjects;
    if (v9)
    {
      [(NSMutableSet *)v9 addObject:accelerationStructureCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(accelerationStructureCopy, self->_retainedDescriptorObjectsByStreamRef);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [accelerationStructureCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyAndCompactAccelerationStructure:baseObject toAccelerationStructure:baseObject2];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [structureCopy traceStream];
  if (traceStream2)
  {
    v22 = *traceStream2;
  }

  else
  {
    v22 = 0;
  }

  traceStream3 = [accelerationStructureCopy traceStream];
  if (traceStream3)
  {
    v24 = *traceStream3;
  }

  else
  {
    v24 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = v24;
  v25 = accelerationStructureCopy;
  v26 = structureCopy;
  GTAccelerationStructureDescriptorDownloader_processCopy([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v26, v25, 1);

  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  structureCopy = structure;
  accelerationStructureCopy = accelerationStructure;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  [accelerationStructureCopy touch];
  if (accelerationStructureCopy)
  {
    v9 = self->_retainedObjects;
    if (v9)
    {
      [(NSMutableSet *)v9 addObject:accelerationStructureCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(accelerationStructureCopy, self->_retainedDescriptorObjectsByStreamRef);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [accelerationStructureCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyAccelerationStructure:baseObject toAccelerationStructure:baseObject2];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [structureCopy traceStream];
  if (traceStream2)
  {
    v22 = *traceStream2;
  }

  else
  {
    v22 = 0;
  }

  traceStream3 = [accelerationStructureCopy traceStream];
  if (traceStream3)
  {
    v24 = *traceStream3;
  }

  else
  {
    v24 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = v24;
  v25 = accelerationStructureCopy;
  v26 = structureCopy;
  GTAccelerationStructureDescriptorDownloader_processCopy([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v26, v25, 0);

  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  descriptorCopy = descriptor;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  v12 = unwrapMTL4AccelerationStructureDescriptor(descriptorCopy);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject buildAccelerationStructure:baseObject descriptor:v12 scratchBuffer:var0, var1];

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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    v22 = traceStream->var0;
  }

  else
  {
    v22 = 0;
  }

  traceStream2 = [structureCopy traceStream];
  if (traceStream2)
  {
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  v25 = SaveMTL4AccelerationStructureDescriptor(&v29, descriptorCopy);

  *v18 = v22;
  *(v18 + 1) = v24;
  *(v18 + 2) = var0;
  *(v18 + 3) = var1;
  v18[32] = v25;
  *(v18 + 33) = 0;
  *(v18 + 9) = 0;
  v26 = structureCopy;
  GTAccelerationStructureDescriptorDownloader_processBuild([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v26, v12);

  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (CaptureMTL4ComputeCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v22.receiver = self;
  v22.super_class = CaptureMTL4ComputeCommandEncoder;
  v9 = [(CaptureMTL4ComputeCommandEncoder *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [bufferCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    objc_storeStrong(&v10->_captureCommandBuffer, buffer);
    traceContext = [bufferCopy traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openEncoderStream(traceContext, v14, *([bufferCopy traceStream] + 3));

    retainedObjects = [bufferCopy retainedObjects];
    retainedObjects = v10->_retainedObjects;
    v10->_retainedObjects = retainedObjects;

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