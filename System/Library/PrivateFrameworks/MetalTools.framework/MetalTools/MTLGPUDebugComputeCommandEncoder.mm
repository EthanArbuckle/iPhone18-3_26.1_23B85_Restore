@interface MTLGPUDebugComputeCommandEncoder
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (MTLGPUDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5 encoderID:(unsigned int)a6;
- (MTLGPUDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 parent:(id)a4 encoderID:(unsigned int)a5;
- (id).cxx_construct;
- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4;
- (id)temporaryBufferWithLength:(unint64_t)a3;
- (unint64_t)nextVirtualSubstream;
- (void)beginVirtualSubstream;
- (void)bindInternalBuffer:(id)a3 index:(unint64_t)a4;
- (void)bindInternalBufferWithOffset:(id)a3 offset:(unint64_t)a4 index:(unint64_t)a5;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4;
- (void)encodeStartDoWhile;
- (void)endEncoding;
- (void)endVirtualSubstream;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)flushBindings;
- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setAccelerationStructures:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setBufferUsageTable:(id)a3 textureUsageTable:(id)a4 textureTypeTable:(id)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setComputePipelineState:(id)a3;
- (void)setComputePipelineStateBuffers:(id)a3;
- (void)setInternalBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
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
- (void)waitForVirtualSubstream:(unint64_t)a3;
@end

@implementation MTLGPUDebugComputeCommandEncoder

- (MTLGPUDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 parent:(id)a4 encoderID:(unsigned int)a5
{
  v10.receiver = self;
  v10.super_class = MTLGPUDebugComputeCommandEncoder;
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
  }

  return v7;
}

- (MTLGPUDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5 encoderID:(unsigned int)a6
{
  v11.receiver = self;
  v11.super_class = MTLGPUDebugComputeCommandEncoder;
  v7 = [(MTLToolsComputeCommandEncoder *)&v11 initWithComputeCommandEncoder:a3 parent:a4 descriptor:a5];
  v8 = v7;
  if (v7)
  {
    p_deviceWrapper = &v7->super.super.super._device[2]._deviceWrapper;
    v7->_options = p_deviceWrapper;
    v7->_dispatchID.encoderID = a6;
    v7->_dispatchID.eventID = 0;
    LOBYTE(v7->_commandBufferJumpNestingLevel) = (*(p_deviceWrapper + 20) & 0x200000001) != 0;
    MTLGPUDebugStageBufferHandles::clear(&v7->_handles);
  }

  return v8;
}

- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v5 = [(MTLToolsObject *)self->super.super.super._parent temporaryBufferWithBytes:a3 length:a4];
  [(MTLGPUDebugComputeCommandEncoder *)self useResource:v5 usage:3];
  return v5;
}

- (id)temporaryBufferWithLength:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self->super.super.super._parent temporaryBufferWithLength:a3];
  [(MTLGPUDebugComputeCommandEncoder *)self useResource:v4 usage:3];
  return v4;
}

- (void)bindInternalBufferWithOffset:(id)a3 offset:(unint64_t)a4 index:(unint64_t)a5
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  baseObject = self->super.super.super._baseObject;
  v11 = a3;
  if (isKindOfClass)
  {
    v11 = [a3 baseObject];
  }

  [(MTLToolsObject *)baseObject useResource:v11 usage:3];
  v12 = [a3 gpuAddress] + a4;

  [(MTLGPUDebugComputeCommandEncoder *)self bindInternalValue:v12 index:a5];
}

- (void)bindInternalBuffer:(id)a3 index:(unint64_t)a4
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    baseObject = self->super.super.super._baseObject;
    if (isKindOfClass)
    {
      v9 = [a3 baseObject];
      v10 = baseObject;
    }

    else
    {
      v10 = self->super.super.super._baseObject;
      v9 = a3;
    }

    [(MTLToolsObject *)v10 useResource:v9 usage:3];
    v11 = [a3 gpuAddress];

    [(MTLGPUDebugComputeCommandEncoder *)self bindInternalValue:v11 index:a4];
  }
}

- (void)setInternalBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithBytes:a3 length:a4 options:0];
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] _addUsedBuffer:v7];
  if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
  {
    [(MTLToolsObject *)self->super.super.super._parent markBuffer:v7 usage:3 stages:1];
  }

  [(MTLGPUDebugComputeCommandEncoder *)self bindInternalBuffer:v7 index:a5];
}

- (void)setBufferUsageTable:(id)a3 textureUsageTable:(id)a4 textureTypeTable:(id)a5
{
  if (*(&self->_options->var0 + 2))
  {
    [(MTLGPUDebugComputeCommandEncoder *)self bindInternalBuffer:a3 index:5];
    [(MTLGPUDebugComputeCommandEncoder *)self bindInternalBuffer:a4 index:6];
    [(MTLGPUDebugComputeCommandEncoder *)self bindInternalBuffer:a5 index:7];
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:a3 usage:1];
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:a4 usage:1];
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:a5 usage:1];
    self->_bufferUsageTable = a3;
    self->_textureUsageTable = a4;
    self->_textureTypeTable = a5;
  }
}

- (void)flushBindings
{
  [(MTLToolsObject *)self->super.super.super._parent setNumDispatches:[(MTLToolsObject *)self->super.super.super._parent numDispatches]+ 1];
  v3 = *&self->_options->var0 & 0x7000000;
  v4 = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] activeThreadgroupMask];
  v5 = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] threadgroupArgumentOffset];
  if (v3 && self->_threadgroup.needsFlush)
  {
    v10 = v4;
    v6 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_threadgroup, &v10, v5);
    if (v6)
    {
      v7 = v6;
      [(MTLGPUDebugComputeCommandEncoder *)self setInternalBytes:self->_threadgroup.entries length:256 atIndex:4];
      if (v4)
      {
        [(MTLToolsObject *)self->super.super.super._baseObject setThreadgroupMemoryLength:v7 atIndex:__clz(__rbit32(v4))];
      }
    }

    self->_threadgroup.needsFlush = 0;
  }

  if ((*&self->_options->var0 & 0x200000001) != 0)
  {
    [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] encodeResourceTableBuffers:self type:1];
  }

  [(MTLToolsObject *)self->super.super.super._baseObject useResource:self->super.super.super._device[3].samplerObjectCache usage:1];
  [(MTLGPUDebugComputeCommandEncoder *)self bindInternalBuffer:self->super.super.super._device[3].samplerObjectCache index:21];
  [(MTLGPUDebugComputeCommandEncoder *)self bindInternalBuffer:[(MTLGPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&self->_dispatchID length:24] index:3];
  v9 = 0;
  [(MTLGPUDebugComputeCommandEncoder *)self bindInternalBuffer:[(MTLGPUDebugComputeCommandEncoder *)self temporaryBufferWithBytes:&v9 length:4] index:24];
  v8 = [(MTLToolsObject *)self->super.super.super._parent temporaryBufferWithBytes:[(MTLBuffer *)self->_internalBindingTable contents] length:320];
  [(MTLGPUDebugComputeCommandEncoder *)self useResource:v8 usage:3];
  -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:", [v8 gpuAddress], 0);
  ++self->_dispatchID.eventID;
}

- (void)setComputePipelineStateBuffers:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  var0 = self->_options->var0;
  v6 = [a3 globalConstantsBuffer];
  v7 = v6;
  if ((*&var0 & 0x800000) != 0)
  {
    if (v6)
    {
      -[MTLToolsCommandEncoder addRetainedObject:](self, "addRetainedObject:", [a3 globalConstantsBuffer]);
      -[MTLGPUDebugComputeCommandEncoder useResource:usage:](self, "useResource:usage:", [a3 globalConstantsBuffer], 1);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [a3 binaryFunctionData];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if (*(v15 + 8))
          {
            [(MTLToolsCommandEncoder *)self addRetainedObject:?];
            [(MTLGPUDebugComputeCommandEncoder *)self useResource:*(v15 + 8) usage:1];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    -[MTLGPUDebugComputeCommandEncoder bindInternalValue:index:](self, "bindInternalValue:index:", [objc_msgSend(a3 "globalConstantsBuffer")], 12);
    v16 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = [a3 constantOffset];
    v9 = *MEMORY[0x277D85DE8];

    [(MTLGPUDebugComputeCommandEncoder *)self bindInternalBufferWithOffset:v7 offset:v8 index:12];
  }
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v11 = &self->_computeEncoderBoundBuffers[a6];
  v11->stride = a5;
  v11->resource = [a3 baseObject];
  v11->offset = a4;
  if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
  {
    [(MTLToolsObject *)self->super.super.super._parent markBuffer:a3 usage:3 stages:1];
  }

  -[MTLToolsObject setBuffer:offset:attributeStride:atIndex:](self->super.super.super._baseObject, "setBuffer:offset:attributeStride:atIndex:", [a3 baseObject], a4, a5, a6);
  -[MTLToolsCommandEncoder addRetainedObject:](self, "addRetainedObject:", [a3 baseObject]);

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

  [(MTLGPUDebugComputeCommandEncoder *)self setBuffers:a3 offsets:a4 attributeStrides:v10 withRange:location, length];
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
      [(MTLGPUDebugComputeCommandEncoder *)self setBuffer:a3[v12] offset:a4[v12] attributeStride:a5[v12] atIndex:v12 + location];
      v12 = v13;
    }

    while (length > v13++);
  }
}

- (void)setBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v11 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:a4 options:0];
  [(MTLToolsObject *)self->super.super.super._parent _addUsedBuffer:v11];
  memcpy([v11 contents], a3, a4);
  v12 = [v11 offset];

  [(MTLGPUDebugComputeCommandEncoder *)self setBuffer:v11 offset:v12 attributeStride:a5 atIndex:a6];
}

- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [a3 debugBuf];
  v8 = &self->_computeEncoderBoundBuffers[a4];
  v8->resource = v7;
  v8->offset = 0;
  MTLGPUDebugStageBufferHandles::setResource(&self->_handles, a3, a4);
  baseObject = self->super.super.super._baseObject;
  v10 = [a3 debugBuf];

  [(MTLToolsObject *)baseObject setBuffer:v10 offset:0 atIndex:a4];
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
      [(MTLGPUDebugComputeCommandEncoder *)self setAccelerationStructure:v8 atBufferIndex:location++];
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
      -[MTLToolsObject markTexture:usage:stages:](self->super.super.super._parent, "markTexture:usage:stages:", [a3 gpuIdentifier], 3, 1);
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
          -[MTLToolsObject markTexture:usage:stages:](self->super.super.super._parent, "markTexture:usage:stages:", [v8 gpuIdentifier], 3, 1);
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
  if (a3)
  {
    v7 = [a3 baseObject];
    v8 = &self->_computeEncoderBoundBuffers[a4];
    v8->resource = v7;
    v8->offset = 0;
    v8->type = 115;
    MTLGPUDebugStageBufferHandles::setResource(&self->_handles, a3, a4);
    -[MTLToolsObject setVisibleFunctionTable:atBufferIndex:](self->super.super.super._baseObject, "setVisibleFunctionTable:atBufferIndex:", [a3 baseObject], a4);
    baseObject = self->super.super.super._baseObject;
    v10 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v10 usage:1];
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
      [(MTLGPUDebugComputeCommandEncoder *)self setVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (a3)
  {
    v7 = &self->_computeEncoderBoundBuffers[a4];
    v7->resource = *(a3 + 2);
    v7->offset = 0;
    v7->type = 116;
    MTLGPUDebugStageBufferHandles::setResource(&self->_handles, a3, a4);
    [(MTLToolsObject *)self->super.super.super._baseObject setIntersectionFunctionTable:*(a3 + 2) atBufferIndex:a4];
    baseObject = self->super.super.super._baseObject;
    v9 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v9 usage:1];
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
      [(MTLGPUDebugComputeCommandEncoder *)self setIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  [(MTLGPUDebugComputeCommandEncoder *)self flushBindings];
  v9 = *a3;
  v8 = *a4;
  v7.receiver = self;
  v7.super_class = MTLGPUDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v7 dispatchThreads:&v9 threadsPerThreadgroup:&v8];
}

- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4
{
  [(MTLGPUDebugComputeCommandEncoder *)self flushBindings];
  v7.receiver = self;
  v7.super_class = MTLGPUDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v7 dispatchThreadsWithIndirectBuffer:a3 indirectBufferOffset:a4];
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  [(MTLGPUDebugComputeCommandEncoder *)self flushBindings];
  v9 = *a3;
  v8 = *a4;
  v7.receiver = self;
  v7.super_class = MTLGPUDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v7 dispatchThreadgroups:&v9 threadsPerThreadgroup:&v8];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5
{
  [(MTLGPUDebugComputeCommandEncoder *)self flushBindings];
  v10 = *a5;
  v9.receiver = self;
  v9.super_class = MTLGPUDebugComputeCommandEncoder;
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
    v7.super_class = MTLGPUDebugComputeCommandEncoder;
    [(MTLToolsComputeCommandEncoder *)&v7 setThreadgroupMemoryLength:a3 atIndex:a4];
  }
}

- (void)useResource:(id)a3 usage:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = MTLGPUDebugComputeCommandEncoder;
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
        -[MTLToolsObject markTexture:usage:stages:](self->super.super.super._parent, "markTexture:usage:stages:", [a3 gpuIdentifier], a4, 1);
        if ([a3 conformsToProtocol:&unk_284228AC0])
        {
          if (a3)
          {
            [a3 getActiveViews];
            for (i = v9; i; i = *i)
            {
              [(MTLToolsObject *)self->super.super.super._parent markTexture:i[2] usage:a4 stages:1];
            }
          }

          else
          {
            v10 = 0;
            v8 = 0u;
            v9 = 0u;
          }

          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v8);
        }
      }
    }
  }

  [a3 useWithComputeEncoder:self usage:{a4, v8, v9, v10}];
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v9 = *a3++;
      [(MTLGPUDebugComputeCommandEncoder *)self useResource:v9 usage:a5];
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
  v5.super_class = MTLGPUDebugComputeCommandEncoder;
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
      [(MTLGPUDebugComputeCommandEncoder *)self useHeap:v7];
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
  v5.super_class = MTLGPUDebugComputeCommandEncoder;
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
  v11.super_class = MTLGPUDebugComputeCommandEncoder;
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
    [(MTLGPUDebugComputeCommandEncoder *)self setComputePipelineStateBuffers:a3];
  }

  self->_currentPipeline = a3;
  v6.receiver = self;
  v6.super_class = MTLGPUDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v6 setComputePipelineState:a3];
}

- (void)endEncoding
{
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] endingEncoder:self type:1];
  MTLGPUDebugStageBufferHandles::clear(&self->_handles);
  v3.receiver = self;
  v3.super_class = MTLGPUDebugComputeCommandEncoder;
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
  v8.super_class = MTLGPUDebugComputeCommandEncoder;
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
  v9.super_class = MTLGPUDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v9 executeCommandsInBuffer:a3 indirectBuffer:a4 indirectBufferOffset:a5];
  RestoreInternalState(self);
}

- (void)encodeStartDoWhile
{
  v4.receiver = self;
  v4.super_class = MTLGPUDebugComputeCommandEncoder;
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
  v3.super_class = MTLGPUDebugComputeCommandEncoder;
  return [(MTLToolsComputeCommandEncoder *)&v3 encodeEndIf];
}

- (BOOL)encodeEndWhile
{
  --*(&self->_commandBufferJumpNestingLevel + 1);
  v3.receiver = self;
  v3.super_class = MTLGPUDebugComputeCommandEncoder;
  return [(MTLToolsComputeCommandEncoder *)&v3 encodeEndWhile];
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

- (id).cxx_construct
{
  *(self + 1688) = 0;
  *(self + 2076) = 0;
  return self;
}

@end