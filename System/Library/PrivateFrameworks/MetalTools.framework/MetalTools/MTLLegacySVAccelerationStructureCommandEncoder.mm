@interface MTLLegacySVAccelerationStructureCommandEncoder
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4;
- (MTLLegacySVAccelerationStructureCommandEncoder)initWithAccelerationStructureCommandEncoder:(id)a3 parent:(id)a4 accelerationStructurePassDescriptor:(id)a5;
- (id).cxx_construct;
- (id)createChildrenWrappersBufferWithASDescriptor:(id)a3;
- (id)createChildrenWrappersBufferWithIASDescriptor:(id)a3;
- (id)createChildrenWrappersBufferWithInstanceDescriptorBuffer:(id)a3 maxInstanceCount:(unint64_t)a4 instanceCountBuffer:(id)a5 instanceCountBufferOffset:(unint64_t)a6 instanceDescriptorStride:(unint64_t)a7 instanceDescriptorBufferOffset:(unint64_t)a8 instanceDescriptorType:(unint64_t)a9 accelerationStructureIDs:(id)a10;
- (id)encodeUnwrapAccelerationStructureDescriptor:(id)a3;
- (id)psoWithFunctionName:(id)a3;
- (void)blitAccelerationStructureType:(unint64_t)a3 toAccelerationStructure:(id)a4;
- (void)blitChildrenWrappersBufferAddress:(id)a3 toAccelerationStructure:(id)a4;
- (void)blitChildrenWrappersBufferFromAcceleratrionStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)blitTypeFromAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)blitTypeFromAccelerationStructureDescriptor:(id)a3 toAccelerationStructure:(id)a4;
- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(id)a5 scratchBufferOffset:(unint64_t)a6;
- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)dealloc;
- (void)deserializeAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5;
- (void)deserializeAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6;
- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6;
- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6 withDescriptor:(id)a7;
- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5;
- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5 withDescriptor:(id)a6;
- (void)destroyBaseAccelerationStructureCommandEncoder;
- (void)endEncoding;
- (void)newBaseAccelerationStructureCommandEncoder;
- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7;
- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7 options:(unint64_t)a8;
- (void)serializeAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5;
- (void)serializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 toBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6;
- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5;
- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5;
- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5 sizeDataType:(unint64_t)a6;
- (void)writeDeserializedAccelerationStructureSize:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizeBufferOffset:(unint64_t)a6;
- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizesBufferOffset:(unint64_t)a6;
- (void)writeGenericBVHStructureOfAccelerationStructure:(id)a3 headerBuffer:(id)a4 headerBufferOffset:(unint64_t)a5 innerNodeBuffer:(id)a6 innerNodeBufferOffset:(unint64_t)a7 leafNodeBuffer:(id)a8 leafNodeBufferOffset:(unint64_t)a9 primitiveBuffer:(id)a10 primitiveBufferOffset:(unint64_t)a11 geometryBuffer:(id)a12 geometryOffset:(unint64_t)a13 instanceTransformBuffer:(id)a14 instanceTransformOffset:(unint64_t)a15;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(id)a4 sizesBufferOffset:(unint64_t)a5;
- (void)writeGeometryOfAccelerationStructure:(id)a3 toBuffer:(id)a4 geometryBufferOffset:(unint64_t)a5;
- (void)writeGeometrySizeOfAccelerationStructure:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5;
- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5;
@end

@implementation MTLLegacySVAccelerationStructureCommandEncoder

- (MTLLegacySVAccelerationStructureCommandEncoder)initWithAccelerationStructureCommandEncoder:(id)a3 parent:(id)a4 accelerationStructurePassDescriptor:(id)a5
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  v6 = [(MTLToolsCommandEncoder *)&v8 initWithBaseObject:a3 parent:a4];
  if (v6)
  {
    v6->_accelerationStructurePassDescriptor = [a5 copy];
    v6->_accelerationStructureSupportLibrary = -[MTLDevice newLibraryWithURL:error:](-[MTLToolsObject device](v6->super.super.super._parent, "device"), "newLibraryWithURL:error:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.gpusw.MetalTools", "URLForResource:withExtension:", @"MTLLegacySVAccelerationStructureSupport", @"metallib"}], 0);
  }

  return v6;
}

- (void)endEncoding
{
  std::__list_imp<objc_object  {objcproto9MTLBuffer}*>::clear(&self->_LegacySVResourceAndUsageList.__end_.__prev_);
  std::__list_imp<objc_object  {objcproto9MTLBuffer}*>::clear(&self->_heapList.__end_.__prev_);

  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
}

- (void)newBaseAccelerationStructureCommandEncoder
{
  v3 = [(MTLToolsObject *)self->super.super.super._parent baseObject];
  if (self->_accelerationStructurePassDescriptor)
  {
    v4 = [v3 accelerationStructureCommandEncoderWithDescriptor:?];
  }

  else
  {
    v4 = [v3 accelerationStructureCommandEncoder];
  }

  [(MTLToolsObject *)self setBaseObject:v4];
  [(MTLToolsObject *)self baseObject];
  for (i = self->_LegacySVResourceAndUsageList.__end_.__next_; i != &self->_LegacySVResourceAndUsageList; i = i->super.super.super._parent)
  {
    baseObject = i->super.super.super._baseObject;
    device = i->super.super.super._device;
    v11.receiver = self;
    v11.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
    [(MTLToolsAccelerationStructureCommandEncoder *)&v11 useResource:baseObject usage:device];
  }

  for (j = self->_heapList.__end_.__next_; j != &self->_heapList; j = j->super.super.super._parent)
  {
    v9 = j->super.super.super._baseObject;
    v10.receiver = self;
    v10.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
    [(MTLToolsAccelerationStructureCommandEncoder *)&v10 useHeap:v9];
  }
}

- (void)destroyBaseAccelerationStructureCommandEncoder
{
  [-[MTLToolsObject baseObject](self "baseObject")];

  [(MTLToolsObject *)self setBaseObject:0];
}

- (void)blitAccelerationStructureType:(unint64_t)a3 toAccelerationStructure:(id)a4
{
  v7 = [(MTLToolsObject *)self->super.super.super._parent blitCommandEncoder];
  v8 = [(MTLDevice *)[(MTLToolsObject *)self->super.super.super._parent device] newInternalBufferWithLength:8 options:0];
  *[v8 contents] = a3;
  [v7 copyFromInternalBuffer:v8 sourceOffset:0 toInternalBuffer:objc_msgSend(a4 destinationOffset:"debugBuf") size:{16, 8}];
  [v7 endEncoding];
}

- (void)blitTypeFromAccelerationStructureDescriptor:(id)a3 toAccelerationStructure:(id)a4
{
  v6 = MTLLegacySVAccelerationStructureTypeFromDescriptor(a3);

  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitAccelerationStructureType:v6 toAccelerationStructure:a4];
}

- (void)blitTypeFromAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v6 = [(MTLToolsObject *)self->super.super.super._parent blitCommandEncoder];
  [v6 copyFromInternalBuffer:objc_msgSend(a3 sourceOffset:"debugBuf") toInternalBuffer:16 destinationOffset:objc_msgSend(a4 size:{"debugBuf"), 16, 8}];

  [v6 endEncoding];
}

- (id)psoWithFunctionName:(id)a3
{
  v5 = [(MTLToolsObject *)self->super.super.super._parent device];
  v6 = [(MTLLibrary *)self->_accelerationStructureSupportLibrary newFunctionWithName:a3];
  v7 = objc_opt_new();
  [v7 setComputeFunction:v6];

  v8 = [(MTLDevice *)v5 newComputePipelineStateWithDescriptor:v7 options:0 reflection:0 error:0];
  return v8;
}

- (id)encodeUnwrapAccelerationStructureDescriptor:(id)a3
{
  v5 = objc_opt_class();
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {
    v6 = [(MTLToolsObject *)self->super.super.super._parent device];
    v7 = [a3 copy];
    v8 = -[MTLDevice newBufferWithLength:options:](v6, "newBufferWithLength:options:", [objc_msgSend(a3 "instanceDescriptorBuffer")], objc_msgSend(objc_msgSend(a3, "instanceDescriptorBuffer"), "resourceOptions"));
    [v7 setInstanceDescriptorBuffer:v8];

    v9 = [(MTLToolsObject *)self->super.super.super._parent blitCommandEncoder];
    v10 = [a3 instanceDescriptorBufferOffset];
    [v9 copyFromBuffer:objc_msgSend(a3 sourceOffset:"instanceDescriptorBuffer") toBuffer:v10 destinationOffset:objc_msgSend(v7 size:{"instanceDescriptorBuffer"), v10, objc_msgSend(a3, "maxInstanceCount") * objc_msgSend(a3, "instanceDescriptorStride")}];
    [v9 endEncoding];
    v11 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self psoWithFunctionName:@"unwrap_acceleration_structure_descriptor_buffer"];
    v12 = [(MTLToolsObject *)self->super.super.super._parent computeCommandEncoder];
    p_LegacySVResourceAndUsageList = &self->_LegacySVResourceAndUsageList;
    for (i = p_LegacySVResourceAndUsageList->__end_.__next_; i != p_LegacySVResourceAndUsageList; i = i->__end_.__next_)
    {
      [v12 useResource:i->__size_ usage:i[1].__end_.__prev_];
    }

    v23 = 0;
    v24 = [a3 instanceDescriptorStride];
    v15 = [a3 instanceDescriptorType];
    if (v15 == 3)
    {
      v16 = 64;
    }

    else
    {
      if (v15 != 4)
      {
LABEL_10:
        v22 = [a3 maxInstanceCount];
        [v12 setComputePipelineState:v11];
        [v12 setBuffer:objc_msgSend(a3 offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(a3, "instanceDescriptorBufferOffset"), 0}];
        [v12 setBuffer:objc_msgSend(v7 offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(v7, "instanceDescriptorBufferOffset"), 1}];
        [v12 setBytes:&v24 length:8 atIndex:2];
        [v12 setBytes:&v23 length:8 atIndex:3];
        [v12 setBytes:&v22 length:8 atIndex:4];
        v20 = vcvtpd_u64_f64(v22 / [v11 maxTotalThreadsPerThreadgroup]);
        v21 = vdupq_n_s64(1uLL);
        v18 = [v11 maxTotalThreadsPerThreadgroup];
        v19 = v21;
        [v12 dispatchThreadgroups:&v20 threadsPerThreadgroup:&v18];
        [v12 endEncoding];

        return v7;
      }

      v16 = 16;
    }

    v23 = v16;
    goto LABEL_10;
  }

  return a3;
}

- (id)createChildrenWrappersBufferWithInstanceDescriptorBuffer:(id)a3 maxInstanceCount:(unint64_t)a4 instanceCountBuffer:(id)a5 instanceCountBufferOffset:(unint64_t)a6 instanceDescriptorStride:(unint64_t)a7 instanceDescriptorBufferOffset:(unint64_t)a8 instanceDescriptorType:(unint64_t)a9 accelerationStructureIDs:(id)a10
{
  v15 = [(MTLToolsObject *)self->super.super.super._parent device];
  v16 = [(MTLToolsObject *)self->super.super.super._parent computeCommandEncoder];
  v17 = [(MTLDevice *)v15 newBufferWithLength:8 * a4 options:0];
  v18 = 0;
  v32 = 0;
  v33 = a7;
  if (a9 > 1)
  {
    if (a9 != 2)
    {
      v19 = a6;
      if (a9 != 3)
      {
        v20 = a5;
        v21 = a3;
        v22 = a8;
        if (a9 == 4)
        {
          v32 = 16;
          v18 = @"create_children_wrappers_buffer_from_indirect_descriptor";
        }

        goto LABEL_14;
      }

      v32 = 64;
      v18 = @"create_children_wrappers_buffer_from_indirect_descriptor";
LABEL_13:
      v20 = a5;
      v21 = a3;
      v22 = a8;
      goto LABEL_14;
    }

    v23 = 12;
LABEL_12:
    v32 = v23;
    v18 = @"create_children_wrappers_buffer";
    v19 = a6;
    goto LABEL_13;
  }

  if (!a9)
  {
    v23 = 60;
    goto LABEL_12;
  }

  v19 = a6;
  v20 = a5;
  v21 = a3;
  v22 = a8;
  if (a9 == 1)
  {
    v32 = 60;
    v18 = @"create_children_wrappers_buffer";
  }

LABEL_14:
  v24 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self psoWithFunctionName:v18];
  [v16 setComputePipelineState:v24];
  [v16 setBuffer:v21 offset:v22 atIndex:0];
  [v16 setBuffer:v17 offset:0 atIndex:1];
  if (a10)
  {
    [v16 setBuffer:a10 offset:0 atIndex:2];
  }

  [v16 setBytes:&v33 length:8 atIndex:3];
  [v16 setBytes:&v32 length:8 atIndex:4];
  [v16 setBuffer:v20 offset:v19 atIndex:5];
  v30 = vcvtpd_u64_f64(a4 / [v24 maxTotalThreadsPerThreadgroup]);
  v31 = vdupq_n_s64(1uLL);
  v28 = [v24 maxTotalThreadsPerThreadgroup];
  v29 = v31;
  [v16 dispatchThreadgroups:&v30 threadsPerThreadgroup:&v28];
  [v16 endEncoding];

  return v17;
}

- (id)createChildrenWrappersBufferWithIASDescriptor:(id)a3
{
  v5 = [(MTLToolsObject *)self->super.super.super._parent device];
  v6 = [objc_msgSend(a3 "instancedAccelerationStructures")];
  v7 = [(MTLDevice *)v5 newBufferWithLength:8 * v6 options:0];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = [objc_msgSend(objc_msgSend(a3 "instancedAccelerationStructures")];
      *([v7 contents] + 8 * i) = v9;
    }
  }

  v14 = [a3 instanceCount];
  v10 = [(MTLDevice *)v5 newBufferWithBytes:&v14 length:8 options:0];
  v11 = [a3 instanceDescriptorBuffer];
  v12 = -[MTLLegacySVAccelerationStructureCommandEncoder createChildrenWrappersBufferWithInstanceDescriptorBuffer:maxInstanceCount:instanceCountBuffer:instanceCountBufferOffset:instanceDescriptorStride:instanceDescriptorBufferOffset:instanceDescriptorType:accelerationStructureIDs:](self, "createChildrenWrappersBufferWithInstanceDescriptorBuffer:maxInstanceCount:instanceCountBuffer:instanceCountBufferOffset:instanceDescriptorStride:instanceDescriptorBufferOffset:instanceDescriptorType:accelerationStructureIDs:", v11, v14, v10, 0, [a3 instanceDescriptorStride], objc_msgSend(a3, "instanceDescriptorBufferOffset"), objc_msgSend(a3, "instanceDescriptorType"), v7);

  return v12;
}

- (id)createChildrenWrappersBufferWithASDescriptor:(id)a3
{
  v5 = objc_opt_class();
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {
    if ([a3 instanceCount])
    {
      v6 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self createChildrenWrappersBufferWithIASDescriptor:a3];
      goto LABEL_6;
    }

    return 0;
  }

  v7 = objc_opt_class();
  if (![v7 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v6 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self createChildrenWrappersBufferWithIndirectIASDescriptor:a3];
LABEL_6:
  v8 = v6;
  if (v6)
  {
    [(MTLLegacySVAccelerationStructureCommandEncoder *)self useResource:v6 usage:1];
  }

  return v8;
}

- (void)blitChildrenWrappersBufferAddress:(id)a3 toAccelerationStructure:(id)a4
{
  v7 = [(MTLToolsObject *)self->super.super.super._parent blitCommandEncoder];
  v10 = [(MTLDevice *)[(MTLToolsObject *)self->super.super.super._parent device] newInternalBufferWithLength:8 options:0];
  v8 = [objc_msgSend(a3 "baseObject")];
  *[v10 contents] = v8;
  v9 = [a4 debugBuf];
  [a4 setChildrenWrappersBuffer:a3];
  [v7 copyFromInternalBuffer:v10 sourceOffset:0 toInternalBuffer:v9 destinationOffset:24 size:8];
  [v7 endEncoding];
}

- (void)blitChildrenWrappersBufferFromAcceleratrionStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v6 = [(MTLToolsObject *)self->super.super.super._parent blitCommandEncoder];
  v8 = [a3 debugBuf];
  v7 = [a4 debugBuf];
  [a4 setChildrenWrappersBuffer:{objc_msgSend(a3, "childrenWrappersBuffer")}];
  [v6 copyFromInternalBuffer:v8 sourceOffset:24 toInternalBuffer:v7 destinationOffset:24 size:8];
  [v6 endEncoding];
}

- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(id)a5 scratchBufferOffset:(unint64_t)a6
{
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  v11 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self createChildrenWrappersBufferWithASDescriptor:a4];
  v12 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self encodeUnwrapAccelerationStructureDescriptor:a4];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
  v13.receiver = self;
  v13.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v13 buildAccelerationStructure:a3 descriptor:v12 scratchBuffer:a5 scratchBufferOffset:a6];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:a4 toAccelerationStructure:a3];
  if (v11)
  {
    [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitChildrenWrappersBufferAddress:v11 toAccelerationStructure:a3];
  }

  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7
{
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  v13 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self createChildrenWrappersBufferWithASDescriptor:a4];
  v14 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self encodeUnwrapAccelerationStructureDescriptor:a4];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
  v15.receiver = self;
  v15.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v15 refitAccelerationStructure:a3 descriptor:v14 destination:a5 scratchBuffer:a6 scratchBufferOffset:a7];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  if (a5)
  {
    [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:a4 toAccelerationStructure:a5];
    if (v13)
    {
      [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitChildrenWrappersBufferAddress:v13 toAccelerationStructure:a5];
    }
  }

  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(id)a6 scratchBufferOffset:(unint64_t)a7 options:(unint64_t)a8
{
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  v15 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self createChildrenWrappersBufferWithASDescriptor:a4];
  v16 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self encodeUnwrapAccelerationStructureDescriptor:a4];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
  v17.receiver = self;
  v17.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v17 refitAccelerationStructure:a3 descriptor:v16 destination:a5 scratchBuffer:a6 scratchBufferOffset:a7 options:a8];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  if (a5)
  {
    [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:a4 toAccelerationStructure:a5];
    if (v15)
    {
      [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitChildrenWrappersBufferAddress:v15 toAccelerationStructure:a5];
    }
  }

  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [MTLToolsAccelerationStructureCommandEncoder copyAccelerationStructure:sel_copyAccelerationStructure_toAccelerationStructure_ toAccelerationStructure:?];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructure:a3 toAccelerationStructure:a4];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitChildrenWrappersBufferFromAcceleratrionStructure:a3 toAccelerationStructure:a4];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeCompactedAccelerationStructureSize:a3 toBuffer:a4 offset:a5];
}

- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5 sizeDataType:(unint64_t)a6
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v6 writeCompactedAccelerationStructureSize:a3 toBuffer:a4 offset:a5 sizeDataType:a6];
}

- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [MTLToolsAccelerationStructureCommandEncoder copyAndCompactAccelerationStructure:sel_copyAndCompactAccelerationStructure_toAccelerationStructure_ toAccelerationStructure:?];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructure:a3 toAccelerationStructure:a4];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitChildrenWrappersBufferFromAcceleratrionStructure:a3 toAccelerationStructure:a4];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeSerializedAccelerationStructureSize:a3 toBuffer:a4 sizeBufferOffset:a5];
}

- (void)writeDeserializedAccelerationStructureSize:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizeBufferOffset:(unint64_t)a6
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v6 writeDeserializedAccelerationStructureSize:a3 serializedOffset:a4 toBuffer:a5 sizeBufferOffset:a6];
}

- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)a3 serializedOffset:(unint64_t)a4 toBuffer:(id)a5 sizesBufferOffset:(unint64_t)a6
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v6 writeDeserializedPrimitiveAccelerationStructureSizes:a3 serializedOffset:a4 toBuffer:a5 sizesBufferOffset:a6];
}

- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 serializePrimitiveAccelerationStructure:a3 toBuffer:a4 serializedBufferOffset:a5];
}

- (void)serializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 toBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v6 serializeInstanceAccelerationStructure:a3 primitiveAccelerationStructures:a4 toBuffer:a5 serializedBufferOffset:a6];
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v7 deserializePrimitiveAccelerationStructure:a3 fromBuffer:a4 serializedBufferOffset:a5];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitPrimitiveTypetoAccelerationStructure:a3];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v8 deserializeInstanceAccelerationStructure:a3 primitiveAccelerationStructures:a4 fromBuffer:a5 serializedBufferOffset:a6];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitInstanceTypetoAccelerationStructure:a3];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5 withDescriptor:(id)a6
{
  v9.receiver = self;
  v9.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v9 deserializePrimitiveAccelerationStructure:a3 fromBuffer:a4 serializedBufferOffset:a5 withDescriptor:?];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:a6 toAccelerationStructure:a3];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)deserializeInstanceAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6 withDescriptor:(id)a7
{
  v10.receiver = self;
  v10.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v10 deserializeInstanceAccelerationStructure:a3 primitiveAccelerationStructures:a4 fromBuffer:a5 serializedBufferOffset:a6 withDescriptor:?];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:a7 toAccelerationStructure:a3];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)serializeAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 serializeAccelerationStructure:a3 toBuffer:a4 serializedBufferOffset:a5];
}

- (void)deserializeAccelerationStructure:(id)a3 fromBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v7 deserializeAccelerationStructure:a3 fromBuffer:a4 serializedBufferOffset:a5];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitPrimitiveTypetoAccelerationStructure:a3];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)deserializeAccelerationStructure:(id)a3 primitiveAccelerationStructures:(id)a4 fromBuffer:(id)a5 serializedBufferOffset:(unint64_t)a6
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v8 deserializeInstanceAccelerationStructure:a3 primitiveAccelerationStructures:a4 fromBuffer:a5 serializedBufferOffset:a6];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitInstanceTypetoAccelerationStructure:a3];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)writeGeometrySizeOfAccelerationStructure:(id)a3 toBuffer:(id)a4 sizeBufferOffset:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeGeometrySizeOfAccelerationStructure:a3 toBuffer:a4 sizeBufferOffset:a5];
}

- (void)writeGeometryOfAccelerationStructure:(id)a3 toBuffer:(id)a4 geometryBufferOffset:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeGeometryOfAccelerationStructure:a3 toBuffer:a4 geometryBufferOffset:a5];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  return [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeGenericBVHStructureSizesOfAccelerationStructure:a3 into:a4];
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  return [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeGenericBVHStructureOfAccelerationStructure:a3 into:a4];
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(id)a4 sizesBufferOffset:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeGenericBVHStructureSizesOfAccelerationStructure:a3 toBuffer:a4 sizesBufferOffset:a5];
}

- (void)writeGenericBVHStructureOfAccelerationStructure:(id)a3 headerBuffer:(id)a4 headerBufferOffset:(unint64_t)a5 innerNodeBuffer:(id)a6 innerNodeBufferOffset:(unint64_t)a7 leafNodeBuffer:(id)a8 leafNodeBufferOffset:(unint64_t)a9 primitiveBuffer:(id)a10 primitiveBufferOffset:(unint64_t)a11 geometryBuffer:(id)a12 geometryOffset:(unint64_t)a13 instanceTransformBuffer:(id)a14 instanceTransformOffset:(unint64_t)a15
{
  v15.receiver = self;
  v15.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLLegacySVAccelerationStructureCommandEncoder *)&v15 writeGenericBVHStructureOfAccelerationStructure:a3 headerBuffer:a4 headerBufferOffset:a5 innerNodeBuffer:a6 innerNodeBufferOffset:a7 leafNodeBuffer:a8 leafNodeBufferOffset:a9 primitiveBuffer:a10 primitiveBufferOffset:a11 geometryBuffer:a12 geometryOffset:a13 instanceTransformBuffer:a14 instanceTransformOffset:a15];
}

- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(id)a4 offset:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeAccelerationStructureSerializationData:a3 toBuffer:a4 offset:a5];
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v9 = *a3++;
      [(MTLLegacySVAccelerationStructureCommandEncoder *)self useResource:v9 usage:a5];
      --v6;
    }

    while (v6);
  }
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;
    do
    {
      v7 = *a3++;
      [(MTLLegacySVAccelerationStructureCommandEncoder *)self useHeap:v7];
      --v4;
    }

    while (v4);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsObject *)&v3 dealloc];
}

- (id).cxx_construct
{
  *(self + 7) = self + 56;
  *(self + 8) = self + 56;
  *(self + 9) = 0;
  *(self + 10) = self + 80;
  *(self + 11) = self + 80;
  *(self + 12) = 0;
  return self;
}

@end