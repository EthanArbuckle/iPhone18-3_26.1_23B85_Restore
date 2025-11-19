@interface MTLDebugAccelerationStructureCommandEncoder
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4;
- (MTLDebugAccelerationStructureCommandEncoder)initWithAccelerationStructureCommandEncoder:(id)a3 parent:(id)a4;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4;
- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(id)a5 scratchBufferOffset:(unint64_t)a6;
- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)deserializeAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5;
- (void)deserializeAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6;
- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6;
- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6 withDescriptor:(id)a7;
- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5;
- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5 withDescriptor:(id)a6;
- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7;
- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7 options:(unint64_t)a8;
- (void)serializeAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5;
- (void)serializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 toBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6;
- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5;
- (void)validateRefit:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7 options:(unint64_t)a8;
- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5;
- (void)writeAccelerationStructureTraversalDepth:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5;
- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5;
- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5 sizeDataType:(unint64_t)a6;
- (void)writeDeserializedAccelerationStructureSize:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizeBufferOffset:(unint64_t)a6;
- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizesBufferOffset:(unint64_t)a6;
- (void)writeGenericBVHStructureOfAccelerationStructure:(id)a3 headerBuffer:(id)a4 headerBufferOffset:(unint64_t)a5 innerNodeBuffer:(id)a6 innerNodeBufferOffset:(unint64_t)a7 leafNodeBuffer:(id)a8 leafNodeBufferOffset:(unint64_t)a9 primitiveBuffer:(id)a10 primitiveBufferOffset:(unint64_t)a11 geometryBuffer:(id)a12 geometryOffset:(unint64_t)a13 instanceTransformBuffer:(id)a14 instanceTransformOffset:(unint64_t)a15 controlPointBuffer:(id)a16 controlPointBufferOffset:(unint64_t)a17;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(id)a4 sizesBufferOffset:(unint64_t)a5;
- (void)writeGeometryOfAccelerationStructure:(id)a3 toBuffer:(id)a4 geometryBufferOffset:(unint64_t)a5;
- (void)writeGeometrySizeOfAccelerationStructure:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5;
- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5;
@end

@implementation MTLDebugAccelerationStructureCommandEncoder

- (MTLDebugAccelerationStructureCommandEncoder)initWithAccelerationStructureCommandEncoder:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLDebugAccelerationStructureCommandEncoder;
  return [(MTLToolsCommandEncoder *)&v5 initWithBaseObject:a3 parent:a4];
}

- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(id)a5 scratchBufferOffset:(unint64_t)a6
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder buildAccelerationStructure:descriptor:scratchBuffer:scratchBufferOffset:];
  }

  checkAccelerationStructureDescriptorWithRefitOptions(self->super.super.super._device, a4, 1, 3);
  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a5, a6, 0);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v11 = [(MTLToolsObject *)self device];
  if (v11)
  {
    [(MTLDevice *)v11 accelerationStructureSizesWithDescriptor:a4];
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  if ([a3 size] < v13)
  {
    [MTLDebugAccelerationStructureCommandEncoder buildAccelerationStructure:a3 descriptor:&v13 scratchBuffer:? scratchBufferOffset:?];
  }

  v12 = v14 + a6;
  if (v12 > [a5 length])
  {
    [MTLDebugAccelerationStructureCommandEncoder buildAccelerationStructure:a5 descriptor:&v14 scratchBuffer:? scratchBufferOffset:?];
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)validateRefit:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7 options:(unint64_t)a8
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder validateRefit:descriptor:destination:scratchBuffer:scratchBufferOffset:options:];
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_28:
    [MTLDebugAccelerationStructureCommandEncoder validateRefit:descriptor:destination:scratchBuffer:scratchBufferOffset:options:];
    goto LABEL_3;
  }

  if (!a8)
  {
    goto LABEL_28;
  }

LABEL_3:
  checkAccelerationStructureDescriptorWithRefitOptions(self->super.super.super._device, a4, 1, a8);
  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkAccelerationStructure(self->super.super.super._device, a5, 1);
  checkBuffer(self->super.super.super._device, a6, a7, 1);
  v15 = objc_opt_class();
  if ([v15 isSubclassOfClass:objc_opt_class()] && objc_msgSend(objc_msgSend(a4, "geometryDescriptors"), "count"))
  {
    v16 = 0;
    do
    {
      v17 = [objc_msgSend(a4 "geometryDescriptors")];
      v18 = objc_opt_class();
      if ([v18 isSubclassOfClass:objc_opt_class()])
      {
        v19 = [v17 vertexFormat];
        v20 = [v17 vertexStride];
        if (MTLAttributeFormatComponentCount(v19) <= 1)
        {
          [MTLDebugAccelerationStructureCommandEncoder validateRefit:descriptor:destination:scratchBuffer:scratchBufferOffset:options:];
        }

        v21 = MTLAttributeFormatSize(v19);
        if (v20 && v21 > v20)
        {
          v28 = v20;
          v29 = v21;
          MTLReportFailure();
        }

        v22 = MTLAttributeFormatAlignment(v19);
        if (v20 % v22)
        {
          v28 = v20;
          v29 = v22;
          MTLReportFailure();
        }

        device = self->super.super.super._device;
        v24 = [v17 transformationMatrixBuffer];
        v25 = [v17 transformationMatrixBufferOffset];
        checkBuffer(device, v24, v25, 1);
        if (v24)
        {
          if (v25 + 48 > [v24 length])
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_69(v24);
          }

          if ((v25 & 3) != 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_70();
          }
        }
      }

      ++v16;
    }

    while (v16 < [objc_msgSend(a4 "geometryDescriptors")]);
  }

  if (a6)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v26 = [(MTLToolsObject *)self device];
    if (v26)
    {
      [(MTLDevice *)v26 accelerationStructureSizesWithDescriptor:a4];
      v27 = v32;
    }

    else
    {
      v27 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
    }

    if (v27 + a7 > [a6 length])
    {
      [MTLDebugAccelerationStructureCommandEncoder validateRefit:a6 descriptor:? destination:? scratchBuffer:? scratchBufferOffset:? options:?];
    }
  }
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7
{
  [(MTLDebugAccelerationStructureCommandEncoder *)self validateRefit:a3 descriptor:a4 destination:a5 scratchBuffer:a6 scratchBufferOffset:a7 options:3];
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a3 baseObject];
  v15 = unwrapAccelerationStructureDescriptor(a4);
  v16 = [a5 baseObject];
  v17 = [a6 baseObject];

  [v13 refitAccelerationStructure:v14 descriptor:v15 destination:v16 scratchBuffer:v17 scratchBufferOffset:a7];
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7 options:(unint64_t)a8
{
  [MTLDebugAccelerationStructureCommandEncoder validateRefit:"validateRefit:descriptor:destination:scratchBuffer:scratchBufferOffset:options:" descriptor:? destination:? scratchBuffer:? scratchBufferOffset:? options:?];
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a3 baseObject];
  v17 = unwrapAccelerationStructureDescriptor(a4);
  v18 = [a5 baseObject];
  v19 = [a6 baseObject];

  [v15 refitAccelerationStructure:v16 descriptor:v17 destination:v18 scratchBuffer:v19 scratchBufferOffset:a7 options:a8];
}

- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder copyAccelerationStructure:toAccelerationStructure:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkAccelerationStructure(self->super.super.super._device, a4, 0);
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];
  v9 = [a4 baseObject];

  [v7 copyAccelerationStructure:v8 toAccelerationStructure:v9];
}

- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeCompactedAccelerationStructureSize:toBuffer:offset:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  if (a5 + 4 > [a4 length])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeCompactedAccelerationStructureSize:a4 toBuffer:? offset:?];
  }

  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11 = [a4 baseObject];

  [v9 writeCompactedAccelerationStructureSize:v10 toBuffer:v11 offset:a5];
}

- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5 sizeDataType:(unint64_t)a6
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeCompactedAccelerationStructureSize:toBuffer:offset:sizeDataType:];
  }

  if (a6 != 33 && a6 != 85)
  {
    MTLReportFailure();
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  v11 = 8;
  if (a6 == 33)
  {
    v11 = 4;
  }

  if (v11 + a5 > [a4 length])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeCompactedAccelerationStructureSize:a4 toBuffer:? offset:? sizeDataType:?];
  }

  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  v14 = [a4 baseObject];

  [v12 writeCompactedAccelerationStructureSize:v13 toBuffer:v14 offset:a5 sizeDataType:a6];
}

- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder copyAndCompactAccelerationStructure:toAccelerationStructure:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkAccelerationStructure(self->super.super.super._device, a4, 0);
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];
  v9 = [a4 baseObject];

  [v7 copyAndCompactAccelerationStructure:v8 toAccelerationStructure:v9];
}

- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeSerializedAccelerationStructureSize:toBuffer:sizeBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  if ([a4 length] <= 7)
  {
    [MTLDebugAccelerationStructureCommandEncoder writeSerializedAccelerationStructureSize:toBuffer:sizeBufferOffset:];
  }

  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11 = [a4 baseObject];

  [v9 writeSerializedAccelerationStructureSize:v10 toBuffer:v11 sizeBufferOffset:a5];
}

- (void)writeDeserializedAccelerationStructureSize:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizeBufferOffset:(unint64_t)a6
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeDeserializedAccelerationStructureSize:serializedOffset:toBuffer:sizeBufferOffset:];
  }

  checkBuffer(self->super.super.super._device, a3, a4, 0);
  checkBuffer(self->super.super.super._device, a5, a6, 0);
  if ([a5 length] <= 7)
  {
    [MTLDebugAccelerationStructureCommandEncoder writeDeserializedAccelerationStructureSize:serializedOffset:toBuffer:sizeBufferOffset:];
  }

  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  v13 = [a5 baseObject];

  [v11 writeDeserializedAccelerationStructureSize:v12 serializedOffset:a4 toBuffer:v13 sizeBufferOffset:a6];
}

- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizesBufferOffset:(unint64_t)a6
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeDeserializedPrimitiveAccelerationStructureSizes:serializedOffset:toBuffer:sizesBufferOffset:];
  }

  checkBuffer(self->super.super.super._device, a3, a4, 0);
  checkBuffer(self->super.super.super._device, a5, a6, 0);
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  v13 = [a5 baseObject];

  [v11 writeDeserializedPrimitiveAccelerationStructureSizes:v12 serializedOffset:a4 toBuffer:v13 sizesBufferOffset:a6];
}

- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState:0])
  {
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)serializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 toBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  v16 = a6;
  checkBuffer(self->super.super.super._device, a5, a6, 0);
  _MTLMessageContextEnd();
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a4, "count")}];
  if ([a4 count])
  {
    v13 = 0;
    v14 = 1;
    do
    {
      checkAccelerationStructure(self->super.super.super._device, [a4 objectAtIndexedSubscript:v13], 0);
      [v12 addObject:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v13), "baseObject")}];
      v13 = v14;
    }

    while ([a4 count] > v14++);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState:0])
  {
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a4, "count")}];
  if ([a4 count])
  {
    v12 = 0;
    v13 = 1;
    do
    {
      checkAccelerationStructure(self->super.super.super._device, [a4 objectAtIndexedSubscript:v12], 0);
      [v11 addObject:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v12), "baseObject")}];
      v12 = v13;
    }

    while ([a4 count] > v13++);
  }

  checkBuffer(self->super.super.super._device, a5, a6, 0);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5 withDescriptor:(id)a6
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState:0])
  {
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6 withDescriptor:(id)a7
{
  v16 = a7;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a4, "count")}];
  if ([a4 count])
  {
    v13 = 0;
    v14 = 1;
    do
    {
      checkAccelerationStructure(self->super.super.super._device, [a4 objectAtIndexedSubscript:{v13, v16}], 0);
      [v12 addObject:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v13), "baseObject")}];
      v13 = v14;
    }

    while ([a4 count] > v14++);
  }

  checkBuffer(self->super.super.super._device, a5, a6, 0);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)serializeAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder serializeAccelerationStructure:toBuffer:serializedBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11 = [a4 baseObject];

  [v9 serializeAccelerationStructure:v10 toBuffer:v11 serializedBufferOffset:a5];
}

- (void)deserializeAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder deserializeAccelerationStructure:fromBuffer:serializedBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11 = [a4 baseObject];

  [v9 deserializeAccelerationStructure:v10 fromBuffer:v11 serializedBufferOffset:a5];
}

- (void)deserializeAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder deserializeAccelerationStructure:primitiveAccelerationStructures:fromBuffer:serializedBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a4, "count")}];
  if ([a4 count])
  {
    v11 = 0;
    v12 = 1;
    do
    {
      checkAccelerationStructure(self->super.super.super._device, [a4 objectAtIndexedSubscript:v11], 0);
      [v10 addObject:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v11), "baseObject")}];
      v11 = v12;
    }

    while ([a4 count] > v12++);
  }

  checkBuffer(self->super.super.super._device, a5, a6, 0);
  v14 = [(MTLToolsObject *)self baseObject];
  v15 = [a3 baseObject];
  v16 = [a5 baseObject];

  [v14 deserializeAccelerationStructure:v15 primitiveAccelerationStructures:v10 fromBuffer:v16 serializedBufferOffset:a6];
}

- (void)writeGeometrySizeOfAccelerationStructure:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeGeometrySizeOfAccelerationStructure:toBuffer:sizeBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11 = [a4 baseObject];

  [v9 writeGeometrySizeOfAccelerationStructure:v10 toBuffer:v11 sizeBufferOffset:a5];
}

- (void)writeGeometryOfAccelerationStructure:(id)a3 toBuffer:(id)a4 geometryBufferOffset:(unint64_t)a5
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeGeometryOfAccelerationStructure:toBuffer:geometryBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11 = [a4 baseObject];

  [v9 writeGeometryOfAccelerationStructure:v10 toBuffer:v11 geometryBufferOffset:a5];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeGenericBVHStructureSizesOfAccelerationStructure:into:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  return [v7 writeGenericBVHStructureSizesOfAccelerationStructure:v8 into:a4];
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeGenericBVHStructureOfAccelerationStructure:into:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, [a4 headerBuffer], objc_msgSend(a4, "headerBufferOffset"), 0);
  checkBuffer(self->super.super.super._device, [a4 innerNodeBuffer], objc_msgSend(a4, "innerNodeBufferOffset"), 1);
  checkBuffer(self->super.super.super._device, [a4 leafNodeBuffer], objc_msgSend(a4, "leafNodeBufferOffset"), 1);
  checkBuffer(self->super.super.super._device, [a4 primitiveBuffer], objc_msgSend(a4, "primitiveBufferOffset"), 1);
  checkBuffer(self->super.super.super._device, [a4 geometryBuffer], objc_msgSend(a4, "geometryBufferOffset"), 1);
  checkBuffer(self->super.super.super._device, [a4 instanceTransformBuffer], objc_msgSend(a4, "instanceTransformBufferOffset"), 1);
  checkBuffer(self->super.super.super._device, [a4 controlPointBuffer], objc_msgSend(a4, "controlPointBufferOffset"), 1);
  v8.receiver = self;
  v8.super_class = MTLDebugAccelerationStructureCommandEncoder;
  return [(MTLToolsAccelerationStructureCommandEncoder *)&v8 writeGenericBVHStructureOfAccelerationStructure:a3 into:a4];
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(id)a4 sizesBufferOffset:(unint64_t)a5
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeGenericBVHStructureSizesOfAccelerationStructure:toBuffer:sizesBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11 = [a4 baseObject];

  [v9 writeGenericBVHStructureSizesOfAccelerationStructure:v10 toBuffer:v11 sizesBufferOffset:a5];
}

- (void)writeGenericBVHStructureOfAccelerationStructure:(id)a3 headerBuffer:(id)a4 headerBufferOffset:(unint64_t)a5 innerNodeBuffer:(id)a6 innerNodeBufferOffset:(unint64_t)a7 leafNodeBuffer:(id)a8 leafNodeBufferOffset:(unint64_t)a9 primitiveBuffer:(id)a10 primitiveBufferOffset:(unint64_t)a11 geometryBuffer:(id)a12 geometryOffset:(unint64_t)a13 instanceTransformBuffer:(id)a14 instanceTransformOffset:(unint64_t)a15 controlPointBuffer:(id)a16 controlPointBufferOffset:(unint64_t)a17
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeGenericBVHStructureOfAccelerationStructure:headerBuffer:headerBufferOffset:innerNodeBuffer:innerNodeBufferOffset:leafNodeBuffer:leafNodeBufferOffset:primitiveBuffer:primitiveBufferOffset:geometryBuffer:geometryOffset:instanceTransformBuffer:instanceTransformOffset:controlPointBuffer:controlPointBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  checkBuffer(self->super.super.super._device, a6, a7, 0);
  checkBuffer(self->super.super.super._device, a8, a9, 0);
  checkBuffer(self->super.super.super._device, a10, a11, 0);
  checkBuffer(self->super.super.super._device, a12, a13, 0);
  checkBuffer(self->super.super.super._device, a14, a15, 0);
  checkBuffer(self->super.super.super._device, a16, a17, 0);
  v26 = [(MTLToolsObject *)self baseObject];
  v27 = [a3 baseObject];
  v25 = [a4 baseObject];
  v23 = [a6 baseObject];
  v24 = [a8 baseObject];
  [a10 baseObject];
  [a12 baseObject];
  [a14 baseObject];
  [a16 baseObject];

  [v26 writeGenericBVHStructureOfAccelerationStructure:v27 headerBuffer:v25 headerBufferOffset:a5 innerNodeBuffer:v23 innerNodeBufferOffset:a7 leafNodeBuffer:v24 leafNodeBufferOffset:? primitiveBuffer:? primitiveBufferOffset:? geometryBuffer:? geometryOffset:? instanceTransformBuffer:? instanceTransformOffset:? controlPointBuffer:? controlPointBufferOffset:?];
}

- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeAccelerationStructureSerializationData:toBuffer:offset:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  if (a5 + 24 > [a4 length])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeAccelerationStructureSerializationData:a4 toBuffer:? offset:?];
  }

  if ((a5 & 3) != 0)
  {
    [MTLDebugAccelerationStructureCommandEncoder writeAccelerationStructureSerializationData:toBuffer:offset:];
  }

  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11 = [a4 baseObject];

  [v9 writeAccelerationStructureSerializationData:v10 toBuffer:v11 offset:a5];
}

- (void)writeAccelerationStructureTraversalDepth:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeAccelerationStructureTraversalDepth:toBuffer:offset:];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 0);
  checkBuffer(self->super.super.super._device, a4, a5, 0);
  if ((a5 & 3) != 0)
  {
    [MTLDebugAccelerationStructureCommandEncoder writeAccelerationStructureTraversalDepth:toBuffer:offset:];
  }

  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11 = [a4 baseObject];

  [v9 writeAccelerationStructureTraversalDepth:v10 toBuffer:v11 offset:a5];
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4
{
  if (self->hasEndedEncoding)
  {
    [MTLDebugAccelerationStructureCommandEncoder barrierAfterQueueStages:beforeStages:];
  }

  v7 = [(MTLToolsObject *)self baseObject];

  [v7 barrierAfterQueueStages:a3 beforeStages:a4];
}

- (uint64_t)buildAccelerationStructure:(void *)a1 descriptor:(uint64_t *)a2 scratchBuffer:scratchBufferOffset:.cold.2(void *a1, uint64_t *a2)
{
  [a1 size];
  v4 = *a2;
  return MTLReportFailure();
}

- (uint64_t)buildAccelerationStructure:(void *)a1 descriptor:(uint64_t *)a2 scratchBuffer:scratchBufferOffset:.cold.3(void *a1, uint64_t *a2)
{
  [a1 length];
  v4 = *a2;
  return MTLReportFailure();
}

- (uint64_t)validateRefit:(uint64_t)a1 descriptor:(void *)a2 destination:scratchBuffer:scratchBufferOffset:options:.cold.6(uint64_t a1, void *a2)
{
  [a2 length];
  v4 = *(a1 + 16);
  return MTLReportFailure();
}

@end