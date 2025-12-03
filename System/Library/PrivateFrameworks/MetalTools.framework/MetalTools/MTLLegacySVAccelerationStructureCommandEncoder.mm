@interface MTLLegacySVAccelerationStructureCommandEncoder
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into;
- (MTLLegacySVAccelerationStructureCommandEncoder)initWithAccelerationStructureCommandEncoder:(id)encoder parent:(id)parent accelerationStructurePassDescriptor:(id)descriptor;
- (id).cxx_construct;
- (id)createChildrenWrappersBufferWithASDescriptor:(id)descriptor;
- (id)createChildrenWrappersBufferWithIASDescriptor:(id)descriptor;
- (id)createChildrenWrappersBufferWithInstanceDescriptorBuffer:(id)buffer maxInstanceCount:(unint64_t)count instanceCountBuffer:(id)countBuffer instanceCountBufferOffset:(unint64_t)offset instanceDescriptorStride:(unint64_t)stride instanceDescriptorBufferOffset:(unint64_t)bufferOffset instanceDescriptorType:(unint64_t)type accelerationStructureIDs:(id)self0;
- (id)encodeUnwrapAccelerationStructureDescriptor:(id)descriptor;
- (id)psoWithFunctionName:(id)name;
- (void)blitAccelerationStructureType:(unint64_t)type toAccelerationStructure:(id)structure;
- (void)blitChildrenWrappersBufferAddress:(id)address toAccelerationStructure:(id)structure;
- (void)blitChildrenWrappersBufferFromAcceleratrionStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)blitTypeFromAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)blitTypeFromAccelerationStructureDescriptor:(id)descriptor toAccelerationStructure:(id)structure;
- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset;
- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)dealloc;
- (void)deserializeAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializeAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor;
- (void)destroyBaseAccelerationStructureCommandEncoder;
- (void)endEncoding;
- (void)newBaseAccelerationStructureCommandEncoder;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options;
- (void)serializeAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)serializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset sizeDataType:(unint64_t)type;
- (void)writeDeserializedAccelerationStructureSize:(id)size serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizeBufferOffset:(unint64_t)bufferOffset;
- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)sizes serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizesBufferOffset:(unint64_t)bufferOffset;
- (void)writeGenericBVHStructureOfAccelerationStructure:(id)structure headerBuffer:(id)buffer headerBufferOffset:(unint64_t)offset innerNodeBuffer:(id)nodeBuffer innerNodeBufferOffset:(unint64_t)bufferOffset leafNodeBuffer:(id)leafNodeBuffer leafNodeBufferOffset:(unint64_t)nodeBufferOffset primitiveBuffer:(id)self0 primitiveBufferOffset:(unint64_t)self1 geometryBuffer:(id)self2 geometryOffset:(unint64_t)self3 instanceTransformBuffer:(id)self4 instanceTransformOffset:(unint64_t)self5;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizesBufferOffset:(unint64_t)offset;
- (void)writeGeometryOfAccelerationStructure:(id)structure toBuffer:(id)buffer geometryBufferOffset:(unint64_t)offset;
- (void)writeGeometrySizeOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset;
- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset;
@end

@implementation MTLLegacySVAccelerationStructureCommandEncoder

- (MTLLegacySVAccelerationStructureCommandEncoder)initWithAccelerationStructureCommandEncoder:(id)encoder parent:(id)parent accelerationStructurePassDescriptor:(id)descriptor
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  v6 = [(MTLToolsCommandEncoder *)&v8 initWithBaseObject:encoder parent:parent];
  if (v6)
  {
    v6->_accelerationStructurePassDescriptor = [descriptor copy];
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
  baseObject = [(MTLToolsObject *)self->super.super.super._parent baseObject];
  if (self->_accelerationStructurePassDescriptor)
  {
    accelerationStructureCommandEncoder = [baseObject accelerationStructureCommandEncoderWithDescriptor:?];
  }

  else
  {
    accelerationStructureCommandEncoder = [baseObject accelerationStructureCommandEncoder];
  }

  [(MTLToolsObject *)self setBaseObject:accelerationStructureCommandEncoder];
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

- (void)blitAccelerationStructureType:(unint64_t)type toAccelerationStructure:(id)structure
{
  blitCommandEncoder = [(MTLToolsObject *)self->super.super.super._parent blitCommandEncoder];
  v8 = [(MTLDevice *)[(MTLToolsObject *)self->super.super.super._parent device] newInternalBufferWithLength:8 options:0];
  *[v8 contents] = type;
  [blitCommandEncoder copyFromInternalBuffer:v8 sourceOffset:0 toInternalBuffer:objc_msgSend(structure destinationOffset:"debugBuf") size:{16, 8}];
  [blitCommandEncoder endEncoding];
}

- (void)blitTypeFromAccelerationStructureDescriptor:(id)descriptor toAccelerationStructure:(id)structure
{
  v6 = MTLLegacySVAccelerationStructureTypeFromDescriptor(descriptor);

  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitAccelerationStructureType:v6 toAccelerationStructure:structure];
}

- (void)blitTypeFromAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  blitCommandEncoder = [(MTLToolsObject *)self->super.super.super._parent blitCommandEncoder];
  [blitCommandEncoder copyFromInternalBuffer:objc_msgSend(structure sourceOffset:"debugBuf") toInternalBuffer:16 destinationOffset:objc_msgSend(accelerationStructure size:{"debugBuf"), 16, 8}];

  [blitCommandEncoder endEncoding];
}

- (id)psoWithFunctionName:(id)name
{
  device = [(MTLToolsObject *)self->super.super.super._parent device];
  v6 = [(MTLLibrary *)self->_accelerationStructureSupportLibrary newFunctionWithName:name];
  v7 = objc_opt_new();
  [v7 setComputeFunction:v6];

  v8 = [(MTLDevice *)device newComputePipelineStateWithDescriptor:v7 options:0 reflection:0 error:0];
  return v8;
}

- (id)encodeUnwrapAccelerationStructureDescriptor:(id)descriptor
{
  v5 = objc_opt_class();
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {
    device = [(MTLToolsObject *)self->super.super.super._parent device];
    v7 = [descriptor copy];
    v8 = -[MTLDevice newBufferWithLength:options:](device, "newBufferWithLength:options:", [objc_msgSend(descriptor "instanceDescriptorBuffer")], objc_msgSend(objc_msgSend(descriptor, "instanceDescriptorBuffer"), "resourceOptions"));
    [v7 setInstanceDescriptorBuffer:v8];

    blitCommandEncoder = [(MTLToolsObject *)self->super.super.super._parent blitCommandEncoder];
    instanceDescriptorBufferOffset = [descriptor instanceDescriptorBufferOffset];
    [blitCommandEncoder copyFromBuffer:objc_msgSend(descriptor sourceOffset:"instanceDescriptorBuffer") toBuffer:instanceDescriptorBufferOffset destinationOffset:objc_msgSend(v7 size:{"instanceDescriptorBuffer"), instanceDescriptorBufferOffset, objc_msgSend(descriptor, "maxInstanceCount") * objc_msgSend(descriptor, "instanceDescriptorStride")}];
    [blitCommandEncoder endEncoding];
    v11 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self psoWithFunctionName:@"unwrap_acceleration_structure_descriptor_buffer"];
    computeCommandEncoder = [(MTLToolsObject *)self->super.super.super._parent computeCommandEncoder];
    p_LegacySVResourceAndUsageList = &self->_LegacySVResourceAndUsageList;
    for (i = p_LegacySVResourceAndUsageList->__end_.__next_; i != p_LegacySVResourceAndUsageList; i = i->__end_.__next_)
    {
      [computeCommandEncoder useResource:i->__size_ usage:i[1].__end_.__prev_];
    }

    v23 = 0;
    instanceDescriptorStride = [descriptor instanceDescriptorStride];
    instanceDescriptorType = [descriptor instanceDescriptorType];
    if (instanceDescriptorType == 3)
    {
      v16 = 64;
    }

    else
    {
      if (instanceDescriptorType != 4)
      {
LABEL_10:
        maxInstanceCount = [descriptor maxInstanceCount];
        [computeCommandEncoder setComputePipelineState:v11];
        [computeCommandEncoder setBuffer:objc_msgSend(descriptor offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(descriptor, "instanceDescriptorBufferOffset"), 0}];
        [computeCommandEncoder setBuffer:objc_msgSend(v7 offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(v7, "instanceDescriptorBufferOffset"), 1}];
        [computeCommandEncoder setBytes:&instanceDescriptorStride length:8 atIndex:2];
        [computeCommandEncoder setBytes:&v23 length:8 atIndex:3];
        [computeCommandEncoder setBytes:&maxInstanceCount length:8 atIndex:4];
        v20 = vcvtpd_u64_f64(maxInstanceCount / [v11 maxTotalThreadsPerThreadgroup]);
        v21 = vdupq_n_s64(1uLL);
        maxTotalThreadsPerThreadgroup = [v11 maxTotalThreadsPerThreadgroup];
        v19 = v21;
        [computeCommandEncoder dispatchThreadgroups:&v20 threadsPerThreadgroup:&maxTotalThreadsPerThreadgroup];
        [computeCommandEncoder endEncoding];

        return v7;
      }

      v16 = 16;
    }

    v23 = v16;
    goto LABEL_10;
  }

  return descriptor;
}

- (id)createChildrenWrappersBufferWithInstanceDescriptorBuffer:(id)buffer maxInstanceCount:(unint64_t)count instanceCountBuffer:(id)countBuffer instanceCountBufferOffset:(unint64_t)offset instanceDescriptorStride:(unint64_t)stride instanceDescriptorBufferOffset:(unint64_t)bufferOffset instanceDescriptorType:(unint64_t)type accelerationStructureIDs:(id)self0
{
  device = [(MTLToolsObject *)self->super.super.super._parent device];
  computeCommandEncoder = [(MTLToolsObject *)self->super.super.super._parent computeCommandEncoder];
  v17 = [(MTLDevice *)device newBufferWithLength:8 * count options:0];
  v18 = 0;
  v32 = 0;
  strideCopy = stride;
  if (type > 1)
  {
    if (type != 2)
    {
      offsetCopy3 = offset;
      if (type != 3)
      {
        countBufferCopy3 = countBuffer;
        bufferCopy3 = buffer;
        bufferOffsetCopy3 = bufferOffset;
        if (type == 4)
        {
          v32 = 16;
          v18 = @"create_children_wrappers_buffer_from_indirect_descriptor";
        }

        goto LABEL_14;
      }

      v32 = 64;
      v18 = @"create_children_wrappers_buffer_from_indirect_descriptor";
LABEL_13:
      countBufferCopy3 = countBuffer;
      bufferCopy3 = buffer;
      bufferOffsetCopy3 = bufferOffset;
      goto LABEL_14;
    }

    v23 = 12;
LABEL_12:
    v32 = v23;
    v18 = @"create_children_wrappers_buffer";
    offsetCopy3 = offset;
    goto LABEL_13;
  }

  if (!type)
  {
    v23 = 60;
    goto LABEL_12;
  }

  offsetCopy3 = offset;
  countBufferCopy3 = countBuffer;
  bufferCopy3 = buffer;
  bufferOffsetCopy3 = bufferOffset;
  if (type == 1)
  {
    v32 = 60;
    v18 = @"create_children_wrappers_buffer";
  }

LABEL_14:
  v24 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self psoWithFunctionName:v18];
  [computeCommandEncoder setComputePipelineState:v24];
  [computeCommandEncoder setBuffer:bufferCopy3 offset:bufferOffsetCopy3 atIndex:0];
  [computeCommandEncoder setBuffer:v17 offset:0 atIndex:1];
  if (ds)
  {
    [computeCommandEncoder setBuffer:ds offset:0 atIndex:2];
  }

  [computeCommandEncoder setBytes:&strideCopy length:8 atIndex:3];
  [computeCommandEncoder setBytes:&v32 length:8 atIndex:4];
  [computeCommandEncoder setBuffer:countBufferCopy3 offset:offsetCopy3 atIndex:5];
  v30 = vcvtpd_u64_f64(count / [v24 maxTotalThreadsPerThreadgroup]);
  v31 = vdupq_n_s64(1uLL);
  maxTotalThreadsPerThreadgroup = [v24 maxTotalThreadsPerThreadgroup];
  v29 = v31;
  [computeCommandEncoder dispatchThreadgroups:&v30 threadsPerThreadgroup:&maxTotalThreadsPerThreadgroup];
  [computeCommandEncoder endEncoding];

  return v17;
}

- (id)createChildrenWrappersBufferWithIASDescriptor:(id)descriptor
{
  device = [(MTLToolsObject *)self->super.super.super._parent device];
  v6 = [objc_msgSend(descriptor "instancedAccelerationStructures")];
  v7 = [(MTLDevice *)device newBufferWithLength:8 * v6 options:0];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = [objc_msgSend(objc_msgSend(descriptor "instancedAccelerationStructures")];
      *([v7 contents] + 8 * i) = v9;
    }
  }

  instanceCount = [descriptor instanceCount];
  v10 = [(MTLDevice *)device newBufferWithBytes:&instanceCount length:8 options:0];
  instanceDescriptorBuffer = [descriptor instanceDescriptorBuffer];
  v12 = -[MTLLegacySVAccelerationStructureCommandEncoder createChildrenWrappersBufferWithInstanceDescriptorBuffer:maxInstanceCount:instanceCountBuffer:instanceCountBufferOffset:instanceDescriptorStride:instanceDescriptorBufferOffset:instanceDescriptorType:accelerationStructureIDs:](self, "createChildrenWrappersBufferWithInstanceDescriptorBuffer:maxInstanceCount:instanceCountBuffer:instanceCountBufferOffset:instanceDescriptorStride:instanceDescriptorBufferOffset:instanceDescriptorType:accelerationStructureIDs:", instanceDescriptorBuffer, instanceCount, v10, 0, [descriptor instanceDescriptorStride], objc_msgSend(descriptor, "instanceDescriptorBufferOffset"), objc_msgSend(descriptor, "instanceDescriptorType"), v7);

  return v12;
}

- (id)createChildrenWrappersBufferWithASDescriptor:(id)descriptor
{
  v5 = objc_opt_class();
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {
    if ([descriptor instanceCount])
    {
      v6 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self createChildrenWrappersBufferWithIASDescriptor:descriptor];
      goto LABEL_6;
    }

    return 0;
  }

  v7 = objc_opt_class();
  if (![v7 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v6 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self createChildrenWrappersBufferWithIndirectIASDescriptor:descriptor];
LABEL_6:
  v8 = v6;
  if (v6)
  {
    [(MTLLegacySVAccelerationStructureCommandEncoder *)self useResource:v6 usage:1];
  }

  return v8;
}

- (void)blitChildrenWrappersBufferAddress:(id)address toAccelerationStructure:(id)structure
{
  blitCommandEncoder = [(MTLToolsObject *)self->super.super.super._parent blitCommandEncoder];
  v10 = [(MTLDevice *)[(MTLToolsObject *)self->super.super.super._parent device] newInternalBufferWithLength:8 options:0];
  v8 = [objc_msgSend(address "baseObject")];
  *[v10 contents] = v8;
  debugBuf = [structure debugBuf];
  [structure setChildrenWrappersBuffer:address];
  [blitCommandEncoder copyFromInternalBuffer:v10 sourceOffset:0 toInternalBuffer:debugBuf destinationOffset:24 size:8];
  [blitCommandEncoder endEncoding];
}

- (void)blitChildrenWrappersBufferFromAcceleratrionStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  blitCommandEncoder = [(MTLToolsObject *)self->super.super.super._parent blitCommandEncoder];
  debugBuf = [structure debugBuf];
  debugBuf2 = [accelerationStructure debugBuf];
  [accelerationStructure setChildrenWrappersBuffer:{objc_msgSend(structure, "childrenWrappersBuffer")}];
  [blitCommandEncoder copyFromInternalBuffer:debugBuf sourceOffset:24 toInternalBuffer:debugBuf2 destinationOffset:24 size:8];
  [blitCommandEncoder endEncoding];
}

- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset
{
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  v11 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self createChildrenWrappersBufferWithASDescriptor:descriptor];
  v12 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self encodeUnwrapAccelerationStructureDescriptor:descriptor];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
  v13.receiver = self;
  v13.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v13 buildAccelerationStructure:structure descriptor:v12 scratchBuffer:buffer scratchBufferOffset:offset];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:descriptor toAccelerationStructure:structure];
  if (v11)
  {
    [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitChildrenWrappersBufferAddress:v11 toAccelerationStructure:structure];
  }

  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset
{
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  v13 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self createChildrenWrappersBufferWithASDescriptor:descriptor];
  v14 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self encodeUnwrapAccelerationStructureDescriptor:descriptor];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
  v15.receiver = self;
  v15.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v15 refitAccelerationStructure:structure descriptor:v14 destination:destination scratchBuffer:buffer scratchBufferOffset:offset];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  if (destination)
  {
    [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:descriptor toAccelerationStructure:destination];
    if (v13)
    {
      [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitChildrenWrappersBufferAddress:v13 toAccelerationStructure:destination];
    }
  }

  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options
{
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  v15 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self createChildrenWrappersBufferWithASDescriptor:descriptor];
  v16 = [(MTLLegacySVAccelerationStructureCommandEncoder *)self encodeUnwrapAccelerationStructureDescriptor:descriptor];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
  v17.receiver = self;
  v17.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v17 refitAccelerationStructure:structure descriptor:v16 destination:destination scratchBuffer:buffer scratchBufferOffset:offset options:options];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  if (destination)
  {
    [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:descriptor toAccelerationStructure:destination];
    if (v15)
    {
      [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitChildrenWrappersBufferAddress:v15 toAccelerationStructure:destination];
    }
  }

  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [MTLToolsAccelerationStructureCommandEncoder copyAccelerationStructure:sel_copyAccelerationStructure_toAccelerationStructure_ toAccelerationStructure:?];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructure:structure toAccelerationStructure:accelerationStructure];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitChildrenWrappersBufferFromAcceleratrionStructure:structure toAccelerationStructure:accelerationStructure];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeCompactedAccelerationStructureSize:size toBuffer:buffer offset:offset];
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset sizeDataType:(unint64_t)type
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v6 writeCompactedAccelerationStructureSize:size toBuffer:buffer offset:offset sizeDataType:type];
}

- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [MTLToolsAccelerationStructureCommandEncoder copyAndCompactAccelerationStructure:sel_copyAndCompactAccelerationStructure_toAccelerationStructure_ toAccelerationStructure:?];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructure:structure toAccelerationStructure:accelerationStructure];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitChildrenWrappersBufferFromAcceleratrionStructure:structure toAccelerationStructure:accelerationStructure];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeSerializedAccelerationStructureSize:size toBuffer:buffer sizeBufferOffset:offset];
}

- (void)writeDeserializedAccelerationStructureSize:(id)size serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizeBufferOffset:(unint64_t)bufferOffset
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v6 writeDeserializedAccelerationStructureSize:size serializedOffset:offset toBuffer:buffer sizeBufferOffset:bufferOffset];
}

- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)sizes serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizesBufferOffset:(unint64_t)bufferOffset
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v6 writeDeserializedPrimitiveAccelerationStructureSizes:sizes serializedOffset:offset toBuffer:buffer sizesBufferOffset:bufferOffset];
}

- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 serializePrimitiveAccelerationStructure:structure toBuffer:buffer serializedBufferOffset:offset];
}

- (void)serializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v6 serializeInstanceAccelerationStructure:structure primitiveAccelerationStructures:structures toBuffer:buffer serializedBufferOffset:offset];
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v7 deserializePrimitiveAccelerationStructure:structure fromBuffer:buffer serializedBufferOffset:offset];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitPrimitiveTypetoAccelerationStructure:structure];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v8 deserializeInstanceAccelerationStructure:structure primitiveAccelerationStructures:structures fromBuffer:buffer serializedBufferOffset:offset];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitInstanceTypetoAccelerationStructure:structure];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor
{
  v9.receiver = self;
  v9.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v9 deserializePrimitiveAccelerationStructure:structure fromBuffer:buffer serializedBufferOffset:offset withDescriptor:?];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:descriptor toAccelerationStructure:structure];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor
{
  v10.receiver = self;
  v10.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v10 deserializeInstanceAccelerationStructure:structure primitiveAccelerationStructures:structures fromBuffer:buffer serializedBufferOffset:offset withDescriptor:?];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:descriptor toAccelerationStructure:structure];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)serializeAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 serializeAccelerationStructure:structure toBuffer:buffer serializedBufferOffset:offset];
}

- (void)deserializeAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v7 deserializeAccelerationStructure:structure fromBuffer:buffer serializedBufferOffset:offset];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitPrimitiveTypetoAccelerationStructure:structure];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)deserializeAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v8 deserializeInstanceAccelerationStructure:structure primitiveAccelerationStructures:structures fromBuffer:buffer serializedBufferOffset:offset];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self destroyBaseAccelerationStructureCommandEncoder];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self blitInstanceTypetoAccelerationStructure:structure];
  [(MTLLegacySVAccelerationStructureCommandEncoder *)self newBaseAccelerationStructureCommandEncoder];
}

- (void)writeGeometrySizeOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeGeometrySizeOfAccelerationStructure:structure toBuffer:buffer sizeBufferOffset:offset];
}

- (void)writeGeometryOfAccelerationStructure:(id)structure toBuffer:(id)buffer geometryBufferOffset:(unint64_t)offset
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeGeometryOfAccelerationStructure:structure toBuffer:buffer geometryBufferOffset:offset];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  return [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeGenericBVHStructureSizesOfAccelerationStructure:structure into:into];
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  return [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeGenericBVHStructureOfAccelerationStructure:structure into:into];
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizesBufferOffset:(unint64_t)offset
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeGenericBVHStructureSizesOfAccelerationStructure:structure toBuffer:buffer sizesBufferOffset:offset];
}

- (void)writeGenericBVHStructureOfAccelerationStructure:(id)structure headerBuffer:(id)buffer headerBufferOffset:(unint64_t)offset innerNodeBuffer:(id)nodeBuffer innerNodeBufferOffset:(unint64_t)bufferOffset leafNodeBuffer:(id)leafNodeBuffer leafNodeBufferOffset:(unint64_t)nodeBufferOffset primitiveBuffer:(id)self0 primitiveBufferOffset:(unint64_t)self1 geometryBuffer:(id)self2 geometryOffset:(unint64_t)self3 instanceTransformBuffer:(id)self4 instanceTransformOffset:(unint64_t)self5
{
  v15.receiver = self;
  v15.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLLegacySVAccelerationStructureCommandEncoder *)&v15 writeGenericBVHStructureOfAccelerationStructure:structure headerBuffer:buffer headerBufferOffset:offset innerNodeBuffer:nodeBuffer innerNodeBufferOffset:bufferOffset leafNodeBuffer:leafNodeBuffer leafNodeBufferOffset:nodeBufferOffset primitiveBuffer:primitiveBuffer primitiveBufferOffset:primitiveBufferOffset geometryBuffer:geometryBuffer geometryOffset:geometryOffset instanceTransformBuffer:transformBuffer instanceTransformOffset:transformOffset];
}

- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(id)buffer offset:(unint64_t)offset
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVAccelerationStructureCommandEncoder;
  [(MTLToolsAccelerationStructureCommandEncoder *)&v5 writeAccelerationStructureSerializationData:data toBuffer:buffer offset:offset];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  if (count)
  {
    countCopy = count;
    do
    {
      v9 = *resources++;
      [(MTLLegacySVAccelerationStructureCommandEncoder *)self useResource:v9 usage:usage];
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  if (count)
  {
    countCopy = count;
    do
    {
      v7 = *heaps++;
      [(MTLLegacySVAccelerationStructureCommandEncoder *)self useHeap:v7];
      --countCopy;
    }

    while (countCopy);
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