@interface MTLLegacySVComputeCommandEncoder
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (MTLLegacySVComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor encoderID:(unsigned int)d;
- (MTLLegacySVComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder parent:(id)parent encoderID:(unsigned int)d;
- (id).cxx_construct;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)encodeStartDoWhile;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)flushBindings;
- (void)setAccelerationStructures:(const void *)structures withBufferRange:(_NSRange)range;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setBufferUsageTable:(id)table textureUsageTable:(id)usageTable;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setComputePipelineState:(id)state;
- (void)setComputePipelineStateBuffers:(id)buffers;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setKernelReportBuffer:(id)buffer offset:(unint64_t)offset;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)useHeap:(id)heap;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
@end

@implementation MTLLegacySVComputeCommandEncoder

- (MTLLegacySVComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder parent:(id)parent encoderID:(unsigned int)d
{
  v10.receiver = self;
  v10.super_class = MTLLegacySVComputeCommandEncoder;
  v6 = [(MTLToolsComputeCommandEncoder *)&v10 initWithBaseObject:encoder parent:parent];
  v7 = v6;
  if (v6)
  {
    device = [(MTLToolsObject *)v6 device];
    v7->_options = (device + 264);
    v7->_dispatchID.encoderID = d;
    v7->_dispatchID.eventID = 0;
    LOBYTE(v7->_commandBufferJumpNestingLevel) = (*(device + 284) & 0x200000001) != 0;
    MTLGPUDebugStageBufferHandles::clear(&v7->_handles);
    if ((*(&v7->_options->var0 + 2) & 0x80) == 0)
    {
      [(MTLLegacySVComputeCommandEncoder *)v7 _initBufferArgumentData:v7->super.super.super._device];
    }
  }

  return v7;
}

- (MTLLegacySVComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor encoderID:(unsigned int)d
{
  v11.receiver = self;
  v11.super_class = MTLLegacySVComputeCommandEncoder;
  v7 = [(MTLToolsComputeCommandEncoder *)&v11 initWithComputeCommandEncoder:encoder parent:buffer descriptor:descriptor];
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 3) + 264;
    *(v7 + 8) = v9;
    *(v7 + 524) = d;
    *(v7 + 525) = 0;
    v7[56] = (*(v9 + 20) & 0x200000001) != 0;
    MTLGPUDebugStageBufferHandles::clear((v7 + 72));
    if ((*(&v8->_options->var0 + 2) & 0x80) == 0)
    {
      [(MTLLegacySVComputeCommandEncoder *)v8 _initBufferArgumentData:v8->super.super.super._device];
    }
  }

  return v8;
}

- (void)setBufferUsageTable:(id)table textureUsageTable:(id)usageTable
{
  if (*(&self->_options->var0 + 2))
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setBuffer:table offset:0 atIndex:5];
    [(MTLToolsObject *)self->super.super.super._baseObject setBuffer:usageTable offset:0 atIndex:6];
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:table usage:1];
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:usageTable usage:1];
    self->_bufferUsageTable = table;
    self->_textureUsageTable = usageTable;
  }
}

- (void)setKernelReportBuffer:(id)buffer offset:(unint64_t)offset
{
  p_reportBuffer = &self->_reportBuffer;
  bufferCopy = buffer;

  p_reportBuffer->buffer = buffer;
  p_reportBuffer->offset = offset;
  baseObject = self->super.super.super._baseObject;
  baseObject = [buffer baseObject];
  if ((*&self->_options->var0 & 0x10000) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  [(MTLToolsObject *)baseObject setBuffer:baseObject offset:offset atIndex:v11];
}

- (void)flushBindings
{
  baseObject = self->super.super.super._baseObject;
  if ((*&self->_options->var0 & 0x10000) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = 33;
  }

  [(MTLToolsObject *)baseObject setBytes:&self->_dispatchID length:24 atIndex:v4];
  v5 = *&self->_options->var0 & 0x7000000;
  activeThreadgroupMask = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] activeThreadgroupMask];
  threadgroupArgumentOffset = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] threadgroupArgumentOffset];
  if (v5 && self->_threadgroup.needsFlush)
  {
    LODWORD(v15) = activeThreadgroupMask;
    v8 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_threadgroup, &v15, threadgroupArgumentOffset);
    if (v8)
    {
      v9 = v8;
      if ((*&self->_options->var0 & 0x10000) != 0)
      {
        v10 = 4;
      }

      else
      {
        v10 = 34;
      }

      [(MTLToolsObject *)self->super.super.super._baseObject setBytes:self->_threadgroup.entries length:256 atIndex:v10];
      [(MTLToolsObject *)self->super.super.super._baseObject setThreadgroupMemoryLength:v9 atIndex:0];
    }

    self->_threadgroup.needsFlush = 0;
  }

  var0 = self->_options->var0;
  if ((*&var0 & 0x200000001) != 0)
  {
    [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] encodeResourceTableBuffers:self type:1];
    var0 = self->_options->var0;
  }

  if ((*&var0 & 0x800000) != 0)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:self->super.super.super._device[3].samplerObjectCache usage:1];
    bufferAccessMask = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] bufferAccessMask];
    if ((*(&self->_options->var0 + 2) & 0x80) != 0)
    {
      [(MTLToolsObject *)self->super.super.super._baseObject setBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
    }

    if (self->_handles.needsFlush)
    {
      v15 = bufferAccessMask;
      MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::KernelEncoderClass>>(&self->_handles, &v15, &self->super.super.super.super.isa, 20, 23);
    }
  }

  else
  {
    bufferAccessMask2 = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] bufferAccessMask];
    v13 = self->_options->var0;
    if ((*&var0 & 0x10000) != 0)
    {
      if ((*&v13 & 0x800000) != 0)
      {
        [(MTLToolsObject *)self->super.super.super._baseObject setBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
      }

      if (self->_handles.needsFlush)
      {
        v15 = bufferAccessMask2;
        MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT2<MTLLegacySV::KernelEncoderClass>>(&self->_handles, &v15, self, 20, 23);
      }
    }

    else
    {
      if ((*&v13 & 0x800000) != 0)
      {
        [(MTLToolsObject *)self->super.super.super._baseObject setBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
      }

      if (self->_handles.needsFlush)
      {
        v15 = bufferAccessMask2;
        MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::KernelEncoderClass>>(&self->_handles, &v15, self);
      }
    }
  }

  ++self->_dispatchID.eventID;
}

- (void)setComputePipelineStateBuffers:(id)buffers
{
  v22 = *MEMORY[0x277D85DE8];
  if ((*(&self->_options->var0 + 2) & 0x80) != 0)
  {
    if ([buffers globalConstantsBuffer])
    {
      -[MTLToolsCommandEncoder addRetainedObject:](self, "addRetainedObject:", [buffers globalConstantsBuffer]);
      -[MTLLegacySVComputeCommandEncoder useResource:usage:](self, "useResource:usage:", [buffers globalConstantsBuffer], 1);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    binaryFunctionData = [buffers binaryFunctionData];
    v10 = [binaryFunctionData countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(binaryFunctionData);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (*(v14 + 8))
          {
            [(MTLToolsCommandEncoder *)self addRetainedObject:?];
            [(MTLLegacySVComputeCommandEncoder *)self useResource:*(v14 + 8) usage:1];
          }
        }

        v11 = [binaryFunctionData countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v16 = [objc_msgSend(buffers "globalConstantsBuffer")];
    [(MTLToolsObject *)self->super.super.super._baseObject setBytes:&v16 length:8 atIndex:12];
    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    baseObject = self->super.super.super._baseObject;
    globalConstantsBuffer = [buffers globalConstantsBuffer];
    constantOffset = [buffers constantOffset];
    v8 = *MEMORY[0x277D85DE8];

    [(MTLToolsObject *)baseObject setBuffer:globalConstantsBuffer offset:constantOffset atIndex:12];
  }
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setBuffer(&self->_handles, buffer, offset, stride, index);
  if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
  {
    [(MTLToolsObject *)self->super.super.super._parent markBuffer:buffer usage:3 stages:1];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<unsigned long>::vector[abi:ne200100](__p, range.length);
  v10 = __p[0];
  if (length)
  {
    v11 = 1;
    v12 = __p[0];
    do
    {
      *v12++ = -1;
    }

    while (length > v11++);
  }

  [(MTLLegacySVComputeCommandEncoder *)self setBuffers:buffers offsets:offsets attributeStrides:v10 withRange:location, length];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v12 = 0;
    v13 = 1;
    do
    {
      [(MTLLegacySVComputeCommandEncoder *)self setBuffer:buffers[v12] offset:offsets[v12] attributeStride:strides[v12] atIndex:v12 + location];
      v12 = v13;
    }

    while (length > v13++);
  }
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v9 = [(MTLLegacySVComputeCommandEncoder *)self temporaryBufferWithBytes:bytes length:length];

  [(MTLLegacySVComputeCommandEncoder *)self setBuffer:v9 offset:0 attributeStride:stride atIndex:index];
}

- (void)setAccelerationStructures:(const void *)structures withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *structures++;
      [(MTLLegacySVComputeCommandEncoder *)self setAccelerationStructure:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  baseObject = [texture baseObject];
  baseObject = self->super.super.super._baseObject;
  if (texture)
  {
    if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
    {
      [(MTLToolsObject *)self->super.super.super._parent markTexture:texture usage:3 stages:1];
    }

    [(MTLToolsCommandEncoder *)self addRetainedObject:texture];
  }

  [(MTLToolsObject *)baseObject setTexture:baseObject atIndex:index];
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *textures;
      baseObject = [*textures baseObject];
      baseObject = self->super.super.super._baseObject;
      if (v8)
      {
        if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
        {
          [(MTLToolsObject *)self->super.super.super._parent markTexture:v8 usage:3 stages:1];
        }

        [(MTLToolsCommandEncoder *)self addRetainedObject:v8];
      }

      [(MTLToolsObject *)baseObject setTexture:baseObject atIndex:location++];
      ++textures;
      --length;
    }

    while (length);
  }
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_handles, table, index);
  if (table)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1];
  }
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLLegacySVComputeCommandEncoder *)self setVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_handles, table, index);
  if (table)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1];
  }
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLLegacySVComputeCommandEncoder *)self setIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  [(MTLLegacySVComputeCommandEncoder *)self flushBindings];
  v9 = *threads;
  v8 = *threadgroup;
  v7.receiver = self;
  v7.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v7 dispatchThreads:&v9 threadsPerThreadgroup:&v8];
}

- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  [(MTLLegacySVComputeCommandEncoder *)self flushBindings];
  v7.receiver = self;
  v7.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v7 dispatchThreadsWithIndirectBuffer:buffer indirectBufferOffset:offset];
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  [(MTLLegacySVComputeCommandEncoder *)self flushBindings];
  v9 = *threadgroups;
  v8 = *threadgroup;
  v7.receiver = self;
  v7.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v7 dispatchThreadgroups:&v9 threadsPerThreadgroup:&v8];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  [(MTLLegacySVComputeCommandEncoder *)self flushBindings];
  v10 = *threadgroup;
  v9.receiver = self;
  v9.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v9 dispatchThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:offset threadsPerThreadgroup:&v10];
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
    v7.super_class = MTLLegacySVComputeCommandEncoder;
    [(MTLToolsComputeCommandEncoder *)&v7 setThreadgroupMemoryLength:length atIndex:index];
  }
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVComputeCommandEncoder;
  [MTLToolsComputeCommandEncoder useResource:sel_useResource_usage_ usage:?];
  if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTLToolsObject *)self->super.super.super._parent markBuffer:resource usage:usage stages:1];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MTLToolsObject *)self->super.super.super._parent markTexture:resource usage:usage stages:1];
      }
    }
  }

  [resource useWithComputeEncoder:self usage:usage];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  if (count)
  {
    countCopy = count;
    do
    {
      v9 = *resources++;
      [(MTLLegacySVComputeCommandEncoder *)self useResource:v9 usage:usage];
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)useHeap:(id)heap
{
  if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
  {
    [(MTLToolsObject *)self->super.super.super._parent markHeap:heap stages:1];
  }

  v5.receiver = self;
  v5.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v5 useHeap:heap];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  if (count)
  {
    countCopy = count;
    do
    {
      v7 = *heaps++;
      [(MTLLegacySVComputeCommandEncoder *)self useHeap:v7];
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)useResidencySet:(id)set
{
  if ((*&self->_options->var0 & 0x200000001) != 0)
  {
    [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addResidencySetGPUDebug:set fromEncoder:self];
  }

  v5.receiver = self;
  v5.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v5 useResidencySet:set];
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
      [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addResidencySetGPUDebug:v10 fromEncoder:self];
      --countCopy;
    }

    while (countCopy);
  }

  v11.receiver = self;
  v11.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v11 useResidencySets:sets count:count];
}

- (void)setComputePipelineState:(id)state
{
  self->_dispatchID.pipelineStateID = state;
  self->_dispatchID.entryPointImageID = [state kernelFunctionData];
  if (self->_currentPipeline == state)
  {
    options = self->_options;
  }

  else
  {
    self->_threadgroup.needsFlush = 1;
    options = self->_options;
    if ((*(&options->var0 + 2) & 0x81) == 0)
    {
      self->_handles.needsFlush = 1;
    }
  }

  if ((*(&options->var0 + 2) & 0x40) != 0)
  {
    [(MTLLegacySVComputeCommandEncoder *)self setComputePipelineStateBuffers:state];
  }

  self->_currentPipeline = state;
  v6.receiver = self;
  v6.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v6 setComputePipelineState:state];
}

- (void)endEncoding
{
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] endingEncoder:self type:1];
  MTLGPUDebugStageBufferHandles::clear(&self->_handles);

  self->_reportBuffer.buffer = 0;
  self->_reportBuffer.offset = 0;
  v3.receiver = self;
  v3.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsCommandEncoder *)&v3 endEncoding];
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9 = LODWORD(range.location) | (LODWORD(range.length) << 32);
  v10 = 1;
  PrepareExecuteIndirect(self, buffer, &v9);
  v8.receiver = self;
  v8.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v8 executeCommandsInBuffer:buffer withRange:location, length];
  RestoreInternalState(self);
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  v10[0] = indirectBuffer;
  v10[1] = offset;
  v11 = 0;
  PrepareExecuteIndirect(self, buffer, v10);
  v9.receiver = self;
  v9.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v9 executeCommandsInBuffer:buffer indirectBuffer:indirectBuffer indirectBufferOffset:offset];
  RestoreInternalState(self);
}

- (void)encodeStartDoWhile
{
  v4.receiver = self;
  v4.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v4 encodeStartDoWhile];
  v3 = *(&self->_commandBufferJumpNestingLevel + 1);
  if (!v3)
  {
    RestoreInternalState(self);
    v3 = *(&self->_commandBufferJumpNestingLevel + 1);
  }

  *(&self->_commandBufferJumpNestingLevel + 1) = v3 + 1;
}

- (BOOL)encodeEndIf
{
  --*(&self->_commandBufferJumpNestingLevel + 1);
  v3.receiver = self;
  v3.super_class = MTLLegacySVComputeCommandEncoder;
  return [(MTLToolsComputeCommandEncoder *)&v3 encodeEndIf];
}

- (BOOL)encodeEndWhile
{
  --*(&self->_commandBufferJumpNestingLevel + 1);
  v3.receiver = self;
  v3.super_class = MTLLegacySVComputeCommandEncoder;
  return [(MTLToolsComputeCommandEncoder *)&v3 encodeEndWhile];
}

- (id).cxx_construct
{
  *(self + 1688) = 0;
  *(self + 2076) = 0;
  *(self + 264) = 0;
  return self;
}

@end