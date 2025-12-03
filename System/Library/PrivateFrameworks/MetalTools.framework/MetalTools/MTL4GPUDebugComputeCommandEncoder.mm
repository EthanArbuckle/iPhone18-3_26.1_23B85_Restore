@interface MTL4GPUDebugComputeCommandEncoder
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (MTL4GPUDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer encoderID:(unsigned int)d;
- (id)createChildrenWrappersBufferWithASDescriptor:(id)descriptor;
- (id)createChildrenWrappersBufferWithIASDescriptor:(id)descriptor;
- (id)createChildrenWrappersBufferWithIndirectIASDescriptor:(id)descriptor;
- (id)createChildrenWrappersBufferWithInstanceDescriptorBufferRange:(MTL4BufferRange)range maxInstanceCount:(unint64_t)count instanceCountBufferRange:(MTL4BufferRange)bufferRange instanceDescriptorStride:(unint64_t)stride instanceDescriptorType:(unint64_t)type;
- (id)encodeUnwrapAccelerationStructureDescriptor:(id)descriptor;
- (id)encodeUnwrapWithIASDescriptor:(id)descriptor;
- (id)encodeUnwrapWithIndirectIASDescriptor:(id)descriptor;
- (id)newComputePipelineStateWithFunctionName:(id)name;
- (id)temporaryBufferWithBytes:(const void *)bytes length:(unint64_t)length;
- (id)temporaryBufferWithLength:(unint64_t)length;
- (unint64_t)nextVirtualSubstream;
- (void)beginVirtualSubstream;
- (void)bindInternalBuffer:(id)buffer index:(unint64_t)index;
- (void)bindInternalBufferWithOffset:(id)offset offset:(unint64_t)a4 index:(unint64_t)index;
- (void)blitAccelerationStructureType:(unint64_t)type toAccelerationStructure:(id)structure;
- (void)blitChildrenWrappersBufferAddress:(id)address toAccelerationStructure:(id)structure;
- (void)blitChildrenWrappersBufferFromAcceleratrionStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)blitTypeFromAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)blitTypeFromAccelerationStructureDescriptor:(id)descriptor toAccelerationStructure:(id)structure;
- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(MTL4BufferRange)buffer;
- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures fromBuffer:(MTL4BufferRange)buffer;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(MTL4BufferRange)buffer;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer;
- (void)encodeCopyAndUnwrapChildrenWithInstanceDescriptorBufferRange:(MTL4BufferRange)range dstInstanceDescriptorBufferRange:(MTL4BufferRange)bufferRange instanceDescriptorStride:(unint64_t)stride instanceIDOffset:(unint64_t)offset maxInstanceCount:(unint64_t)count;
- (void)encodeStartDoWhile;
- (void)endEncoding;
- (void)endVirtualSubstream;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)flushBindings;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options;
- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)setArgumentTable:(id)table;
- (void)setBufferUsageTable:(id)table textureUsageTable:(id)usageTable;
- (void)setComputePipelineState:(id)state;
- (void)setComputePipelineStateBuffers:(id)buffers;
- (void)setInternalBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)waitForVirtualSubstream:(unint64_t)substream;
@end

@implementation MTL4GPUDebugComputeCommandEncoder

- (MTL4GPUDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer encoderID:(unsigned int)d
{
  v10.receiver = self;
  v10.super_class = MTL4GPUDebugComputeCommandEncoder;
  v6 = [(MTL4ToolsCommandEncoder *)&v10 initWithCommandEncoder:encoder commandBuffer:buffer];
  v7 = v6;
  if (v6)
  {
    p_deviceWrapper = &v6->super.super.super._device[2]._deviceWrapper;
    v6->_options = p_deviceWrapper;
    v6->_dispatchID.encoderID = d;
    v6->_dispatchID.eventID = 0;
    LOBYTE(v6->_commandBufferJumpNestingLevel) = (*(p_deviceWrapper + 20) & 0x200000001) != 0;
    v6->_accelerationStructureSupportLibrary = -[MTLToolsDevice newLibraryWithURL:error:](v6->super.super.super._device, "newLibraryWithURL:error:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.gpusw.MetalTools", "URLForResource:withExtension:", @"MTLGPUDebugAccelerationStructureSupport", @"metallib"}], 0);
  }

  return v7;
}

- (id)temporaryBufferWithBytes:(const void *)bytes length:(unint64_t)length
{
  commandBuffer = [(MTL4ToolsCommandEncoder *)self commandBuffer];

  return [(MTL4CommandBuffer *)commandBuffer temporaryBufferWithBytes:bytes length:length];
}

- (id)temporaryBufferWithLength:(unint64_t)length
{
  commandBuffer = [(MTL4ToolsCommandEncoder *)self commandBuffer];

  return [(MTL4CommandBuffer *)commandBuffer temporaryBufferWithLength:length];
}

- (void)bindInternalBufferWithOffset:(id)offset offset:(unint64_t)a4 index:(unint64_t)index
{
  v7 = [offset gpuAddress] + a4;

  [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalValue:v7 index:index];
}

- (void)bindInternalBuffer:(id)buffer index:(unint64_t)index
{
  if (buffer)
  {
    gpuAddress = [buffer gpuAddress];

    [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalValue:gpuAddress index:index];
  }
}

- (void)setInternalBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v7 = [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] temporaryBufferWithBytes:bytes length:length];

  [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalBuffer:v7 index:index];
}

- (void)setBufferUsageTable:(id)table textureUsageTable:(id)usageTable
{
  [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalBuffer:table index:5];

  [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalBuffer:usageTable index:6];
}

- (void)flushBindings
{
  commandBuffer = [(MTL4ToolsCommandEncoder *)self commandBuffer];
  [(MTL4CommandBuffer *)commandBuffer setNumDispatches:[(MTL4CommandBuffer *)commandBuffer numDispatches]+ 1];
  v4 = *&self->_options->var0 & 0x7000000;
  activeThreadgroupMask = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] activeThreadgroupMask];
  threadgroupArgumentOffset = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] threadgroupArgumentOffset];
  if (v4 && self->_threadgroup.needsFlush)
  {
    v10 = activeThreadgroupMask;
    v7 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_threadgroup, &v10, threadgroupArgumentOffset);
    if (v7)
    {
      v8 = v7;
      [(MTL4GPUDebugComputeCommandEncoder *)self setInternalBytes:self->_threadgroup.entries length:256 atIndex:4];
      if (activeThreadgroupMask)
      {
        [(MTLToolsObject *)self->super.super.super._baseObject setThreadgroupMemoryLength:v8 atIndex:__clz(__rbit32(activeThreadgroupMask))];
      }
    }

    self->_threadgroup.needsFlush = 0;
  }

  if ((*&self->_options->var0 & 0x200000001) != 0)
  {
    [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] encodeResourceTableBuffers:self type:2];
  }

  [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalBuffer:self->super.super.super._device[3].samplerObjectCache index:21];
  [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalBuffer:*&self->super.super.super._device[3]._integrated index:7];
  [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalBuffer:[(MTL4GPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&self->_dispatchID length:24] index:3];
  v9 = 0;
  [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalBuffer:[(MTL4GPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&v9 length:4] index:24];
  -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:", [-[MTL4GPUDebugComputeCommandEncoder temporaryBufferWithBytes:length:](self temporaryBufferWithBytes:self->_internalBindingTable length:{320), "gpuAddress"}], 0);
  ++self->_dispatchID.eventID;
}

- (void)setComputePipelineStateBuffers:(id)buffers
{
  v17 = *MEMORY[0x277D85DE8];
  if ([buffers globalConstantsBuffer])
  {
    -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [objc_msgSend(buffers "globalConstantsBuffer")]);
    if ((*&self->_options->var0 & 0x200000001) != 0)
    {
      -[MTL4CommandBuffer markBuffer:usage:stages:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "markBuffer:usage:stages:", [buffers globalConstantsBuffer], 3, 1);
    }

    -[MTL4GPUDebugComputeCommandEncoder bindInternalBufferWithOffset:offset:index:](self, "bindInternalBufferWithOffset:offset:index:", [buffers globalConstantsBuffer], objc_msgSend(buffers, "constantOffset"), 12);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  binaryFunctionData = [buffers binaryFunctionData];
  v6 = [binaryFunctionData countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(binaryFunctionData);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (*(v10 + 8))
        {
          if ((*&self->_options->var0 & 0x200000001) != 0)
          {
            [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] markBuffer:*(v10 + 8) usage:3 stages:1];
          }

          -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [*(v10 + 8) baseObject]);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [binaryFunctionData countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  [(MTL4GPUDebugComputeCommandEncoder *)self flushBindings];
  v9 = *threads;
  v8 = *threadgroup;
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 dispatchThreads:&v9 threadsPerThreadgroup:&v8];
}

- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer
{
  [(MTL4GPUDebugComputeCommandEncoder *)self flushBindings];
  v5.receiver = self;
  v5.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v5 dispatchThreadsWithIndirectBuffer:buffer];
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  [(MTL4GPUDebugComputeCommandEncoder *)self flushBindings];
  v9 = *threadgroups;
  v8 = *threadgroup;
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 dispatchThreadgroups:&v9 threadsPerThreadgroup:&v8];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup
{
  [(MTL4GPUDebugComputeCommandEncoder *)self flushBindings];
  v8 = *threadgroup;
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 dispatchThreadgroupsWithIndirectBuffer:buffer threadsPerThreadgroup:&v8];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  if ((*(&self->_options->var0 + 3) & 7) != 0)
  {
    p_threadgroup = &self->_threadgroup;

    MTLGPUDebugThreadgroupLengths::setThreadgroupMemoryLength(p_threadgroup, length, index);
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = MTL4GPUDebugComputeCommandEncoder;
    [(MTL4ToolsComputeCommandEncoder *)&v7 setThreadgroupMemoryLength:length atIndex:index];
  }
}

- (void)useResidencySet:(id)set
{
  if ((*&self->_options->var0 & 0x200000001) != 0)
  {
    [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] addResidencySetGPUDebug:set fromEncoder:self];
  }

  v5.receiver = self;
  v5.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4GPUDebugComputeCommandEncoder *)&v5 useResidencySet:set];
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  if ((*&self->_options->var0 & 0x200000001) != 0 && count != 0)
  {
    setsCopy = sets;
    countCopy = count;
    do
    {
      v10 = *setsCopy++;
      [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] addResidencySetGPUDebug:v10 fromEncoder:self];
      --countCopy;
    }

    while (countCopy);
  }

  v11.receiver = self;
  v11.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4GPUDebugComputeCommandEncoder *)&v11 useResidencySets:sets count:count];
}

- (void)setComputePipelineState:(id)state
{
  self->_dispatchID.pipelineStateID = state;
  self->_dispatchID.entryPointImageID = [state kernelFunctionData];
  if (self->_currentPipeline != state)
  {
    self->_threadgroup.needsFlush = 1;
  }

  if ((*(&self->_options->var0 + 2) & 0x40) != 0)
  {
    [(MTL4GPUDebugComputeCommandEncoder *)self setComputePipelineStateBuffers:state];
  }

  self->_currentPipeline = state;
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] addUsedPipelineState:self->_currentPipeline];
  v5.receiver = self;
  v5.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v5 setComputePipelineState:state];
}

- (void)endEncoding
{
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] endingEncoder:self type:2];
  v3.receiver = self;
  v3.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 endEncoding];
}

- (void)setArgumentTable:(id)table
{
  self->currentArgumentTable = [table baseObject];
  v5.receiver = self;
  v5.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v5 setArgumentTable:table];
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9 = LODWORD(range.location) | (LODWORD(range.length) << 32);
  v10 = 1;
  PrepareExecuteIndirect(self, buffer, &v9);
  v8.receiver = self;
  v8.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v8 executeCommandsInBuffer:buffer withRange:location, length];
  if (self->_currentPipeline)
  {
    self->_currentPipeline = 0;
    [(MTL4GPUDebugComputeCommandEncoder *)self setComputePipelineState:?];
    self->_threadgroup.needsFlush = 1;
  }
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer
{
  v8[0] = indirectBuffer;
  v8[1] = 0;
  v9 = 0;
  PrepareExecuteIndirect(self, buffer, v8);
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 executeCommandsInBuffer:buffer indirectBuffer:indirectBuffer];
  if (self->_currentPipeline)
  {
    self->_currentPipeline = 0;
    [(MTL4GPUDebugComputeCommandEncoder *)self setComputePipelineState:?];
    self->_threadgroup.needsFlush = 1;
  }
}

- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = self->super.super.super._baseObject;
  baseObject = [buffer baseObject];

  [(MTLToolsObject *)baseObject resetCommandsInBuffer:baseObject withRange:location, length];
}

- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  if ([buffer internalICBBuffer])
  {
    commandByteStride = [buffer commandByteStride];
    v13 = commandByteStride * location + 16;
    v22 = commandByteStride * index + 16;
    indexCopy = index;
    v14 = commandByteStride * length;
    baseObject = self->super.super.super._baseObject;
    internalICBBuffer = [buffer internalICBBuffer];
    internalICBBuffer2 = [destination internalICBBuffer];
    v18 = v14;
    index = indexCopy;
    [(MTLToolsObject *)baseObject copyFromBuffer:internalICBBuffer sourceOffset:v13 toBuffer:internalICBBuffer2 destinationOffset:v22 size:v18];
  }

  v19 = self->super.super.super._baseObject;
  baseObject = [buffer baseObject];
  baseObject2 = [destination baseObject];

  [(MTLToolsObject *)v19 copyIndirectCommandBuffer:baseObject sourceRange:location destination:length destinationIndex:baseObject2, index];
}

- (id)newComputePipelineStateWithFunctionName:(id)name
{
  v5 = objc_opt_new();
  [v5 setLibrary:self->_accelerationStructureSupportLibrary];
  [v5 setName:name];
  v6 = objc_opt_new();
  [v6 setComputeFunctionDescriptor:v5];
  v7 = objc_opt_new();
  v8 = [(MTLToolsDevice *)self->super.super.super._device newCompilerWithDescriptor:v7 error:0];
  v9 = [v8 newComputePipelineStateWithDescriptor:v6 compilerTaskOptions:0 error:0];

  return v9;
}

- (id)createChildrenWrappersBufferWithInstanceDescriptorBufferRange:(MTL4BufferRange)range maxInstanceCount:(unint64_t)count instanceCountBufferRange:(MTL4BufferRange)bufferRange instanceDescriptorStride:(unint64_t)stride instanceDescriptorType:(unint64_t)type
{
  var0 = bufferRange.var0;
  v10 = range.var0;
  v12 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:8 * count options:0];
  [v12 setLabel:@"dst_buffer"];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v12 baseObject]);
  v24 = 0;
  strideCopy = stride;
  if (type <= 1)
  {
    if (type <= 1)
    {
      v13 = 60;
      goto LABEL_10;
    }
  }

  else
  {
    switch(type)
    {
      case 2uLL:
        v13 = 12;
        goto LABEL_10;
      case 3uLL:
        v13 = 64;
        goto LABEL_10;
      case 4uLL:
        v13 = 16;
LABEL_10:
        v24 = v13;
        break;
    }
  }

  v14 = [(MTL4GPUDebugComputeCommandEncoder *)self newComputePipelineStateWithFunctionName:@"create_children_wrappers_buffer_from_indirect_descriptor"];
  [(MTL4GPUDebugComputeCommandEncoder *)self setComputePipelineState:v14];
  v15 = objc_alloc(MEMORY[0x277CD6AB8]);
  [v15 setInitializeBindings:1];
  [v15 setMaxBufferBindCount:31];
  v16 = [-[MTLToolsObject baseObject](self->super.super.super._device "baseObject")];

  v17 = [(MTL4GPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&strideCopy length:8];
  [v17 setLabel:@"instance_stride"];
  v18 = [(MTL4GPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&v24 length:8];
  [v18 setLabel:@"instance_offset"];
  [v16 setAddress:v10 atIndex:0];
  [v16 setAddress:objc_msgSend(v12 atIndex:{"gpuAddress"), 1}];
  [v16 setAddress:objc_msgSend(v17 atIndex:{"gpuAddress"), 3}];
  [v16 setAddress:objc_msgSend(v18 atIndex:{"gpuAddress"), 4}];
  [v16 setAddress:var0 atIndex:5];
  [(MTLToolsObject *)self->super.super.super._baseObject setArgumentTable:v16];
  v22 = vcvtpd_u64_f64(count / [v14 maxTotalThreadsPerThreadgroup]);
  v23 = vdupq_n_s64(1uLL);
  maxTotalThreadsPerThreadgroup = [v14 maxTotalThreadsPerThreadgroup];
  v21 = v23;
  [(MTL4GPUDebugComputeCommandEncoder *)self dispatchThreadgroups:&v22 threadsPerThreadgroup:&maxTotalThreadsPerThreadgroup];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x8000000 beforeEncoderStages:939524096 visibilityOptions:1];

  return v12;
}

- (id)createChildrenWrappersBufferWithIASDescriptor:(id)descriptor
{
  instanceCount = [descriptor instanceCount];
  v5 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithBytes:&instanceCount length:8 options:0];
  [v5 setLabel:@"instance_count"];
  gpuAddress = [v5 gpuAddress];
  v7 = [v5 length];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v5 baseObject]);
  commandBuffer = [(MTL4ToolsCommandEncoder *)self commandBuffer];
  instanceDescriptorBuffer = [descriptor instanceDescriptorBuffer];
  [(MTL4CommandBuffer *)commandBuffer setResidencyForBufferRange:instanceDescriptorBuffer, v10];
  instanceDescriptorBuffer2 = [descriptor instanceDescriptorBuffer];
  v13 = -[MTL4GPUDebugComputeCommandEncoder createChildrenWrappersBufferWithInstanceDescriptorBufferRange:maxInstanceCount:instanceCountBufferRange:instanceDescriptorStride:instanceDescriptorType:](self, "createChildrenWrappersBufferWithInstanceDescriptorBufferRange:maxInstanceCount:instanceCountBufferRange:instanceDescriptorStride:instanceDescriptorType:", instanceDescriptorBuffer2, v12, instanceCount, gpuAddress, v7, [descriptor instanceDescriptorStride], objc_msgSend(descriptor, "instanceDescriptorType"));

  return v13;
}

- (id)createChildrenWrappersBufferWithIndirectIASDescriptor:(id)descriptor
{
  commandBuffer = [(MTL4ToolsCommandEncoder *)self commandBuffer];
  instanceDescriptorBuffer = [descriptor instanceDescriptorBuffer];
  [(MTL4CommandBuffer *)commandBuffer setResidencyForBufferRange:instanceDescriptorBuffer, v7];
  commandBuffer2 = [(MTL4ToolsCommandEncoder *)self commandBuffer];
  instanceCountBuffer = [descriptor instanceCountBuffer];
  [(MTL4CommandBuffer *)commandBuffer2 setResidencyForBufferRange:instanceCountBuffer, v10];
  instanceDescriptorBuffer2 = [descriptor instanceDescriptorBuffer];
  v13 = v12;
  maxInstanceCount = [descriptor maxInstanceCount];
  instanceCountBuffer2 = [descriptor instanceCountBuffer];
  return -[MTL4GPUDebugComputeCommandEncoder createChildrenWrappersBufferWithInstanceDescriptorBufferRange:maxInstanceCount:instanceCountBufferRange:instanceDescriptorStride:instanceDescriptorType:](self, "createChildrenWrappersBufferWithInstanceDescriptorBufferRange:maxInstanceCount:instanceCountBufferRange:instanceDescriptorStride:instanceDescriptorType:", instanceDescriptorBuffer2, v13, maxInstanceCount, instanceCountBuffer2, v16, [descriptor instanceDescriptorStride], objc_msgSend(descriptor, "instanceDescriptorType"));
}

- (id)createChildrenWrappersBufferWithASDescriptor:(id)descriptor
{
  v5 = objc_opt_class();
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {
    if ([descriptor instanceCount])
    {
      v6 = [(MTL4GPUDebugComputeCommandEncoder *)self createChildrenWrappersBufferWithIASDescriptor:descriptor];
      goto LABEL_6;
    }

    return 0;
  }

  v7 = objc_opt_class();
  if (![v7 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v6 = [(MTL4GPUDebugComputeCommandEncoder *)self createChildrenWrappersBufferWithIndirectIASDescriptor:descriptor];
LABEL_6:
  v8 = v6;
  if (v6)
  {
    -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v6 baseObject]);
  }

  return v8;
}

- (void)encodeCopyAndUnwrapChildrenWithInstanceDescriptorBufferRange:(MTL4BufferRange)range dstInstanceDescriptorBufferRange:(MTL4BufferRange)bufferRange instanceDescriptorStride:(unint64_t)stride instanceIDOffset:(unint64_t)offset maxInstanceCount:(unint64_t)count
{
  var0 = bufferRange.var0;
  v10 = range.var0;
  v12 = [(MTL4GPUDebugComputeCommandEncoder *)self newComputePipelineStateWithFunctionName:@"unwrap_acceleration_structure_descriptor_buffer", range.var1, bufferRange.var0, bufferRange.var1];
  [(MTL4GPUDebugComputeCommandEncoder *)self setComputePipelineState:v12];
  v13 = objc_alloc(MEMORY[0x277CD6AB8]);
  [v13 setInitializeBindings:1];
  [v13 setMaxBufferBindCount:31];
  v14 = [-[MTLToolsObject baseObject](self->super.super.super._device "baseObject")];

  offsetCopy = offset;
  strideCopy = stride;
  countCopy = count;
  v15 = [(MTL4GPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&strideCopy length:8];
  [v15 setLabel:@"instance_stride"];
  v16 = [(MTL4GPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&offsetCopy length:8];
  [v16 setLabel:@"instance_offset"];
  v17 = [(MTL4GPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&countCopy length:8];
  [v17 setLabel:@"instance_count"];
  [v14 setAddress:v10 atIndex:0];
  [v14 setAddress:var0 atIndex:1];
  [v14 setAddress:objc_msgSend(v15 atIndex:{"gpuAddress"), 2}];
  [v14 setAddress:objc_msgSend(v16 atIndex:{"gpuAddress"), 3}];
  [v14 setAddress:objc_msgSend(v17 atIndex:{"gpuAddress"), 4}];
  [(MTLToolsObject *)self->super.super.super._baseObject setArgumentTable:v14];
  v20 = vcvtpd_u64_f64(count / [v12 maxTotalThreadsPerThreadgroup]);
  v21 = vdupq_n_s64(1uLL);
  maxTotalThreadsPerThreadgroup = [v12 maxTotalThreadsPerThreadgroup];
  v19 = v21;
  [(MTL4GPUDebugComputeCommandEncoder *)self dispatchThreadgroups:&v20 threadsPerThreadgroup:&maxTotalThreadsPerThreadgroup];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x8000000 beforeEncoderStages:939524096 visibilityOptions:1];
}

- (id)encodeUnwrapWithIASDescriptor:(id)descriptor
{
  v5 = [descriptor copy];
  device = self->super.super.super._device;
  [descriptor instanceDescriptorBuffer];
  v8 = [(MTLToolsDevice *)device newBufferWithLength:v7 options:0];
  [v8 setLabel:@"dst_descriptor_buffer"];
  [v5 setInstanceDescriptorBuffer:{objc_msgSend(v8, "gpuAddress"), objc_msgSend(v8, "length")}];
  instanceDescriptorBuffer = [descriptor instanceDescriptorBuffer];
  v11 = [(MTL4GPUDebugComputeCommandEncoder *)self retrieveBufferFromBufferRange:instanceDescriptorBuffer, v10];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v8 baseObject]);
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v11 baseObject]);
  [descriptor instanceDescriptorBuffer];
  [(MTL4ToolsComputeCommandEncoder *)self copyFromBuffer:v11 sourceOffset:0 toBuffer:v8 destinationOffset:0 size:v12];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x10000000 beforeEncoderStages:939524096 visibilityOptions:1];
  instanceDescriptorType = [descriptor instanceDescriptorType];
  v14 = 0;
  if (instanceDescriptorType <= 4)
  {
    v14 = *&asc_22E27C0B0[8 * instanceDescriptorType];
  }

  instanceDescriptorBuffer2 = [descriptor instanceDescriptorBuffer];
  v17 = v16;
  instanceDescriptorBuffer3 = [v5 instanceDescriptorBuffer];
  -[MTL4GPUDebugComputeCommandEncoder encodeCopyAndUnwrapChildrenWithInstanceDescriptorBufferRange:dstInstanceDescriptorBufferRange:instanceDescriptorStride:instanceIDOffset:maxInstanceCount:](self, "encodeCopyAndUnwrapChildrenWithInstanceDescriptorBufferRange:dstInstanceDescriptorBufferRange:instanceDescriptorStride:instanceIDOffset:maxInstanceCount:", instanceDescriptorBuffer2, v17, instanceDescriptorBuffer3, v19, [descriptor instanceDescriptorStride], v14, objc_msgSend(descriptor, "instanceCount"));
  return v5;
}

- (id)encodeUnwrapWithIndirectIASDescriptor:(id)descriptor
{
  v5 = [descriptor copy];
  device = self->super.super.super._device;
  [descriptor instanceDescriptorBuffer];
  v8 = [(MTLToolsDevice *)device newBufferWithLength:v7 options:0];
  [v8 setLabel:@"dst_descriptor_buffer"];
  [v5 setInstanceDescriptorBuffer:{objc_msgSend(v8, "gpuAddress"), objc_msgSend(v8, "length")}];
  instanceDescriptorBuffer = [descriptor instanceDescriptorBuffer];
  v11 = [(MTL4GPUDebugComputeCommandEncoder *)self retrieveBufferFromBufferRange:instanceDescriptorBuffer, v10];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v8 baseObject]);
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v11 baseObject]);
  [descriptor instanceDescriptorBuffer];
  [(MTL4ToolsComputeCommandEncoder *)self copyFromBuffer:v11 sourceOffset:0 toBuffer:v8 destinationOffset:0 size:v12];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x10000000 beforeEncoderStages:939524096 visibilityOptions:1];
  instanceDescriptorType = [descriptor instanceDescriptorType];
  v14 = 0;
  if (instanceDescriptorType <= 4)
  {
    v14 = *&asc_22E27C0B0[8 * instanceDescriptorType];
  }

  instanceDescriptorBuffer2 = [descriptor instanceDescriptorBuffer];
  v17 = v16;
  instanceDescriptorBuffer3 = [v5 instanceDescriptorBuffer];
  -[MTL4GPUDebugComputeCommandEncoder encodeCopyAndUnwrapChildrenWithInstanceDescriptorBufferRange:dstInstanceDescriptorBufferRange:instanceDescriptorStride:instanceIDOffset:maxInstanceCount:](self, "encodeCopyAndUnwrapChildrenWithInstanceDescriptorBufferRange:dstInstanceDescriptorBufferRange:instanceDescriptorStride:instanceIDOffset:maxInstanceCount:", instanceDescriptorBuffer2, v17, instanceDescriptorBuffer3, v19, [descriptor instanceDescriptorStride], v14, objc_msgSend(descriptor, "maxInstanceCount"));
  return v5;
}

- (id)encodeUnwrapAccelerationStructureDescriptor:(id)descriptor
{
  v5 = objc_opt_class();
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {

    return [(MTL4GPUDebugComputeCommandEncoder *)self encodeUnwrapWithIASDescriptor:descriptor];
  }

  else
  {
    v7 = objc_opt_class();
    if ([v7 isSubclassOfClass:objc_opt_class()])
    {

      return [(MTL4GPUDebugComputeCommandEncoder *)self encodeUnwrapWithIndirectIASDescriptor:descriptor];
    }

    else
    {
      return descriptor;
    }
  }
}

- (void)blitChildrenWrappersBufferAddress:(id)address toAccelerationStructure:(id)structure
{
  v9 = [(MTLToolsDevice *)self->super.super.super._device newInternalBufferWithLength:8 options:0];
  v7 = [objc_msgSend(address "baseObject")];
  *[v9 contents] = v7;
  debugBuf = [structure debugBuf];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [address baseObject]);
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:v9];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:debugBuf];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [structure baseObject]);
  [structure setChildrenWrappersBuffer:address];
  [(MTL4GPUDebugComputeCommandEncoder *)self copyFromInternalBuffer:v9 sourceOffset:0 toInternalBuffer:debugBuf destinationOffset:24 size:8];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x10000000 beforeEncoderStages:939524096 visibilityOptions:1];
}

- (void)blitChildrenWrappersBufferFromAcceleratrionStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  debugBuf = [structure debugBuf];
  debugBuf2 = [accelerationStructure debugBuf];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:debugBuf];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:debugBuf2];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [structure baseObject]);
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [accelerationStructure baseObject]);
  [accelerationStructure setChildrenWrappersBuffer:debugBuf];
  [(MTL4GPUDebugComputeCommandEncoder *)self copyFromInternalBuffer:debugBuf sourceOffset:0 toInternalBuffer:debugBuf2 destinationOffset:24 size:8];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x10000000 beforeEncoderStages:939524096 visibilityOptions:1];
}

- (void)blitAccelerationStructureType:(unint64_t)type toAccelerationStructure:(id)structure
{
  v8 = [(MTLToolsDevice *)self->super.super.super._device newInternalBufferWithLength:8 options:0];
  *[v8 contents] = type;
  debugBuf = [structure debugBuf];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:v8];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:debugBuf];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [structure baseObject]);
  [(MTL4GPUDebugComputeCommandEncoder *)self copyFromInternalBuffer:v8 sourceOffset:0 toInternalBuffer:debugBuf destinationOffset:16 size:8];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x10000000 beforeEncoderStages:939524096 visibilityOptions:1];
}

- (void)blitTypeFromAccelerationStructureDescriptor:(id)descriptor toAccelerationStructure:(id)structure
{
  v6 = MTL4AccelerationStructureTypeFromDescriptor();

  [(MTL4GPUDebugComputeCommandEncoder *)self blitAccelerationStructureType:v6 toAccelerationStructure:structure];
}

- (void)blitTypeFromAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  debugBuf = [structure debugBuf];
  debugBuf2 = [accelerationStructure debugBuf];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:debugBuf];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:debugBuf2];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [structure baseObject]);
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [accelerationStructure baseObject]);
  [(MTL4GPUDebugComputeCommandEncoder *)self copyFromInternalBuffer:debugBuf sourceOffset:16 toInternalBuffer:debugBuf2 destinationOffset:16 size:8];
  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject barrierAfterEncoderStages:0x10000000 beforeEncoderStages:939524096 visibilityOptions:1];
}

- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v10 = [(MTL4GPUDebugComputeCommandEncoder *)self createChildrenWrappersBufferWithASDescriptor:descriptor];
  v11.receiver = self;
  v11.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v11 buildAccelerationStructure:structure descriptor:[(MTL4GPUDebugComputeCommandEncoder *)self encodeUnwrapAccelerationStructureDescriptor:descriptor] scratchBuffer:var0, var1];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:descriptor toAccelerationStructure:structure];
  if (v10)
  {
    [(MTL4GPUDebugComputeCommandEncoder *)self blitChildrenWrappersBufferAddress:v10 toAccelerationStructure:structure];
  }
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v12 = [(MTL4GPUDebugComputeCommandEncoder *)self createChildrenWrappersBufferWithASDescriptor:descriptor];
  v13.receiver = self;
  v13.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v13 refitAccelerationStructure:structure descriptor:[(MTL4GPUDebugComputeCommandEncoder *)self encodeUnwrapAccelerationStructureDescriptor:descriptor] destination:destination scratchBuffer:var0, var1];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  if (destination)
  {
    [(MTL4GPUDebugComputeCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:descriptor toAccelerationStructure:destination];
    if (v12)
    {
      [(MTL4GPUDebugComputeCommandEncoder *)self blitChildrenWrappersBufferAddress:v12 toAccelerationStructure:destination];
    }
  }
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v14 = [(MTL4GPUDebugComputeCommandEncoder *)self createChildrenWrappersBufferWithASDescriptor:descriptor];
  v15.receiver = self;
  v15.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v15 refitAccelerationStructure:structure descriptor:[(MTL4GPUDebugComputeCommandEncoder *)self encodeUnwrapAccelerationStructureDescriptor:descriptor] destination:destination scratchBuffer:var0 options:var1, options];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  if (destination)
  {
    [(MTL4GPUDebugComputeCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:descriptor toAccelerationStructure:destination];
    if (v14)
    {
      [(MTL4GPUDebugComputeCommandEncoder *)self blitChildrenWrappersBufferAddress:v14 toAccelerationStructure:destination];
    }
  }
}

- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [MTL4ToolsComputeCommandEncoder copyAccelerationStructure:sel_copyAccelerationStructure_toAccelerationStructure_ toAccelerationStructure:?];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitTypeFromAccelerationStructure:structure toAccelerationStructure:accelerationStructure];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitChildrenWrappersBufferFromAcceleratrionStructure:structure toAccelerationStructure:accelerationStructure];
}

- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [MTL4ToolsComputeCommandEncoder copyAndCompactAccelerationStructure:sel_copyAndCompactAccelerationStructure_toAccelerationStructure_ toAccelerationStructure:?];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitTypeFromAccelerationStructure:structure toAccelerationStructure:accelerationStructure];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitChildrenWrappersBufferFromAcceleratrionStructure:structure toAccelerationStructure:accelerationStructure];
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(MTL4BufferRange)buffer
{
  v6.receiver = self;
  v6.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v6 deserializePrimitiveAccelerationStructure:structure fromBuffer:buffer.var0, buffer.var1];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitPrimitiveTypetoAccelerationStructure:structure];
}

- (void)deserializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures fromBuffer:(MTL4BufferRange)buffer
{
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 deserializeInstanceAccelerationStructure:structure referencedAccelerationStructures:structures fromBuffer:buffer.var0, buffer.var1];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitInstanceTypetoAccelerationStructure:structure];
}

- (void)encodeStartDoWhile
{
  v4.receiver = self;
  v4.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v4 encodeStartDoWhile];
  v3 = *(&self->_commandBufferJumpNestingLevel + 1);
  if (!v3)
  {
    if (self->_currentPipeline)
    {
      self->_currentPipeline = 0;
      [(MTL4GPUDebugComputeCommandEncoder *)self setComputePipelineState:?];
      self->_threadgroup.needsFlush = 1;
      v3 = *(&self->_commandBufferJumpNestingLevel + 1);
    }

    else
    {
      v3 = 0;
    }
  }

  *(&self->_commandBufferJumpNestingLevel + 1) = v3 + 1;
}

- (BOOL)encodeEndIf
{
  --*(&self->_commandBufferJumpNestingLevel + 1);
  v3.receiver = self;
  v3.super_class = MTL4GPUDebugComputeCommandEncoder;
  return [(MTL4ToolsComputeCommandEncoder *)&v3 encodeEndIf];
}

- (BOOL)encodeEndWhile
{
  --*(&self->_commandBufferJumpNestingLevel + 1);
  v3.receiver = self;
  v3.super_class = MTL4GPUDebugComputeCommandEncoder;
  return [(MTL4ToolsComputeCommandEncoder *)&v3 encodeEndWhile];
}

- (void)beginVirtualSubstream
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject beginVirtualSubstream];
}

- (unint64_t)nextVirtualSubstream
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject nextVirtualSubstream];
}

- (void)endVirtualSubstream
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endVirtualSubstream];
}

- (void)waitForVirtualSubstream:(unint64_t)substream
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject waitForVirtualSubstream:substream];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 dealloc];
}

@end