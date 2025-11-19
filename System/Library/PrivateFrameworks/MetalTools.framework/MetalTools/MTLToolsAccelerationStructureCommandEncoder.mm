@interface MTLToolsAccelerationStructureCommandEncoder
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4;
- (MTLToolsAccelerationStructureCommandEncoder)initWithAccelerationStructureCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5;
- (id)endEncodingAndRetrieveProgramAddressTable;
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
- (void)writeGenericBVHStructureOfAccelerationStructure:(id)a3 headerBuffer:(id)a4 headerBufferOffset:(unint64_t)a5 innerNodeBuffer:(id)a6 innerNodeBufferOffset:(unint64_t)a7 leafNodeBuffer:(id)a8 leafNodeBufferOffset:(unint64_t)a9 primitiveBuffer:(id)a10 primitiveBufferOffset:(unint64_t)a11 geometryBuffer:(id)a12 geometryOffset:(unint64_t)a13 instanceTransformBuffer:(id)a14 instanceTransformOffset:(unint64_t)a15 controlPointBuffer:(id)a16 controlPointBufferOffset:(unint64_t)a17;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(id)a4 sizesBufferOffset:(unint64_t)a5;
- (void)writeGeometryOfAccelerationStructure:(id)a3 toBuffer:(id)a4 geometryBufferOffset:(unint64_t)a5;
- (void)writeGeometrySizeOfAccelerationStructure:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5;
- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5;
@end

@implementation MTLToolsAccelerationStructureCommandEncoder

- (MTLToolsAccelerationStructureCommandEncoder)initWithAccelerationStructureCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5
{
  v11.receiver = self;
  v11.super_class = MTLToolsAccelerationStructureCommandEncoder;
  v7 = [(MTLToolsCommandEncoder *)&v11 initWithBaseObject:a3 parent:?];
  v8 = v7;
  if (a5 && v7)
  {
    for (i = 0; i != 4; ++i)
    {
      [a4 addRetainedObject:{objc_msgSend(objc_msgSend(objc_msgSend(a5, "sampleBufferAttachments"), "objectAtIndexedSubscript:", i), "sampleBuffer")}];
    }
  }

  return v8;
}

- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(id)a5 scratchBufferOffset:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];
  v12 = unwrapAccelerationStructureDescriptor(a4);
  v13 = [a5 baseObject];

  [v10 buildAccelerationStructure:v11 descriptor:v12 scratchBuffer:v13 scratchBufferOffset:a6];
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  v14 = unwrapAccelerationStructureDescriptor(a4);
  v15 = [a5 baseObject];
  v16 = [a6 baseObject];

  [v12 refitAccelerationStructure:v13 descriptor:v14 destination:v15 scratchBuffer:v16 scratchBufferOffset:a7];
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7 options:(unint64_t)a8
{
  v14 = [(MTLToolsObject *)self baseObject];
  v15 = [a3 baseObject];
  v16 = unwrapAccelerationStructureDescriptor(a4);
  v17 = [a5 baseObject];
  v18 = [a6 baseObject];

  [v14 refitAccelerationStructure:v15 descriptor:v16 destination:v17 scratchBuffer:v18 scratchBufferOffset:a7 options:a8];
}

- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];
  v8 = [a4 baseObject];

  [v6 copyAccelerationStructure:v7 toAccelerationStructure:v8];
}

- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];
  v10 = [a4 baseObject];

  [v8 writeCompactedAccelerationStructureSize:v9 toBuffer:v10 offset:a5];
}

- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5 sizeDataType:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];
  v12 = [a4 baseObject];

  [v10 writeCompactedAccelerationStructureSize:v11 toBuffer:v12 offset:a5 sizeDataType:a6];
}

- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];
  v8 = [a4 baseObject];

  [v6 copyAndCompactAccelerationStructure:v7 toAccelerationStructure:v8];
}

- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];
  v10 = [a4 baseObject];

  [v8 writeSerializedAccelerationStructureSize:v9 toBuffer:v10 sizeBufferOffset:a5];
}

- (void)writeDeserializedAccelerationStructureSize:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizeBufferOffset:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];
  v12 = [a5 baseObject];

  [v10 writeDeserializedAccelerationStructureSize:v11 serializedOffset:a4 toBuffer:v12 sizeBufferOffset:a6];
}

- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizesBufferOffset:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];
  v12 = [a5 baseObject];

  [v10 writeDeserializedPrimitiveAccelerationStructureSizes:v11 serializedOffset:a4 toBuffer:v12 sizesBufferOffset:a6];
}

- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];
  v10 = [a4 baseObject];

  [v8 serializePrimitiveAccelerationStructure:v9 toBuffer:v10 serializedBufferOffset:a5];
}

- (void)serializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 toBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6
{
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a4, "count")}];
  if ([a4 count])
  {
    v12 = 0;
    v13 = 1;
    do
    {
      [v11 addObject:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v12), "baseObject")}];
      v12 = v13;
    }

    while ([a4 count] > v13++);
  }

  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a3 baseObject];
  v17 = [a5 baseObject];

  [v15 serializeInstanceAccelerationStructure:v16 primitiveAccelerationStructures:v11 toBuffer:v17 serializedBufferOffset:a6];
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];
  v10 = [a4 baseObject];

  [v8 deserializePrimitiveAccelerationStructure:v9 fromBuffer:v10 serializedBufferOffset:a5];
}

- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6
{
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a4, "count")}];
  if ([a4 count])
  {
    v12 = 0;
    v13 = 1;
    do
    {
      [v11 addObject:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v12), "baseObject")}];
      v12 = v13;
    }

    while ([a4 count] > v13++);
  }

  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a3 baseObject];
  v17 = [a5 baseObject];

  [v15 deserializeInstanceAccelerationStructure:v16 primitiveAccelerationStructures:v11 fromBuffer:v17 serializedBufferOffset:a6];
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5 withDescriptor:(id)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];
  v12 = [a4 baseObject];
  v13 = unwrapAccelerationStructureDescriptor(a6);

  [v10 deserializePrimitiveAccelerationStructure:v11 fromBuffer:v12 serializedBufferOffset:a5 withDescriptor:v13];
}

- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6 withDescriptor:(id)a7
{
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a4, "count")}];
  if ([a4 count])
  {
    v14 = 0;
    v15 = 1;
    do
    {
      [v13 addObject:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v14), "baseObject")}];
      v14 = v15;
    }

    while ([a4 count] > v15++);
  }

  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v19 = [a5 baseObject];
  v20 = unwrapAccelerationStructureDescriptor(a7);

  [v17 deserializeInstanceAccelerationStructure:v18 primitiveAccelerationStructures:v13 fromBuffer:v19 serializedBufferOffset:a6 withDescriptor:v20];
}

- (void)serializeAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];
  v10 = [a4 baseObject];

  [v8 serializeAccelerationStructure:v9 toBuffer:v10 serializedBufferOffset:a5];
}

- (void)deserializeAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];
  v10 = [a4 baseObject];

  [v8 deserializeAccelerationStructure:v9 fromBuffer:v10 serializedBufferOffset:a5];
}

- (void)deserializeAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6
{
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a4, "count")}];
  if ([a4 count])
  {
    v12 = 0;
    v13 = 1;
    do
    {
      [v11 addObject:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v12), "baseObject")}];
      v12 = v13;
    }

    while ([a4 count] > v13++);
  }

  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a3 baseObject];
  v17 = [a5 baseObject];

  [v15 deserializeAccelerationStructure:v16 primitiveAccelerationStructures:v11 fromBuffer:v17 serializedBufferOffset:a6];
}

- (void)writeGeometrySizeOfAccelerationStructure:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];
  v10 = [a4 baseObject];

  [v8 writeGeometrySizeOfAccelerationStructure:v9 toBuffer:v10 sizeBufferOffset:a5];
}

- (void)writeGeometryOfAccelerationStructure:(id)a3 toBuffer:(id)a4 geometryBufferOffset:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];
  v10 = [a4 baseObject];

  [v8 writeGeometryOfAccelerationStructure:v9 toBuffer:v10 geometryBufferOffset:a5];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  return [v6 writeGenericBVHStructureSizesOfAccelerationStructure:v7 into:a4];
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4
{
  v7 = [objc_alloc(MEMORY[0x277CD6E30]) initWithVersion:{objc_msgSend(a4, "version")}];
  [v7 setHeaderBuffer:{objc_msgSend(objc_msgSend(a4, "headerBuffer"), "baseObject")}];
  [v7 setHeaderBufferOffset:{objc_msgSend(a4, "headerBufferOffset")}];
  [v7 setInnerNodeBuffer:{objc_msgSend(objc_msgSend(a4, "innerNodeBuffer"), "baseObject")}];
  [v7 setInnerNodeBufferOffset:{objc_msgSend(a4, "innerNodeBufferOffset")}];
  [v7 setLeafNodeBuffer:{objc_msgSend(objc_msgSend(a4, "leafNodeBuffer"), "baseObject")}];
  [v7 setLeafNodeBufferOffset:{objc_msgSend(a4, "leafNodeBufferOffset")}];
  [v7 setPrimitiveBuffer:{objc_msgSend(objc_msgSend(a4, "primitiveBuffer"), "baseObject")}];
  [v7 setPrimitiveBufferOffset:{objc_msgSend(a4, "primitiveBufferOffset")}];
  [v7 setGeometryBuffer:{objc_msgSend(objc_msgSend(a4, "geometryBuffer"), "baseObject")}];
  [v7 setGeometryBufferOffset:{objc_msgSend(a4, "geometryBufferOffset")}];
  [v7 setInstanceTransformBuffer:{objc_msgSend(objc_msgSend(a4, "instanceTransformBuffer"), "baseObject")}];
  [v7 setInstanceTransformBufferOffset:{objc_msgSend(a4, "instanceTransformBufferOffset")}];
  [v7 setPerPrimitiveDataBuffer:{objc_msgSend(objc_msgSend(a4, "perPrimitiveDataBuffer"), "baseObject")}];
  [v7 setPerPrimitiveDataBufferOffset:{objc_msgSend(a4, "perPrimitiveDataBufferOffset")}];
  [v7 setControlPointBuffer:{objc_msgSend(objc_msgSend(a4, "controlPointBuffer"), "baseObject")}];
  [v7 setControlPointBufferOffset:{objc_msgSend(a4, "controlPointBufferOffset")}];
  LOBYTE(a3) = [-[MTLToolsObject baseObject](self "baseObject")];

  return a3;
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(id)a4 sizesBufferOffset:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];
  v10 = [a4 baseObject];

  [v8 writeGenericBVHStructureSizesOfAccelerationStructure:v9 toBuffer:v10 sizesBufferOffset:a5];
}

- (void)writeGenericBVHStructureOfAccelerationStructure:(id)a3 headerBuffer:(id)a4 headerBufferOffset:(unint64_t)a5 innerNodeBuffer:(id)a6 innerNodeBufferOffset:(unint64_t)a7 leafNodeBuffer:(id)a8 leafNodeBufferOffset:(unint64_t)a9 primitiveBuffer:(id)a10 primitiveBufferOffset:(unint64_t)a11 geometryBuffer:(id)a12 geometryOffset:(unint64_t)a13 instanceTransformBuffer:(id)a14 instanceTransformOffset:(unint64_t)a15 controlPointBuffer:(id)a16 controlPointBufferOffset:(unint64_t)a17
{
  v21 = [(MTLToolsObject *)self baseObject];
  v22 = [a3 baseObject];
  v23 = [a4 baseObject];
  v24 = [a6 baseObject];
  v25 = [a8 baseObject];
  [a10 baseObject];
  [a12 baseObject];
  [a14 baseObject];
  [a16 baseObject];

  [v21 writeGenericBVHStructureOfAccelerationStructure:v22 headerBuffer:v23 headerBufferOffset:a5 innerNodeBuffer:v24 innerNodeBufferOffset:a7 leafNodeBuffer:v25 leafNodeBufferOffset:? primitiveBuffer:? primitiveBufferOffset:? geometryBuffer:? geometryOffset:? instanceTransformBuffer:? instanceTransformOffset:? controlPointBuffer:? controlPointBufferOffset:?];
}

- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];
  v10 = [a4 baseObject];

  [v8 writeAccelerationStructureSerializationData:v9 toBuffer:v10 offset:a5];
}

- (void)updateFence:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 updateFence:v6];
}

- (void)waitForFence:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 waitForFence:v6];
}

- (void)useResource:(id)a3 usage:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 useResource:v8 usage:a4];
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v9 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:a3[v9]];
      v10 = [a3[v9] baseObject];
      *(__p[0] + v9++) = v10;
    }

    while (a4 != v9);
  }

  v11 = [(MTLToolsObject *)self baseObject];
  [v11 useResources:__p[0] count:a4 usage:a5];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useHeap:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 useHeap:v6];
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
{
  std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:a3[v7]];
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
    }

    while (a4 != v7);
  }

  v9 = [(MTLToolsObject *)self baseObject];
  [v9 useHeaps:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 endEncodingAndRetrieveProgramAddressTable];
}

- (void)writeAccelerationStructureTraversalDepth:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];
  v10 = [a4 baseObject];

  [v8 writeAccelerationStructureTraversalDepth:v9 toBuffer:v10 offset:a5];
}

@end