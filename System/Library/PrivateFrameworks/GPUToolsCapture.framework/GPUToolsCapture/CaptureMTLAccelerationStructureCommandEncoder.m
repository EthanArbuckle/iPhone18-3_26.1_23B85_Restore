@interface CaptureMTLAccelerationStructureCommandEncoder
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4;
- (CaptureMTLAccelerationStructureCommandEncoder)initWithBaseObject:(id)a3 captureCommandBuffer:(id)a4 copyEventValue:(unint64_t)a5;
- (NSString)description;
- (unint64_t)streamReference;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4;
- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(id)a5 scratchBufferOffset:(unint64_t)a6;
- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6;
- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6 withDescriptor:(id)a7;
- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5;
- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5 withDescriptor:(id)a6;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)a3;
- (void)insertSplit;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7;
- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7 options:(unint64_t)a8;
- (void)serializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 toBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6;
- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5;
- (void)setLabel:(id)a3;
- (void)touch;
- (void)updateFence:(id)a3;
- (void)useHeap:(id)a3;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
- (void)waitForFence:(id)a3;
- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5;
- (void)writeAccelerationStructureTraversalDepth:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5;
- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5;
- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5 sizeDataType:(unint64_t)a6;
- (void)writeDeserializedAccelerationStructureSize:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizeBufferOffset:(unint64_t)a6;
- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizesBufferOffset:(unint64_t)a6;
- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5;
@end

@implementation CaptureMTLAccelerationStructureCommandEncoder

- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  [v9 touch];
  if (v9)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:v9];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v14 = [v8 baseObject];
  v15 = [v9 baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeSerializedAccelerationStructureSize:v14 toBuffer:v15 sizeBufferOffset:a5];

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
  v21 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  v23 = [v8 traceStream];
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v9 traceStream];
  if (v25)
  {
    v26 = *v25;
  }

  else
  {
    v26 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = a5;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
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
  LOBYTE(baseObject) = [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeGenericBVHStructureSizesOfAccelerationStructure:v10 into:v7];

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

  v12 = [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeGenericBVHStructureOfAccelerationStructure:v10 into:v11];
  return v12;
}

- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizesBufferOffset:(unint64_t)a6
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
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeDeserializedPrimitiveAccelerationStructureSizes:v16 serializedOffset:a4 toBuffer:v17 sizesBufferOffset:a6];

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
  v23 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

- (void)writeDeserializedAccelerationStructureSize:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizeBufferOffset:(unint64_t)a6
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
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeDeserializedAccelerationStructureSize:v16 serializedOffset:a4 toBuffer:v17 sizeBufferOffset:a6];

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
  v23 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5 sizeDataType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
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
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeCompactedAccelerationStructureSize:v16 toBuffer:v17 offset:a5 sizeDataType:a6];

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
  v23 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  *(v20 + 2) = v28;
  *(v20 + 3) = a5;
  *(v20 + 4) = a6;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  [v9 touch];
  if (v9)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:v9];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v14 = [v8 baseObject];
  v15 = [v9 baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeCompactedAccelerationStructureSize:v14 toBuffer:v15 offset:a5];

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
  v21 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  v23 = [v8 traceStream];
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v9 traceStream];
  if (v25)
  {
    v26 = *v25;
  }

  else
  {
    v26 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = a5;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)writeAccelerationStructureTraversalDepth:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  [v9 touch];
  if (v9)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:v9];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v14 = [v8 baseObject];
  v15 = [v9 baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeAccelerationStructureTraversalDepth:v14 toBuffer:v15 offset:a5];

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
  v21 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  v23 = [v8 traceStream];
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v9 traceStream];
  if (v25)
  {
    v26 = *v25;
  }

  else
  {
    v26 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = a5;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  [v9 touch];
  if (v9)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:v9];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v14 = [v8 baseObject];
  v15 = [v9 baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeAccelerationStructureSerializationData:v14 toBuffer:v15 offset:a5];

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
  v21 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  v23 = [v8 traceStream];
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v9 traceStream];
  if (v25)
  {
    v26 = *v25;
  }

  else
  {
    v26 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = a5;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

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
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject waitForFence:v8];

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
  v14 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  RetainArray(self->_retainedObjects, a3, a4);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v12 = 8 * a4;
  __chkstk_darwin(v10, v13);
  bzero(&v29 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  if (a4)
  {
    v14 = a3;
    v15 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = a4;
    do
    {
      v17 = *v14++;
      *v15++ = [v17 baseObject];
      --v16;
    }

    while (v16);
  }

  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject useResources:&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) count:a4 usage:a5];
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
  v23 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v23)
  {
    var0 = v23->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v23, v24);
  bzero(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  v26 = StreamArray(&v29, (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, a4);
  *v20 = var0;
  *(v20 + 1) = a4;
  *(v20 + 2) = a5;
  v20[24] = v26;
  *(v20 + 25) = 0;
  *(v20 + 7) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)useResource:(id)a3 usage:(unint64_t)a4
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
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject useResource:v10 usage:a4];

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
  v16 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
{
  RetainArray(self->_retainedObjects, a3, a4);
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  traceStream = self->_traceStream;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  v10 = 8 * a4;
  __chkstk_darwin(v8, v11);
  bzero(&v27 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  if (a4)
  {
    v12 = a3;
    v13 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = a4;
    do
    {
      v15 = *v12++;
      *v13++ = [v15 baseObject];
      --v14;
    }

    while (v14);
  }

  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject useHeaps:&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) count:a4];
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
  v21 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(v21, v22);
  bzero(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a4);
  v24 = StreamArray(&v27, (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, a4);
  *v18 = var0;
  *(v18 + 1) = a4;
  v18[16] = v24;
  *(v18 + 17) = 0;
  *(v18 + 5) = 0;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)useHeap:(id)a3
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
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject useHeap:v8];

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
  v14 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject updateFence:v8];

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
  v14 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  [v9 touch];
  if (v9)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:v9];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v14 = [v8 baseObject];
  v15 = [v9 baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject serializePrimitiveAccelerationStructure:v14 toBuffer:v15 serializedBufferOffset:a5];

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
  v21 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  v23 = [v8 traceStream];
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v9 traceStream];
  if (v25)
  {
    v26 = *v25;
  }

  else
  {
    v26 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = a5;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)pushDebugGroup:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject pushDebugGroup:v4];
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
  v11 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  v9 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLAccelerationStructureCommandEncoder_insertSplit", "Command Encoder Insert Split", 0, 0);
  baseObject = self->_baseObject;

  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject insertSplit];
}

- (void)insertDebugSignpost:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject insertDebugSignpost:v4];
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
  v11 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5 withDescriptor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
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
    v14 = self->_retainedObjects;
    if (v14)
    {
      [(NSMutableSet *)v14 addObject:v11];
    }
  }

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
  baseObject = self->_baseObject;
  v17 = [v10 baseObject];
  v18 = [v11 baseObject];
  v19 = unwrapMTLAccelerationStructureDescriptor(v12);
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject deserializePrimitiveAccelerationStructure:v17 fromBuffer:v18 serializedBufferOffset:a5 withDescriptor:v19];

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
  v25 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v25)
  {
    var0 = v25->var0;
  }

  else
  {
    var0 = 0;
  }

  v27 = [v10 traceStream];
  if (v27)
  {
    v28 = *v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = [v11 traceStream];
  if (v29)
  {
    v30 = *v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = SaveMTLAccelerationStructureDescriptor(&v34, v12);

  *v22 = var0;
  *(v22 + 1) = v28;
  *(v22 + 2) = v30;
  *(v22 + 3) = a5;
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
  v9 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  v13.super_class = CaptureMTLAccelerationStructureCommandEncoder;
  [(CaptureMTLAccelerationStructureCommandEncoder *)&v13 dealloc];
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:a3 beforeStages:a4];
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
  v13 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject setLabel:v4];
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
  v11 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  v5 = [(MTLAccelerationStructureCommandEncoderSPI *)baseObject conformsToProtocol:v4];

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
  v2 = self;
  v3 = GTAccelerationStructureDescriptorDownloader_needsDownloader(self->_traceStream);
  if (endEncoding_descriptorDownloaderToken != -1)
  {
    dispatch_once(&endEncoding_descriptorDownloaderToken, &__block_literal_global_9419);
  }

  [(MTLAccelerationStructureCommandEncoderSPI *)v2->_baseObject endEncoding];
  WeakRetained = objc_loadWeakRetained(&v2->_captureCommandBuffer);
  v5 = DEVICEOBJECT(WeakRetained);

  if ([(NSMutableArray *)v2->_blitOperations count])
  {
    v73 = v3;
    context = objc_autoreleasePoolPush();
    v74 = v5;
    v77 = [v5 blitCommandEncoder];
    [v77 setLabel:@"com.apple.gputools.ADSExtraBuffersBlit"];
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v75 = v2;
    obj = v2->_blitOperations;
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
          [v77 copyFromBuffer:v12 sourceOffset:v14 toBuffer:v16 destinationOffset:0 size:NumberToInt(v17)];
        }

        v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v83 objects:v87 count:16];
      }

      while (v7);
    }

    [v77 endEncoding];
    v2 = v75;
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
    v23 = [v5 computeCommandEncoder];
    [v23 setLabel:@"com.apple.gputools.GTAccelerationStructureDescriptorDownloader.copyCommandEncoder"];
    newpool[0] = 0;
    apr_pool_create_ex(newpool, 0, 0, 0);
    v24 = apr_hash_make(newpool[0]);
    GTTraceMemPool_buildMemoryMap(v2->_traceStream->var3, v24);
    v25 = objc_loadWeakRetained(&v2->_captureCommandBuffer);
    v26 = [v25 device];
    retainedDescriptorObjectsByStreamRef = v2->_retainedDescriptorObjectsByStreamRef;
    v28 = atomic_load(&v2->_traceContext->var3);
    v29 = GTAccelerationStructureDescriptorDownloader_make(v26, retainedDescriptorObjectsByStreamRef, v24, v28, newpool[0]);

    var0 = v2->_traceStream->var4.var0;
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

    v39 = objc_loadWeakRetained(&v2->_captureCommandBuffer);
    v40 = [v39 device];
    v41 = DEVICEOBJECT(v40);
    GTAccelerationStructureDescriptorDownloader_allocateStateBuffers(v29, v41);

    v42 = v2->_traceStream->var4.var0;
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

      GTAccelerationStructureDescriptorDownloader_processFunc(v29, v47, v23);
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

    v51 = objc_loadWeakRetained(&v2->_captureCommandBuffer);
    v52 = [v51 accelerationStructureDescriptorProcessEvent];
    v53 = endEncoding_descriptorDownloaderEventListener;
    copyEventValue = v2->_copyEventValue;
    v55 = objc_loadWeakRetained(&v2->_captureCommandBuffer);
    GTAccelerationStructureDescriptorDownloader_postProcess(v29, v52, v53, copyEventValue, [v55 isCapturing], v2, v2->_traceContext);

    v56 = v29[3];
    v29[3] = 0;

    v57 = v29[4];
    v29[4] = 0;

    apr_pool_destroy(newpool[0]);
    [v23 endEncoding];
    v58 = objc_loadWeakRetained(&v2->_captureCommandBuffer);
    v59 = [v58 accelerationStructureDescriptorProcessEvent];
    [v5 encodeSignalEvent:v59 value:v2->_copyEventValue];

    v60 = objc_loadWeakRetained(&v2->_captureCommandBuffer);
    v61 = [v60 accelerationStructureDescriptorProcessEvent];
    [v5 encodeWaitForEvent:v61 value:v2->_copyEventValue + 1 timeout:GT_ENV];

    [v5 addCompletedHandler:&__block_literal_global_54];
    objc_autoreleasePoolPop(v22);
  }

  v79 = 0u;
  v80 = 0u;
  *newpool = 0u;
  traceStream = v2->_traceStream;
  GTTraceContext_pushEncoderWithStream(v2->_traceContext, newpool);
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
  v68 = [(CaptureMTLAccelerationStructureCommandEncoder *)v2 traceStream];
  if (v68)
  {
    v69 = v68->var0;
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

- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6 withDescriptor:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  [v11 touch];
  if (v11)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v11];
    }
  }

  RetainNSArray(self->_retainedObjects, v12);
  [v13 touch];
  if (v13)
  {
    v16 = self->_retainedObjects;
    if (v16)
    {
      [(NSMutableSet *)v16 addObject:v13];
    }
  }

  RetainObjectForDescriptorDownloader(v11, self->_retainedDescriptorObjectsByStreamRef);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v17 = v12;
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
  v24 = [v11 baseObject];
  v25 = unwrapNSArray(v17);
  v26 = [v13 baseObject];
  v27 = unwrapMTLAccelerationStructureDescriptor(v14);
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject deserializeInstanceAccelerationStructure:v24 primitiveAccelerationStructures:v25 fromBuffer:v26 serializedBufferOffset:a6 withDescriptor:v27];

  v28 = objc_alloc_init(MTLInstanceAccelerationStructureDescriptor);
  [v11 setCaptureDescriptor:v28];

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
  v34 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v34)
  {
    var0 = v34->var0;
  }

  else
  {
    var0 = 0;
  }

  v36 = [v11 traceStream];
  if (v36)
  {
    v37 = *v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = [v13 traceStream];
  if (v38)
  {
    v39 = *v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = StreamMTLNameArray(&v48, v17);
  v41 = SaveMTLAccelerationStructureDescriptor(&v48, v14);
  *v31 = var0;
  *(v31 + 1) = v37;
  *(v31 + 2) = v39;
  *(v31 + 3) = a6;
  v31[32] = v40;
  v31[33] = v41;
  *(v31 + 34) = 0;
  *(v31 + 19) = 0;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  v43 = [WeakRetained isCapturing];
  v44 = objc_alloc_init(MTLInstanceAccelerationStructureDescriptor);
  SetCaptureDescriptor(v11, self, v43, v44);

  s();
  *v45 = v46;
  *(v45 + 8) = BYTE8(v50);
  *(v49 + 15) |= 8u;
}

- (void)serializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 toBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [v10 touch];
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  RetainNSArray(self->_retainedObjects, v11);
  [v12 touch];
  if (v12)
  {
    v14 = self->_retainedObjects;
    if (v14)
    {
      [(NSMutableSet *)v14 addObject:v12];
    }
  }

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
  baseObject = self->_baseObject;
  v17 = [v10 baseObject];
  v18 = unwrapNSArray(v11);
  v19 = [v12 baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject serializeInstanceAccelerationStructure:v17 primitiveAccelerationStructures:v18 toBuffer:v19 serializedBufferOffset:a6];

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
  v25 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v25)
  {
    var0 = v25->var0;
  }

  else
  {
    var0 = 0;
  }

  v27 = [v10 traceStream];
  if (v27)
  {
    v28 = *v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = [v12 traceStream];
  if (v29)
  {
    v30 = *v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = StreamMTLNameArray(&v34, v11);
  *v22 = var0;
  *(v22 + 1) = v28;
  *(v22 + 2) = v30;
  *(v22 + 3) = a6;
  v22[32] = v31;
  *(v22 + 33) = 0;
  *(v22 + 9) = 0;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v36);
  *(v35 + 15) |= 8u;
}

- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [v10 touch];
  if (v10)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  RetainNSArray(self->_retainedObjects, v11);
  [v12 touch];
  if (v12)
  {
    v14 = self->_retainedObjects;
    if (v14)
    {
      [(NSMutableSet *)v14 addObject:v12];
    }
  }

  RetainObjectForDescriptorDownloader(v10, self->_retainedDescriptorObjectsByStreamRef);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v15 = v11;
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
  v21 = [v10 baseObject];
  baseObject = self->_baseObject;
  v23 = unwrapNSArray(v15);
  v24 = [v12 baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject deserializeInstanceAccelerationStructure:v21 primitiveAccelerationStructures:v23 fromBuffer:v24 serializedBufferOffset:a6];

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
  v30 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v30)
  {
    var0 = v30->var0;
  }

  else
  {
    var0 = 0;
  }

  v32 = [v10 traceStream];
  if (v32)
  {
    v33 = *v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = [v12 traceStream];
  if (v34)
  {
    v35 = *v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = StreamMTLNameArray(&v42, v15);
  *v27 = var0;
  *(v27 + 1) = v33;
  *(v27 + 2) = v35;
  *(v27 + 3) = a6;
  v27[32] = v36;
  *(v27 + 33) = 0;
  *(v27 + 9) = 0;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  v38 = [WeakRetained isCapturing];
  v39 = objc_alloc_init(MTLInstanceAccelerationStructureDescriptor);
  SetCaptureDescriptor(v10, self, v38, v39);

  s();
  *v40 = v41;
  *(v40 + 8) = BYTE8(v44);
  *(v43 + 15) |= 8u;
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  [v8 touch];
  if (v8)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v8];
    }
  }

  [v9 touch];
  if (v9)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:v9];
    }
  }

  RetainObjectForDescriptorDownloader(v8, self->_retainedDescriptorObjectsByStreamRef);
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v32);
  v13 = [v8 baseObject];
  baseObject = self->_baseObject;
  v15 = [v9 baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject deserializePrimitiveAccelerationStructure:v13 fromBuffer:v15 serializedBufferOffset:a5];

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
  v21 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  v23 = [v8 traceStream];
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v9 traceStream];
  if (v25)
  {
    v26 = *v25;
  }

  else
  {
    v26 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = v26;
  *(v18 + 3) = a5;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  v28 = [WeakRetained isCapturing];
  v29 = objc_alloc_init(MTLPrimitiveAccelerationStructureDescriptor);
  SetCaptureDescriptor(v8, self, v28, v29);

  s();
  *v30 = v31;
  *(v30 + 8) = BYTE8(v34);
  *(v33 + 15) |= 8u;
}

- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(id)a5 scratchBufferOffset:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    v13 = [v10 device];
    v14 = [v13 captureRaytracingEnabled];

    if ((v14 & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLAccelerationStructureCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      v37 = [v10 baseObject];
      v38 = unwrapMTLAccelerationStructureDescriptor(v11);
      v39 = [v12 baseObject];
      [(MTLAccelerationStructureCommandEncoderSPI *)baseObject buildAccelerationStructure:v37 descriptor:v38 scratchBuffer:v39 scratchBufferOffset:a6];

      v28 = v11;
      goto LABEL_23;
    }

    [v10 touch];
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v10];
    }
  }

  else
  {
    [0 touch];
  }

  [v12 touch];
  if (v12)
  {
    v16 = self->_retainedObjects;
    if (v16)
    {
      [(NSMutableSet *)v16 addObject:v12];
    }
  }

  RetainObjectForDescriptorDownloader(v10, self->_retainedDescriptorObjectsByStreamRef);
  RetainAccelerationStructureDescriptorObjects(self->_retainedObjects, self->_retainedDescriptorObjectsByStreamRef, v11);
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v51);
  v18 = self->_baseObject;
  v19 = [v10 baseObject];
  v20 = unwrapMTLAccelerationStructureDescriptor(v11);
  v49 = v12;
  v21 = [v12 baseObject];
  v48 = a6;
  [(MTLAccelerationStructureCommandEncoderSPI *)v18 buildAccelerationStructure:v19 descriptor:v20 scratchBuffer:v21 scratchBufferOffset:a6];

  v50 = v11;
  v22 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  LODWORD(v19) = [WeakRetained isCapturing];
  LODWORD(v20) = (dword_31F7C8 >> 4) & 1;
  captureDevice = self->_captureDevice;
  blitOperations = self->_blitOperations;
  v26 = [v22 extraRetainedObjects];
  v27 = copyCaptureDescriptor(&v50, v19, v20, captureDevice, blitOperations, v26, self->_retainedDescriptorObjectsByStreamRef, self->_bufferCache);
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
  v34 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  v12 = v49;
  if (v34)
  {
    var0 = v34->var0;
  }

  else
  {
    var0 = 0;
  }

  v40 = [v22 traceStream];
  if (v40)
  {
    v41 = *v40;
  }

  else
  {
    v41 = 0;
  }

  v42 = [v49 traceStream];
  if (v42)
  {
    v43 = *v42;
  }

  else
  {
    v43 = 0;
  }

  v44 = SaveMTLAccelerationStructureDescriptor(&v51, v28);
  *v31 = var0;
  *(v31 + 1) = v41;
  *(v31 + 2) = v43;
  *(v31 + 3) = v48;
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

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7 options:(unint64_t)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  [v12 touch];
  if (v12)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v12];
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

  [v15 touch];
  if (v15)
  {
    v18 = self->_retainedObjects;
    if (v18)
    {
      [(NSMutableSet *)v18 addObject:v15];
    }
  }

  RetainObjectForDescriptorDownloader(v12, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(v14, self->_retainedDescriptorObjectsByStreamRef);
  RetainAccelerationStructureDescriptorObjects(self->_retainedObjects, self->_retainedDescriptorObjectsByStreamRef, v13);
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v55);
  baseObject = self->_baseObject;
  v21 = [v12 baseObject];
  v22 = unwrapMTLAccelerationStructureDescriptor(v13);
  v23 = [v14 baseObject];
  v53 = v15;
  v24 = [v15 baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject refitAccelerationStructure:v21 descriptor:v22 destination:v23 scratchBuffer:v24 scratchBufferOffset:v50 options:v52];

  v54 = v13;
  v25 = v14;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  LODWORD(v24) = [WeakRetained isCapturing];
  LODWORD(baseObject) = (dword_31F7C8 >> 4) & 1;
  captureDevice = self->_captureDevice;
  blitOperations = self->_blitOperations;
  v29 = [v25 extraRetainedObjects];
  v30 = copyCaptureDescriptor(&v54, v24, baseObject, captureDevice, blitOperations, v29, self->_retainedDescriptorObjectsByStreamRef, self->_bufferCache);
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
  v37 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v37)
  {
    var0 = v37->var0;
  }

  else
  {
    var0 = 0;
  }

  v39 = [v12 traceStream];
  if (v39)
  {
    v40 = *v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = [v25 traceStream];
  if (v41)
  {
    v42 = *v41;
  }

  else
  {
    v42 = 0;
  }

  v43 = [v53 traceStream];
  if (v43)
  {
    v44 = *v43;
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

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  [v11 touch];
  if (v11)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v11];
    }
  }

  [v13 touch];
  if (v13)
  {
    v16 = self->_retainedObjects;
    if (v16)
    {
      [(NSMutableSet *)v16 addObject:v13];
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

  RetainObjectForDescriptorDownloader(v11, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(v13, self->_retainedDescriptorObjectsByStreamRef);
  RetainAccelerationStructureDescriptorObjects(self->_retainedObjects, self->_retainedDescriptorObjectsByStreamRef, v12);
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v51);
  baseObject = self->_baseObject;
  v20 = [v11 baseObject];
  v21 = unwrapMTLAccelerationStructureDescriptor(v12);
  v22 = [v13 baseObject];
  v49 = v14;
  v23 = [v14 baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject refitAccelerationStructure:v20 descriptor:v21 destination:v22 scratchBuffer:v23 scratchBufferOffset:a7];

  v50 = v12;
  v24 = v13;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  LODWORD(baseObject) = [WeakRetained isCapturing];
  LODWORD(v20) = (dword_31F7C8 >> 4) & 1;
  captureDevice = self->_captureDevice;
  blitOperations = self->_blitOperations;
  v28 = [v24 extraRetainedObjects];
  v29 = copyCaptureDescriptor(&v50, baseObject, v20, captureDevice, blitOperations, v28, self->_retainedDescriptorObjectsByStreamRef, self->_bufferCache);
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
  v36 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (v36)
  {
    var0 = v36->var0;
  }

  else
  {
    var0 = 0;
  }

  v38 = [v11 traceStream];
  if (v38)
  {
    v39 = *v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = [v24 traceStream];
  if (v40)
  {
    v41 = *v40;
  }

  else
  {
    v41 = 0;
  }

  v42 = [v49 traceStream];
  if (v42)
  {
    v43 = *v42;
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
  *(v33 + 4) = a7;
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
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v12 = [v6 baseObject];
  v13 = [v7 baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject copyAndCompactAccelerationStructure:v12 toAccelerationStructure:v13];

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
  v19 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  v25 = v6;
  v26 = v7;
  if ((dword_31F7C8 & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    v28 = [WeakRetained isCapturing];

    if ((v28 & 1) == 0)
    {
      v29 = [v26 extraRetainedObjects];
      [v29 removeAllObjects];
    }

    v30 = [v26 extraRetainedObjects];
    retainedDescriptorObjectsByStreamRef = self->_retainedDescriptorObjectsByStreamRef;
    v32 = [v25 captureDescriptor];
    RetainAccelerationStructureDescriptorObjects(v30, retainedDescriptorObjectsByStreamRef, v32);
  }

  v33 = objc_loadWeakRetained(&self->_captureCommandBuffer);
  v34 = [v33 isCapturing];
  v35 = [v25 captureDescriptor];
  SetCaptureDescriptor(v26, self, v34, v35);

  s();
  *v36 = v37;
  *(v36 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
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
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  v12 = [v6 baseObject];
  v13 = [v7 baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject copyAccelerationStructure:v12 toAccelerationStructure:v13];

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
  v19 = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  v25 = v6;
  v26 = v7;
  if ((dword_31F7C8 & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    v28 = [WeakRetained isCapturing];

    if ((v28 & 1) == 0)
    {
      v29 = [v26 extraRetainedObjects];
      [v29 removeAllObjects];
    }

    v30 = [v26 extraRetainedObjects];
    retainedDescriptorObjectsByStreamRef = self->_retainedDescriptorObjectsByStreamRef;
    v32 = [v25 captureDescriptor];
    RetainAccelerationStructureDescriptorObjects(v30, retainedDescriptorObjectsByStreamRef, v32);
  }

  v33 = objc_loadWeakRetained(&self->_captureCommandBuffer);
  v34 = [v33 isCapturing];
  v35 = [v25 captureDescriptor];
  SetCaptureDescriptor(v26, self, v34, v35);

  s();
  *v36 = v37;
  *(v36 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

- (CaptureMTLAccelerationStructureCommandEncoder)initWithBaseObject:(id)a3 captureCommandBuffer:(id)a4 copyEventValue:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v28.receiver = self;
  v28.super_class = CaptureMTLAccelerationStructureCommandEncoder;
  v11 = [(CaptureMTLAccelerationStructureCommandEncoder *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseObject, a3);
    v13 = [v10 device];
    captureDevice = v12->_captureDevice;
    v12->_captureDevice = v13;

    objc_storeWeak(&v12->_captureCommandBuffer, v10);
    v15 = [v10 traceContext];
    v12->_traceContext = v15;
    v16 = DEVICEOBJECT(v9);
    v12->_traceStream = GTTraceContext_openEncoderStream(v15, v16, *([v10 traceStream] + 3));

    v17 = [v10 retainedObjects];
    retainedObjects = v12->_retainedObjects;
    v12->_retainedObjects = v17;

    v12->_copyEventValue = a5;
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