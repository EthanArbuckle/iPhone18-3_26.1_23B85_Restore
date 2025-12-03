@interface MTLDebugAccelerationStructureCommandEncoder
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into;
- (MTLDebugAccelerationStructureCommandEncoder)initWithAccelerationStructureCommandEncoder:(id)encoder parent:(id)parent;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset;
- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)deserializeAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializeAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options;
- (void)serializeAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)serializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)validateRefit:(id)refit descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options;
- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset sizeDataType:(unint64_t)type;
- (void)writeDeserializedAccelerationStructureSize:(id)size serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizeBufferOffset:(unint64_t)bufferOffset;
- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)sizes serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizesBufferOffset:(unint64_t)bufferOffset;
- (void)writeGenericBVHStructureOfAccelerationStructure:(id)structure headerBuffer:(id)buffer headerBufferOffset:(unint64_t)offset innerNodeBuffer:(id)nodeBuffer innerNodeBufferOffset:(unint64_t)bufferOffset leafNodeBuffer:(id)leafNodeBuffer leafNodeBufferOffset:(unint64_t)nodeBufferOffset primitiveBuffer:(id)self0 primitiveBufferOffset:(unint64_t)self1 geometryBuffer:(id)self2 geometryOffset:(unint64_t)self3 instanceTransformBuffer:(id)self4 instanceTransformOffset:(unint64_t)self5 controlPointBuffer:(id)self6 controlPointBufferOffset:(unint64_t)self7;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizesBufferOffset:(unint64_t)offset;
- (void)writeGeometryOfAccelerationStructure:(id)structure toBuffer:(id)buffer geometryBufferOffset:(unint64_t)offset;
- (void)writeGeometrySizeOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset;
- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset;
@end

@implementation MTLDebugAccelerationStructureCommandEncoder

- (MTLDebugAccelerationStructureCommandEncoder)initWithAccelerationStructureCommandEncoder:(id)encoder parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTLDebugAccelerationStructureCommandEncoder;
  return [(MTLToolsCommandEncoder *)&v5 initWithBaseObject:encoder parent:parent];
}

- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder buildAccelerationStructure:descriptor:scratchBuffer:scratchBufferOffset:];
  }

  checkAccelerationStructureDescriptorWithRefitOptions(self->super.super.super._device, descriptor, 1, 3);
  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  device = [(MTLToolsObject *)self device];
  if (device)
  {
    [(MTLDevice *)device accelerationStructureSizesWithDescriptor:descriptor];
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  if ([structure size] < v13)
  {
    [MTLDebugAccelerationStructureCommandEncoder buildAccelerationStructure:structure descriptor:&v13 scratchBuffer:? scratchBufferOffset:?];
  }

  v12 = v14 + offset;
  if (v12 > [buffer length])
  {
    [MTLDebugAccelerationStructureCommandEncoder buildAccelerationStructure:buffer descriptor:&v14 scratchBuffer:? scratchBufferOffset:?];
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)validateRefit:(id)refit descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder validateRefit:descriptor:destination:scratchBuffer:scratchBufferOffset:options:];
    if (options)
    {
      goto LABEL_3;
    }

LABEL_28:
    [MTLDebugAccelerationStructureCommandEncoder validateRefit:descriptor:destination:scratchBuffer:scratchBufferOffset:options:];
    goto LABEL_3;
  }

  if (!options)
  {
    goto LABEL_28;
  }

LABEL_3:
  checkAccelerationStructureDescriptorWithRefitOptions(self->super.super.super._device, descriptor, 1, options);
  checkAccelerationStructure(self->super.super.super._device, refit, 0);
  checkAccelerationStructure(self->super.super.super._device, destination, 1);
  checkBuffer(self->super.super.super._device, buffer, offset, 1);
  v15 = objc_opt_class();
  if ([v15 isSubclassOfClass:objc_opt_class()] && objc_msgSend(objc_msgSend(descriptor, "geometryDescriptors"), "count"))
  {
    v16 = 0;
    do
    {
      v17 = [objc_msgSend(descriptor "geometryDescriptors")];
      v18 = objc_opt_class();
      if ([v18 isSubclassOfClass:objc_opt_class()])
      {
        vertexFormat = [v17 vertexFormat];
        vertexStride = [v17 vertexStride];
        if (MTLAttributeFormatComponentCount(vertexFormat) <= 1)
        {
          [MTLDebugAccelerationStructureCommandEncoder validateRefit:descriptor:destination:scratchBuffer:scratchBufferOffset:options:];
        }

        v21 = MTLAttributeFormatSize(vertexFormat);
        if (vertexStride && v21 > vertexStride)
        {
          v28 = vertexStride;
          v29 = v21;
          MTLReportFailure();
        }

        v22 = MTLAttributeFormatAlignment(vertexFormat);
        if (vertexStride % v22)
        {
          v28 = vertexStride;
          v29 = v22;
          MTLReportFailure();
        }

        device = self->super.super.super._device;
        transformationMatrixBuffer = [v17 transformationMatrixBuffer];
        transformationMatrixBufferOffset = [v17 transformationMatrixBufferOffset];
        checkBuffer(device, transformationMatrixBuffer, transformationMatrixBufferOffset, 1);
        if (transformationMatrixBuffer)
        {
          if (transformationMatrixBufferOffset + 48 > [transformationMatrixBuffer length])
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_69(transformationMatrixBuffer);
          }

          if ((transformationMatrixBufferOffset & 3) != 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_70();
          }
        }
      }

      ++v16;
    }

    while (v16 < [objc_msgSend(descriptor "geometryDescriptors")]);
  }

  if (buffer)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    device = [(MTLToolsObject *)self device];
    if (device)
    {
      [(MTLDevice *)device accelerationStructureSizesWithDescriptor:descriptor];
      v27 = v32;
    }

    else
    {
      v27 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
    }

    if (v27 + offset > [buffer length])
    {
      [MTLDebugAccelerationStructureCommandEncoder validateRefit:buffer descriptor:? destination:? scratchBuffer:? scratchBufferOffset:? options:?];
    }
  }
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset
{
  [(MTLDebugAccelerationStructureCommandEncoder *)self validateRefit:structure descriptor:descriptor destination:destination scratchBuffer:buffer scratchBufferOffset:offset options:3];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  v15 = unwrapAccelerationStructureDescriptor(descriptor);
  baseObject3 = [destination baseObject];
  baseObject4 = [buffer baseObject];

  [baseObject refitAccelerationStructure:baseObject2 descriptor:v15 destination:baseObject3 scratchBuffer:baseObject4 scratchBufferOffset:offset];
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options
{
  [MTLDebugAccelerationStructureCommandEncoder validateRefit:"validateRefit:descriptor:destination:scratchBuffer:scratchBufferOffset:options:" descriptor:? destination:? scratchBuffer:? scratchBufferOffset:? options:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  v17 = unwrapAccelerationStructureDescriptor(descriptor);
  baseObject3 = [destination baseObject];
  baseObject4 = [buffer baseObject];

  [baseObject refitAccelerationStructure:baseObject2 descriptor:v17 destination:baseObject3 scratchBuffer:baseObject4 scratchBufferOffset:offset options:options];
}

- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder copyAccelerationStructure:toAccelerationStructure:];
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  checkAccelerationStructure(self->super.super.super._device, accelerationStructure, 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [accelerationStructure baseObject];

  [baseObject copyAccelerationStructure:baseObject2 toAccelerationStructure:baseObject3];
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeCompactedAccelerationStructureSize:toBuffer:offset:];
  }

  checkAccelerationStructure(self->super.super.super._device, size, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  if (offset + 4 > [buffer length])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeCompactedAccelerationStructureSize:buffer toBuffer:? offset:?];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [size baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeCompactedAccelerationStructureSize:baseObject2 toBuffer:baseObject3 offset:offset];
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset sizeDataType:(unint64_t)type
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeCompactedAccelerationStructureSize:toBuffer:offset:sizeDataType:];
  }

  if (type != 33 && type != 85)
  {
    MTLReportFailure();
  }

  checkAccelerationStructure(self->super.super.super._device, size, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  v11 = 8;
  if (type == 33)
  {
    v11 = 4;
  }

  if (v11 + offset > [buffer length])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeCompactedAccelerationStructureSize:buffer toBuffer:? offset:? sizeDataType:?];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [size baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeCompactedAccelerationStructureSize:baseObject2 toBuffer:baseObject3 offset:offset sizeDataType:type];
}

- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder copyAndCompactAccelerationStructure:toAccelerationStructure:];
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  checkAccelerationStructure(self->super.super.super._device, accelerationStructure, 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [accelerationStructure baseObject];

  [baseObject copyAndCompactAccelerationStructure:baseObject2 toAccelerationStructure:baseObject3];
}

- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeSerializedAccelerationStructureSize:toBuffer:sizeBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, size, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  if ([buffer length] <= 7)
  {
    [MTLDebugAccelerationStructureCommandEncoder writeSerializedAccelerationStructureSize:toBuffer:sizeBufferOffset:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [size baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeSerializedAccelerationStructureSize:baseObject2 toBuffer:baseObject3 sizeBufferOffset:offset];
}

- (void)writeDeserializedAccelerationStructureSize:(id)size serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizeBufferOffset:(unint64_t)bufferOffset
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeDeserializedAccelerationStructureSize:serializedOffset:toBuffer:sizeBufferOffset:];
  }

  checkBuffer(self->super.super.super._device, size, offset, 0);
  checkBuffer(self->super.super.super._device, buffer, bufferOffset, 0);
  if ([buffer length] <= 7)
  {
    [MTLDebugAccelerationStructureCommandEncoder writeDeserializedAccelerationStructureSize:serializedOffset:toBuffer:sizeBufferOffset:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [size baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeDeserializedAccelerationStructureSize:baseObject2 serializedOffset:offset toBuffer:baseObject3 sizeBufferOffset:bufferOffset];
}

- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)sizes serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizesBufferOffset:(unint64_t)bufferOffset
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeDeserializedPrimitiveAccelerationStructureSizes:serializedOffset:toBuffer:sizesBufferOffset:];
  }

  checkBuffer(self->super.super.super._device, sizes, offset, 0);
  checkBuffer(self->super.super.super._device, buffer, bufferOffset, 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [sizes baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeDeserializedPrimitiveAccelerationStructureSizes:baseObject2 serializedOffset:offset toBuffer:baseObject3 sizesBufferOffset:bufferOffset];
}

- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState:0])
  {
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)serializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  offsetCopy = offset;
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  _MTLMessageContextEnd();
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v13 = 0;
    v14 = 1;
    do
    {
      checkAccelerationStructure(self->super.super.super._device, [structures objectAtIndexedSubscript:v13], 0);
      [v12 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v13), "baseObject")}];
      v13 = v14;
    }

    while ([structures count] > v14++);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState:0])
  {
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v12 = 0;
    v13 = 1;
    do
    {
      checkAccelerationStructure(self->super.super.super._device, [structures objectAtIndexedSubscript:v12], 0);
      [v11 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v12), "baseObject")}];
      v12 = v13;
    }

    while ([structures count] > v13++);
  }

  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState:0])
  {
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v13 = 0;
    v14 = 1;
    do
    {
      checkAccelerationStructure(self->super.super.super._device, [structures objectAtIndexedSubscript:{v13, descriptorCopy}], 0);
      [v12 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v13), "baseObject")}];
      v13 = v14;
    }

    while ([structures count] > v14++);
  }

  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)serializeAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder serializeAccelerationStructure:toBuffer:serializedBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject serializeAccelerationStructure:baseObject2 toBuffer:baseObject3 serializedBufferOffset:offset];
}

- (void)deserializeAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder deserializeAccelerationStructure:fromBuffer:serializedBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject deserializeAccelerationStructure:baseObject2 fromBuffer:baseObject3 serializedBufferOffset:offset];
}

- (void)deserializeAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder deserializeAccelerationStructure:primitiveAccelerationStructures:fromBuffer:serializedBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v11 = 0;
    v12 = 1;
    do
    {
      checkAccelerationStructure(self->super.super.super._device, [structures objectAtIndexedSubscript:v11], 0);
      [v10 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v11), "baseObject")}];
      v11 = v12;
    }

    while ([structures count] > v12++);
  }

  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject deserializeAccelerationStructure:baseObject2 primitiveAccelerationStructures:v10 fromBuffer:baseObject3 serializedBufferOffset:offset];
}

- (void)writeGeometrySizeOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeGeometrySizeOfAccelerationStructure:toBuffer:sizeBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeGeometrySizeOfAccelerationStructure:baseObject2 toBuffer:baseObject3 sizeBufferOffset:offset];
}

- (void)writeGeometryOfAccelerationStructure:(id)structure toBuffer:(id)buffer geometryBufferOffset:(unint64_t)offset
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeGeometryOfAccelerationStructure:toBuffer:geometryBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeGeometryOfAccelerationStructure:baseObject2 toBuffer:baseObject3 geometryBufferOffset:offset];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeGenericBVHStructureSizesOfAccelerationStructure:into:];
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  return [baseObject writeGenericBVHStructureSizesOfAccelerationStructure:baseObject2 into:into];
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeGenericBVHStructureOfAccelerationStructure:into:];
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  checkBuffer(self->super.super.super._device, [into headerBuffer], objc_msgSend(into, "headerBufferOffset"), 0);
  checkBuffer(self->super.super.super._device, [into innerNodeBuffer], objc_msgSend(into, "innerNodeBufferOffset"), 1);
  checkBuffer(self->super.super.super._device, [into leafNodeBuffer], objc_msgSend(into, "leafNodeBufferOffset"), 1);
  checkBuffer(self->super.super.super._device, [into primitiveBuffer], objc_msgSend(into, "primitiveBufferOffset"), 1);
  checkBuffer(self->super.super.super._device, [into geometryBuffer], objc_msgSend(into, "geometryBufferOffset"), 1);
  checkBuffer(self->super.super.super._device, [into instanceTransformBuffer], objc_msgSend(into, "instanceTransformBufferOffset"), 1);
  checkBuffer(self->super.super.super._device, [into controlPointBuffer], objc_msgSend(into, "controlPointBufferOffset"), 1);
  v8.receiver = self;
  v8.super_class = MTLDebugAccelerationStructureCommandEncoder;
  return [(MTLToolsAccelerationStructureCommandEncoder *)&v8 writeGenericBVHStructureOfAccelerationStructure:structure into:into];
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizesBufferOffset:(unint64_t)offset
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeGenericBVHStructureSizesOfAccelerationStructure:toBuffer:sizesBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeGenericBVHStructureSizesOfAccelerationStructure:baseObject2 toBuffer:baseObject3 sizesBufferOffset:offset];
}

- (void)writeGenericBVHStructureOfAccelerationStructure:(id)structure headerBuffer:(id)buffer headerBufferOffset:(unint64_t)offset innerNodeBuffer:(id)nodeBuffer innerNodeBufferOffset:(unint64_t)bufferOffset leafNodeBuffer:(id)leafNodeBuffer leafNodeBufferOffset:(unint64_t)nodeBufferOffset primitiveBuffer:(id)self0 primitiveBufferOffset:(unint64_t)self1 geometryBuffer:(id)self2 geometryOffset:(unint64_t)self3 instanceTransformBuffer:(id)self4 instanceTransformOffset:(unint64_t)self5 controlPointBuffer:(id)self6 controlPointBufferOffset:(unint64_t)self7
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeGenericBVHStructureOfAccelerationStructure:headerBuffer:headerBufferOffset:innerNodeBuffer:innerNodeBufferOffset:leafNodeBuffer:leafNodeBufferOffset:primitiveBuffer:primitiveBufferOffset:geometryBuffer:geometryOffset:instanceTransformBuffer:instanceTransformOffset:controlPointBuffer:controlPointBufferOffset:];
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  checkBuffer(self->super.super.super._device, nodeBuffer, bufferOffset, 0);
  checkBuffer(self->super.super.super._device, leafNodeBuffer, nodeBufferOffset, 0);
  checkBuffer(self->super.super.super._device, primitiveBuffer, primitiveBufferOffset, 0);
  checkBuffer(self->super.super.super._device, geometryBuffer, geometryOffset, 0);
  checkBuffer(self->super.super.super._device, transformBuffer, transformOffset, 0);
  checkBuffer(self->super.super.super._device, pointBuffer, pointBufferOffset, 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];
  baseObject4 = [nodeBuffer baseObject];
  baseObject5 = [leafNodeBuffer baseObject];
  [primitiveBuffer baseObject];
  [geometryBuffer baseObject];
  [transformBuffer baseObject];
  [pointBuffer baseObject];

  [baseObject writeGenericBVHStructureOfAccelerationStructure:baseObject2 headerBuffer:baseObject3 headerBufferOffset:offset innerNodeBuffer:baseObject4 innerNodeBufferOffset:bufferOffset leafNodeBuffer:baseObject5 leafNodeBufferOffset:? primitiveBuffer:? primitiveBufferOffset:? geometryBuffer:? geometryOffset:? instanceTransformBuffer:? instanceTransformOffset:? controlPointBuffer:? controlPointBufferOffset:?];
}

- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(id)buffer offset:(unint64_t)offset
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeAccelerationStructureSerializationData:toBuffer:offset:];
  }

  checkAccelerationStructure(self->super.super.super._device, data, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  if (offset + 24 > [buffer length])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeAccelerationStructureSerializationData:buffer toBuffer:? offset:?];
  }

  if ((offset & 3) != 0)
  {
    [MTLDebugAccelerationStructureCommandEncoder writeAccelerationStructureSerializationData:toBuffer:offset:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [data baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeAccelerationStructureSerializationData:baseObject2 toBuffer:baseObject3 offset:offset];
}

- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(id)buffer offset:(unint64_t)offset
{
  if (![(MTLDebugAccelerationStructureCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugAccelerationStructureCommandEncoder writeAccelerationStructureTraversalDepth:toBuffer:offset:];
  }

  checkAccelerationStructure(self->super.super.super._device, depth, 0);
  checkBuffer(self->super.super.super._device, buffer, offset, 0);
  if ((offset & 3) != 0)
  {
    [MTLDebugAccelerationStructureCommandEncoder writeAccelerationStructureTraversalDepth:toBuffer:offset:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [depth baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeAccelerationStructureTraversalDepth:baseObject2 toBuffer:baseObject3 offset:offset];
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  if (self->hasEndedEncoding)
  {
    [MTLDebugAccelerationStructureCommandEncoder barrierAfterQueueStages:beforeStages:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
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