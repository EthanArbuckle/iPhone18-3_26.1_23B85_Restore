@interface MTLGPUDebugComputeCommandEncoder
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (MTLGPUDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor encoderID:(unsigned int)d;
- (MTLGPUDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder parent:(id)parent encoderID:(unsigned int)d;
- (id).cxx_construct;
- (id)temporaryBufferWithBytes:(const void *)bytes length:(unint64_t)length;
- (id)temporaryBufferWithLength:(unint64_t)length;
- (unint64_t)nextVirtualSubstream;
- (void)beginVirtualSubstream;
- (void)bindInternalBuffer:(id)buffer index:(unint64_t)index;
- (void)bindInternalBufferWithOffset:(id)offset offset:(unint64_t)a4 index:(unint64_t)index;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)encodeStartDoWhile;
- (void)endEncoding;
- (void)endVirtualSubstream;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)flushBindings;
- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setAccelerationStructures:(const void *)structures withBufferRange:(_NSRange)range;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setBufferUsageTable:(id)table textureUsageTable:(id)usageTable textureTypeTable:(id)typeTable;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setComputePipelineState:(id)state;
- (void)setComputePipelineStateBuffers:(id)buffers;
- (void)setInternalBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
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
- (void)waitForVirtualSubstream:(unint64_t)substream;
@end

@implementation MTLGPUDebugComputeCommandEncoder

- (MTLGPUDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder parent:(id)parent encoderID:(unsigned int)d
{
  v10.receiver = self;
  v10.super_class = MTLGPUDebugComputeCommandEncoder;
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
  }

  return v7;
}

- (MTLGPUDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor encoderID:(unsigned int)d
{
  v11.receiver = self;
  v11.super_class = MTLGPUDebugComputeCommandEncoder;
  v7 = [(MTLToolsComputeCommandEncoder *)&v11 initWithComputeCommandEncoder:encoder parent:buffer descriptor:descriptor];
  v8 = v7;
  if (v7)
  {
    p_deviceWrapper = &v7->super.super.super._device[2]._deviceWrapper;
    v7->_options = p_deviceWrapper;
    v7->_dispatchID.encoderID = d;
    v7->_dispatchID.eventID = 0;
    LOBYTE(v7->_commandBufferJumpNestingLevel) = (*(p_deviceWrapper + 20) & 0x200000001) != 0;
    MTLGPUDebugStageBufferHandles::clear(&v7->_handles);
  }

  return v8;
}

- (id)temporaryBufferWithBytes:(const void *)bytes length:(unint64_t)length
{
  v5 = [(MTLToolsObject *)self->super.super.super._parent temporaryBufferWithBytes:bytes length:length];
  [(MTLGPUDebugComputeCommandEncoder *)self useResource:v5 usage:3];
  return v5;
}

- (id)temporaryBufferWithLength:(unint64_t)length
{
  v4 = [(MTLToolsObject *)self->super.super.super._parent temporaryBufferWithLength:length];
  [(MTLGPUDebugComputeCommandEncoder *)self useResource:v4 usage:3];
  return v4;
}

- (void)bindInternalBufferWithOffset:(id)offset offset:(unint64_t)a4 index:(unint64_t)index
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  baseObject = self->super.super.super._baseObject;
  offsetCopy = offset;
  if (isKindOfClass)
  {
    offsetCopy = [offset baseObject];
  }

  [(MTLToolsObject *)baseObject useResource:offsetCopy usage:3];
  v12 = [offset gpuAddress] + a4;

  [(MTLGPUDebugComputeCommandEncoder *)self bindInternalValue:v12 index:index];
}

- (void)bindInternalBuffer:(id)buffer index:(unint64_t)index
{
  if (buffer)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    baseObject = self->super.super.super._baseObject;
    if (isKindOfClass)
    {
      bufferCopy = [buffer baseObject];
      v10 = baseObject;
    }

    else
    {
      v10 = self->super.super.super._baseObject;
      bufferCopy = buffer;
    }

    [(MTLToolsObject *)v10 useResource:bufferCopy usage:3];
    gpuAddress = [buffer gpuAddress];

    [(MTLGPUDebugComputeCommandEncoder *)self bindInternalValue:gpuAddress index:index];
  }
}

- (void)setInternalBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v7 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithBytes:bytes length:length options:0];
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] _addUsedBuffer:v7];
  if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
  {
    [(MTLToolsObject *)self->super.super.super._parent markBuffer:v7 usage:3 stages:1];
  }

  [(MTLGPUDebugComputeCommandEncoder *)self bindInternalBuffer:v7 index:index];
}

- (void)setBufferUsageTable:(id)table textureUsageTable:(id)usageTable textureTypeTable:(id)typeTable
{
  if (*(&self->_options->var0 + 2))
  {
    [(MTLGPUDebugComputeCommandEncoder *)self bindInternalBuffer:table index:5];
    [(MTLGPUDebugComputeCommandEncoder *)self bindInternalBuffer:usageTable index:6];
    [(MTLGPUDebugComputeCommandEncoder *)self bindInternalBuffer:typeTable index:7];
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:table usage:1];
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:usageTable usage:1];
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:typeTable usage:1];
    self->_bufferUsageTable = table;
    self->_textureUsageTable = usageTable;
    self->_textureTypeTable = typeTable;
  }
}

- (void)flushBindings
{
  [(MTLToolsObject *)self->super.super.super._parent setNumDispatches:[(MTLToolsObject *)self->super.super.super._parent numDispatches]+ 1];
  v3 = *&self->_options->var0 & 0x7000000;
  activeThreadgroupMask = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] activeThreadgroupMask];
  threadgroupArgumentOffset = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)self->_currentPipeline debugInstrumentationData] threadgroupArgumentOffset];
  if (v3 && self->_threadgroup.needsFlush)
  {
    v10 = activeThreadgroupMask;
    v6 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_threadgroup, &v10, threadgroupArgumentOffset);
    if (v6)
    {
      v7 = v6;
      [(MTLGPUDebugComputeCommandEncoder *)self setInternalBytes:self->_threadgroup.entries length:256 atIndex:4];
      if (activeThreadgroupMask)
      {
        [(MTLToolsObject *)self->super.super.super._baseObject setThreadgroupMemoryLength:v7 atIndex:__clz(__rbit32(activeThreadgroupMask))];
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

- (void)setComputePipelineStateBuffers:(id)buffers
{
  v22 = *MEMORY[0x277D85DE8];
  var0 = self->_options->var0;
  globalConstantsBuffer = [buffers globalConstantsBuffer];
  v7 = globalConstantsBuffer;
  if ((*&var0 & 0x800000) != 0)
  {
    if (globalConstantsBuffer)
    {
      -[MTLToolsCommandEncoder addRetainedObject:](self, "addRetainedObject:", [buffers globalConstantsBuffer]);
      -[MTLGPUDebugComputeCommandEncoder useResource:usage:](self, "useResource:usage:", [buffers globalConstantsBuffer], 1);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    binaryFunctionData = [buffers binaryFunctionData];
    v11 = [binaryFunctionData countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(binaryFunctionData);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if (*(v15 + 8))
          {
            [(MTLToolsCommandEncoder *)self addRetainedObject:?];
            [(MTLGPUDebugComputeCommandEncoder *)self useResource:*(v15 + 8) usage:1];
          }
        }

        v12 = [binaryFunctionData countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    -[MTLGPUDebugComputeCommandEncoder bindInternalValue:index:](self, "bindInternalValue:index:", [objc_msgSend(buffers "globalConstantsBuffer")], 12);
    v16 = *MEMORY[0x277D85DE8];
  }

  else
  {
    constantOffset = [buffers constantOffset];
    v9 = *MEMORY[0x277D85DE8];

    [(MTLGPUDebugComputeCommandEncoder *)self bindInternalBufferWithOffset:v7 offset:constantOffset index:12];
  }
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v11 = &self->_computeEncoderBoundBuffers[index];
  v11->stride = stride;
  v11->resource = [buffer baseObject];
  v11->offset = offset;
  if (LOBYTE(self->_commandBufferJumpNestingLevel) == 1)
  {
    [(MTLToolsObject *)self->super.super.super._parent markBuffer:buffer usage:3 stages:1];
  }

  -[MTLToolsObject setBuffer:offset:attributeStride:atIndex:](self->super.super.super._baseObject, "setBuffer:offset:attributeStride:atIndex:", [buffer baseObject], offset, stride, index);
  -[MTLToolsCommandEncoder addRetainedObject:](self, "addRetainedObject:", [buffer baseObject]);

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

  [(MTLGPUDebugComputeCommandEncoder *)self setBuffers:buffers offsets:offsets attributeStrides:v10 withRange:location, length];
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
      [(MTLGPUDebugComputeCommandEncoder *)self setBuffer:buffers[v12] offset:offsets[v12] attributeStride:strides[v12] atIndex:v12 + location];
      v12 = v13;
    }

    while (length > v13++);
  }
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v11 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:length options:0];
  [(MTLToolsObject *)self->super.super.super._parent _addUsedBuffer:v11];
  memcpy([v11 contents], bytes, length);
  offset = [v11 offset];

  [(MTLGPUDebugComputeCommandEncoder *)self setBuffer:v11 offset:offset attributeStride:stride atIndex:index];
}

- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  debugBuf = [structure debugBuf];
  v8 = &self->_computeEncoderBoundBuffers[index];
  v8->resource = debugBuf;
  v8->offset = 0;
  MTLGPUDebugStageBufferHandles::setResource(&self->_handles, structure, index);
  baseObject = self->super.super.super._baseObject;
  debugBuf2 = [structure debugBuf];

  [(MTLToolsObject *)baseObject setBuffer:debugBuf2 offset:0 atIndex:index];
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
      [(MTLGPUDebugComputeCommandEncoder *)self setAccelerationStructure:v8 atBufferIndex:location++];
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
      -[MTLToolsObject markTexture:usage:stages:](self->super.super.super._parent, "markTexture:usage:stages:", [texture gpuIdentifier], 3, 1);
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
          -[MTLToolsObject markTexture:usage:stages:](self->super.super.super._parent, "markTexture:usage:stages:", [v8 gpuIdentifier], 3, 1);
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
  if (table)
  {
    baseObject = [table baseObject];
    v8 = &self->_computeEncoderBoundBuffers[index];
    v8->resource = baseObject;
    v8->offset = 0;
    v8->type = 115;
    MTLGPUDebugStageBufferHandles::setResource(&self->_handles, table, index);
    -[MTLToolsObject setVisibleFunctionTable:atBufferIndex:](self->super.super.super._baseObject, "setVisibleFunctionTable:atBufferIndex:", [table baseObject], index);
    baseObject = self->super.super.super._baseObject;
    v10 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v10 usage:1];
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
      [(MTLGPUDebugComputeCommandEncoder *)self setVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (table)
  {
    v7 = &self->_computeEncoderBoundBuffers[index];
    v7->resource = *(table + 2);
    v7->offset = 0;
    v7->type = 116;
    MTLGPUDebugStageBufferHandles::setResource(&self->_handles, table, index);
    [(MTLToolsObject *)self->super.super.super._baseObject setIntersectionFunctionTable:*(table + 2) atBufferIndex:index];
    baseObject = self->super.super.super._baseObject;
    v9 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v9 usage:1];
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
      [(MTLGPUDebugComputeCommandEncoder *)self setIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  [(MTLGPUDebugComputeCommandEncoder *)self flushBindings];
  v9 = *threads;
  v8 = *threadgroup;
  v7.receiver = self;
  v7.super_class = MTLGPUDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v7 dispatchThreads:&v9 threadsPerThreadgroup:&v8];
}

- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  [(MTLGPUDebugComputeCommandEncoder *)self flushBindings];
  v7.receiver = self;
  v7.super_class = MTLGPUDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v7 dispatchThreadsWithIndirectBuffer:buffer indirectBufferOffset:offset];
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  [(MTLGPUDebugComputeCommandEncoder *)self flushBindings];
  v9 = *threadgroups;
  v8 = *threadgroup;
  v7.receiver = self;
  v7.super_class = MTLGPUDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v7 dispatchThreadgroups:&v9 threadsPerThreadgroup:&v8];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  [(MTLGPUDebugComputeCommandEncoder *)self flushBindings];
  v10 = *threadgroup;
  v9.receiver = self;
  v9.super_class = MTLGPUDebugComputeCommandEncoder;
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
    v7.super_class = MTLGPUDebugComputeCommandEncoder;
    [(MTLToolsComputeCommandEncoder *)&v7 setThreadgroupMemoryLength:length atIndex:index];
  }
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  v11.receiver = self;
  v11.super_class = MTLGPUDebugComputeCommandEncoder;
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
        -[MTLToolsObject markTexture:usage:stages:](self->super.super.super._parent, "markTexture:usage:stages:", [resource gpuIdentifier], usage, 1);
        if ([resource conformsToProtocol:&unk_284228AC0])
        {
          if (resource)
          {
            [resource getActiveViews];
            for (i = v9; i; i = *i)
            {
              [(MTLToolsObject *)self->super.super.super._parent markTexture:i[2] usage:usage stages:1];
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

  [resource useWithComputeEncoder:self usage:{usage, v8, v9, v10}];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  if (count)
  {
    countCopy = count;
    do
    {
      v9 = *resources++;
      [(MTLGPUDebugComputeCommandEncoder *)self useResource:v9 usage:usage];
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
  v5.super_class = MTLGPUDebugComputeCommandEncoder;
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
      [(MTLGPUDebugComputeCommandEncoder *)self useHeap:v7];
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
  v5.super_class = MTLGPUDebugComputeCommandEncoder;
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
  v11.super_class = MTLGPUDebugComputeCommandEncoder;
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
    [(MTLGPUDebugComputeCommandEncoder *)self setComputePipelineStateBuffers:state];
  }

  self->_currentPipeline = state;
  v6.receiver = self;
  v6.super_class = MTLGPUDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v6 setComputePipelineState:state];
}

- (void)endEncoding
{
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] endingEncoder:self type:1];
  MTLGPUDebugStageBufferHandles::clear(&self->_handles);
  v3.receiver = self;
  v3.super_class = MTLGPUDebugComputeCommandEncoder;
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
  v8.super_class = MTLGPUDebugComputeCommandEncoder;
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
  v9.super_class = MTLGPUDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v9 executeCommandsInBuffer:buffer indirectBuffer:indirectBuffer indirectBufferOffset:offset];
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

- (id).cxx_construct
{
  *(self + 1688) = 0;
  *(self + 2076) = 0;
  return self;
}

@end