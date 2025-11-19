@interface MTL4GPUDebugComputeCommandEncoder
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (MTL4GPUDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 commandBuffer:(id)a4 encoderID:(unsigned int)a5;
- (id)createChildrenWrappersBufferWithASDescriptor:(id)a3;
- (id)createChildrenWrappersBufferWithIASDescriptor:(id)a3;
- (id)createChildrenWrappersBufferWithIndirectIASDescriptor:(id)a3;
- (id)createChildrenWrappersBufferWithInstanceDescriptorBufferRange:(MTL4BufferRange)a3 maxInstanceCount:(unint64_t)a4 instanceCountBufferRange:(MTL4BufferRange)a5 instanceDescriptorStride:(unint64_t)a6 instanceDescriptorType:(unint64_t)a7;
- (id)encodeUnwrapAccelerationStructureDescriptor:(id)a3;
- (id)encodeUnwrapWithIASDescriptor:(id)a3;
- (id)encodeUnwrapWithIndirectIASDescriptor:(id)a3;
- (id)newComputePipelineStateWithFunctionName:(id)a3;
- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4;
- (id)temporaryBufferWithLength:(unint64_t)a3;
- (unint64_t)nextVirtualSubstream;
- (void)beginVirtualSubstream;
- (void)bindInternalBuffer:(id)a3 index:(unint64_t)a4;
- (void)bindInternalBufferWithOffset:(id)a3 offset:(unint64_t)a4 index:(unint64_t)a5;
- (void)blitAccelerationStructureType:(unint64_t)a3 toAccelerationStructure:(id)a4;
- (void)blitChildrenWrappersBufferAddress:(id)a3 toAccelerationStructure:(id)a4;
- (void)blitChildrenWrappersBufferFromAcceleratrionStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)blitTypeFromAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)blitTypeFromAccelerationStructureDescriptor:(id)a3 toAccelerationStructure:(id)a4;
- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(MTL4BufferRange)a5;
- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 fromBuffer:(MTL4BufferRange)a5;
- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(MTL4BufferRange)a4;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)a3;
- (void)encodeCopyAndUnwrapChildrenWithInstanceDescriptorBufferRange:(MTL4BufferRange)a3 dstInstanceDescriptorBufferRange:(MTL4BufferRange)a4 instanceDescriptorStride:(unint64_t)a5 instanceIDOffset:(unint64_t)a6 maxInstanceCount:(unint64_t)a7;
- (void)encodeStartDoWhile;
- (void)endEncoding;
- (void)endVirtualSubstream;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)flushBindings;
- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6;
- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6 options:(unint64_t)a7;
- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)setArgumentTable:(id)a3;
- (void)setBufferUsageTable:(id)a3 textureUsageTable:(id)a4;
- (void)setComputePipelineState:(id)a3;
- (void)setComputePipelineStateBuffers:(id)a3;
- (void)setInternalBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)waitForVirtualSubstream:(unint64_t)a3;
@end

@implementation MTL4GPUDebugComputeCommandEncoder

- (MTL4GPUDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 commandBuffer:(id)a4 encoderID:(unsigned int)a5
{
  v10.receiver = self;
  v10.super_class = MTL4GPUDebugComputeCommandEncoder;
  v6 = [(MTL4ToolsCommandEncoder *)&v10 initWithCommandEncoder:a3 commandBuffer:a4];
  v7 = v6;
  if (v6)
  {
    p_deviceWrapper = &v6->super.super.super._device[2]._deviceWrapper;
    v6->_options = p_deviceWrapper;
    v6->_dispatchID.encoderID = a5;
    v6->_dispatchID.eventID = 0;
    LOBYTE(v6->_commandBufferJumpNestingLevel) = (*(p_deviceWrapper + 20) & 0x200000001) != 0;
    v6->_accelerationStructureSupportLibrary = -[MTLToolsDevice newLibraryWithURL:error:](v6->super.super.super._device, "newLibraryWithURL:error:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.gpusw.MetalTools", "URLForResource:withExtension:", @"MTLGPUDebugAccelerationStructureSupport", @"metallib"}], 0);
  }

  return v7;
}

- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v6 = [(MTL4ToolsCommandEncoder *)self commandBuffer];

  return [(MTL4CommandBuffer *)v6 temporaryBufferWithBytes:a3 length:a4];
}

- (id)temporaryBufferWithLength:(unint64_t)a3
{
  v4 = [(MTL4ToolsCommandEncoder *)self commandBuffer];

  return [(MTL4CommandBuffer *)v4 temporaryBufferWithLength:a3];
}

- (void)bindInternalBufferWithOffset:(id)a3 offset:(unint64_t)a4 index:(unint64_t)a5
{
  v7 = [a3 gpuAddress] + a4;

  [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalValue:v7 index:a5];
}

- (void)bindInternalBuffer:(id)a3 index:(unint64_t)a4
{
  if (a3)
  {
    v6 = [a3 gpuAddress];

    [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalValue:v6 index:a4];
  }
}

- (void)setInternalBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v7 = [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] temporaryBufferWithBytes:a3 length:a4];

  [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalBuffer:v7 index:a5];
}

- (void)setBufferUsageTable:(id)a3 textureUsageTable:(id)a4
{
  [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalBuffer:a3 index:5];

  [(MTL4GPUDebugComputeCommandEncoder *)self bindInternalBuffer:a4 index:6];
}

- (void)flushBindings
{
  v3 = [(MTL4ToolsCommandEncoder *)self commandBuffer];
  [(MTL4CommandBuffer *)v3 setNumDispatches:[(MTL4CommandBuffer *)v3 numDispatches]+ 1];
  v4 = *&self->_options->var0 & 0x7000000;
  v5 = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] activeThreadgroupMask];
  v6 = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] threadgroupArgumentOffset];
  if (v4 && self->_threadgroup.needsFlush)
  {
    v10 = v5;
    v7 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_threadgroup, &v10, v6);
    if (v7)
    {
      v8 = v7;
      [(MTL4GPUDebugComputeCommandEncoder *)self setInternalBytes:self->_threadgroup.entries length:256 atIndex:4];
      if (v5)
      {
        [(MTLToolsObject *)self->super.super.super._baseObject setThreadgroupMemoryLength:v8 atIndex:__clz(__rbit32(v5))];
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

- (void)setComputePipelineStateBuffers:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if ([a3 globalConstantsBuffer])
  {
    -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [objc_msgSend(a3 "globalConstantsBuffer")]);
    if ((*&self->_options->var0 & 0x200000001) != 0)
    {
      -[MTL4CommandBuffer markBuffer:usage:stages:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "markBuffer:usage:stages:", [a3 globalConstantsBuffer], 3, 1);
    }

    -[MTL4GPUDebugComputeCommandEncoder bindInternalBufferWithOffset:offset:index:](self, "bindInternalBufferWithOffset:offset:index:", [a3 globalConstantsBuffer], objc_msgSend(a3, "constantOffset"), 12);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 binaryFunctionData];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
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
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  [(MTL4GPUDebugComputeCommandEncoder *)self flushBindings];
  v9 = *a3;
  v8 = *a4;
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 dispatchThreads:&v9 threadsPerThreadgroup:&v8];
}

- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)a3
{
  [(MTL4GPUDebugComputeCommandEncoder *)self flushBindings];
  v5.receiver = self;
  v5.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v5 dispatchThreadsWithIndirectBuffer:a3];
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  [(MTL4GPUDebugComputeCommandEncoder *)self flushBindings];
  v9 = *a3;
  v8 = *a4;
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 dispatchThreadgroups:&v9 threadsPerThreadgroup:&v8];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerThreadgroup:(id *)a4
{
  [(MTL4GPUDebugComputeCommandEncoder *)self flushBindings];
  v8 = *a4;
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 dispatchThreadgroupsWithIndirectBuffer:a3 threadsPerThreadgroup:&v8];
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if ((*(&self->_options->var0 + 3) & 7) != 0)
  {
    p_threadgroup = &self->_threadgroup;

    MTLGPUDebugThreadgroupLengths::setThreadgroupMemoryLength(p_threadgroup, a3, a4);
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = MTL4GPUDebugComputeCommandEncoder;
    [(MTL4ToolsComputeCommandEncoder *)&v7 setThreadgroupMemoryLength:a3 atIndex:a4];
  }
}

- (void)useResidencySet:(id)a3
{
  if ((*&self->_options->var0 & 0x200000001) != 0)
  {
    [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] addResidencySetGPUDebug:a3 fromEncoder:self];
  }

  v5.receiver = self;
  v5.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4GPUDebugComputeCommandEncoder *)&v5 useResidencySet:a3];
}

- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4
{
  if ((*&self->_options->var0 & 0x200000001) != 0 && a4 != 0)
  {
    v8 = a3;
    v9 = a4;
    do
    {
      v10 = *v8++;
      [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] addResidencySetGPUDebug:v10 fromEncoder:self];
      --v9;
    }

    while (v9);
  }

  v11.receiver = self;
  v11.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4GPUDebugComputeCommandEncoder *)&v11 useResidencySets:a3 count:a4];
}

- (void)setComputePipelineState:(id)a3
{
  self->_dispatchID.pipelineStateID = a3;
  self->_dispatchID.entryPointImageID = [a3 kernelFunctionData];
  if (self->_currentPipeline != a3)
  {
    self->_threadgroup.needsFlush = 1;
  }

  if ((*(&self->_options->var0 + 2) & 0x40) != 0)
  {
    [(MTL4GPUDebugComputeCommandEncoder *)self setComputePipelineStateBuffers:a3];
  }

  self->_currentPipeline = a3;
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] addUsedPipelineState:self->_currentPipeline];
  v5.receiver = self;
  v5.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v5 setComputePipelineState:a3];
}

- (void)endEncoding
{
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] endingEncoder:self type:2];
  v3.receiver = self;
  v3.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 endEncoding];
}

- (void)setArgumentTable:(id)a3
{
  self->currentArgumentTable = [a3 baseObject];
  v5.receiver = self;
  v5.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v5 setArgumentTable:a3];
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = LODWORD(a4.location) | (LODWORD(a4.length) << 32);
  v10 = 1;
  PrepareExecuteIndirect(self, a3, &v9);
  v8.receiver = self;
  v8.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v8 executeCommandsInBuffer:a3 withRange:location, length];
  if (self->_currentPipeline)
  {
    self->_currentPipeline = 0;
    [(MTL4GPUDebugComputeCommandEncoder *)self setComputePipelineState:?];
    self->_threadgroup.needsFlush = 1;
  }
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4
{
  v8[0] = a4;
  v8[1] = 0;
  v9 = 0;
  PrepareExecuteIndirect(self, a3, v8);
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 executeCommandsInBuffer:a3 indirectBuffer:a4];
  if (self->_currentPipeline)
  {
    self->_currentPipeline = 0;
    [(MTL4GPUDebugComputeCommandEncoder *)self setComputePipelineState:?];
    self->_threadgroup.needsFlush = 1;
  }
}

- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  baseObject = self->super.super.super._baseObject;
  v7 = [a3 baseObject];

  [(MTLToolsObject *)baseObject resetCommandsInBuffer:v7 withRange:location, length];
}

- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6
{
  length = a4.length;
  location = a4.location;
  if ([a3 internalICBBuffer])
  {
    v12 = [a3 commandByteStride];
    v13 = v12 * location + 16;
    v22 = v12 * a6 + 16;
    v23 = a6;
    v14 = v12 * length;
    baseObject = self->super.super.super._baseObject;
    v16 = [a3 internalICBBuffer];
    v17 = [a5 internalICBBuffer];
    v18 = v14;
    a6 = v23;
    [(MTLToolsObject *)baseObject copyFromBuffer:v16 sourceOffset:v13 toBuffer:v17 destinationOffset:v22 size:v18];
  }

  v19 = self->super.super.super._baseObject;
  v20 = [a3 baseObject];
  v21 = [a5 baseObject];

  [(MTLToolsObject *)v19 copyIndirectCommandBuffer:v20 sourceRange:location destination:length destinationIndex:v21, a6];
}

- (id)newComputePipelineStateWithFunctionName:(id)a3
{
  v5 = objc_opt_new();
  [v5 setLibrary:self->_accelerationStructureSupportLibrary];
  [v5 setName:a3];
  v6 = objc_opt_new();
  [v6 setComputeFunctionDescriptor:v5];
  v7 = objc_opt_new();
  v8 = [(MTLToolsDevice *)self->super.super.super._device newCompilerWithDescriptor:v7 error:0];
  v9 = [v8 newComputePipelineStateWithDescriptor:v6 compilerTaskOptions:0 error:0];

  return v9;
}

- (id)createChildrenWrappersBufferWithInstanceDescriptorBufferRange:(MTL4BufferRange)a3 maxInstanceCount:(unint64_t)a4 instanceCountBufferRange:(MTL4BufferRange)a5 instanceDescriptorStride:(unint64_t)a6 instanceDescriptorType:(unint64_t)a7
{
  var0 = a5.var0;
  v10 = a3.var0;
  v12 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:8 * a4 options:0];
  [v12 setLabel:@"dst_buffer"];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v12 baseObject]);
  v24 = 0;
  v25 = a6;
  if (a7 <= 1)
  {
    if (a7 <= 1)
    {
      v13 = 60;
      goto LABEL_10;
    }
  }

  else
  {
    switch(a7)
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

  v17 = [(MTL4GPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&v25 length:8];
  [v17 setLabel:@"instance_stride"];
  v18 = [(MTL4GPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&v24 length:8];
  [v18 setLabel:@"instance_offset"];
  [v16 setAddress:v10 atIndex:0];
  [v16 setAddress:objc_msgSend(v12 atIndex:{"gpuAddress"), 1}];
  [v16 setAddress:objc_msgSend(v17 atIndex:{"gpuAddress"), 3}];
  [v16 setAddress:objc_msgSend(v18 atIndex:{"gpuAddress"), 4}];
  [v16 setAddress:var0 atIndex:5];
  [(MTLToolsObject *)self->super.super.super._baseObject setArgumentTable:v16];
  v22 = vcvtpd_u64_f64(a4 / [v14 maxTotalThreadsPerThreadgroup]);
  v23 = vdupq_n_s64(1uLL);
  v20 = [v14 maxTotalThreadsPerThreadgroup];
  v21 = v23;
  [(MTL4GPUDebugComputeCommandEncoder *)self dispatchThreadgroups:&v22 threadsPerThreadgroup:&v20];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x8000000 beforeEncoderStages:939524096 visibilityOptions:1];

  return v12;
}

- (id)createChildrenWrappersBufferWithIASDescriptor:(id)a3
{
  v15 = [a3 instanceCount];
  v5 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithBytes:&v15 length:8 options:0];
  [v5 setLabel:@"instance_count"];
  v6 = [v5 gpuAddress];
  v7 = [v5 length];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v5 baseObject]);
  v8 = [(MTL4ToolsCommandEncoder *)self commandBuffer];
  v9 = [a3 instanceDescriptorBuffer];
  [(MTL4CommandBuffer *)v8 setResidencyForBufferRange:v9, v10];
  v11 = [a3 instanceDescriptorBuffer];
  v13 = -[MTL4GPUDebugComputeCommandEncoder createChildrenWrappersBufferWithInstanceDescriptorBufferRange:maxInstanceCount:instanceCountBufferRange:instanceDescriptorStride:instanceDescriptorType:](self, "createChildrenWrappersBufferWithInstanceDescriptorBufferRange:maxInstanceCount:instanceCountBufferRange:instanceDescriptorStride:instanceDescriptorType:", v11, v12, v15, v6, v7, [a3 instanceDescriptorStride], objc_msgSend(a3, "instanceDescriptorType"));

  return v13;
}

- (id)createChildrenWrappersBufferWithIndirectIASDescriptor:(id)a3
{
  v5 = [(MTL4ToolsCommandEncoder *)self commandBuffer];
  v6 = [a3 instanceDescriptorBuffer];
  [(MTL4CommandBuffer *)v5 setResidencyForBufferRange:v6, v7];
  v8 = [(MTL4ToolsCommandEncoder *)self commandBuffer];
  v9 = [a3 instanceCountBuffer];
  [(MTL4CommandBuffer *)v8 setResidencyForBufferRange:v9, v10];
  v11 = [a3 instanceDescriptorBuffer];
  v13 = v12;
  v14 = [a3 maxInstanceCount];
  v15 = [a3 instanceCountBuffer];
  return -[MTL4GPUDebugComputeCommandEncoder createChildrenWrappersBufferWithInstanceDescriptorBufferRange:maxInstanceCount:instanceCountBufferRange:instanceDescriptorStride:instanceDescriptorType:](self, "createChildrenWrappersBufferWithInstanceDescriptorBufferRange:maxInstanceCount:instanceCountBufferRange:instanceDescriptorStride:instanceDescriptorType:", v11, v13, v14, v15, v16, [a3 instanceDescriptorStride], objc_msgSend(a3, "instanceDescriptorType"));
}

- (id)createChildrenWrappersBufferWithASDescriptor:(id)a3
{
  v5 = objc_opt_class();
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {
    if ([a3 instanceCount])
    {
      v6 = [(MTL4GPUDebugComputeCommandEncoder *)self createChildrenWrappersBufferWithIASDescriptor:a3];
      goto LABEL_6;
    }

    return 0;
  }

  v7 = objc_opt_class();
  if (![v7 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v6 = [(MTL4GPUDebugComputeCommandEncoder *)self createChildrenWrappersBufferWithIndirectIASDescriptor:a3];
LABEL_6:
  v8 = v6;
  if (v6)
  {
    -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v6 baseObject]);
  }

  return v8;
}

- (void)encodeCopyAndUnwrapChildrenWithInstanceDescriptorBufferRange:(MTL4BufferRange)a3 dstInstanceDescriptorBufferRange:(MTL4BufferRange)a4 instanceDescriptorStride:(unint64_t)a5 instanceIDOffset:(unint64_t)a6 maxInstanceCount:(unint64_t)a7
{
  var0 = a4.var0;
  v10 = a3.var0;
  v12 = [(MTL4GPUDebugComputeCommandEncoder *)self newComputePipelineStateWithFunctionName:@"unwrap_acceleration_structure_descriptor_buffer", a3.var1, a4.var0, a4.var1];
  [(MTL4GPUDebugComputeCommandEncoder *)self setComputePipelineState:v12];
  v13 = objc_alloc(MEMORY[0x277CD6AB8]);
  [v13 setInitializeBindings:1];
  [v13 setMaxBufferBindCount:31];
  v14 = [-[MTLToolsObject baseObject](self->super.super.super._device "baseObject")];

  v23 = a6;
  v24 = a5;
  v22 = a7;
  v15 = [(MTL4GPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&v24 length:8];
  [v15 setLabel:@"instance_stride"];
  v16 = [(MTL4GPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&v23 length:8];
  [v16 setLabel:@"instance_offset"];
  v17 = [(MTL4GPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&v22 length:8];
  [v17 setLabel:@"instance_count"];
  [v14 setAddress:v10 atIndex:0];
  [v14 setAddress:var0 atIndex:1];
  [v14 setAddress:objc_msgSend(v15 atIndex:{"gpuAddress"), 2}];
  [v14 setAddress:objc_msgSend(v16 atIndex:{"gpuAddress"), 3}];
  [v14 setAddress:objc_msgSend(v17 atIndex:{"gpuAddress"), 4}];
  [(MTLToolsObject *)self->super.super.super._baseObject setArgumentTable:v14];
  v20 = vcvtpd_u64_f64(a7 / [v12 maxTotalThreadsPerThreadgroup]);
  v21 = vdupq_n_s64(1uLL);
  v18 = [v12 maxTotalThreadsPerThreadgroup];
  v19 = v21;
  [(MTL4GPUDebugComputeCommandEncoder *)self dispatchThreadgroups:&v20 threadsPerThreadgroup:&v18];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x8000000 beforeEncoderStages:939524096 visibilityOptions:1];
}

- (id)encodeUnwrapWithIASDescriptor:(id)a3
{
  v5 = [a3 copy];
  device = self->super.super.super._device;
  [a3 instanceDescriptorBuffer];
  v8 = [(MTLToolsDevice *)device newBufferWithLength:v7 options:0];
  [v8 setLabel:@"dst_descriptor_buffer"];
  [v5 setInstanceDescriptorBuffer:{objc_msgSend(v8, "gpuAddress"), objc_msgSend(v8, "length")}];
  v9 = [a3 instanceDescriptorBuffer];
  v11 = [(MTL4GPUDebugComputeCommandEncoder *)self retrieveBufferFromBufferRange:v9, v10];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v8 baseObject]);
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v11 baseObject]);
  [a3 instanceDescriptorBuffer];
  [(MTL4ToolsComputeCommandEncoder *)self copyFromBuffer:v11 sourceOffset:0 toBuffer:v8 destinationOffset:0 size:v12];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x10000000 beforeEncoderStages:939524096 visibilityOptions:1];
  v13 = [a3 instanceDescriptorType];
  v14 = 0;
  if (v13 <= 4)
  {
    v14 = *&asc_22E27C0B0[8 * v13];
  }

  v15 = [a3 instanceDescriptorBuffer];
  v17 = v16;
  v18 = [v5 instanceDescriptorBuffer];
  -[MTL4GPUDebugComputeCommandEncoder encodeCopyAndUnwrapChildrenWithInstanceDescriptorBufferRange:dstInstanceDescriptorBufferRange:instanceDescriptorStride:instanceIDOffset:maxInstanceCount:](self, "encodeCopyAndUnwrapChildrenWithInstanceDescriptorBufferRange:dstInstanceDescriptorBufferRange:instanceDescriptorStride:instanceIDOffset:maxInstanceCount:", v15, v17, v18, v19, [a3 instanceDescriptorStride], v14, objc_msgSend(a3, "instanceCount"));
  return v5;
}

- (id)encodeUnwrapWithIndirectIASDescriptor:(id)a3
{
  v5 = [a3 copy];
  device = self->super.super.super._device;
  [a3 instanceDescriptorBuffer];
  v8 = [(MTLToolsDevice *)device newBufferWithLength:v7 options:0];
  [v8 setLabel:@"dst_descriptor_buffer"];
  [v5 setInstanceDescriptorBuffer:{objc_msgSend(v8, "gpuAddress"), objc_msgSend(v8, "length")}];
  v9 = [a3 instanceDescriptorBuffer];
  v11 = [(MTL4GPUDebugComputeCommandEncoder *)self retrieveBufferFromBufferRange:v9, v10];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v8 baseObject]);
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v11 baseObject]);
  [a3 instanceDescriptorBuffer];
  [(MTL4ToolsComputeCommandEncoder *)self copyFromBuffer:v11 sourceOffset:0 toBuffer:v8 destinationOffset:0 size:v12];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x10000000 beforeEncoderStages:939524096 visibilityOptions:1];
  v13 = [a3 instanceDescriptorType];
  v14 = 0;
  if (v13 <= 4)
  {
    v14 = *&asc_22E27C0B0[8 * v13];
  }

  v15 = [a3 instanceDescriptorBuffer];
  v17 = v16;
  v18 = [v5 instanceDescriptorBuffer];
  -[MTL4GPUDebugComputeCommandEncoder encodeCopyAndUnwrapChildrenWithInstanceDescriptorBufferRange:dstInstanceDescriptorBufferRange:instanceDescriptorStride:instanceIDOffset:maxInstanceCount:](self, "encodeCopyAndUnwrapChildrenWithInstanceDescriptorBufferRange:dstInstanceDescriptorBufferRange:instanceDescriptorStride:instanceIDOffset:maxInstanceCount:", v15, v17, v18, v19, [a3 instanceDescriptorStride], v14, objc_msgSend(a3, "maxInstanceCount"));
  return v5;
}

- (id)encodeUnwrapAccelerationStructureDescriptor:(id)a3
{
  v5 = objc_opt_class();
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {

    return [(MTL4GPUDebugComputeCommandEncoder *)self encodeUnwrapWithIASDescriptor:a3];
  }

  else
  {
    v7 = objc_opt_class();
    if ([v7 isSubclassOfClass:objc_opt_class()])
    {

      return [(MTL4GPUDebugComputeCommandEncoder *)self encodeUnwrapWithIndirectIASDescriptor:a3];
    }

    else
    {
      return a3;
    }
  }
}

- (void)blitChildrenWrappersBufferAddress:(id)a3 toAccelerationStructure:(id)a4
{
  v9 = [(MTLToolsDevice *)self->super.super.super._device newInternalBufferWithLength:8 options:0];
  v7 = [objc_msgSend(a3 "baseObject")];
  *[v9 contents] = v7;
  v8 = [a4 debugBuf];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [a3 baseObject]);
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:v9];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:v8];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [a4 baseObject]);
  [a4 setChildrenWrappersBuffer:a3];
  [(MTL4GPUDebugComputeCommandEncoder *)self copyFromInternalBuffer:v9 sourceOffset:0 toInternalBuffer:v8 destinationOffset:24 size:8];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x10000000 beforeEncoderStages:939524096 visibilityOptions:1];
}

- (void)blitChildrenWrappersBufferFromAcceleratrionStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v8 = [a3 debugBuf];
  v7 = [a4 debugBuf];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:v8];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:v7];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [a3 baseObject]);
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [a4 baseObject]);
  [a4 setChildrenWrappersBuffer:v8];
  [(MTL4GPUDebugComputeCommandEncoder *)self copyFromInternalBuffer:v8 sourceOffset:0 toInternalBuffer:v7 destinationOffset:24 size:8];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x10000000 beforeEncoderStages:939524096 visibilityOptions:1];
}

- (void)blitAccelerationStructureType:(unint64_t)a3 toAccelerationStructure:(id)a4
{
  v8 = [(MTLToolsDevice *)self->super.super.super._device newInternalBufferWithLength:8 options:0];
  *[v8 contents] = a3;
  v7 = [a4 debugBuf];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:v8];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:v7];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [a4 baseObject]);
  [(MTL4GPUDebugComputeCommandEncoder *)self copyFromInternalBuffer:v8 sourceOffset:0 toInternalBuffer:v7 destinationOffset:16 size:8];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x10000000 beforeEncoderStages:939524096 visibilityOptions:1];
}

- (void)blitTypeFromAccelerationStructureDescriptor:(id)a3 toAccelerationStructure:(id)a4
{
  v6 = MTL4AccelerationStructureTypeFromDescriptor();

  [(MTL4GPUDebugComputeCommandEncoder *)self blitAccelerationStructureType:v6 toAccelerationStructure:a4];
}

- (void)blitTypeFromAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v7 = [a3 debugBuf];
  v8 = [a4 debugBuf];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:v7];
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] setResidencyForResource:v8];
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [a3 baseObject]);
  -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [a4 baseObject]);
  [(MTL4GPUDebugComputeCommandEncoder *)self copyFromInternalBuffer:v7 sourceOffset:16 toInternalBuffer:v8 destinationOffset:16 size:8];
  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject barrierAfterEncoderStages:0x10000000 beforeEncoderStages:939524096 visibilityOptions:1];
}

- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(MTL4BufferRange)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v10 = [(MTL4GPUDebugComputeCommandEncoder *)self createChildrenWrappersBufferWithASDescriptor:a4];
  v11.receiver = self;
  v11.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v11 buildAccelerationStructure:a3 descriptor:[(MTL4GPUDebugComputeCommandEncoder *)self encodeUnwrapAccelerationStructureDescriptor:a4] scratchBuffer:var0, var1];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:a4 toAccelerationStructure:a3];
  if (v10)
  {
    [(MTL4GPUDebugComputeCommandEncoder *)self blitChildrenWrappersBufferAddress:v10 toAccelerationStructure:a3];
  }
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v12 = [(MTL4GPUDebugComputeCommandEncoder *)self createChildrenWrappersBufferWithASDescriptor:a4];
  v13.receiver = self;
  v13.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v13 refitAccelerationStructure:a3 descriptor:[(MTL4GPUDebugComputeCommandEncoder *)self encodeUnwrapAccelerationStructureDescriptor:a4] destination:a5 scratchBuffer:var0, var1];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  if (a5)
  {
    [(MTL4GPUDebugComputeCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:a4 toAccelerationStructure:a5];
    if (v12)
    {
      [(MTL4GPUDebugComputeCommandEncoder *)self blitChildrenWrappersBufferAddress:v12 toAccelerationStructure:a5];
    }
  }
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6 options:(unint64_t)a7
{
  var1 = a6.var1;
  var0 = a6.var0;
  v14 = [(MTL4GPUDebugComputeCommandEncoder *)self createChildrenWrappersBufferWithASDescriptor:a4];
  v15.receiver = self;
  v15.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v15 refitAccelerationStructure:a3 descriptor:[(MTL4GPUDebugComputeCommandEncoder *)self encodeUnwrapAccelerationStructureDescriptor:a4] destination:a5 scratchBuffer:var0 options:var1, a7];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  if (a5)
  {
    [(MTL4GPUDebugComputeCommandEncoder *)self blitTypeFromAccelerationStructureDescriptor:a4 toAccelerationStructure:a5];
    if (v14)
    {
      [(MTL4GPUDebugComputeCommandEncoder *)self blitChildrenWrappersBufferAddress:v14 toAccelerationStructure:a5];
    }
  }
}

- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [MTL4ToolsComputeCommandEncoder copyAccelerationStructure:sel_copyAccelerationStructure_toAccelerationStructure_ toAccelerationStructure:?];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitTypeFromAccelerationStructure:a3 toAccelerationStructure:a4];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitChildrenWrappersBufferFromAcceleratrionStructure:a3 toAccelerationStructure:a4];
}

- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [MTL4ToolsComputeCommandEncoder copyAndCompactAccelerationStructure:sel_copyAndCompactAccelerationStructure_toAccelerationStructure_ toAccelerationStructure:?];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitTypeFromAccelerationStructure:a3 toAccelerationStructure:a4];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitChildrenWrappersBufferFromAcceleratrionStructure:a3 toAccelerationStructure:a4];
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(MTL4BufferRange)a4
{
  v6.receiver = self;
  v6.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v6 deserializePrimitiveAccelerationStructure:a3 fromBuffer:a4.var0, a4.var1];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitPrimitiveTypetoAccelerationStructure:a3];
}

- (void)deserializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 fromBuffer:(MTL4BufferRange)a5
{
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 deserializeInstanceAccelerationStructure:a3 referencedAccelerationStructures:a4 fromBuffer:a5.var0, a5.var1];
  [(MTLToolsObject *)self->super.super.super._baseObject barrierAfterEncoderStages:0x20000000 beforeEncoderStages:0x10000000 visibilityOptions:1];
  [(MTL4GPUDebugComputeCommandEncoder *)self blitInstanceTypetoAccelerationStructure:a3];
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
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 beginVirtualSubstream];
}

- (unint64_t)nextVirtualSubstream
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 nextVirtualSubstream];
}

- (void)endVirtualSubstream
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 endVirtualSubstream];
}

- (void)waitForVirtualSubstream:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 waitForVirtualSubstream:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4GPUDebugComputeCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 dealloc];
}

@end