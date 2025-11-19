@interface MTLLegacySVComputeCommandEncoder
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (MTLLegacySVComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5 encoderID:(unsigned int)a6;
- (MTLLegacySVComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 parent:(id)a4 encoderID:(unsigned int)a5;
- (id).cxx_construct;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4;
- (void)encodeStartDoWhile;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)flushBindings;
- (void)setAccelerationStructures:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setBufferUsageTable:(id)a3 textureUsageTable:(id)a4;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setComputePipelineState:(id)a3;
- (void)setComputePipelineStateBuffers:(id)a3;
- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setKernelReportBuffer:(id)a3 offset:(unint64_t)a4;
- (void)setTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)useHeap:(id)a3;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
@end

@implementation MTLLegacySVComputeCommandEncoder

- (MTLLegacySVComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 parent:(id)a4 encoderID:(unsigned int)a5
{
  v10.receiver = self;
  v10.super_class = MTLLegacySVComputeCommandEncoder;
  v6 = [(MTLToolsComputeCommandEncoder *)&v10 initWithBaseObject:a3 parent:a4];
  v7 = v6;
  if (v6)
  {
    v8 = [(MTLToolsObject *)v6 device];
    v7->_options = (v8 + 264);
    v7->_dispatchID.encoderID = a5;
    v7->_dispatchID.eventID = 0;
    LOBYTE(v7->_commandBufferJumpNestingLevel) = (*(v8 + 284) & 0x200000001) != 0;
    MTLGPUDebugStageBufferHandles::clear(&v7->_handles);
    if ((*(&v7->_options->var0 + 2) & 0x80) == 0)
    {
      [(MTLLegacySVComputeCommandEncoder *)v7 _initBufferArgumentData:v7->super.super.super._device];
    }
  }

  return v7;
}

- (MTLLegacySVComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5 encoderID:(unsigned int)a6
{
  v11.receiver = self;
  v11.super_class = MTLLegacySVComputeCommandEncoder;
  v7 = [(MTLToolsComputeCommandEncoder *)&v11 initWithComputeCommandEncoder:a3 parent:a4 descriptor:a5];
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 3) + 264;
    *(v7 + 8) = v9;
    *(v7 + 524) = a6;
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

- (void)setBufferUsageTable:(id)a3 textureUsageTable:(id)a4
{
  if (*(&self->_options->var0 + 2))
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setBuffer:a3 offset:0 atIndex:5];
    [(MTLToolsObject *)self->super.super.super._baseObject setBuffer:a4 offset:0 atIndex:6];
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:a3 usage:1];
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:a4 usage:1];
    self->_bufferUsageTable = a3;
    self->_textureUsageTable = a4;
  }
}

- (void)setKernelReportBuffer:(id)a3 offset:(unint64_t)a4
{
  p_reportBuffer = &self->_reportBuffer;
  v8 = a3;

  p_reportBuffer->buffer = a3;
  p_reportBuffer->offset = a4;
  baseObject = self->super.super.super._baseObject;
  v10 = [a3 baseObject];
  if ((*&self->_options->var0 & 0x10000) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  [(MTLToolsObject *)baseObject setBuffer:v10 offset:a4 atIndex:v11];
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
  v6 = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] activeThreadgroupMask];
  v7 = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] threadgroupArgumentOffset];
  if (v5 && self->_threadgroup.needsFlush)
  {
    LODWORD(v15) = v6;
    v8 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_threadgroup, &v15, v7);
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
    v14 = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] bufferAccessMask];
    if ((*(&self->_options->var0 + 2) & 0x80) != 0)
    {
      [(MTLToolsObject *)self->super.super.super._baseObject setBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
    }

    if (self->_handles.needsFlush)
    {
      v15 = v14;
      MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::KernelEncoderClass>>(&self->_handles, &v15, &self->super.super.super.super.isa, 20, 23);
    }
  }

  else
  {
    v12 = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] bufferAccessMask];
    v13 = self->_options->var0;
    if ((*&var0 & 0x10000) != 0)
    {
      if ((*&v13 & 0x800000) != 0)
      {
        [(MTLToolsObject *)self->super.super.super._baseObject setBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
      }

      if (self->_handles.needsFlush)
      {
        v15 = v12;
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
        v15 = v12;
        MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::KernelEncoderClass>>(&self->_handles, &v15, self);
      }
    }
  }

  ++self->_dispatchID.eventID;
}

- (void)setComputePipelineStateBuffers:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if ((*(&self->_options->var0 + 2) & 0x80) != 0)
  {
    if ([a3 globalConstantsBuffer])
    {
      -[MTLToolsCommandEncoder addRetainedObject:](self, "addRetainedObject:", [a3 globalConstantsBuffer]);
      -[MTLLegacySVComputeCommandEncoder useResource:usage:](self, "useResource:usage:", [a3 globalConstantsBuffer], 1);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [a3 binaryFunctionData];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (*(v14 + 8))
          {
            [(MTLToolsCommandEncoder *)self addRetainedObject:?];
            [(MTLLegacySVComputeCommandEncoder *)self useResource:*(v14 + 8) usage:1];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v16 = [objc_msgSend(a3 "globalConstantsBuffer")];
    [(MTLToolsObject *)self->super.super.super._baseObject setBytes:&v16 length:8 atIndex:12];
    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    baseObject = self->super.super.super._baseObject;
    v6 = [a3 globalConstantsBuffer];
    v7 = [a3 constantOffset];
    v8 = *MEMORY[0x277D85DE8];

    [(MTLToolsObject *)baseObject setBuffer:v6 offset:v7 atIndex:12];
  }
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  MTLGPUDebugStageBufferHandles::setBuffer(&self->_handles, a3, a4, a5, a6);
  if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
  {
    [(MTLToolsObject *)self->super.super.super._parent markBuffer:a3 usage:3 stages:1];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  std::vector<unsigned long>::vector[abi:ne200100](__p, a5.length);
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

  [(MTLLegacySVComputeCommandEncoder *)self setBuffers:a3 offsets:a4 attributeStrides:v10 withRange:location, length];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6
{
  if (a6.length)
  {
    length = a6.length;
    location = a6.location;
    v12 = 0;
    v13 = 1;
    do
    {
      [(MTLLegacySVComputeCommandEncoder *)self setBuffer:a3[v12] offset:a4[v12] attributeStride:a5[v12] atIndex:v12 + location];
      v12 = v13;
    }

    while (length > v13++);
  }
}

- (void)setBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v9 = [(MTLLegacySVComputeCommandEncoder *)self temporaryBufferWithBytes:a3 length:a4];

  [(MTLLegacySVComputeCommandEncoder *)self setBuffer:v9 offset:0 attributeStride:a5 atIndex:a6];
}

- (void)setAccelerationStructures:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLLegacySVComputeCommandEncoder *)self setAccelerationStructure:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTexture:(id)a3 atIndex:(unint64_t)a4
{
  v7 = [a3 baseObject];
  baseObject = self->super.super.super._baseObject;
  if (a3)
  {
    if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
    {
      [(MTLToolsObject *)self->super.super.super._parent markTexture:a3 usage:3 stages:1];
    }

    [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
  }

  [(MTLToolsObject *)baseObject setTexture:v7 atIndex:a4];
}

- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3;
      v9 = [*a3 baseObject];
      baseObject = self->super.super.super._baseObject;
      if (v8)
      {
        if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
        {
          [(MTLToolsObject *)self->super.super.super._parent markTexture:v8 usage:3 stages:1];
        }

        [(MTLToolsCommandEncoder *)self addRetainedObject:v8];
      }

      [(MTLToolsObject *)baseObject setTexture:v9 atIndex:location++];
      ++a3;
      --length;
    }

    while (length);
  }
}

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_handles, a3, a4);
  if (a3)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1];
  }
}

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLLegacySVComputeCommandEncoder *)self setVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_handles, a3, a4);
  if (a3)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1];
  }
}

- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLLegacySVComputeCommandEncoder *)self setIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  [(MTLLegacySVComputeCommandEncoder *)self flushBindings];
  v9 = *a3;
  v8 = *a4;
  v7.receiver = self;
  v7.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v7 dispatchThreads:&v9 threadsPerThreadgroup:&v8];
}

- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4
{
  [(MTLLegacySVComputeCommandEncoder *)self flushBindings];
  v7.receiver = self;
  v7.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v7 dispatchThreadsWithIndirectBuffer:a3 indirectBufferOffset:a4];
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  [(MTLLegacySVComputeCommandEncoder *)self flushBindings];
  v9 = *a3;
  v8 = *a4;
  v7.receiver = self;
  v7.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v7 dispatchThreadgroups:&v9 threadsPerThreadgroup:&v8];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5
{
  [(MTLLegacySVComputeCommandEncoder *)self flushBindings];
  v10 = *a5;
  v9.receiver = self;
  v9.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v9 dispatchThreadgroupsWithIndirectBuffer:a3 indirectBufferOffset:a4 threadsPerThreadgroup:&v10];
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
    v7.super_class = MTLLegacySVComputeCommandEncoder;
    [(MTLToolsComputeCommandEncoder *)&v7 setThreadgroupMemoryLength:a3 atIndex:a4];
  }
}

- (void)useResource:(id)a3 usage:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVComputeCommandEncoder;
  [MTLToolsComputeCommandEncoder useResource:sel_useResource_usage_ usage:?];
  if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTLToolsObject *)self->super.super.super._parent markBuffer:a3 usage:a4 stages:1];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MTLToolsObject *)self->super.super.super._parent markTexture:a3 usage:a4 stages:1];
      }
    }
  }

  [a3 useWithComputeEncoder:self usage:a4];
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v9 = *a3++;
      [(MTLLegacySVComputeCommandEncoder *)self useResource:v9 usage:a5];
      --v6;
    }

    while (v6);
  }
}

- (void)useHeap:(id)a3
{
  if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
  {
    [(MTLToolsObject *)self->super.super.super._parent markHeap:a3 stages:1];
  }

  v5.receiver = self;
  v5.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v5 useHeap:a3];
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;
    do
    {
      v7 = *a3++;
      [(MTLLegacySVComputeCommandEncoder *)self useHeap:v7];
      --v4;
    }

    while (v4);
  }
}

- (void)useResidencySet:(id)a3
{
  if ((*&self->_options->var0 & 0x200000001) != 0)
  {
    [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addResidencySetGPUDebug:a3 fromEncoder:self];
  }

  v5.receiver = self;
  v5.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v5 useResidencySet:a3];
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
      [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addResidencySetGPUDebug:v10 fromEncoder:self];
      --v9;
    }

    while (v9);
  }

  v11.receiver = self;
  v11.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v11 useResidencySets:a3 count:a4];
}

- (void)setComputePipelineState:(id)a3
{
  self->_dispatchID.pipelineStateID = a3;
  self->_dispatchID.entryPointImageID = [a3 kernelFunctionData];
  if (self->_currentPipeline == a3)
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
    [(MTLLegacySVComputeCommandEncoder *)self setComputePipelineStateBuffers:a3];
  }

  self->_currentPipeline = a3;
  v6.receiver = self;
  v6.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v6 setComputePipelineState:a3];
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

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = LODWORD(a4.location) | (LODWORD(a4.length) << 32);
  v10 = 1;
  PrepareExecuteIndirect(self, a3, &v9);
  v8.receiver = self;
  v8.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v8 executeCommandsInBuffer:a3 withRange:location, length];
  RestoreInternalState(self);
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  v10[0] = a4;
  v10[1] = a5;
  v11 = 0;
  PrepareExecuteIndirect(self, a3, v10);
  v9.receiver = self;
  v9.super_class = MTLLegacySVComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v9 executeCommandsInBuffer:a3 indirectBuffer:a4 indirectBufferOffset:a5];
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