@interface CaptureMTLAccelerationStructureCommandEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into;
- (CaptureMTLAccelerationStructureCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer copyEventValue:(unint64_t)value;
- (NSString)description;
- (unint64_t)streamReference;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset;
- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)signpost;
- (void)insertSplit;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options;
- (void)serializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)setLabel:(id)label;
- (void)touch;
- (void)updateFence:(id)fence;
- (void)useHeap:(id)heap;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)waitForFence:(id)fence;
- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset sizeDataType:(unint64_t)type;
- (void)writeDeserializedAccelerationStructureSize:(id)size serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizeBufferOffset:(unint64_t)bufferOffset;
- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)sizes serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizesBufferOffset:(unint64_t)bufferOffset;
- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset;
@end

@implementation CaptureMTLAccelerationStructureCommandEncoder

- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset
{
  sizeCopy = size;
  bufferCopy = buffer;
  [sizeCopy touch];
  if (sizeCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizeCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:bufferCopy];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  baseObject = [sizeCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeSerializedAccelerationStructureSize:baseObject toBuffer:baseObject2 sizeBufferOffset:offset];

  v16 = v30;
  *(v30 + 8) = -15588;
  v17 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v19 = *(*(&v29 + 1) + 24);
    v20 = BYTE10(v31);
    ++BYTE10(v31);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v30 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [sizeCopy traceStream];
  if (traceStream2)
  {
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v26 = *traceStream3;
  }

  else
  {
    v26 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = offset;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
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
  LOBYTE(baseObject) = [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeGenericBVHStructureSizesOfAccelerationStructure:baseObject into:intoCopy];

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

  v12 = [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeGenericBVHStructureOfAccelerationStructure:baseObject into:v11];
  return v12;
}

- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)sizes serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizesBufferOffset:(unint64_t)bufferOffset
{
  sizesCopy = sizes;
  bufferCopy = buffer;
  [sizesCopy touch];
  if (sizesCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizesCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v13 = self->_retainedObjects;
    if (v13)
    {
      [(NSMutableSet *)v13 addObject:bufferCopy];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = self->_baseObject;
  baseObject = [sizesCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeDeserializedPrimitiveAccelerationStructureSizes:baseObject serializedOffset:offset toBuffer:baseObject2 sizesBufferOffset:bufferOffset];

  v18 = v32;
  *(v32 + 8) = -15591;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [sizesCopy traceStream];
  if (traceStream2)
  {
    v26 = *traceStream2;
  }

  else
  {
    v26 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
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
  *(v20 + 2) = offset;
  *(v20 + 3) = v28;
  *(v20 + 4) = bufferOffset;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)writeDeserializedAccelerationStructureSize:(id)size serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizeBufferOffset:(unint64_t)bufferOffset
{
  sizeCopy = size;
  bufferCopy = buffer;
  [sizeCopy touch];
  if (sizeCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizeCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v13 = self->_retainedObjects;
    if (v13)
    {
      [(NSMutableSet *)v13 addObject:bufferCopy];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = self->_baseObject;
  baseObject = [sizeCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeDeserializedAccelerationStructureSize:baseObject serializedOffset:offset toBuffer:baseObject2 sizeBufferOffset:bufferOffset];

  v18 = v32;
  *(v32 + 8) = -15592;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [sizeCopy traceStream];
  if (traceStream2)
  {
    v26 = *traceStream2;
  }

  else
  {
    v26 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
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
  *(v20 + 2) = offset;
  *(v20 + 3) = v28;
  *(v20 + 4) = bufferOffset;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset sizeDataType:(unint64_t)type
{
  sizeCopy = size;
  bufferCopy = buffer;
  [sizeCopy touch];
  if (sizeCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizeCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v13 = self->_retainedObjects;
    if (v13)
    {
      [(NSMutableSet *)v13 addObject:bufferCopy];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = self->_baseObject;
  baseObject = [sizeCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeCompactedAccelerationStructureSize:baseObject toBuffer:baseObject2 offset:offset sizeDataType:type];

  v18 = v32;
  *(v32 + 8) = -15502;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [sizeCopy traceStream];
  if (traceStream2)
  {
    v26 = *traceStream2;
  }

  else
  {
    v26 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
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
  *(v20 + 2) = v28;
  *(v20 + 3) = offset;
  *(v20 + 4) = type;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset
{
  sizeCopy = size;
  bufferCopy = buffer;
  [sizeCopy touch];
  if (sizeCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizeCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:bufferCopy];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  baseObject = [sizeCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeCompactedAccelerationStructureSize:baseObject toBuffer:baseObject2 offset:offset];

  v16 = v30;
  *(v30 + 8) = -15629;
  v17 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v19 = *(*(&v29 + 1) + 24);
    v20 = BYTE10(v31);
    ++BYTE10(v31);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v30 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [sizeCopy traceStream];
  if (traceStream2)
  {
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v26 = *traceStream3;
  }

  else
  {
    v26 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = offset;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(id)buffer offset:(unint64_t)offset
{
  depthCopy = depth;
  bufferCopy = buffer;
  [depthCopy touch];
  if (depthCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:depthCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:bufferCopy];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  baseObject = [depthCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeAccelerationStructureTraversalDepth:baseObject toBuffer:baseObject2 offset:offset];

  v16 = v30;
  *(v30 + 8) = -15287;
  v17 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v19 = *(*(&v29 + 1) + 24);
    v20 = BYTE10(v31);
    ++BYTE10(v31);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v30 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [depthCopy traceStream];
  if (traceStream2)
  {
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v26 = *traceStream3;
  }

  else
  {
    v26 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = offset;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(id)buffer offset:(unint64_t)offset
{
  dataCopy = data;
  bufferCopy = buffer;
  [dataCopy touch];
  if (dataCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:dataCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:bufferCopy];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  baseObject = [dataCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeAccelerationStructureSerializationData:baseObject toBuffer:baseObject2 offset:offset];

  v16 = v30;
  *(v30 + 8) = -15365;
  v17 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v19 = *(*(&v29 + 1) + 24);
    v20 = BYTE10(v31);
    ++BYTE10(v31);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v30 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [dataCopy traceStream];
  if (traceStream2)
  {
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v26 = *traceStream3;
  }

  else
  {
    v26 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = offset;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)waitForFence:(id)fence
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

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject waitForFence:baseObject];

  v9 = v21;
  *(v21 + 8) = -15630;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  RetainArray(self->_retainedObjects, resources, count);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v12 = 8 * count;
  __chkstk_darwin(v10, v13);
  bzero(&v29 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    resourcesCopy = resources;
    v15 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v17 = *resourcesCopy++;
      *v15++ = [v17 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject useResources:&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) count:count usage:usage];
  v18 = v30;
  *(v30 + 8) = -15631;
  v19 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v21 = *(*(&v29 + 1) + 24);
    v22 = BYTE10(v31);
    ++BYTE10(v31);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v30 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v18 + 13) = v19;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v24);
  bzero(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  v26 = StreamArray(&v29, (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), resources, count);
  *v20 = var0;
  *(v20 + 1) = count;
  *(v20 + 2) = usage;
  v20[24] = v26;
  *(v20 + 25) = 0;
  *(v20 + 7) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  resourceCopy = resource;
  [resourceCopy touch];
  if (resourceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:resourceCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [resourceCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject useResource:baseObject usage:usage];

  v11 = v23;
  *(v23 + 8) = -15632;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [resourceCopy traceStream];
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
  *(v13 + 2) = usage;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  RetainArray(self->_retainedObjects, heaps, count);
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceStream = self->_traceStream;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  v10 = 8 * count;
  __chkstk_darwin(v8, v11);
  bzero(&v27 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    heapsCopy = heaps;
    v13 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v15 = *heapsCopy++;
      *v13++ = [v15 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject useHeaps:&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  v16 = v28;
  *(v28 + 8) = -15633;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x28uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x1800000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 24;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream, v22);
  bzero(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  v24 = StreamArray(&v27, (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), heaps, count);
  *v18 = var0;
  *(v18 + 1) = count;
  v18[16] = v24;
  *(v18 + 17) = 0;
  *(v18 + 5) = 0;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)useHeap:(id)heap
{
  heapCopy = heap;
  [heapCopy touch];
  if (heapCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:heapCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [heapCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject useHeap:baseObject];

  v9 = v21;
  *(v21 + 8) = -15634;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [heapCopy traceStream];
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

- (void)updateFence:(id)fence
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

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject updateFence:baseObject];

  v9 = v21;
  *(v21 + 8) = -15635;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  structureCopy = structure;
  bufferCopy = buffer;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:bufferCopy];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject serializePrimitiveAccelerationStructure:baseObject toBuffer:baseObject2 serializedBufferOffset:offset];

  v16 = v30;
  *(v30 + 8) = -15521;
  v17 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v19 = *(*(&v29 + 1) + 24);
    v20 = BYTE10(v31);
    ++BYTE10(v31);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v30 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v26 = *traceStream3;
  }

  else
  {
    v26 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = offset;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)pushDebugGroup:(id)group
{
  groupCopy = group;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject pushDebugGroup:groupCopy];
  v6 = v19;
  *(v19 + 8) = -15639;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject popDebugGroup];
  v4 = v14;
  *(v14 + 8) = -15640;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

- (void)insertSplit
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLAccelerationStructureCommandEncoder_insertSplit", "Command Encoder Insert Split", 0, 0);
  baseObject = self->_baseObject;

  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject insertSplit];
}

- (void)insertDebugSignpost:(id)signpost
{
  signpostCopy = signpost;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject insertDebugSignpost:signpostCopy];
  v6 = v19;
  *(v19 + 8) = -15641;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor
{
  structureCopy = structure;
  bufferCopy = buffer;
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

  [bufferCopy touch];
  if (bufferCopy)
  {
    v14 = self->_retainedObjects;
    if (v14)
    {
      [(NSMutableSet *)v14 addObject:bufferCopy];
    }
  }

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  v19 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject deserializePrimitiveAccelerationStructure:baseObject fromBuffer:baseObject2 serializedBufferOffset:offset withDescriptor:v19];

  v20 = v35;
  *(v35 + 8) = -15465;
  v21 = BYTE9(v36);
  if (BYTE9(v36) > 0x18uLL)
  {
    v23 = *(*(&v34 + 1) + 24);
    v24 = BYTE10(v36);
    ++BYTE10(v36);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v35 + 1), v24 | 0x2800000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v36));
    BYTE9(v36) += 40;
  }

  *(v20 + 13) = v21;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v28 = *traceStream2;
  }

  else
  {
    v28 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v30 = *traceStream3;
  }

  else
  {
    v30 = 0;
  }

  v31 = SaveMTLAccelerationStructureDescriptor(&v34, descriptorCopy);

  *v22 = var0;
  *(v22 + 1) = v28;
  *(v22 + 2) = v30;
  *(v22 + 3) = offset;
  v22[32] = v31;
  *(v22 + 33) = 0;
  *(v22 + 9) = 0;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v36);
  *(v35 + 15) |= 8u;
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15644;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  v13.super_class = CaptureMTLAccelerationStructureCommandEncoder;
  [(CaptureMTLAccelerationStructureCommandEncoder *)&v13 dealloc];
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
  v8 = v18;
  *(v18 + 8) = -14968;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = stages;
  *(v10 + 2) = beforeStages;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject setLabel:labelCopy];
  v6 = v19;
  *(v19 + 8) = -15648;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  v5 = [(MTLAccelerationStructureCommandEncoderSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLAccelerationStructureCommandEncoder;
  v3 = [(CaptureMTLAccelerationStructureCommandEncoder *)&v7 description];
  v4 = [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject description];
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

- (void)endEncoding
{
  selfCopy = self;
  v3 = GTAccelerationStructureDescriptorDownloader_needsDownloader(self->_traceStream);
  if (endEncoding_descriptorDownloaderToken != -1)
  {
    dispatch_once(&endEncoding_descriptorDownloaderToken, &__block_literal_global_9419);
  }

  [(MTLAccelerationStructureCommandEncoderSPI *)selfCopy->_baseObject endEncoding];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
  v5 = DEVICEOBJECT(WeakRetained);

  if ([(NSMutableArray *)selfCopy->_blitOperations count])
  {
    v73 = v3;
    context = objc_autoreleasePoolPush();
    v74 = v5;
    blitCommandEncoder = [v5 blitCommandEncoder];
    [blitCommandEncoder setLabel:@"com.apple.gputools.ADSExtraBuffersBlit"];
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v75 = selfCopy;
    obj = selfCopy->_blitOperations;
    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v83 objects:v87 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v84;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v84 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v83 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"srcBuffer"];
          v12 = DEVICEOBJECT(v11);
          v13 = [v10 objectForKeyedSubscript:@"srcOffset"];
          v14 = NumberToInt(v13);
          v15 = [v10 objectForKeyedSubscript:@"dstBuffer"];
          v16 = DEVICEOBJECT(v15);
          v17 = [v10 objectForKeyedSubscript:@"length"];
          [blitCommandEncoder copyFromBuffer:v12 sourceOffset:v14 toBuffer:v16 destinationOffset:0 size:NumberToInt(v17)];
        }

        v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v83 objects:v87 count:16];
      }

      while (v7);
    }

    [blitCommandEncoder endEncoding];
    selfCopy = v75;
    v18 = v75->_blitOperations;
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = __60__CaptureMTLAccelerationStructureCommandEncoder_endEncoding__block_invoke_2;
    v81[3] = &unk_2F2578;
    v82 = v18;
    v19 = v18;
    v5 = v74;
    [v74 addCompletedHandler:v81];
    blitOperations = v75->_blitOperations;
    v75->_blitOperations = 0;

    bufferCache = v75->_bufferCache;
    v75->_bufferCache = 0;

    objc_autoreleasePoolPop(context);
    v3 = v73;
  }

  if (v3)
  {
    v22 = objc_autoreleasePoolPush();
    computeCommandEncoder = [v5 computeCommandEncoder];
    [computeCommandEncoder setLabel:@"com.apple.gputools.GTAccelerationStructureDescriptorDownloader.copyCommandEncoder"];
    newpool[0] = 0;
    apr_pool_create_ex(newpool, 0, 0, 0);
    v24 = apr_hash_make(newpool[0]);
    GTTraceMemPool_buildMemoryMap(selfCopy->_traceStream->var3, v24);
    v25 = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
    device = [v25 device];
    retainedDescriptorObjectsByStreamRef = selfCopy->_retainedDescriptorObjectsByStreamRef;
    v28 = atomic_load(&selfCopy->_traceContext->var3);
    v29 = GTAccelerationStructureDescriptorDownloader_make(device, retainedDescriptorObjectsByStreamRef, v24, v28, newpool[0]);

    var0 = selfCopy->_traceStream->var4.var0;
    if (var0)
    {
      v31 = 0;
      while (1)
      {
        v32 = atomic_load(var0 + 1);
        v33 = v31 + (v32 >> 6) - 1;
        if (v33 > 0)
        {
          break;
        }

        var0 = *(var0 + 5);
        v31 = v33;
        if (!var0)
        {
          v31 = v33;
          goto LABEL_20;
        }
      }

      v33 = 0;
LABEL_20:
      v34 = v31 | (v33 << 32);
    }

    else
    {
      v34 = 0;
    }

    while (var0)
    {
      v35 = var0 + 64 * (HIDWORD(v34) - v34) + 64;
      if ((*(v35 + 15) & 8) == 0)
      {
        break;
      }

      GTAccelerationStructureDescriptorDownloader_preProcessFunc(v29, v35);
      v36 = atomic_load(var0 + 1);
      v37 = v34 + (v36 >> 6);
      v38 = (HIDWORD(v34) + 1);
      v34 = (v38 << 32) | v34;
      if (v38 == v37 - 1)
      {
        v34 = (v38 << 32) | v38;
        var0 = *(var0 + 5);
      }
    }

    v39 = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
    device2 = [v39 device];
    v41 = DEVICEOBJECT(device2);
    GTAccelerationStructureDescriptorDownloader_allocateStateBuffers(v29, v41);

    v42 = selfCopy->_traceStream->var4.var0;
    if (v42)
    {
      v43 = 0;
      while (1)
      {
        v44 = atomic_load(v42 + 1);
        v45 = v43 + (v44 >> 6) - 1;
        if (v45 > 0)
        {
          break;
        }

        v42 = *(v42 + 5);
        v43 = v45;
        if (!v42)
        {
          v43 = v45;
          goto LABEL_32;
        }
      }

      v45 = 0;
LABEL_32:
      v46 = v43 | (v45 << 32);
    }

    else
    {
      v46 = 0;
    }

    while (v42)
    {
      v47 = v42 + 64 * (HIDWORD(v46) - v46) + 64;
      if ((*(v47 + 15) & 8) == 0)
      {
        break;
      }

      GTAccelerationStructureDescriptorDownloader_processFunc(v29, v47, computeCommandEncoder);
      v48 = atomic_load(v42 + 1);
      v49 = v46 + (v48 >> 6);
      v50 = (HIDWORD(v46) + 1);
      v46 = (v50 << 32) | v46;
      if (v50 == v49 - 1)
      {
        v46 = (v50 << 32) | v50;
        v42 = *(v42 + 5);
      }
    }

    v51 = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
    accelerationStructureDescriptorProcessEvent = [v51 accelerationStructureDescriptorProcessEvent];
    v53 = endEncoding_descriptorDownloaderEventListener;
    copyEventValue = selfCopy->_copyEventValue;
    v55 = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
    GTAccelerationStructureDescriptorDownloader_postProcess(v29, accelerationStructureDescriptorProcessEvent, v53, copyEventValue, [v55 isCapturing], selfCopy, selfCopy->_traceContext);

    v56 = v29[3];
    v29[3] = 0;

    v57 = v29[4];
    v29[4] = 0;

    apr_pool_destroy(newpool[0]);
    [computeCommandEncoder endEncoding];
    v58 = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
    accelerationStructureDescriptorProcessEvent2 = [v58 accelerationStructureDescriptorProcessEvent];
    [v5 encodeSignalEvent:accelerationStructureDescriptorProcessEvent2 value:selfCopy->_copyEventValue];

    v60 = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
    accelerationStructureDescriptorProcessEvent3 = [v60 accelerationStructureDescriptorProcessEvent];
    [v5 encodeWaitForEvent:accelerationStructureDescriptorProcessEvent3 value:selfCopy->_copyEventValue + 1 timeout:GT_ENV];

    [v5 addCompletedHandler:&__block_literal_global_54];
    objc_autoreleasePoolPop(v22);
  }

  v79 = 0u;
  v80 = 0u;
  *newpool = 0u;
  traceStream = selfCopy->_traceStream;
  GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, newpool);
  v63 = v79;
  *(v79 + 8) = -15642;
  v64 = BYTE9(v80);
  if (BYTE9(v80) > 0x38uLL)
  {
    v66 = *(newpool[1] + 3);
    v67 = BYTE10(v80);
    ++BYTE10(v80);
    v65 = GTTraceMemPool_allocateBytes(v66, *(&v79 + 1), v67 | 0x800000000) + 16;
    v64 = v67;
  }

  else
  {
    v65 = (v63 + BYTE9(v80));
    BYTE9(v80) += 8;
  }

  *(v63 + 13) = v64;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)selfCopy traceStream];
  if (traceStream)
  {
    v69 = traceStream->var0;
  }

  else
  {
    v69 = 0;
  }

  *v65 = v69;
  s();
  *v70 = v71;
  *(v70 + 8) = BYTE8(v80);
  *(v79 + 15) |= 8u;
}

void __60__CaptureMTLAccelerationStructureCommandEncoder_endEncoding__block_invoke(id a1)
{
  v3 = dispatch_queue_create("com.apple.gputools.ADSDescriptorDownloader", 0);
  v1 = [[MTLSharedEventListener alloc] initWithDispatchQueue:v3];
  v2 = endEncoding_descriptorDownloaderEventListener;
  endEncoding_descriptorDownloaderEventListener = v1;
}

- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor
{
  structureCopy = structure;
  structuresCopy = structures;
  bufferCopy = buffer;
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

  RetainNSArray(self->_retainedObjects, structuresCopy);
  [bufferCopy touch];
  if (bufferCopy)
  {
    v16 = self->_retainedObjects;
    if (v16)
    {
      [(NSMutableSet *)v16 addObject:bufferCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v17 = structuresCopy;
  v18 = [v17 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v52;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v52 != v20)
        {
          objc_enumerationMutation(v17);
        }

        RetainObjectForDescriptorDownloader(*(*(&v51 + 1) + 8 * i), self->_retainedDescriptorObjectsByStreamRef);
      }

      v19 = [v17 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v19);
  }

  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v48);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v25 = unwrapNSArray(v17);
  baseObject2 = [bufferCopy baseObject];
  v27 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject deserializeInstanceAccelerationStructure:baseObject primitiveAccelerationStructures:v25 fromBuffer:baseObject2 serializedBufferOffset:offset withDescriptor:v27];

  v28 = objc_alloc_init(MTLInstanceAccelerationStructureDescriptor);
  [structureCopy setCaptureDescriptor:v28];

  v29 = v49;
  *(v49 + 8) = -15466;
  v30 = BYTE9(v50);
  if (BYTE9(v50) > 0x18uLL)
  {
    v32 = *(*(&v48 + 1) + 24);
    v33 = BYTE10(v50);
    ++BYTE10(v50);
    v31 = GTTraceMemPool_allocateBytes(v32, *(&v49 + 1), v33 | 0x2800000000) + 16;
    v30 = v33;
  }

  else
  {
    v31 = (v29 + BYTE9(v50));
    BYTE9(v50) += 40;
  }

  *(v29 + 13) = v30;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v37 = *traceStream2;
  }

  else
  {
    v37 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v39 = *traceStream3;
  }

  else
  {
    v39 = 0;
  }

  v40 = StreamMTLNameArray(&v48, v17);
  v41 = SaveMTLAccelerationStructureDescriptor(&v48, descriptorCopy);
  *v31 = var0;
  *(v31 + 1) = v37;
  *(v31 + 2) = v39;
  *(v31 + 3) = offset;
  v31[32] = v40;
  v31[33] = v41;
  *(v31 + 34) = 0;
  *(v31 + 19) = 0;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  isCapturing = [WeakRetained isCapturing];
  v44 = objc_alloc_init(MTLInstanceAccelerationStructureDescriptor);
  SetCaptureDescriptor(structureCopy, self, isCapturing, v44);

  s();
  *v45 = v46;
  *(v45 + 8) = BYTE8(v50);
  *(v49 + 15) |= 8u;
}

- (void)serializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  structureCopy = structure;
  structuresCopy = structures;
  bufferCopy = buffer;
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
  [bufferCopy touch];
  if (bufferCopy)
  {
    v14 = self->_retainedObjects;
    if (v14)
    {
      [(NSMutableSet *)v14 addObject:bufferCopy];
    }
  }

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v18 = unwrapNSArray(structuresCopy);
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject serializeInstanceAccelerationStructure:baseObject primitiveAccelerationStructures:v18 toBuffer:baseObject2 serializedBufferOffset:offset];

  v20 = v35;
  *(v35 + 8) = -15522;
  v21 = BYTE9(v36);
  if (BYTE9(v36) > 0x18uLL)
  {
    v23 = *(*(&v34 + 1) + 24);
    v24 = BYTE10(v36);
    ++BYTE10(v36);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v35 + 1), v24 | 0x2800000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v36));
    BYTE9(v36) += 40;
  }

  *(v20 + 13) = v21;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v28 = *traceStream2;
  }

  else
  {
    v28 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v30 = *traceStream3;
  }

  else
  {
    v30 = 0;
  }

  v31 = StreamMTLNameArray(&v34, structuresCopy);
  *v22 = var0;
  *(v22 + 1) = v28;
  *(v22 + 2) = v30;
  *(v22 + 3) = offset;
  v22[32] = v31;
  *(v22 + 33) = 0;
  *(v22 + 9) = 0;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v36);
  *(v35 + 15) |= 8u;
}

- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  structureCopy = structure;
  structuresCopy = structures;
  bufferCopy = buffer;
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
  [bufferCopy touch];
  if (bufferCopy)
  {
    v14 = self->_retainedObjects;
    if (v14)
    {
      [(NSMutableSet *)v14 addObject:bufferCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v15 = structuresCopy;
  v16 = [v15 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v46;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(v15);
        }

        RetainObjectForDescriptorDownloader(*(*(&v45 + 1) + 8 * i), self->_retainedDescriptorObjectsByStreamRef);
      }

      v17 = [v15 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v17);
  }

  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v42);
  baseObject = [structureCopy baseObject];
  baseObject = self->_baseObject;
  v23 = unwrapNSArray(v15);
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject deserializeInstanceAccelerationStructure:baseObject primitiveAccelerationStructures:v23 fromBuffer:baseObject2 serializedBufferOffset:offset];

  v25 = v43;
  *(v43 + 8) = -15524;
  v26 = BYTE9(v44);
  if (BYTE9(v44) > 0x18uLL)
  {
    v28 = *(*(&v42 + 1) + 24);
    v29 = BYTE10(v44);
    ++BYTE10(v44);
    v27 = GTTraceMemPool_allocateBytes(v28, *(&v43 + 1), v29 | 0x2800000000) + 16;
    v26 = v29;
  }

  else
  {
    v27 = (v25 + BYTE9(v44));
    BYTE9(v44) += 40;
  }

  *(v25 + 13) = v26;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v33 = *traceStream2;
  }

  else
  {
    v33 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v35 = *traceStream3;
  }

  else
  {
    v35 = 0;
  }

  v36 = StreamMTLNameArray(&v42, v15);
  *v27 = var0;
  *(v27 + 1) = v33;
  *(v27 + 2) = v35;
  *(v27 + 3) = offset;
  v27[32] = v36;
  *(v27 + 33) = 0;
  *(v27 + 9) = 0;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  isCapturing = [WeakRetained isCapturing];
  v39 = objc_alloc_init(MTLInstanceAccelerationStructureDescriptor);
  SetCaptureDescriptor(structureCopy, self, isCapturing, v39);

  s();
  *v40 = v41;
  *(v40 + 8) = BYTE8(v44);
  *(v43 + 15) |= 8u;
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  structureCopy = structure;
  bufferCopy = buffer;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:bufferCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v32);
  baseObject = [structureCopy baseObject];
  baseObject = self->_baseObject;
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject deserializePrimitiveAccelerationStructure:baseObject fromBuffer:baseObject2 serializedBufferOffset:offset];

  v16 = v33;
  *(v33 + 8) = -15523;
  v17 = BYTE9(v34);
  if (BYTE9(v34) > 0x20uLL)
  {
    v19 = *(*(&v32 + 1) + 24);
    v20 = BYTE10(v34);
    ++BYTE10(v34);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v33 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v34));
    BYTE9(v34) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v26 = *traceStream3;
  }

  else
  {
    v26 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = offset;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  isCapturing = [WeakRetained isCapturing];
  v29 = objc_alloc_init(MTLPrimitiveAccelerationStructureDescriptor);
  SetCaptureDescriptor(structureCopy, self, isCapturing, v29);

  s();
  *v30 = v31;
  *(v30 + 8) = BYTE8(v34);
  *(v33 + 15) |= 8u;
}

- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset
{
  structureCopy = structure;
  descriptorCopy = descriptor;
  bufferCopy = buffer;
  if (structureCopy)
  {
    device = [structureCopy device];
    captureRaytracingEnabled = [device captureRaytracingEnabled];

    if ((captureRaytracingEnabled & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLAccelerationStructureCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      baseObject = [structureCopy baseObject];
      v38 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
      baseObject2 = [bufferCopy baseObject];
      [(MTLAccelerationStructureCommandEncoderSPI *)baseObject buildAccelerationStructure:baseObject descriptor:v38 scratchBuffer:baseObject2 scratchBufferOffset:offset];

      v28 = descriptorCopy;
      goto LABEL_23;
    }

    [structureCopy touch];
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  else
  {
    [0 touch];
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v16 = self->_retainedObjects;
    if (v16)
    {
      [(NSMutableSet *)v16 addObject:bufferCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainAccelerationStructureDescriptorObjects(self->_retainedObjects, self->_retainedDescriptorObjectsByStreamRef, descriptorCopy);
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v51);
  v18 = self->_baseObject;
  baseObject3 = [structureCopy baseObject];
  v20 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
  v49 = bufferCopy;
  baseObject4 = [bufferCopy baseObject];
  offsetCopy = offset;
  [(MTLAccelerationStructureCommandEncoderSPI *)v18 buildAccelerationStructure:baseObject3 descriptor:v20 scratchBuffer:baseObject4 scratchBufferOffset:offset];

  v50 = descriptorCopy;
  v22 = structureCopy;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  LODWORD(baseObject3) = [WeakRetained isCapturing];
  LODWORD(v20) = (dword_31F7C8 >> 4) & 1;
  captureDevice = self->_captureDevice;
  blitOperations = self->_blitOperations;
  extraRetainedObjects = [v22 extraRetainedObjects];
  v27 = copyCaptureDescriptor(&v50, baseObject3, v20, captureDevice, blitOperations, extraRetainedObjects, self->_retainedDescriptorObjectsByStreamRef, self->_bufferCache);
  v28 = v50;

  v29 = v52;
  *(v52 + 8) = -15647;
  v30 = BYTE9(v53);
  if (BYTE9(v53) > 0x18uLL)
  {
    v32 = *(*(&v51 + 1) + 24);
    v33 = BYTE10(v53);
    ++BYTE10(v53);
    v31 = GTTraceMemPool_allocateBytes(v32, *(&v52 + 1), v33 | 0x2800000000) + 16;
    v30 = v33;
  }

  else
  {
    v31 = (v29 + BYTE9(v53));
    BYTE9(v53) += 40;
  }

  *(v29 + 13) = v30;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  bufferCopy = v49;
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v22 traceStream];
  if (traceStream2)
  {
    v41 = *traceStream2;
  }

  else
  {
    v41 = 0;
  }

  traceStream3 = [v49 traceStream];
  if (traceStream3)
  {
    v43 = *traceStream3;
  }

  else
  {
    v43 = 0;
  }

  v44 = SaveMTLAccelerationStructureDescriptor(&v51, v28);
  *v31 = var0;
  *(v31 + 1) = v41;
  *(v31 + 2) = v43;
  *(v31 + 3) = offsetCopy;
  v31[32] = v44;
  *(v31 + 33) = 0;
  *(v31 + 9) = 0;
  v45 = objc_loadWeakRetained(&self->_captureCommandBuffer);
  SetCaptureDescriptor(v22, self, [v45 isCapturing], v27);

  s();
  *v46 = v47;
  *(v46 + 8) = BYTE8(v53);
  *(v52 + 15) |= 8u;

LABEL_23:
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options
{
  structureCopy = structure;
  descriptorCopy = descriptor;
  destinationCopy = destination;
  bufferCopy = buffer;
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

  [bufferCopy touch];
  if (bufferCopy)
  {
    v18 = self->_retainedObjects;
    if (v18)
    {
      [(NSMutableSet *)v18 addObject:bufferCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(destinationCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainAccelerationStructureDescriptorObjects(self->_retainedObjects, self->_retainedDescriptorObjectsByStreamRef, descriptorCopy);
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v55);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v22 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
  baseObject2 = [destinationCopy baseObject];
  v53 = bufferCopy;
  baseObject3 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject refitAccelerationStructure:baseObject descriptor:v22 destination:baseObject2 scratchBuffer:baseObject3 scratchBufferOffset:v50 options:v52];

  v54 = descriptorCopy;
  v25 = destinationCopy;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  LODWORD(baseObject3) = [WeakRetained isCapturing];
  LODWORD(baseObject) = (dword_31F7C8 >> 4) & 1;
  captureDevice = self->_captureDevice;
  blitOperations = self->_blitOperations;
  extraRetainedObjects = [v25 extraRetainedObjects];
  v30 = copyCaptureDescriptor(&v54, baseObject3, baseObject, captureDevice, blitOperations, extraRetainedObjects, self->_retainedDescriptorObjectsByStreamRef, self->_bufferCache);
  v31 = v54;

  v32 = v56;
  *(v56 + 8) = -15366;
  v33 = BYTE9(v57);
  if (BYTE9(v57) > 8uLL)
  {
    v35 = *(*(&v55 + 1) + 24);
    v36 = BYTE10(v57);
    ++BYTE10(v57);
    v34 = GTTraceMemPool_allocateBytes(v35, *(&v56 + 1), v36 | 0x3800000000) + 16;
    v33 = v36;
  }

  else
  {
    v34 = (v32 + BYTE9(v57));
    BYTE9(v57) += 56;
  }

  *(v32 + 13) = v33;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v40 = *traceStream2;
  }

  else
  {
    v40 = 0;
  }

  traceStream3 = [v25 traceStream];
  if (traceStream3)
  {
    v42 = *traceStream3;
  }

  else
  {
    v42 = 0;
  }

  traceStream4 = [v53 traceStream];
  if (traceStream4)
  {
    v44 = *traceStream4;
  }

  else
  {
    v44 = 0;
  }

  v45 = SaveMTLAccelerationStructureDescriptor(&v55, v31);
  *v34 = var0;
  *(v34 + 1) = v40;
  *(v34 + 2) = v42;
  *(v34 + 3) = v44;
  *(v34 + 4) = v50;
  *(v34 + 5) = v52;
  v34[48] = v45;
  *(v34 + 49) = 0;
  *(v34 + 13) = 0;
  v46 = objc_loadWeakRetained(&self->_captureCommandBuffer);
  SetCaptureDescriptor(v25, self, [v46 isCapturing], v30);

  s();
  *v47 = v48;
  *(v47 + 8) = BYTE8(v57);
  *(v56 + 15) |= 8u;
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset
{
  structureCopy = structure;
  descriptorCopy = descriptor;
  destinationCopy = destination;
  bufferCopy = buffer;
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
    v16 = self->_retainedObjects;
    if (v16)
    {
      [(NSMutableSet *)v16 addObject:destinationCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:bufferCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(destinationCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainAccelerationStructureDescriptorObjects(self->_retainedObjects, self->_retainedDescriptorObjectsByStreamRef, descriptorCopy);
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v51);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v21 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
  baseObject2 = [destinationCopy baseObject];
  v49 = bufferCopy;
  baseObject3 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject refitAccelerationStructure:baseObject descriptor:v21 destination:baseObject2 scratchBuffer:baseObject3 scratchBufferOffset:offset];

  v50 = descriptorCopy;
  v24 = destinationCopy;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  LODWORD(baseObject) = [WeakRetained isCapturing];
  LODWORD(baseObject) = (dword_31F7C8 >> 4) & 1;
  captureDevice = self->_captureDevice;
  blitOperations = self->_blitOperations;
  extraRetainedObjects = [v24 extraRetainedObjects];
  v29 = copyCaptureDescriptor(&v50, baseObject, baseObject, captureDevice, blitOperations, extraRetainedObjects, self->_retainedDescriptorObjectsByStreamRef, self->_bufferCache);
  v30 = v50;

  v31 = v52;
  *(v52 + 8) = -15638;
  v32 = BYTE9(v53);
  if (BYTE9(v53) > 0x10uLL)
  {
    v34 = *(*(&v51 + 1) + 24);
    v35 = BYTE10(v53);
    ++BYTE10(v53);
    v33 = GTTraceMemPool_allocateBytes(v34, *(&v52 + 1), v35 | 0x3000000000) + 16;
    v32 = v35;
  }

  else
  {
    v33 = (v31 + BYTE9(v53));
    BYTE9(v53) += 48;
  }

  *(v31 + 13) = v32;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v39 = *traceStream2;
  }

  else
  {
    v39 = 0;
  }

  traceStream3 = [v24 traceStream];
  if (traceStream3)
  {
    v41 = *traceStream3;
  }

  else
  {
    v41 = 0;
  }

  traceStream4 = [v49 traceStream];
  if (traceStream4)
  {
    v43 = *traceStream4;
  }

  else
  {
    v43 = 0;
  }

  v44 = SaveMTLAccelerationStructureDescriptor(&v51, v30);
  *v33 = var0;
  *(v33 + 1) = v39;
  *(v33 + 2) = v41;
  *(v33 + 3) = v43;
  *(v33 + 4) = offset;
  v33[40] = v44;
  *(v33 + 41) = 0;
  *(v33 + 11) = 0;
  v45 = objc_loadWeakRetained(&self->_captureCommandBuffer);
  SetCaptureDescriptor(v24, self, [v45 isCapturing], v29);

  s();
  *v46 = v47;
  *(v46 + 8) = BYTE8(v53);
  *(v52 + 15) |= 8u;
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
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [accelerationStructureCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject copyAndCompactAccelerationStructure:baseObject toAccelerationStructure:baseObject2];

  v14 = v39;
  *(v39 + 8) = -15645;
  v15 = BYTE9(v40);
  if (BYTE9(v40) > 0x28uLL)
  {
    v17 = *(*(&v38 + 1) + 24);
    v18 = BYTE10(v40);
    ++BYTE10(v40);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v39 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v40));
    BYTE9(v40) += 24;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  v25 = structureCopy;
  v26 = accelerationStructureCopy;
  if ((dword_31F7C8 & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    isCapturing = [WeakRetained isCapturing];

    if ((isCapturing & 1) == 0)
    {
      extraRetainedObjects = [v26 extraRetainedObjects];
      [extraRetainedObjects removeAllObjects];
    }

    extraRetainedObjects2 = [v26 extraRetainedObjects];
    retainedDescriptorObjectsByStreamRef = self->_retainedDescriptorObjectsByStreamRef;
    captureDescriptor = [v25 captureDescriptor];
    RetainAccelerationStructureDescriptorObjects(extraRetainedObjects2, retainedDescriptorObjectsByStreamRef, captureDescriptor);
  }

  v33 = objc_loadWeakRetained(&self->_captureCommandBuffer);
  isCapturing2 = [v33 isCapturing];
  captureDescriptor2 = [v25 captureDescriptor];
  SetCaptureDescriptor(v26, self, isCapturing2, captureDescriptor2);

  s();
  *v36 = v37;
  *(v36 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
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
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [accelerationStructureCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject copyAccelerationStructure:baseObject toAccelerationStructure:baseObject2];

  v14 = v39;
  *(v39 + 8) = -15646;
  v15 = BYTE9(v40);
  if (BYTE9(v40) > 0x28uLL)
  {
    v17 = *(*(&v38 + 1) + 24);
    v18 = BYTE10(v40);
    ++BYTE10(v40);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v39 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v40));
    BYTE9(v40) += 24;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  v25 = structureCopy;
  v26 = accelerationStructureCopy;
  if ((dword_31F7C8 & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    isCapturing = [WeakRetained isCapturing];

    if ((isCapturing & 1) == 0)
    {
      extraRetainedObjects = [v26 extraRetainedObjects];
      [extraRetainedObjects removeAllObjects];
    }

    extraRetainedObjects2 = [v26 extraRetainedObjects];
    retainedDescriptorObjectsByStreamRef = self->_retainedDescriptorObjectsByStreamRef;
    captureDescriptor = [v25 captureDescriptor];
    RetainAccelerationStructureDescriptorObjects(extraRetainedObjects2, retainedDescriptorObjectsByStreamRef, captureDescriptor);
  }

  v33 = objc_loadWeakRetained(&self->_captureCommandBuffer);
  isCapturing2 = [v33 isCapturing];
  captureDescriptor2 = [v25 captureDescriptor];
  SetCaptureDescriptor(v26, self, isCapturing2, captureDescriptor2);

  s();
  *v36 = v37;
  *(v36 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

- (CaptureMTLAccelerationStructureCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer copyEventValue:(unint64_t)value
{
  objectCopy = object;
  bufferCopy = buffer;
  v28.receiver = self;
  v28.super_class = CaptureMTLAccelerationStructureCommandEncoder;
  v11 = [(CaptureMTLAccelerationStructureCommandEncoder *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseObject, object);
    device = [bufferCopy device];
    captureDevice = v12->_captureDevice;
    v12->_captureDevice = device;

    objc_storeWeak(&v12->_captureCommandBuffer, bufferCopy);
    traceContext = [bufferCopy traceContext];
    v12->_traceContext = traceContext;
    v16 = DEVICEOBJECT(objectCopy);
    v12->_traceStream = GTTraceContext_openEncoderStream(traceContext, v16, *([bufferCopy traceStream] + 3));

    retainedObjects = [bufferCopy retainedObjects];
    retainedObjects = v12->_retainedObjects;
    v12->_retainedObjects = retainedObjects;

    v12->_copyEventValue = value;
    v19 = v12->_retainedObjects;
    v20 = DEVICEOBJECT(v12->_baseObject);
    [(NSMutableSet *)v19 addObject:v20];

    v21 = objc_alloc_init(NSMutableDictionary);
    retainedDescriptorObjectsByStreamRef = v12->_retainedDescriptorObjectsByStreamRef;
    v12->_retainedDescriptorObjectsByStreamRef = v21;

    if ((dword_31F7C8 & 0x10) != 0)
    {
      v23 = objc_opt_new();
      blitOperations = v12->_blitOperations;
      v12->_blitOperations = v23;

      v25 = objc_opt_new();
      bufferCache = v12->_bufferCache;
      v12->_bufferCache = v25;
    }
  }

  return v12;
}

@end