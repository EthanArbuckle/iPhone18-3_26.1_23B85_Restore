@interface MTLToolsAccelerationStructureCommandEncoder
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into;
- (MTLToolsAccelerationStructureCommandEncoder)initWithAccelerationStructureCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor;
- (id)endEncodingAndRetrieveProgramAddressTable;
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
- (void)writeGenericBVHStructureOfAccelerationStructure:(id)structure headerBuffer:(id)buffer headerBufferOffset:(unint64_t)offset innerNodeBuffer:(id)nodeBuffer innerNodeBufferOffset:(unint64_t)bufferOffset leafNodeBuffer:(id)leafNodeBuffer leafNodeBufferOffset:(unint64_t)nodeBufferOffset primitiveBuffer:(id)self0 primitiveBufferOffset:(unint64_t)self1 geometryBuffer:(id)self2 geometryOffset:(unint64_t)self3 instanceTransformBuffer:(id)self4 instanceTransformOffset:(unint64_t)self5 controlPointBuffer:(id)self6 controlPointBufferOffset:(unint64_t)self7;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizesBufferOffset:(unint64_t)offset;
- (void)writeGeometryOfAccelerationStructure:(id)structure toBuffer:(id)buffer geometryBufferOffset:(unint64_t)offset;
- (void)writeGeometrySizeOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset;
- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset;
@end

@implementation MTLToolsAccelerationStructureCommandEncoder

- (MTLToolsAccelerationStructureCommandEncoder)initWithAccelerationStructureCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor
{
  v11.receiver = self;
  v11.super_class = MTLToolsAccelerationStructureCommandEncoder;
  v7 = [(MTLToolsCommandEncoder *)&v11 initWithBaseObject:encoder parent:?];
  v8 = v7;
  if (descriptor && v7)
  {
    for (i = 0; i != 4; ++i)
    {
      [parent addRetainedObject:{objc_msgSend(objc_msgSend(objc_msgSend(descriptor, "sampleBufferAttachments"), "objectAtIndexedSubscript:", i), "sampleBuffer")}];
    }
  }

  return v8;
}

- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  v12 = unwrapAccelerationStructureDescriptor(descriptor);
  baseObject3 = [buffer baseObject];

  [baseObject buildAccelerationStructure:baseObject2 descriptor:v12 scratchBuffer:baseObject3 scratchBufferOffset:offset];
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  v14 = unwrapAccelerationStructureDescriptor(descriptor);
  baseObject3 = [destination baseObject];
  baseObject4 = [buffer baseObject];

  [baseObject refitAccelerationStructure:baseObject2 descriptor:v14 destination:baseObject3 scratchBuffer:baseObject4 scratchBufferOffset:offset];
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  v16 = unwrapAccelerationStructureDescriptor(descriptor);
  baseObject3 = [destination baseObject];
  baseObject4 = [buffer baseObject];

  [baseObject refitAccelerationStructure:baseObject2 descriptor:v16 destination:baseObject3 scratchBuffer:baseObject4 scratchBufferOffset:offset options:options];
}

- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [accelerationStructure baseObject];

  [baseObject copyAccelerationStructure:baseObject2 toAccelerationStructure:baseObject3];
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [size baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeCompactedAccelerationStructureSize:baseObject2 toBuffer:baseObject3 offset:offset];
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset sizeDataType:(unint64_t)type
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [size baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeCompactedAccelerationStructureSize:baseObject2 toBuffer:baseObject3 offset:offset sizeDataType:type];
}

- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [accelerationStructure baseObject];

  [baseObject copyAndCompactAccelerationStructure:baseObject2 toAccelerationStructure:baseObject3];
}

- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [size baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeSerializedAccelerationStructureSize:baseObject2 toBuffer:baseObject3 sizeBufferOffset:offset];
}

- (void)writeDeserializedAccelerationStructureSize:(id)size serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizeBufferOffset:(unint64_t)bufferOffset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [size baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeDeserializedAccelerationStructureSize:baseObject2 serializedOffset:offset toBuffer:baseObject3 sizeBufferOffset:bufferOffset];
}

- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)sizes serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizesBufferOffset:(unint64_t)bufferOffset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [sizes baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeDeserializedPrimitiveAccelerationStructureSizes:baseObject2 serializedOffset:offset toBuffer:baseObject3 sizesBufferOffset:bufferOffset];
}

- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject serializePrimitiveAccelerationStructure:baseObject2 toBuffer:baseObject3 serializedBufferOffset:offset];
}

- (void)serializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v12 = 0;
    v13 = 1;
    do
    {
      [v11 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v12), "baseObject")}];
      v12 = v13;
    }

    while ([structures count] > v13++);
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject serializeInstanceAccelerationStructure:baseObject2 primitiveAccelerationStructures:v11 toBuffer:baseObject3 serializedBufferOffset:offset];
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject deserializePrimitiveAccelerationStructure:baseObject2 fromBuffer:baseObject3 serializedBufferOffset:offset];
}

- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v12 = 0;
    v13 = 1;
    do
    {
      [v11 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v12), "baseObject")}];
      v12 = v13;
    }

    while ([structures count] > v13++);
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject deserializeInstanceAccelerationStructure:baseObject2 primitiveAccelerationStructures:v11 fromBuffer:baseObject3 serializedBufferOffset:offset];
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];
  v13 = unwrapAccelerationStructureDescriptor(descriptor);

  [baseObject deserializePrimitiveAccelerationStructure:baseObject2 fromBuffer:baseObject3 serializedBufferOffset:offset withDescriptor:v13];
}

- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor
{
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v14 = 0;
    v15 = 1;
    do
    {
      [v13 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v14), "baseObject")}];
      v14 = v15;
    }

    while ([structures count] > v15++);
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];
  v20 = unwrapAccelerationStructureDescriptor(descriptor);

  [baseObject deserializeInstanceAccelerationStructure:baseObject2 primitiveAccelerationStructures:v13 fromBuffer:baseObject3 serializedBufferOffset:offset withDescriptor:v20];
}

- (void)serializeAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject serializeAccelerationStructure:baseObject2 toBuffer:baseObject3 serializedBufferOffset:offset];
}

- (void)deserializeAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject deserializeAccelerationStructure:baseObject2 fromBuffer:baseObject3 serializedBufferOffset:offset];
}

- (void)deserializeAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v12 = 0;
    v13 = 1;
    do
    {
      [v11 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v12), "baseObject")}];
      v12 = v13;
    }

    while ([structures count] > v13++);
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject deserializeAccelerationStructure:baseObject2 primitiveAccelerationStructures:v11 fromBuffer:baseObject3 serializedBufferOffset:offset];
}

- (void)writeGeometrySizeOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeGeometrySizeOfAccelerationStructure:baseObject2 toBuffer:baseObject3 sizeBufferOffset:offset];
}

- (void)writeGeometryOfAccelerationStructure:(id)structure toBuffer:(id)buffer geometryBufferOffset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeGeometryOfAccelerationStructure:baseObject2 toBuffer:baseObject3 geometryBufferOffset:offset];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  return [baseObject writeGenericBVHStructureSizesOfAccelerationStructure:baseObject2 into:into];
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into
{
  v7 = [objc_alloc(MEMORY[0x277CD6E30]) initWithVersion:{objc_msgSend(into, "version")}];
  [v7 setHeaderBuffer:{objc_msgSend(objc_msgSend(into, "headerBuffer"), "baseObject")}];
  [v7 setHeaderBufferOffset:{objc_msgSend(into, "headerBufferOffset")}];
  [v7 setInnerNodeBuffer:{objc_msgSend(objc_msgSend(into, "innerNodeBuffer"), "baseObject")}];
  [v7 setInnerNodeBufferOffset:{objc_msgSend(into, "innerNodeBufferOffset")}];
  [v7 setLeafNodeBuffer:{objc_msgSend(objc_msgSend(into, "leafNodeBuffer"), "baseObject")}];
  [v7 setLeafNodeBufferOffset:{objc_msgSend(into, "leafNodeBufferOffset")}];
  [v7 setPrimitiveBuffer:{objc_msgSend(objc_msgSend(into, "primitiveBuffer"), "baseObject")}];
  [v7 setPrimitiveBufferOffset:{objc_msgSend(into, "primitiveBufferOffset")}];
  [v7 setGeometryBuffer:{objc_msgSend(objc_msgSend(into, "geometryBuffer"), "baseObject")}];
  [v7 setGeometryBufferOffset:{objc_msgSend(into, "geometryBufferOffset")}];
  [v7 setInstanceTransformBuffer:{objc_msgSend(objc_msgSend(into, "instanceTransformBuffer"), "baseObject")}];
  [v7 setInstanceTransformBufferOffset:{objc_msgSend(into, "instanceTransformBufferOffset")}];
  [v7 setPerPrimitiveDataBuffer:{objc_msgSend(objc_msgSend(into, "perPrimitiveDataBuffer"), "baseObject")}];
  [v7 setPerPrimitiveDataBufferOffset:{objc_msgSend(into, "perPrimitiveDataBufferOffset")}];
  [v7 setControlPointBuffer:{objc_msgSend(objc_msgSend(into, "controlPointBuffer"), "baseObject")}];
  [v7 setControlPointBufferOffset:{objc_msgSend(into, "controlPointBufferOffset")}];
  LOBYTE(structure) = [-[MTLToolsObject baseObject](self "baseObject")];

  return structure;
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizesBufferOffset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeGenericBVHStructureSizesOfAccelerationStructure:baseObject2 toBuffer:baseObject3 sizesBufferOffset:offset];
}

- (void)writeGenericBVHStructureOfAccelerationStructure:(id)structure headerBuffer:(id)buffer headerBufferOffset:(unint64_t)offset innerNodeBuffer:(id)nodeBuffer innerNodeBufferOffset:(unint64_t)bufferOffset leafNodeBuffer:(id)leafNodeBuffer leafNodeBufferOffset:(unint64_t)nodeBufferOffset primitiveBuffer:(id)self0 primitiveBufferOffset:(unint64_t)self1 geometryBuffer:(id)self2 geometryOffset:(unint64_t)self3 instanceTransformBuffer:(id)self4 instanceTransformOffset:(unint64_t)self5 controlPointBuffer:(id)self6 controlPointBufferOffset:(unint64_t)self7
{
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
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [data baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeAccelerationStructureSerializationData:baseObject2 toBuffer:baseObject3 offset:offset];
}

- (void)updateFence:(id)fence
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [fence baseObject];

  [baseObject updateFence:baseObject2];
}

- (void)waitForFence:(id)fence
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [fence baseObject];

  [baseObject waitForFence:baseObject2];
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [resource baseObject];

  [baseObject useResource:baseObject2 usage:usage];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v9 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:resources[v9]];
      baseObject = [resources[v9] baseObject];
      *(__p[0] + v9++) = baseObject;
    }

    while (count != v9);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useResources:__p[0] count:count usage:usage];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useHeap:(id)heap
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [heap baseObject];

  [baseObject useHeap:baseObject2];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:heaps[v7]];
      baseObject = [heaps[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useHeaps:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject endEncodingAndRetrieveProgramAddressTable];
}

- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(id)buffer offset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [depth baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject writeAccelerationStructureTraversalDepth:baseObject2 toBuffer:baseObject3 offset:offset];
}

@end