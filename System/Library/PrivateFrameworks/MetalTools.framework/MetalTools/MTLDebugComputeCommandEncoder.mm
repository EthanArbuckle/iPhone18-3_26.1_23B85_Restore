@interface MTLDebugComputeCommandEncoder
- (MTLDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor;
- (id).cxx_construct;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (id)formattedDescription:(unint64_t)description;
- (uint64_t)validateComputeFunctionArgumentsCommon;
- (unint64_t)nextVirtualSubstream;
- (void)_setDefaults;
- (void)_validateAllFunctionArguments;
- (void)_validateThreadsPerThreadgroup:(id *)threadgroup;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)beginVirtualSubstream;
- (void)dealloc;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)endEncoding;
- (void)endEncoding_private;
- (void)endVirtualSubstream;
- (void)enumerateBuffersUsingBlock:(id)block;
- (void)enumerateSamplersUsingBlock:(id)block;
- (void)enumerateTexturesUsingBlock:(id)block;
- (void)enumerateThreadgroupMemoryLengthsUsingBlock:(id)block;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count;
- (void)memoryBarrierWithScope:(unint64_t)scope;
- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setComputePipelineState:(id)state;
- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setStageInRegion:(id *)region;
- (void)setStageInRegionWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)updateFence:(id)fence;
- (void)useHeap:(id)heap;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)validateComputeFunctionArgumentsCommon;
- (void)validateFunctionTableUseResource:(id)resource selectorName:(id)name;
- (void)validateStageInRegion:(id *)region;
- (void)waitForFence:(id)fence;
- (void)waitForVirtualSubstream:(unint64_t)substream;
@end

@implementation MTLDebugComputeCommandEncoder

- (void)_setDefaults
{
  bzero(self->_buffers, 0xAA8uLL);
  bzero(self->_textures, 0x2C00uLL);
  bzero(self->_samplers, 0x580uLL);
  bzero(self->_threadgroupMemoryLengths, 0xAA8uLL);
  self->_imageBlockSize.width = 0;
  self->_imageBlockSize.height = 0;
  self->canDealloc = 0;
  self->canEndEncoding = 0;
  self->canSetComputePipelineState = 1;
  self->hasEndEncoding = 0;
  self->_imageBlockSize.depth = 1;
  self->hasSetComputePipelineState = 0;
  self->allowsNullBufferBinds = 0;
  var0 = self->updatedFences.__map_.var0;
  var1 = self->updatedFences.__map_.var1;
  self->updatedFences.__size_ = 0;
  v5 = var1 - var0;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*var0);
      v6 = self->updatedFences.__map_.var1;
      var0 = self->updatedFences.__map_.var0 + 1;
      self->updatedFences.__map_.var0 = var0;
      v5 = v6 - var0;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v7 = 256;
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v7 = 512;
LABEL_7:
    self->updatedFences.__start_ = v7;
  }

  self->_activeSubstream = 0;
  self->_numSubstreams = 0;
  std::__tree<unsigned int>::destroy(&self->_progressLabels, self->_progressLabels.__tree_.__end_node_.__left_);
  self->_progressLabels.__tree_.__begin_node_ = &self->_progressLabels.__tree_.__end_node_;
  self->_progressLabels.__tree_.__size_ = 0;
  self->_progressLabels.__tree_.__end_node_.__left_ = 0;
  self->_encodingVirtualSubstream = 0;
  self->_currentVirtualSubstreamIndex = 0;
  self->_encodedVirtualSubstreamDispatch = 0;
}

- (MTLDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor
{
  v12.receiver = self;
  v12.super_class = MTLDebugComputeCommandEncoder;
  v7 = [MTLToolsComputeCommandEncoder initWithComputeCommandEncoder:sel_initWithComputeCommandEncoder_parent_descriptor_ parent:encoder descriptor:?];
  v8 = v7;
  if (v7)
  {
    v7->_commandBuffer = buffer;
    [(MTLDebugComputeCommandEncoder *)v7 _setDefaults];
    v8->hasSetStageInRegion = 0;
    if (descriptor)
    {
      for (i = 0; i != 4; ++i)
      {
        -[MTLDebugCommandBuffer addObject:retained:purgeable:](v8->_commandBuffer, "addObject:retained:purgeable:", [objc_msgSend(objc_msgSend(descriptor "sampleBufferAttachments")], 1, 0);
      }
    }

    substreamCount = [descriptor substreamCount];
    v8->_activeSubstream = 0;
    v8->_numSubstreams = substreamCount;
    std::__tree<unsigned int>::destroy(&v8->_progressLabels, v8->_progressLabels.__tree_.__end_node_.__left_);
    v8->_progressLabels.__tree_.__begin_node_ = &v8->_progressLabels.__tree_.__end_node_;
    v8->_progressLabels.__tree_.__size_ = 0;
    v8->_progressLabels.__tree_.__end_node_.__left_ = 0;
  }

  return v8;
}

- (void)dealloc
{
  p_updatedFences = &self->updatedFences;
  var0 = self->updatedFences.__map_.var0;
  var1 = self->updatedFences.__map_.var1;
  self->updatedFences.__size_ = 0;
  v6 = (var1 - var0) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*var0);
      v7 = p_updatedFences->__map_.var1;
      var0 = (p_updatedFences->__map_.var0 + 1);
      p_updatedFences->__map_.var0 = var0;
      v6 = (v7 - var0) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 256;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 512;
  }

  p_updatedFences->__start_ = v8;
LABEL_8:
  if (self->canDealloc)
  {
    v9.receiver = self;
    v9.super_class = MTLDebugComputeCommandEncoder;
    [(MTLToolsObject *)&v9 dealloc];
  }

  else
  {
    [-[MTLToolsObject baseObject](self "baseObject")];
    v9.receiver = self;
    v9.super_class = MTLDebugComputeCommandEncoder;
    [(MTLToolsObject *)&v9 dealloc];
    MTLReportFailure();
  }
}

- (id)formattedDescription:(unint64_t)description
{
  v30[5] = *MEMORY[0x277D85DE8];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = [@"\n" stringByPaddingToLength:description + 8 withString:@" " startingAtIndex:0];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:226];
  computePipelineState = self->_computePipelineState;
  v30[0] = v5;
  v30[1] = @"computePipelineState =";
  v9 = @"<null>";
  if (computePipelineState)
  {
    v9 = computePipelineState;
  }

  v30[2] = v9;
  v30[3] = v5;
  v20 = v5;
  v30[4] = @"Set Buffers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v30, 5)}];
  v10 = 0;
  selfCopy = self;
  do
  {
    v29[0] = v6;
    v29[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer %lu:", v10];
    v29[2] = argumentFormattedDescription(description + 8, selfCopy->_buffers);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v29, 3)}];
    ++v10;
    selfCopy = (selfCopy + 88);
  }

  while (v10 != 31);
  v28[0] = v20;
  v28[1] = @"Set Textures:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v28, 2)}];
  v12 = 0;
  selfCopy2 = self;
  do
  {
    v27[0] = v6;
    v27[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Texture %lu:", v12];
    v27[2] = argumentFormattedDescription(description + 8, selfCopy2->_textures);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v27, 3)}];
    ++v12;
    selfCopy2 = (selfCopy2 + 88);
  }

  while (v12 != 128);
  v26[0] = v20;
  v26[1] = @"Set Samplers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v26, 2)}];
  v14 = 0;
  selfCopy3 = self;
  do
  {
    v25[0] = v6;
    v25[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Sampler %lu:", v14];
    v25[2] = argumentFormattedDescription(description + 8, selfCopy3->_samplers);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v25, 3)}];
    ++v14;
    selfCopy3 = (selfCopy3 + 88);
  }

  while (v14 != 16);
  v24[0] = v20;
  v24[1] = @"Set ThreadgroupMemoryLengths:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v24, 2)}];
  v16 = 0;
  selfCopy4 = self;
  do
  {
    v23[0] = v6;
    v23[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Threadgroup %lu:", v16];
    v23[2] = argumentFormattedDescription(description + 8, selfCopy4->_threadgroupMemoryLengths);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v23, 3)}];
    ++v16;
    selfCopy4 = (selfCopy4 + 88);
  }

  while (v16 != 31);
  v22[0] = v20;
  v22[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Image Block Size: %lu x %lu", self->_imageBlockSize.width, self->_imageBlockSize.height];
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v22, 2)}];
  v21.receiver = self;
  v21.super_class = MTLDebugComputeCommandEncoder;
  result = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", -[MTLToolsObject description](&v21, sel_description), objc_msgSend(v7, "componentsJoinedByString:", @" "];
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setComputePipelineState:(id)state
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setComputePipelineState:];
    if (state)
    {
      goto LABEL_3;
    }

LABEL_14:
    [MTLDebugComputeCommandEncoder setComputePipelineState:];
    goto LABEL_7;
  }

  if (!state)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (([state conformsToProtocol:&unk_284228298] & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder setComputePipelineState:];
  }

  device = self->super.super.super._device;
  if (device != [state device])
  {
    [MTLDebugComputeCommandEncoder setComputePipelineState:];
  }

LABEL_7:
  if (self->hasSetComputePipelineState && self->_computePipelineState == state)
  {
    [MTLDebugComputeCommandEncoder setComputePipelineState:];
  }

  self->hasSetComputePipelineState = 1;
  if (!self->canSetComputePipelineState)
  {
    [MTLDebugComputeCommandEncoder setComputePipelineState:];
  }

  self->canSetComputePipelineState = 0;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:state retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  self->_computePipelineState = state;
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setBytes:length:attributeStride:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= index)
  {
    [MTLDebugComputeCommandEncoder setBytes:? length:? attributeStride:? atIndex:?];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeInlineDataSize]< length)
  {
    [MTLDebugComputeCommandEncoder setBytes:? length:? attributeStride:? atIndex:?];
  }

  v11 = &self->_buffers[index];
  validateArg(0, index, v11);
  supportsDynamicAttributeStride = [(MTLToolsDevice *)self->super.super.super._device supportsDynamicAttributeStride];
  baseObject = [(MTLToolsObject *)self baseObject];
  if (supportsDynamicAttributeStride)
  {
    [baseObject setBytes:bytes length:length attributeStride:stride atIndex:index];
  }

  else
  {
    [baseObject setBytes:bytes length:length atIndex:index];
  }

  MTLReportFailureTypeEnabled();
  v11->isValid = length != 0;
  v11->hasBeenUsed = 0;
  v11->type = 0;
  v11->object = 0;
  v11->var0 = 0;
  v11->bufferLength = length;
  v11->bufferOffset = 0;
  v11->bufferAttributeStride = stride;
  v11->threadgroupMemoryLength = 0;
  v11->threadgroupMemoryOffset = 0;
  v11->hasLodClamp = 0;
  v11->lodMinClamp = 0.0;
  v11->lodMaxClamp = 0.0;
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= index)
  {
    [MTLDebugComputeCommandEncoder setBuffer:? offset:? attributeStride:? atIndex:?];
    if (buffer)
    {
      goto LABEL_5;
    }
  }

  else if (buffer)
  {
LABEL_5:
    if (([buffer conformsToProtocol:&unk_284222E68] & 1) == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }

    device = self->super.super.super._device;
    if (device != [buffer device])
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }

    if ([buffer length] <= offset)
    {
      [MTLDebugComputeCommandEncoder setBuffer:buffer offset:? attributeStride:? atIndex:?];
    }

    goto LABEL_14;
  }

  if (offset)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

LABEL_14:
  v12 = &self->_buffers[index];
  validateArg(0, index, v12);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1];
  supportsDynamicAttributeStride = [(MTLToolsDevice *)self->super.super.super._device supportsDynamicAttributeStride];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  if (supportsDynamicAttributeStride)
  {
    [baseObject setBuffer:baseObject2 offset:offset attributeStride:stride atIndex:index];
  }

  else
  {
    [baseObject setBuffer:baseObject2 offset:offset atIndex:index];
  }

  v16 = [buffer length];
  if (MTLReportFailureTypeEnabled() && buffer && !v12->hasLodClamp && v12->bufferAttributeStride == stride && v12->bufferOffset == offset && v12->bufferLength == v16 && v12->object == buffer && !(v12->var0 | v12->type) && *&v12->threadgroupMemoryLength == 0 && !*&v12->lodMinClamp)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  v12->isValid = v16 != 0;
  v12->hasBeenUsed = 0;
  v12->type = 0;
  v12->object = buffer;
  v12->var0 = 0;
  v12->bufferLength = v16;
  v12->bufferOffset = offset;
  v12->bufferAttributeStride = stride;
  v12->threadgroupMemoryLength = 0;
  v12->threadgroupMemoryOffset = 0;
  v12->hasLodClamp = 0;
  v12->lodMinClamp = 0.0;
  v12->lodMaxClamp = 0.0;
}

- (void)setBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setBufferOffset:attributeStride:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= index)
  {
    [MTLDebugComputeCommandEncoder setBufferOffset:? attributeStride:? atIndex:?];
  }

  v9 = &self->_buffers[index];
  validateArg(0, index, v9);
  p_object = &v9->object;
  object = v9->object;
  if (!object)
  {
    indexCopy = index;
    MTLReportFailure();
    object = *p_object;
  }

  if ([object length] <= offset)
  {
    [MTLDebugComputeCommandEncoder setBufferOffset:? attributeStride:? atIndex:?];
  }

  supportsDynamicAttributeStride = [(MTLToolsDevice *)self->super.super.super._device supportsDynamicAttributeStride];
  baseObject = [(MTLToolsObject *)self baseObject];
  if (supportsDynamicAttributeStride)
  {
    [baseObject setBufferOffset:offset attributeStride:stride atIndex:index];
  }

  else
  {
    [baseObject setBufferOffset:offset atIndex:index];
  }

  v14 = *p_object;
  v15 = [*p_object length];
  if (MTLReportFailureTypeEnabled() && v14 && !v9->hasLodClamp && v9->bufferAttributeStride == -1 && v9->bufferOffset == offset && v9->bufferLength == v15 && v9->object == v14 && !(v9->var0 | v9->type) && *&v9->threadgroupMemoryLength == 0 && !*&v9->lodMinClamp)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  v9->isValid = v15 != 0;
  v9->hasBeenUsed = 0;
  v9->type = 0;
  v9->object = v14;
  v9->var0 = 0;
  v9->bufferLength = v15;
  v9->bufferOffset = offset;
  v9->bufferAttributeStride = -1;
  v9->threadgroupMemoryLength = 0;
  v9->threadgroupMemoryOffset = 0;
  v9->hasLodClamp = 0;
  v9->lodMinClamp = 0.0;
  v9->lodMaxClamp = 0.0;
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<unsigned long>::vector[abi:ne200100](__b, range.length);
  v10 = __b[0];
  if (length)
  {
    memset(__b[0], 255, 8 * length);
  }

  [(MTLDebugComputeCommandEncoder *)self setBuffers:buffers offsets:offsets attributeStrides:v10 withRange:location, length];
  if (__b[0])
  {
    __b[1] = __b[0];
    operator delete(__b[0]);
  }
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v39[31] = *MEMORY[0x277D85DE8];
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setBuffers:offsets:attributeStrides:withRange:];
  }

  if (location + length > [(MTLToolsDevice *)selfCopy->super.super.super._device maxComputeBuffers])
  {
    [MTLDebugComputeCommandEncoder setBuffers:? offsets:? attributeStrides:? withRange:?];
    if (!length)
    {
      goto LABEL_41;
    }
  }

  else if (!length)
  {
    goto LABEL_41;
  }

  v11 = 0;
  v12 = 0;
  p_bufferLength = &selfCopy->_buffers[location].bufferLength;
  v36 = location;
  v37 = length;
  buffersCopy = buffers;
  v35 = selfCopy;
  do
  {
    v14 = buffers[v11];
    if (v14)
    {
      if (([v14 conformsToProtocol:&unk_284222E68] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffers:offsets:attributeStrides:withRange:];
      }

      device = selfCopy->super.super.super._device;
      if (device != [buffers[v11] device])
      {
        [MTLDebugComputeCommandEncoder setBuffers:offsets:attributeStrides:withRange:];
      }

      v16 = offsets[v12];
      if (v16 >= [buffers[v11] length])
      {
        [MTLDebugComputeCommandEncoder setBuffers:&buffers[v11] offsets:? attributeStrides:? withRange:?];
      }
    }

    else if (offsets[v12])
    {
      v32 = v12;
      v33 = offsets[v12];
      MTLReportFailure();
    }

    v17 = (p_bufferLength + 48);
    validateArg(0, location + v12, (p_bufferLength - 32));
    [(MTLDebugCommandBuffer *)selfCopy->_commandBuffer addObject:buffers[v11] retained:1 purgeable:1];
    v39[v12] = [buffers[v11] baseObject];
    v18 = buffers[v11];
    v19 = [v18 length];
    offsetsCopy = offsets;
    v21 = offsets[v12];
    v22 = strides[v12];
    if (MTLReportFailureTypeEnabled() && v18 && (*(p_bufferLength + 40) & 1) == 0)
    {
      v23 = *(p_bufferLength + 16) == v22 && *(p_bufferLength + 8) == v21;
      v24 = v23 && *p_bufferLength == v19;
      v25 = v24 && *(p_bufferLength - 16) == v18;
      v26 = v25 && (*(p_bufferLength - 8) | *(p_bufferLength - 24)) == 0;
      v27 = v26 && *(p_bufferLength + 24) == 0;
      if (v27 && *(p_bufferLength + 44) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
      }
    }

    *(p_bufferLength - 32) = v19 != 0;
    *(p_bufferLength - 31) = 0;
    *(p_bufferLength - 24) = 0;
    *(p_bufferLength - 16) = v18;
    *(p_bufferLength - 8) = 0;
    *p_bufferLength = v19;
    *(p_bufferLength + 8) = v21;
    *(p_bufferLength + 16) = v22;
    *(p_bufferLength + 24) = 0;
    *(p_bufferLength + 32) = 0;
    *(p_bufferLength + 40) = 0;
    ++v12;
    ++v11;
    p_bufferLength += 88;
    *(v17 - 1) = 0;
    *v17 = 0;
    location = v36;
    length = v37;
    offsets = offsetsCopy;
    buffers = buffersCopy;
    selfCopy = v35;
  }

  while (v37 != v12);
LABEL_41:
  v29 = [(MTLToolsDevice *)selfCopy->super.super.super._device supportsDynamicAttributeStride:v32];
  baseObject = [(MTLToolsObject *)selfCopy baseObject];
  if (v29)
  {
    [baseObject setBuffers:v39 offsets:offsets attributeStrides:strides withRange:{location, length}];
  }

  else
  {
    [baseObject setBuffers:v39 offsets:offsets withRange:{location, length}];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setTexture:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeTextures]<= index)
  {
    [MTLDebugComputeCommandEncoder setTexture:? atIndex:?];
    if (!texture)
    {
      goto LABEL_13;
    }
  }

  else if (!texture)
  {
    goto LABEL_13;
  }

  if (([texture conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder setTexture:atIndex:];
  }

  device = self->super.super.super._device;
  if (device != [texture device])
  {
    [MTLDebugComputeCommandEncoder setTexture:atIndex:];
  }

  if ([objc_msgSend(texture "baseObject")])
  {
    [MTLDebugComputeCommandEncoder setTexture:atIndex:];
  }

  if ([objc_msgSend(texture "baseObject")] == 3)
  {
    [MTLDebugComputeCommandEncoder setTexture:atIndex:];
  }

LABEL_13:
  v8 = &self->_textures[index];
  validateArg(2, index, v8);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:texture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (MTLReportFailureTypeEnabled() && !v8->hasLodClamp && v8->bufferAttributeStride == -1 && v8->type == 1 && v8->object == texture && (v8->bufferLength | v8->var0 | v8->bufferOffset) == 0 && *&v8->threadgroupMemoryLength == 0 && *&v8->lodMinClamp == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  v8->isValid = texture != 0;
  v8->hasBeenUsed = 0;
  v8->type = 1;
  v8->object = texture;
  v8->var0 = 0;
  v8->bufferLength = 0;
  v8->bufferOffset = 0;
  v8->bufferAttributeStride = -1;
  v8->threadgroupMemoryLength = 0;
  v8->threadgroupMemoryOffset = 0;
  v8->hasLodClamp = 0;
  v8->lodMinClamp = 0.0;
  v8->lodMaxClamp = 0.0;
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v20[128] = *MEMORY[0x277D85DE8];
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setTextures:withRange:];
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures])
  {
    [MTLDebugComputeCommandEncoder setTextures:? withRange:?];
    if (!length)
    {
      goto LABEL_37;
    }
  }

  else if (!length)
  {
    goto LABEL_37;
  }

  v8 = 0;
  p_bufferLength = &self->_buffers[location].bufferLength;
  do
  {
    v10 = textures[v8];
    if (v10)
    {
      if (([v10 conformsToProtocol:&unk_28423C818] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder setTextures:withRange:];
      }

      device = self->super.super.super._device;
      if (device != [textures[v8] device])
      {
        [MTLDebugComputeCommandEncoder setTextures:withRange:];
      }

      if ([objc_msgSend(textures[v8] "baseObject")])
      {
        [MTLDebugComputeCommandEncoder setTextures:withRange:];
      }

      if ([objc_msgSend(textures[v8] "baseObject")] == 3)
      {
        [MTLDebugComputeCommandEncoder setTextures:withRange:];
      }
    }

    v12 = p_bufferLength + 347;
    validateArg(2, location + v8, (p_bufferLength + 337));
    [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:textures[v8] retained:1 purgeable:1];
    v20[v8] = [textures[v8] baseObject];
    v13 = textures[v8];
    if (MTLReportFailureTypeEnabled() && (p_bufferLength[346] & 1) == 0 && p_bufferLength[343] == -1 && p_bufferLength[338] == 1 && p_bufferLength[339] == v13 && (p_bufferLength[341] | p_bufferLength[340] | p_bufferLength[342]) == 0 && *(p_bufferLength + 172) == 0 && *(p_bufferLength + 2772) == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }

    *(p_bufferLength + 2696) = v13 != 0;
    *(p_bufferLength + 2697) = 0;
    p_bufferLength[338] = 1;
    p_bufferLength[339] = v13;
    p_bufferLength[340] = 0;
    p_bufferLength[341] = 0;
    p_bufferLength[342] = 0;
    p_bufferLength[343] = -1;
    p_bufferLength[344] = 0;
    p_bufferLength[345] = 0;
    *(p_bufferLength + 2768) = 0;
    ++v8;
    p_bufferLength += 11;
    *(v12 - 1) = 0;
    *v12 = 0;
  }

  while (length != v8);
LABEL_37:
  [-[MTLToolsObject baseObject](self "baseObject")];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setSamplerState:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers]<= index)
  {
    [MTLDebugComputeCommandEncoder setSamplerState:? atIndex:?];
    if (!state)
    {
      goto LABEL_9;
    }
  }

  else if (!state)
  {
    goto LABEL_9;
  }

  if (([state conformsToProtocol:&unk_284222970] & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder setSamplerState:atIndex:];
  }

  device = self->super.super.super._device;
  if (device != [state device])
  {
    [MTLDebugComputeCommandEncoder setSamplerState:atIndex:];
  }

LABEL_9:
  v8 = &self->_samplers[index];
  validateArg(3, index, v8);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:state retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (MTLReportFailureTypeEnabled() && !v8->hasLodClamp && v8->bufferAttributeStride == -1 && v8->type == 2 && v8->object == state && (v8->bufferLength | v8->var0 | v8->bufferOffset) == 0 && *&v8->threadgroupMemoryLength == 0 && *&v8->lodMinClamp == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  v8->isValid = state != 0;
  v8->hasBeenUsed = 0;
  v8->type = 2;
  v8->object = state;
  v8->var0 = 0;
  v8->bufferLength = 0;
  v8->bufferOffset = 0;
  v8->bufferAttributeStride = -1;
  v8->threadgroupMemoryLength = 0;
  v8->threadgroupMemoryOffset = 0;
  v8->hasLodClamp = 0;
  v8->lodMinClamp = 0.0;
  v8->lodMaxClamp = 0.0;
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v20[16] = *MEMORY[0x277D85DE8];
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setSamplerStates:withRange:];
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers])
  {
    [MTLDebugComputeCommandEncoder setSamplerStates:? withRange:?];
    if (!length)
    {
      goto LABEL_33;
    }
  }

  else if (!length)
  {
    goto LABEL_33;
  }

  v8 = 0;
  p_bufferLength = &self->_buffers[location].bufferLength;
  do
  {
    v10 = states[v8];
    if (v10)
    {
      if (([v10 conformsToProtocol:&unk_284222970] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder setSamplerStates:withRange:];
      }

      device = self->super.super.super._device;
      if (device != [states[v8] device])
      {
        [MTLDebugComputeCommandEncoder setSamplerStates:withRange:];
      }
    }

    v12 = p_bufferLength + 1755;
    validateArg(3, location + v8, (p_bufferLength + 1745));
    [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:states[v8] retained:1 purgeable:0];
    v20[v8] = [states[v8] baseObject];
    v13 = states[v8];
    if (MTLReportFailureTypeEnabled() && (p_bufferLength[1754] & 1) == 0 && p_bufferLength[1751] == -1 && p_bufferLength[1746] == 2 && p_bufferLength[1747] == v13 && (p_bufferLength[1749] | p_bufferLength[1748] | p_bufferLength[1750]) == 0 && *(p_bufferLength + 876) == 0 && *(p_bufferLength + 14036) == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }

    *(p_bufferLength + 13960) = v13 != 0;
    *(p_bufferLength + 13961) = 0;
    p_bufferLength[1746] = 2;
    p_bufferLength[1747] = v13;
    p_bufferLength[1748] = 0;
    p_bufferLength[1749] = 0;
    p_bufferLength[1750] = 0;
    p_bufferLength[1751] = -1;
    p_bufferLength[1752] = 0;
    p_bufferLength[1753] = 0;
    *(p_bufferLength + 14032) = 0;
    ++v8;
    p_bufferLength += 11;
    *(v12 - 1) = 0;
    *v12 = 0;
  }

  while (length != v8);
LABEL_33:
  [-[MTLToolsObject baseObject](self "baseObject")];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setSamplerState:lodMinClamp:lodMaxClamp:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers]<= index)
  {
    [MTLDebugComputeCommandEncoder setSamplerState:? lodMinClamp:? lodMaxClamp:? atIndex:?];
    if (!state)
    {
      goto LABEL_9;
    }
  }

  else if (!state)
  {
    goto LABEL_9;
  }

  if (([state conformsToProtocol:&unk_284222970] & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder setSamplerState:lodMinClamp:lodMaxClamp:atIndex:];
  }

  device = self->super.super.super._device;
  if (device != [state device])
  {
    [MTLDebugComputeCommandEncoder setSamplerState:lodMinClamp:lodMaxClamp:atIndex:];
  }

LABEL_9:
  v12 = &self->_samplers[index];
  validateArg(3, index, v12);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:state retained:1 purgeable:0];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v15 = clamp;
  *&v16 = maxClamp;
  [baseObject setSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v15 atIndex:v16];
  if (MTLReportFailureTypeEnabled())
  {
    if (LODWORD(v12->lodMaxClamp) == LODWORD(maxClamp) && LODWORD(v12->lodMinClamp) == LODWORD(clamp) && v12->hasLodClamp && v12->bufferAttributeStride == -1 && v12->type == 2 && v12->object == state && (v12->bufferLength | v12->var0 | v12->bufferOffset) == 0 && *&v12->threadgroupMemoryLength == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }
  }

  v12->isValid = state != 0;
  v12->hasBeenUsed = 0;
  v12->type = 2;
  v12->object = state;
  v12->var0 = 0;
  v12->bufferLength = 0;
  v12->bufferOffset = 0;
  v12->bufferAttributeStride = -1;
  v12->threadgroupMemoryLength = 0;
  v12->threadgroupMemoryOffset = 0;
  v12->hasLodClamp = 1;
  v12->lodMinClamp = clamp;
  v12->lodMaxClamp = maxClamp;
}

- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29[16] = *MEMORY[0x277D85DE8];
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setSamplerStates:lodMinClamps:lodMaxClamps:withRange:];
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers])
  {
    [MTLDebugComputeCommandEncoder setSamplerStates:? lodMinClamps:? lodMaxClamps:? withRange:?];
    if (!length)
    {
      goto LABEL_38;
    }
  }

  else if (!length)
  {
    goto LABEL_38;
  }

  v11 = 0;
  p_bufferLength = &self->_buffers[location].bufferLength;
  do
  {
    v13 = states[v11];
    if (v13)
    {
      if (([v13 conformsToProtocol:&unk_284222970] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder setSamplerStates:lodMinClamps:lodMaxClamps:withRange:];
      }

      v14 = *(&self->super.super.super.super.isa + v27);
      if (v14 != [states[v11] device])
      {
        [MTLDebugComputeCommandEncoder setSamplerStates:lodMinClamps:lodMaxClamps:withRange:];
      }
    }

    v15 = (p_bufferLength + 1755);
    validateArg(3, location + v11, (p_bufferLength + 1745));
    [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:states[v11] retained:1 purgeable:0];
    v29[v11] = [states[v11] baseObject];
    v16 = states[v11];
    v17 = clamps[v11];
    v18 = maxClamps[v11];
    if (MTLReportFailureTypeEnabled())
    {
      if (*v15 == LODWORD(v18) && *(p_bufferLength + 3509) == LODWORD(v17) && *(p_bufferLength + 14032) != 0 && p_bufferLength[1751] == -1 && p_bufferLength[1746] == 2 && p_bufferLength[1747] == v16 && (p_bufferLength[1749] | p_bufferLength[1748] | p_bufferLength[1750]) == 0 && *(p_bufferLength + 876) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
      }
    }

    *(p_bufferLength + 13960) = v16 != 0;
    *(p_bufferLength + 13961) = 0;
    p_bufferLength[1746] = 2;
    p_bufferLength[1747] = v16;
    p_bufferLength[1748] = 0;
    p_bufferLength[1749] = 0;
    p_bufferLength[1750] = 0;
    p_bufferLength[1751] = -1;
    p_bufferLength[1752] = 0;
    p_bufferLength[1753] = 0;
    *(p_bufferLength + 14032) = 1;
    ++v11;
    p_bufferLength += 11;
    *(v15 - 1) = v17;
    *v15 = v18;
  }

  while (length != v11);
LABEL_38:
  [-[MTLToolsObject baseObject](self "baseObject")];
  v26 = *MEMORY[0x277D85DE8];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes]<= index)
  {
    [MTLDebugComputeCommandEncoder setThreadgroupMemoryLength:? atIndex:?];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength]< length)
  {
    [MTLDebugComputeCommandEncoder setThreadgroupMemoryLength:? atIndex:?];
  }

  if (length % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes])
  {
    [MTLDebugComputeCommandEncoder setThreadgroupMemoryLength:? atIndex:?];
  }

  v7 = &self->_threadgroupMemoryLengths[index];
  validateArg(1, index, v7);
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (MTLReportFailureTypeEnabled() && !v7->hasLodClamp && !v7->threadgroupMemoryOffset && v7->threadgroupMemoryLength == length && v7->bufferAttributeStride == -1 && v7->type == 3 && !v7->object && !(v7->bufferLength | v7->var0 | v7->bufferOffset) && !*&v7->lodMinClamp)
  {
    [MTLDebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  v7->isValid = length != 0;
  v7->hasBeenUsed = 0;
  v7->type = 3;
  *&v7->object = 0u;
  *&v7->bufferLength = 0u;
  v7->bufferAttributeStride = -1;
  v7->threadgroupMemoryLength = length;
  v7->threadgroupMemoryOffset = 0;
  v7->hasLodClamp = 0;
  v7->lodMinClamp = 0.0;
  v7->lodMaxClamp = 0.0;
}

- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setImageblockWidth:height:];
  }

  if ((width ^ (width - 1)) <= width - 1)
  {
    [MTLDebugComputeCommandEncoder setImageblockWidth:height:];
  }

  if ((height ^ (height - 1)) <= height - 1)
  {
    [MTLDebugComputeCommandEncoder setImageblockWidth:height:];
  }

  if (height * width >= 0x401)
  {
    widthCopy = width;
    heightCopy = height;
    MTLReportFailure();
  }

  self->_imageBlockSize.width = width;
  self->_imageBlockSize.height = height;
  v7 = [(MTLToolsObject *)self baseObject:widthCopy];

  [v7 setImageblockWidth:width height:height];
}

- (void)validateStageInRegion:(id *)region
{
  p_stageInRegion = &self->stageInRegion;
  width = self->stageInRegion.size.width;
  if (!(self->stageInRegion.size.height * width * self->stageInRegion.size.depth))
  {
    size = self->stageInRegion.size;
    MTLReportFailure();
    width = p_stageInRegion->size.width;
  }

  if (width > region->var0)
  {
    var0 = region->var0;
    MTLReportFailure();
  }

  if (p_stageInRegion->size.height > region->var1)
  {
    height = p_stageInRegion->size.height;
    var1 = region->var1;
    MTLReportFailure();
  }

  if (p_stageInRegion->size.depth > region->var2)
  {
    depth = p_stageInRegion->size.depth;
    var2 = region->var2;
    MTLReportFailure();
  }
}

- (void)setStageInRegion:(id *)region
{
  self->hasSetStageInRegion = 1;
  self->hasIndirectSetStageInRegion = 0;
  v4 = *&region->var0.var0;
  v5 = *&region->var1.var1;
  *&self->stageInRegion.origin.z = *&region->var0.var2;
  *&self->stageInRegion.size.height = v5;
  *&self->stageInRegion.origin.x = v4;
  baseObject = [(MTLToolsObject *)self baseObject];
  v7 = *&region->var0.var2;
  v8[0] = *&region->var0.var0;
  v8[1] = v7;
  v8[2] = *&region->var1.var1;
  [baseObject setStageInRegion:v8];
}

- (void)setStageInRegionWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  self->hasSetStageInRegion = 0;
  self->hasIndirectSetStageInRegion = 1;
  if ((offset & 3) != 0)
  {
    [MTLDebugComputeCommandEncoder setStageInRegionWithIndirectBuffer:indirectBufferOffset:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setStageInRegionWithIndirectBuffer:baseObject2 indirectBufferOffset:offset];
}

- (void)_validateAllFunctionArguments
{
  v3 = 0;
  buffers = self->_buffers;
  do
  {
    validateArg(0, v3++, buffers++);
  }

  while (v3 != 31);
  v5 = 0;
  textures = self->_textures;
  do
  {
    validateArg(2, v5++, textures++);
  }

  while (v5 != 128);
  v7 = 0;
  samplers = self->_samplers;
  do
  {
    validateArg(3, v7++, samplers++);
  }

  while (v7 != 16);
  v9 = 0;
  threadgroupMemoryLengths = self->_threadgroupMemoryLengths;
  do
  {
    validateArg(1, v9++, threadgroupMemoryLengths++);
  }

  while (v9 != 31);
}

- (void)_validateThreadsPerThreadgroup:(id *)threadgroup
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  v29 = *threadgroup;
  computePipelineState = self->_computePipelineState;
  if (computePipelineState)
  {
    [(MTLComputePipelineState *)computePipelineState requiredThreadsPerThreadgroup];
  }

  validateDispatchThreadsPerThreadgroupWithRTPTG();
  _MTLMessageContextEnd();
  p_var1 = &threadgroup->var1;
  p_var2 = &threadgroup->var2;
  v9 = threadgroup->var1 * threadgroup->var0 * threadgroup->var2;
  if (!v9)
  {
    var2 = threadgroup->var2;
    v28 = 0;
    var0 = threadgroup->var0;
    var1 = threadgroup->var1;
    MTLReportFailure();
    v9 = threadgroup->var1 * threadgroup->var0 * threadgroup->var2;
  }

  if (v9 > [(MTLToolsDevice *)self->super.super.super._device maxTotalComputeThreadsPerThreadgroup:var0])
  {
    [(MTLDebugComputeCommandEncoder *)threadgroup _validateThreadsPerThreadgroup:&threadgroup->var2, &self->super.super.super._device];
  }

  v10 = threadgroup->var1 * threadgroup->var0 * threadgroup->var2;
  if (v10 > [(MTLComputePipelineState *)self->_computePipelineState maxTotalThreadsPerThreadgroup])
  {
    [(MTLDebugComputeCommandEncoder *)threadgroup _validateThreadsPerThreadgroup:&threadgroup->var2, &self->_computePipelineState];
  }

  v11 = threadgroup->var0;
  v12 = self->super.super.super._device;
  if (!v12)
  {
    if (!v11)
    {
      v14 = *p_var1;
      goto LABEL_17;
    }

    v19 = threadgroup->var0;
LABEL_34:
    v20 = 0;
    memset(&v29, 0, sizeof(v29));
    goto LABEL_35;
  }

  [(MTLToolsDevice *)v12 maxThreadsPerThreadgroup];
  v13 = self->super.super.super._device;
  if (v11 <= v29.var0)
  {
    goto LABEL_11;
  }

  v19 = threadgroup->var0;
  if (!v13)
  {
    goto LABEL_34;
  }

  [(MTLToolsDevice *)v13 maxThreadsPerThreadgroup];
  v20 = v29.var0;
LABEL_35:
  v24 = v19;
  v26 = v20;
  MTLReportFailure();
  v13 = self->super.super.super._device;
LABEL_11:
  v14 = *p_var1;
  if (!v13)
  {
LABEL_17:
    if (!v14)
    {
      v17 = 0;
      v16 = *p_var2;
      goto LABEL_19;
    }

    v21 = *p_var1;
    goto LABEL_29;
  }

  [(MTLToolsDevice *)v13 maxThreadsPerThreadgroup];
  v15 = self->super.super.super._device;
  if (v14 <= v29.var1)
  {
    goto LABEL_13;
  }

  v21 = *p_var1;
  if (v15)
  {
    [(MTLToolsDevice *)v15 maxThreadsPerThreadgroup];
    v22 = v29.var1;
    goto LABEL_32;
  }

LABEL_29:
  v22 = 0;
  v29.var2 = 0;
LABEL_32:
  v24 = v21;
  v26 = v22;
  MTLReportFailure();
  v15 = self->super.super.super._device;
LABEL_13:
  v16 = *p_var2;
  if (v15)
  {
    [(MTLToolsDevice *)v15 maxThreadsPerThreadgroup];
    v17 = v29.var2;
  }

  else
  {
    v17 = 0;
  }

LABEL_19:
  if (v16 > v17)
  {
    [(MTLDebugComputeCommandEncoder *)&threadgroup->var2 _validateThreadsPerThreadgroup:?];
  }

  if ([-[MTLComputePipelineState descriptor](self->_computePipelineState descriptor])
  {
    v18 = threadgroup->var1 * threadgroup->var0 * threadgroup->var2;
    if (v18 % [(MTLComputePipelineState *)self->_computePipelineState threadExecutionWidth])
    {
      [(MTLDebugComputeCommandEncoder *)threadgroup _validateThreadsPerThreadgroup:&threadgroup->var2, &self->_computePipelineState];
    }
  }
}

- (void)validateComputeFunctionArgumentsCommon
{
  v125 = *MEMORY[0x277D85DE8];
  protectionOptions = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] protectionOptions];
  computePipelineState = self->_computePipelineState;
  v124[0] = self->_imageBlockSize;
  v98 = [(MTLComputePipelineState *)computePipelineState imageblockMemoryLengthForDimensions:v124];
  v4 = self->_computePipelineState;
  mtl4Descriptor = [(MTLComputePipelineState *)v4 mtl4Descriptor];
  function = [(MTLComputePipelineState *)v4 function];
  if (mtl4Descriptor)
  {
    if (!function)
    {
      name = _MTL4DebugFunctionDescriptorName([-[MTLComputePipelineState mtl4Descriptor](v4 "mtl4Descriptor")]);
      goto LABEL_6;
    }

    function = [(MTLComputePipelineState *)v4 function];
  }

  name = [function name];
LABEL_6:
  v100 = name;
  device = self->super.super.super._device;
  v9 = [-[MTLComputePipelineState validationReflection](v4 "validationReflection")];
  [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
  [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
  [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
  [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes];
  staticThreadgroupMemoryLength = [(MTLComputePipelineState *)self->_computePipelineState staticThreadgroupMemoryLength];
  allowsNullBufferBinds = self->allowsNullBufferBinds;
  requiresRaytracingEmulation = [(MTLToolsDevice *)device requiresRaytracingEmulation];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = v9;
  v108 = [v9 countByEnumeratingWithState:&v120 objects:v124 count:16];
  if (!v108)
  {
    v117 = 0;
    goto LABEL_143;
  }

  v117 = 0;
  buffers = self->_buffers;
  textures = self->_textures;
  samplers = self->_samplers;
  selfCopy = self;
  v109 = device;
  threadgroupMemoryLengths = self->_threadgroupMemoryLengths;
  v107 = *v121;
  v11 = 5;
  if (requiresRaytracingEmulation)
  {
    v11 = 6;
  }

  v105 = v11;
  v101 = ~protectionOptions;
  v104 = !requiresRaytracingEmulation;
  do
  {
    v12 = 0;
    do
    {
      if (*v121 != v107)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v120 + 1) + 8 * v12);
      v115 = v12;
      if ([v13 isActive])
      {
        type = [v13 type];
        name2 = [v13 name];
        arrayLength = [v13 arrayLength];
        v119 = v13;
        index = [v13 index];
        if (arrayLength)
        {
          v17 = type > 0x1B || ((1 << type) & 0xF03000F) == 0;
          if (v17)
          {
            abort();
          }

          v18 = 0;
          v19 = selfCopy + 88 * index;
          v114 = arrayLength;
          v118 = index;
          while (1)
          {
            v20 = v18 + index;
            if (type <= 2)
            {
              break;
            }

            if ((type - 16) >= 2)
            {
              if (type == 3)
              {
                if ((v19[14040] & 1) == 0)
                {
                  usage2 = name2;
                  bufferAlignment2 = v18;
                  v79 = MTLArgumentTypeToString(3);
                  protectionOptions2 = v20;
                  v63 = @"Compute";
                  v71 = v100;
                  MTLReportFailure();
                  index = v118;
                }

                v21 = &samplers[v20];
                if (*(v19 + 1756) != 2)
                {
                  usage2 = name2;
                  bufferAlignment2 = v18;
                  v79 = MTLArgumentTypeToString(3);
                  protectionOptions2 = v20;
                  v63 = @"Compute";
                  v71 = v100;
                  MTLReportFailure();
                  goto LABEL_124;
                }

LABEL_125:
                v21->hasBeenUsed = 1;
                goto LABEL_126;
              }

LABEL_79:
              v21 = (v19 + 48);
              if (allowsNullBufferBinds || v19[48])
              {
                if ((v19[48] & 1) == 0)
                {
                  goto LABEL_125;
                }
              }

              else
              {
                usage2 = name2;
                bufferAlignment2 = v18;
                v79 = MTLArgumentTypeToString(type);
                protectionOptions2 = v20;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
                index = v118;
                if (!v21->isValid)
                {
                  goto LABEL_125;
                }
              }

              v44 = type - 25;
              v45 = 5;
              if (type == 27)
              {
                v45 = 6;
              }

              v46 = v44 >= 2;
              v47 = v44 >= 2 && type != 27;
              v48 = 4;
              if (v46)
              {
                v48 = v45;
              }

              v49 = *(v19 + 7);
              v17 = !v47 || v49 != 6;
              v50 = v105;
              if (v17)
              {
                v50 = v48;
              }

              if (v49 != v50)
              {
                v58 = MTLArgumentTypeToString(type);
                bufferAlignment2 = v18;
                v90 = MTLDebugFunctionArgumentTypeToString(*(v19 + 7));
                protectionOptions2 = v20;
                usage2 = name2;
                v79 = v58;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
                index = v118;
              }

              goto LABEL_125;
            }

LABEL_126:
            ++v18;
            v19 += 88;
            if (arrayLength == v18)
            {
              goto LABEL_139;
            }
          }

          if (type)
          {
            if (type == 1)
            {
              if ((v19[15448] & 1) == 0)
              {
                usage2 = name2;
                bufferAlignment2 = v18;
                v79 = MTLArgumentTypeToString(1);
                protectionOptions2 = v20;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
              }

              if (*(v19 + 1932) != 3)
              {
                usage2 = name2;
                bufferAlignment2 = v18;
                v79 = MTLArgumentTypeToString(1);
                protectionOptions2 = v20;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
              }

              v51 = *(v19 + 1938);
              if (v51 < [v119 threadgroupMemoryDataSize])
              {
                v54 = *(v19 + 1938);
                threadgroupMemoryDataSize = [v119 threadgroupMemoryDataSize];
                v90 = name2;
                v91 = v18;
                usage2 = MTLArgumentTypeToString(1);
                bufferAlignment2 = v20;
                v79 = v54;
                protectionOptions2 = threadgroupMemoryDataSize;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
              }

              v21 = &threadgroupMemoryLengths[v20];
              v117 += *(v19 + 1938);
            }

            else
            {
              if (type != 2)
              {
                goto LABEL_79;
              }

              v21 = &textures[v20];
              v22 = (v19 + 2792);
              if (!*(v19 + 349))
              {
                goto LABEL_125;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [MTLDebugComputeCommandEncoder validateComputeFunctionArgumentsCommon];
              }

              v23 = *v22;
              if ((v19[2776] & 1) == 0)
              {
                usage2 = name2;
                bufferAlignment2 = v18;
                v79 = MTLArgumentTypeToString(2);
                protectionOptions2 = v20;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
              }

              if (*(v19 + 348) != 1)
              {
                usage2 = name2;
                bufferAlignment2 = v18;
                v79 = MTLArgumentTypeToString(2);
                protectionOptions2 = v20;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
              }

              v24 = v119;
              textureType = [v119 textureType];
              textureType2 = [*v22 textureType];
              if (textureType != textureType2)
              {
                v27 = textureType2;
                if (![(MTLToolsDevice *)v109 relaxedTextureArrayBindingsEnabled]|| ([(MTLDebugComputeCommandEncoder *)textureType validateComputeFunctionArgumentsCommon]& 1) != 0)
                {
                  v28 = MTLTextureTypeString();
                  v29 = MTLArgumentTypeToString(2);
                  v90 = name2;
                  v91 = v18;
                  usage2 = v20;
                  bufferAlignment2 = MTLTextureTypeString();
                  v80 = v28;
                  protectionOptions2 = v29;
                  v24 = v119;
                  v64 = @"Compute";
                  v72 = v100;
                  MTLReportFailure();
                }
              }

              usage = [v23 usage];
              if ([v24 access])
              {
                v31 = (*&usage & 0x10000) != 0 ? 16 : 2;
                if ((v23[20] & v31) == 0)
                {
                  [(MTLDebugComputeCommandEncoder *)v22 validateComputeFunctionArgumentsCommon];
                }
              }

              device = v109;
              if (![(MTLToolsDevice *)v109 supportsFamily:1010])
              {
                supportsMTL4PlacementSparse = [(MTLToolsDevice *)v109 supportsMTL4PlacementSparse];
                v33 = v24;
                v34 = supportsMTL4PlacementSparse;
                access = [v33 access];
                if (v34)
                {
                  v24 = v119;
                  if (access && [v23 isSparse] && objc_msgSend(v23, "sparseTextureTier") != 1)
                  {
                    v73 = v100;
                    v81 = v20;
                    v65 = @"Compute";
                    goto LABEL_138;
                  }
                }

                else
                {
                  v24 = v119;
                  if (access && [v23 isSparse])
                  {
                    v73 = v100;
                    v81 = v20;
                    v65 = @"Compute";
LABEL_138:
                    MTLReportFailure();
                  }
                }
              }

              [v24 textureDataType];
              v52 = v24;
              if ((_MTLCompatibleTextureDataTypeAndPixelFormatInfo() & 1) == 0)
              {
                [*v22 pixelFormat];
                Name = MTLPixelFormatGetName();
                v95 = MTLArgumentTypeToString(2);
                label = [*v22 label];
                if (!label)
                {
                  label = [MEMORY[0x277CBEB68] null];
                }

                v94 = label;
                v52 = v119;
                [v119 textureDataType];
                v93 = MTLDataTypeString();
                v92 = MTLArgumentTypeToString(2);
                MTLArgumentTypeToString(2);
                [*v22 pixelFormat];
                MTLPixelFormatGetName();
                [*v22 pixelFormat];
                MTLPixelFormatCompatibilityString();
                v91 = v92;
                bufferAlignment2 = v20;
                v90 = v93;
                protectionOptions2 = v95;
                usage2 = v94;
                v76 = v100;
                v84 = Name;
                v68 = @"Compute";
                MTLReportFailure();
                device = v109;
              }

              if ([v52 access] <= 1 && (objc_msgSend(v23, "requireUsage:", 1) & 1) == 0)
              {
                usage2 = [v23 usage];
                bufferAlignment2 = 1;
                v85 = name2;
                protectionOptions2 = v20;
                v69 = @"Compute";
                v77 = v100;
                MTLReportFailure();
              }

              arrayLength = v114;
              if (([v119 access] - 1) <= 1 && (objc_msgSend(v23, "requireUsage:", 2) & 1) == 0)
              {
                usage2 = [v23 usage];
                bufferAlignment2 = 2;
                v86 = name2;
                protectionOptions2 = v20;
                v70 = @"Compute";
                v78 = v100;
                MTLReportFailure();
              }

              if ([v119 access] == 1)
              {
                [v23 pixelFormat];
                if ((MTLReadWriteTextureIsSupported() & 1) == 0)
                {
                  v79 = name2;
                  protectionOptions2 = v20;
                  v63 = @"Compute";
                  v71 = v100;
                  MTLReportFailure();
                }
              }

              v53 = *v22;
              if (*v22)
              {
                if ([v119 access] != 2 && (objc_msgSend(v53, "protectionOptions") & v101) != 0)
                {
                  protectionOptions2 = [v53 protectionOptions];
                  usage2 = protectionOptions;
                  v71 = v100;
                  v79 = v20;
                  v63 = @"Compute";
                  MTLReportFailure();
                }

                if ([v119 access])
                {
                  v43 = *v22;
                  if ((protectionOptions & ~[*v22 protectionOptions]) != 0)
                  {
LABEL_123:
                    protectionOptions2 = [v43 protectionOptions];
                    usage2 = protectionOptions;
                    v71 = v100;
                    v79 = v20;
                    v63 = @"Compute";
                    MTLReportFailure();
                  }
                }
              }
            }
          }

          else
          {
            v21 = &buffers[v20];
            if (allowsNullBufferBinds || v19[48])
            {
              if ((v19[48] & 1) == 0)
              {
                goto LABEL_125;
              }
            }

            else
            {
              usage2 = name2;
              bufferAlignment2 = v18;
              v79 = MTLArgumentTypeToString(0);
              protectionOptions2 = v20;
              v63 = @"Compute";
              v71 = v100;
              MTLReportFailure();
              index = v118;
              if ((v19[48] & 1) == 0)
              {
                goto LABEL_125;
              }
            }

            v36 = *(v19 + 7);
            if (v36 == 4)
            {
              v37 = v104;
            }

            else
            {
              v37 = 1;
            }

            if (v36 && v37)
            {
              usage2 = name2;
              bufferAlignment2 = v18;
              v79 = MTLArgumentTypeToString(0);
              protectionOptions2 = v20;
              v63 = @"Compute";
              v71 = v100;
              MTLReportFailure();
            }

            v38 = *(v19 + 11);
            bufferAlignment = [v119 bufferAlignment];
            if (bufferAlignment <= 1)
            {
              v40 = 1;
            }

            else
            {
              v40 = bufferAlignment;
            }

            if (v38 % v40)
            {
              v57 = MTLArgumentTypeToString(0);
              bufferAlignment2 = [v119 bufferAlignment];
              v90 = *(v19 + 11);
              protectionOptions2 = v57;
              usage2 = v20;
              v74 = v100;
              v82 = name2;
              v66 = @"Compute";
              MTLReportFailure();
            }

            v41 = *(v19 + 10) - *(v19 + 11);
            if (v41 < [v119 bufferDataSize] && objc_msgSend(v119, "bufferDataSize") != -1)
            {
              v59 = MTLArgumentTypeToString(0);
              v60 = *(v19 + 11);
              v61 = *(v19 + 10);
              [v119 bufferDataSize];
              device = v109;
              v90 = v60;
              v91 = v61;
              usage2 = v59;
              bufferAlignment2 = v20;
              v83 = name2;
              protectionOptions2 = v18;
              v67 = @"Compute";
              v75 = v100;
              MTLReportFailure();
            }

            if ([v119 access] && !*(v19 + 8))
            {
              v71 = v100;
              v79 = v20;
              v63 = @"Compute";
              MTLReportFailure();
            }

            v42 = *(v19 + 8);
            arrayLength = v114;
            if (v42)
            {
              if ([v119 access] != 2 && (objc_msgSend(v42, "protectionOptions") & v101) != 0)
              {
                protectionOptions2 = [v42 protectionOptions];
                usage2 = protectionOptions;
                v71 = v100;
                v79 = v20;
                v63 = @"Compute";
                MTLReportFailure();
              }

              if ([v119 access])
              {
                v43 = *(v19 + 8);
                if ((protectionOptions & ~[v43 protectionOptions]) != 0)
                {
                  goto LABEL_123;
                }
              }
            }
          }

LABEL_124:
          index = v118;
          goto LABEL_125;
        }
      }

LABEL_139:
      v12 = v115 + 1;
    }

    while (v115 + 1 != v108);
    v108 = [obj countByEnumeratingWithState:&v120 objects:v124 count:16];
  }

  while (v108);
LABEL_143:
  if (staticThreadgroupMemoryLength + v98 + v117 > [(MTLToolsDevice *)device maxThreadgroupMemoryLength:v63])
  {
    [(MTLToolsDevice *)device maxThreadgroupMemoryLength];
    MTLReportFailure();
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    if (self->hasEndEncoding)
    {
      [MTLDebugComputeCommandEncoder dispatchThreadgroups:threadsPerThreadgroup:];
    }

    if (!self->_computePipelineState)
    {
      [MTLDebugComputeCommandEncoder dispatchThreadgroups:threadsPerThreadgroup:];
    }

    if (HIDWORD(threadgroups->var0))
    {
      [MTLDebugComputeCommandEncoder dispatchThreadgroups:threadsPerThreadgroup:];
    }

    if (HIDWORD(threadgroups->var1))
    {
      [MTLDebugComputeCommandEncoder dispatchThreadgroups:threadsPerThreadgroup:];
    }

    var2 = threadgroups->var2;
    if (HIDWORD(var2))
    {
      var0 = threadgroups->var2;
      MTLReportFailure();
      var2 = threadgroups->var2;
    }

    if (!(threadgroups->var1 * threadgroups->var0 * var2))
    {
      v23 = var2;
      v24 = 0;
      var0 = threadgroups->var0;
      var1 = threadgroups->var1;
      MTLReportFailure();
    }

    *v25 = *&threadgroup->var0;
    *&v25[16] = threadgroup->var2;
    [(MTLDebugComputeCommandEncoder *)self _validateThreadsPerThreadgroup:v25, var0, var1, v23, v24];
    computePipelineState = self->_computePipelineState;
    *v25 = *&threadgroup->var0;
    *&v25[16] = threadgroup->var2;
    v28 = *threadgroups;
    validateBuiltinArguments(computePipelineState, v25, &v28);
    [(MTLDebugComputeCommandEncoder *)self validateComputeFunctionArgumentsCommon];
  }

  v27 = 0;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v9 = self->_computePipelineState;
  device = [(MTLToolsObject *)self device];
  maxComputeBuffers = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
  v12 = [objc_msgSend(-[MTLComputePipelineState descriptor](v9 "descriptor")];
  if (maxComputeBuffers)
  {
    v13 = v12;
    v14 = 0;
    p_bufferAttributeStride = &self->_buffers[0].bufferAttributeStride;
    do
    {
      if (*(p_bufferAttributeStride - 48) == 1 && !*(p_bufferAttributeStride - 5) && [objc_msgSend(v13 objectAtIndexedSubscript:{v14), "stride"}])
      {
        if ([objc_msgSend(v13 objectAtIndexedSubscript:{v14), "stride"}] != -1 && *p_bufferAttributeStride != -1)
        {
          var0 = *p_bufferAttributeStride;
          var1 = v14;
          _MTLMessageContextPush_();
        }

        if ([objc_msgSend(v13 objectAtIndexedSubscript:{v14, var0, var1), "stride"}] == -1 && *p_bufferAttributeStride == -1)
        {
          v21 = v14;
          _MTLMessageContextPush_();
        }

        if ([objc_msgSend(v13 objectAtIndexedSubscript:{v14, v21), "stride"}] == -1)
        {
          v16 = *p_bufferAttributeStride;
        }

        else
        {
          v16 = [objc_msgSend(v13 objectAtIndexedSubscript:{v14), "stride"}];
        }

        if (([(MTLDevice *)device supportsUnalignedVertexFetch]& 1) == 0 && (v16 + 1) >= 2 && (v16 & 3) != 0)
        {
          var0 = v16;
          var1 = v14;
          _MTLMessageContextPush_();
        }
      }

      ++v14;
      p_bufferAttributeStride += 11;
    }

    while (maxComputeBuffers != v14);
  }

  _MTLMessageContextEnd();
  if (!-[MTLComputePipelineState mtl4Descriptor](self->_computePipelineState, "mtl4Descriptor") && [objc_msgSend(-[MTLComputePipelineState function](self->_computePipelineState "function")])
  {
    if (!self->hasSetStageInRegion && !self->hasIndirectSetStageInRegion)
    {
      [MTLDebugComputeCommandEncoder dispatchThreadgroups:threadsPerThreadgroup:];
    }

    if (!self->hasIndirectSetStageInRegion)
    {
      v18 = threadgroup->var2 * threadgroups->var2;
      v19 = threadgroup->var1 * threadgroups->var1;
      *v25 = threadgroup->var0 * threadgroups->var0;
      *&v25[8] = v19;
      *&v25[16] = v18;
      [(MTLDebugComputeCommandEncoder *)self validateStageInRegion:v25];
    }
  }

  self->canSetComputePipelineState = 1;
  self->canEndEncoding = 1;
  self->_encodedVirtualSubstreamDispatch = 1;
  baseObject = [(MTLToolsObject *)self baseObject];
  *v25 = *&threadgroups->var0;
  *&v25[16] = threadgroups->var2;
  v28 = *threadgroup;
  [baseObject dispatchThreadgroups:v25 threadsPerThreadgroup:&v28];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  if ((MTLReportFailureTypeEnabled() & 1) == 0 && !MTLReportFailureTypeEnabled())
  {
    goto LABEL_16;
  }

  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:indirectBufferOffset:threadsPerThreadgroup:];
  }

  if (self->_computePipelineState)
  {
    if (buffer)
    {
LABEL_7:
      if (([buffer conformsToProtocol:&unk_284222E68] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:indirectBufferOffset:threadsPerThreadgroup:];
      }

      device = self->super.super.super._device;
      if (device != [buffer device])
      {
        [MTLDebugComputeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:indirectBufferOffset:threadsPerThreadgroup:];
      }

      goto LABEL_11;
    }
  }

  else
  {
    [MTLDebugComputeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:indirectBufferOffset:threadsPerThreadgroup:];
    if (buffer)
    {
      goto LABEL_7;
    }
  }

  [MTLDebugComputeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:indirectBufferOffset:threadsPerThreadgroup:];
LABEL_11:
  if (offset + 12 > [buffer length])
  {
    [MTLDebugComputeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:? threadsPerThreadgroup:?];
  }

  if ((offset & 3) != 0)
  {
    [MTLDebugComputeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:indirectBufferOffset:threadsPerThreadgroup:];
  }

  v14 = *threadgroup;
  [(MTLDebugComputeCommandEncoder *)self _validateThreadsPerThreadgroup:&v14];
  computePipelineState = self->_computePipelineState;
  v14 = *threadgroup;
  *&v13.width = vdupq_n_s64(1uLL);
  v13.depth = 1;
  validateBuiltinArguments(computePipelineState, &v14, &v13);
  [(MTLDebugComputeCommandEncoder *)self validateComputeFunctionArgumentsCommon];
LABEL_16:
  self->canSetComputePipelineState = 1;
  self->canEndEncoding = 1;
  self->_encodedVirtualSubstreamDispatch = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  v14 = *threadgroup;
  [baseObject dispatchThreadgroupsWithIndirectBuffer:baseObject2 indirectBufferOffset:offset threadsPerThreadgroup:&v14];
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
    if (self->hasEndEncoding)
    {
      [MTLDebugComputeCommandEncoder dispatchThreads:threadsPerThreadgroup:];
    }

    if (!self->_computePipelineState)
    {
      [MTLDebugComputeCommandEncoder dispatchThreads:threadsPerThreadgroup:];
    }

    if (HIDWORD(threads->var0))
    {
      [MTLDebugComputeCommandEncoder dispatchThreads:threadsPerThreadgroup:];
    }

    if (HIDWORD(threads->var1))
    {
      [MTLDebugComputeCommandEncoder dispatchThreads:threadsPerThreadgroup:];
    }

    var2 = threads->var2;
    if (HIDWORD(var2))
    {
      var0 = threads->var2;
      MTLReportFailure();
      var2 = threads->var2;
    }

    if (!(threads->var1 * threads->var0 * var2))
    {
      v15 = var2;
      v16 = 0;
      var0 = threads->var0;
      var1 = threads->var1;
      MTLReportFailure();
    }

    v18 = *threadgroup;
    [(MTLDebugComputeCommandEncoder *)self _validateThreadsPerThreadgroup:&v18, var0, var1, v15, v16];
    v8 = threadgroup->var1;
    v18.depth = threadgroup->var2;
    v9 = (threads->var0 + threadgroup->var0 - 1) / threadgroup->var0;
    v10 = (threads->var1 + v8 - 1) / v8;
    computePipelineState = self->_computePipelineState;
    *&v18.width = *&threadgroup->var0;
    v17.width = v9;
    v17.height = v10;
    v17.depth = (threads->var2 + threadgroup->var2 - 1) / threadgroup->var2;
    validateBuiltinArguments(computePipelineState, &v18, &v17);
    [(MTLDebugComputeCommandEncoder *)self validateComputeFunctionArgumentsCommon];
  }

  self->canSetComputePipelineState = 1;
  self->canEndEncoding = 1;
  self->_encodedVirtualSubstreamDispatch = 1;
  baseObject = [(MTLToolsObject *)self baseObject];
  v18 = *threads;
  v17 = *threadgroup;
  [baseObject dispatchThreads:&v18 threadsPerThreadgroup:&v17];
}

- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  if ((MTLReportFailureTypeEnabled() & 1) == 0 && !MTLReportFailureTypeEnabled())
  {
    goto LABEL_16;
  }

  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder dispatchThreadsWithIndirectBuffer:indirectBufferOffset:];
  }

  if (self->_computePipelineState)
  {
    if (buffer)
    {
LABEL_7:
      if (([buffer conformsToProtocol:&unk_284222E68] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder dispatchThreadsWithIndirectBuffer:indirectBufferOffset:];
      }

      device = self->super.super.super._device;
      if (device != [buffer device])
      {
        [MTLDebugComputeCommandEncoder dispatchThreadsWithIndirectBuffer:indirectBufferOffset:];
      }

      goto LABEL_11;
    }
  }

  else
  {
    [MTLDebugComputeCommandEncoder dispatchThreadsWithIndirectBuffer:indirectBufferOffset:];
    if (buffer)
    {
      goto LABEL_7;
    }
  }

  [MTLDebugComputeCommandEncoder dispatchThreadsWithIndirectBuffer:indirectBufferOffset:];
LABEL_11:
  if (offset + 24 > [buffer length])
  {
    [MTLDebugComputeCommandEncoder dispatchThreadsWithIndirectBuffer:buffer indirectBufferOffset:?];
  }

  if ((offset & 3) != 0)
  {
    [MTLDebugComputeCommandEncoder dispatchThreadsWithIndirectBuffer:indirectBufferOffset:];
  }

  [(MTLDebugComputeCommandEncoder *)self validateComputeFunctionArgumentsCommon];
LABEL_16:
  self->canSetComputePipelineState = 1;
  self->canEndEncoding = 1;
  self->_encodedVirtualSubstreamDispatch = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject dispatchThreadsWithIndirectBuffer:baseObject2 indirectBufferOffset:offset];
}

- (void)updateFence:(id)fence
{
  fenceCopy = fence;
  std::deque<objc_object *>::push_back(&self->updatedFences.__map_.__first_, &fenceCopy);
  self->canEndEncoding = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:fence retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)waitForFence:(id)fence
{
  p_updatedFences = &self->updatedFences;
  size = self->updatedFences.__size_;
  if (size)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if ((*(p_updatedFences->__map_.var0 + (((p_updatedFences->__start_ + v7) >> 6) & 0x3FFFFFFFFFFFFF8)))[(p_updatedFences->__start_ + v7) & 0x1FF] == fence)
      {
        MTLReportFailure();
        size = p_updatedFences->__size_;
      }

      v7 = v8;
    }

    while (size > v8++);
  }

  self->canEndEncoding = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:fence retained:1 purgeable:0];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [fence baseObject];

  [baseObject waitForFence:baseObject2];
}

- (void)endEncoding_private
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder endEncoding_private];
  }

  if (!self->canEndEncoding)
  {
    [MTLDebugComputeCommandEncoder endEncoding_private];
  }

  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    [(MTLDebugComputeCommandEncoder *)self _validateAllFunctionArguments];
  }

  [(MTLDebugComputeCommandEncoder *)self _setDefaults];
  self->canDealloc = 1;
  self->hasEndEncoding = 1;
}

- (void)endEncoding
{
  [(MTLDebugComputeCommandEncoder *)self endEncoding_private];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endEncoding];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  [(MTLDebugComputeCommandEncoder *)self endEncoding_private];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject endEncodingAndRetrieveProgramAddressTable];
}

- (void)enumerateBuffersUsingBlock:(id)block
{
  maxComputeBuffers = [(MTLDevice *)[(MTLToolsObject *)self device] maxComputeBuffers];

  enumerateFunctionArgumentWithArray(self->_buffers, maxComputeBuffers, block);
}

- (void)enumerateTexturesUsingBlock:(id)block
{
  maxComputeTextures = [(MTLDevice *)[(MTLToolsObject *)self device] maxComputeTextures];

  enumerateFunctionArgumentWithArray(self->_textures, maxComputeTextures, block);
}

- (void)enumerateSamplersUsingBlock:(id)block
{
  maxComputeSamplers = [(MTLDevice *)[(MTLToolsObject *)self device] maxComputeSamplers];

  enumerateFunctionArgumentWithArray(self->_samplers, maxComputeSamplers, block);
}

- (void)enumerateThreadgroupMemoryLengthsUsingBlock:(id)block
{
  maxComputeLocalMemorySizes = [(MTLDevice *)[(MTLToolsObject *)self device] maxComputeLocalMemorySizes];

  enumerateFunctionArgumentWithArray(self->_threadgroupMemoryLengths, maxComputeLocalMemorySizes, block);
}

- (void)validateFunctionTableUseResource:(id)resource selectorName:(id)name
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [resource stage] != 1)
  {
    [MTLDebugComputeCommandEncoder validateFunctionTableUseResource:resource selectorName:?];
  }
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  if (!resource)
  {
    [MTLDebugComputeCommandEncoder useResource:usage:];
  }

  if ([resource storageMode] == 3)
  {
    [MTLDebugComputeCommandEncoder useResource:usage:];
  }

  if (usage >= 8)
  {
    [MTLDebugComputeCommandEncoder useResource:usage:];
  }

  [(MTLDebugComputeCommandEncoder *)self validateFunctionTableUseResource:resource selectorName:@"useResource:usage:"];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:resource retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [resource baseObject];

  [baseObject useResource:baseObject2 usage:usage];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  if (usage >= 8)
  {
    [MTLDebugComputeCommandEncoder useResources:count:usage:];
  }

  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v9 = 0;
    do
    {
      v10 = resources[v9];
      if (!v10)
      {
        v13 = v9;
        MTLReportFailure();
        v10 = resources[v9];
      }

      if ([v10 storageMode] == 3)
      {
        MTLReportFailure();
      }

      -[MTLDebugComputeCommandEncoder validateFunctionTableUseResource:selectorName:](self, "validateFunctionTableUseResource:selectorName:", resources[v9], [MEMORY[0x277CCACA8] stringWithFormat:@"useResources:count:usage: (index = %lu)", v9]);
      baseObject = [resources[v9] baseObject];
      *(__p[0] + v9) = baseObject;
      [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:resources[v9++] retained:1 purgeable:1];
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
  if (!heap)
  {
    [MTLDebugComputeCommandEncoder useHeap:];
  }

  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:heap retained:1 purgeable:1];
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
      v8 = heaps[v7];
      if (!v8)
      {
        v11 = v7;
        MTLReportFailure();
        v8 = heaps[v7];
      }

      baseObject = [v8 baseObject];
      *(__p[0] + v7) = baseObject;
      [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:heaps[v7++] retained:1 purgeable:1];
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

- (void)memoryBarrierWithScope:(unint64_t)scope
{
  if ([(MTLToolsDevice *)self->super.super.super._device supportsComputeMemoryBarrier])
  {
    if (scope >= 4)
    {
      [MTLDebugComputeCommandEncoder memoryBarrierWithScope:];
    }

    baseObject = [(MTLToolsObject *)self baseObject];

    [baseObject memoryBarrierWithScope:scope];
  }

  else
  {

    MTLReportFailure();
  }
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count
{
  if (!resources || !count)
  {
    [MTLDebugComputeCommandEncoder memoryBarrierWithResources:count:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device supportsComputeMemoryBarrier])
  {
    if (resources)
    {
      std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, count);
      if (count)
      {
        v7 = 0;
        do
        {
          v8 = resources[v7];
          if (!v8)
          {
            v11 = v7;
            MTLReportFailure();
            v8 = resources[v7];
          }

          baseObject = [v8 baseObject];
          *(__p[0] + v7++) = baseObject;
        }

        while (count != v7);
      }

      baseObject2 = [(MTLToolsObject *)self baseObject];
      [baseObject2 memoryBarrierWithResources:__p[0] count:count];
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {

    MTLReportFailure();
  }
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (self->_encodingVirtualSubstream)
  {
    [MTLDebugComputeCommandEncoder executeCommandsInBuffer:withRange:];
  }

  v14.length = [buffer size];
  v13.location = location;
  v13.length = length;
  v14.location = 0;
  v8 = NSIntersectionRange(v13, v14);
  if (v8.location != location || v8.length != length)
  {
    v10 = length;
    v11 = [buffer size];
    v9 = location;
    MTLReportFailure();
  }

  if ([objc_msgSend(buffer descriptor] && (-[MTLComputePipelineState supportIndirectCommandBuffers](-[MTLDebugComputeCommandEncoder computePipelineState](self, "computePipelineState"), "supportIndirectCommandBuffers") & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder executeCommandsInBuffer:withRange:];
  }

  v12.receiver = self;
  v12.super_class = MTLDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v12 executeCommandsInBuffer:buffer withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  if (self->_encodingVirtualSubstream)
  {
    [MTLDebugComputeCommandEncoder executeCommandsInBuffer:indirectBuffer:indirectBufferOffset:];
  }

  if ([objc_msgSend(buffer "descriptor")] && (-[MTLComputePipelineState supportIndirectCommandBuffers](-[MTLDebugComputeCommandEncoder computePipelineState](self, "computePipelineState"), "supportIndirectCommandBuffers") & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder executeCommandsInBuffer:indirectBuffer:indirectBufferOffset:];
  }

  v9.receiver = self;
  v9.super_class = MTLDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v9 executeCommandsInBuffer:buffer indirectBuffer:indirectBuffer indirectBufferOffset:offset];
}

- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setAccelerationStructure:atBufferIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= index)
  {
    [MTLDebugComputeCommandEncoder setAccelerationStructure:? atBufferIndex:?];
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 1);
  v7 = &self->_buffers[index];
  validateArg(25, index, v7);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:structure retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  v8 = [structure size];
  if (MTLReportFailureTypeEnabled())
  {
    v9.i64[0] = 0;
    v9.i64[1] = v8;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v7->var0, v9), vceqq_s64(*&v7->bufferOffset, xmmword_22E27C260))))) & 1) == 0 && v7->type == 4 && *&v7->threadgroupMemoryLength == 0 && v7->object == structure && structure && !*&v7->lodMinClamp && !v7->hasLodClamp)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }
  }

  v7->isValid = v8 != 0;
  v7->hasBeenUsed = 0;
  v7->type = 4;
  v7->object = structure;
  v7->var0 = 0;
  v7->bufferLength = v8;
  *&v7->bufferOffset = xmmword_22E27C260;
  v7->threadgroupMemoryLength = 0;
  v7->threadgroupMemoryOffset = 0;
  v7->hasLodClamp = 0;
  v7->lodMinClamp = 0.0;
  v7->lodMaxClamp = 0.0;
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setVisibleFunctionTable:atBufferIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= index)
  {
    [MTLDebugComputeCommandEncoder setVisibleFunctionTable:? atBufferIndex:?];
  }

  if ([-[MTLDevice baseObject](-[MTLToolsObject device](self "device")])
  {
    if (!table)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [MTLDebugComputeCommandEncoder setVisibleFunctionTable:atBufferIndex:];
    if (!table)
    {
      goto LABEL_11;
    }
  }

  if (([table conformsToProtocol:&unk_284225958] & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder setVisibleFunctionTable:atBufferIndex:];
  }

  device = self->super.super.super._device;
  if (device != [table device])
  {
    [MTLDebugComputeCommandEncoder setVisibleFunctionTable:atBufferIndex:];
  }

LABEL_11:
  v8 = &self->_buffers[index];
  validateArg(24, index, v8);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:table retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  functionCount = [table functionCount];
  if (MTLReportFailureTypeEnabled())
  {
    v10.i64[0] = 0;
    v10.i64[1] = functionCount;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v8->var0, v10), vceqq_s64(*&v8->bufferOffset, xmmword_22E27C260))))) & 1) == 0 && v8->type == 5 && *&v8->threadgroupMemoryLength == 0 && v8->object == table && table && !*&v8->lodMinClamp && !v8->hasLodClamp)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }
  }

  v8->isValid = functionCount != 0;
  v8->hasBeenUsed = 0;
  v8->type = 5;
  v8->object = table;
  v8->var0 = 0;
  v8->bufferLength = functionCount;
  *&v8->bufferOffset = xmmword_22E27C260;
  v8->threadgroupMemoryLength = 0;
  v8->threadgroupMemoryOffset = 0;
  v8->hasLodClamp = 0;
  v8->lodMinClamp = 0.0;
  v8->lodMaxClamp = 0.0;
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v21[31] = *MEMORY[0x277D85DE8];
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setVisibleFunctionTables:withBufferRange:];
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers])
  {
    [MTLDebugComputeCommandEncoder setVisibleFunctionTables:? withBufferRange:?];
  }

  if ([-[MTLDevice baseObject](-[MTLToolsObject device](self "device")])
  {
    if (!length)
    {
      goto LABEL_34;
    }
  }

  else
  {
    [MTLDebugComputeCommandEncoder setVisibleFunctionTables:withBufferRange:];
    if (!length)
    {
      goto LABEL_34;
    }
  }

  v8 = 0;
  p_bufferLength = &self->_buffers[location].bufferLength;
  do
  {
    v10 = tables[v8];
    if (v10)
    {
      if (([v10 conformsToProtocol:&unk_284225958] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder setVisibleFunctionTables:withBufferRange:];
      }

      device = self->super.super.super._device;
      if (device != [tables[v8] device])
      {
        [MTLDebugComputeCommandEncoder setVisibleFunctionTables:withBufferRange:];
      }
    }

    v12 = p_bufferLength + 6;
    validateArg(24, location + v8, (p_bufferLength - 4));
    [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:tables[v8] retained:1 purgeable:1];
    v21[v8] = [tables[v8] baseObject];
    v13 = tables[v8];
    functionCount = [v13 functionCount];
    if (MTLReportFailureTypeEnabled())
    {
      v15.i64[0] = 0;
      v15.i64[1] = functionCount;
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(p_bufferLength - 1), v15), vceqq_s64(*(p_bufferLength + 1), xmmword_22E27C260))))) & 1) == 0)
      {
        v19 = *(p_bufferLength - 3) == 5 && *(p_bufferLength + 3) == 0 && *(p_bufferLength - 2) == v13 && v13 != 0 && *(p_bufferLength + 44) == 0;
        if (v19 && (p_bufferLength[5] & 1) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }
    }

    *(p_bufferLength - 32) = functionCount != 0;
    *(p_bufferLength - 31) = 0;
    *(p_bufferLength - 3) = 5;
    *(p_bufferLength - 2) = v13;
    *(p_bufferLength - 1) = 0;
    *p_bufferLength = functionCount;
    *(p_bufferLength + 1) = xmmword_22E27C260;
    p_bufferLength[3] = 0;
    p_bufferLength[4] = 0;
    *(p_bufferLength + 40) = 0;
    ++v8;
    p_bufferLength += 11;
    *(v12 - 1) = 0;
    *v12 = 0;
  }

  while (length != v8);
LABEL_34:
  [-[MTLToolsObject baseObject](self "baseObject")];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setIntersectionFunctionTable:atBufferIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= index)
  {
    [MTLDebugComputeCommandEncoder setIntersectionFunctionTable:? atBufferIndex:?];
    if (!table)
    {
      goto LABEL_9;
    }
  }

  else if (!table)
  {
    goto LABEL_9;
  }

  if (([table conformsToProtocol:&unk_28423AC08] & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder setIntersectionFunctionTable:atBufferIndex:];
  }

  device = self->super.super.super._device;
  if (device != [table device])
  {
    [MTLDebugComputeCommandEncoder setIntersectionFunctionTable:atBufferIndex:];
  }

LABEL_9:
  v8 = &self->_buffers[index];
  validateArg(27, index, v8);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:table retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  functionCount = [table functionCount];
  if (MTLReportFailureTypeEnabled())
  {
    v10.i64[0] = 0;
    v10.i64[1] = functionCount;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v8->var0, v10), vceqq_s64(*&v8->bufferOffset, xmmword_22E27C260))))) & 1) == 0 && v8->type == 6 && *&v8->threadgroupMemoryLength == 0 && v8->object == table && table && !*&v8->lodMinClamp && !v8->hasLodClamp)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }
  }

  v8->isValid = functionCount != 0;
  v8->hasBeenUsed = 0;
  v8->type = 6;
  v8->object = table;
  v8->var0 = 0;
  v8->bufferLength = functionCount;
  *&v8->bufferOffset = xmmword_22E27C260;
  v8->threadgroupMemoryLength = 0;
  v8->threadgroupMemoryOffset = 0;
  v8->hasLodClamp = 0;
  v8->lodMinClamp = 0.0;
  v8->lodMaxClamp = 0.0;
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v21[31] = *MEMORY[0x277D85DE8];
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setIntersectionFunctionTables:withBufferRange:];
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers])
  {
    [MTLDebugComputeCommandEncoder setIntersectionFunctionTables:? withBufferRange:?];
    if (!length)
    {
      goto LABEL_32;
    }
  }

  else if (!length)
  {
    goto LABEL_32;
  }

  v8 = 0;
  p_bufferLength = &self->_buffers[location].bufferLength;
  do
  {
    v10 = tables[v8];
    if (v10)
    {
      if (([v10 conformsToProtocol:&unk_28423AC08] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder setIntersectionFunctionTables:withBufferRange:];
      }

      device = self->super.super.super._device;
      if (device != [tables[v8] device])
      {
        [MTLDebugComputeCommandEncoder setIntersectionFunctionTables:withBufferRange:];
      }
    }

    v12 = p_bufferLength + 6;
    validateArg(27, location + v8, (p_bufferLength - 4));
    [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:tables[v8] retained:1 purgeable:1];
    v21[v8] = [tables[v8] baseObject];
    v13 = tables[v8];
    functionCount = [v13 functionCount];
    if (MTLReportFailureTypeEnabled())
    {
      v15.i64[0] = 0;
      v15.i64[1] = functionCount;
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(p_bufferLength - 1), v15), vceqq_s64(*(p_bufferLength + 1), xmmword_22E27C260))))) & 1) == 0)
      {
        v19 = *(p_bufferLength - 3) == 6 && *(p_bufferLength + 3) == 0 && *(p_bufferLength - 2) == v13 && v13 != 0 && *(p_bufferLength + 44) == 0;
        if (v19 && (p_bufferLength[5] & 1) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }
    }

    *(p_bufferLength - 32) = functionCount != 0;
    *(p_bufferLength - 31) = 0;
    *(p_bufferLength - 3) = 6;
    *(p_bufferLength - 2) = v13;
    *(p_bufferLength - 1) = 0;
    *p_bufferLength = functionCount;
    *(p_bufferLength + 1) = xmmword_22E27C260;
    p_bufferLength[3] = 0;
    p_bufferLength[4] = 0;
    *(p_bufferLength + 40) = 0;
    ++v8;
    p_bufferLength += 11;
    *(v12 - 1) = 0;
    *v12 = 0;
  }

  while (length != v8);
LABEL_32:
  [-[MTLToolsObject baseObject](self "baseObject")];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)beginVirtualSubstream
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  if (self->_encodingVirtualSubstream)
  {
    [MTLDebugComputeCommandEncoder beginVirtualSubstream];
  }

  self->_encodingVirtualSubstream = 1;
  self->_currentVirtualSubstreamIndex = 0;
  self->_encodedVirtualSubstreamDispatch = 0;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject beginVirtualSubstream];
}

- (unint64_t)nextVirtualSubstream
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  if (!self->_encodingVirtualSubstream)
  {
    [MTLDebugComputeCommandEncoder nextVirtualSubstream];
  }

  ++self->_currentVirtualSubstreamIndex;
  self->_encodedVirtualSubstreamDispatch = 0;
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject nextVirtualSubstream];
}

- (void)endVirtualSubstream
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  if (!self->_encodingVirtualSubstream)
  {
    [MTLDebugComputeCommandEncoder endVirtualSubstream];
  }

  self->_encodingVirtualSubstream = 0;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endVirtualSubstream];
}

- (void)waitForVirtualSubstream:(unint64_t)substream
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  if (!self->_encodingVirtualSubstream)
  {
    [MTLDebugComputeCommandEncoder waitForVirtualSubstream:];
  }

  if (self->_encodedVirtualSubstreamDispatch)
  {
    [MTLDebugComputeCommandEncoder waitForVirtualSubstream:];
  }

  if (self->_currentVirtualSubstreamIndex <= substream)
  {
    substreamCopy = substream;
    currentVirtualSubstreamIndex = self->_currentVirtualSubstreamIndex;
    MTLReportFailure();
  }

  v5 = [(MTLToolsObject *)self baseObject:substreamCopy];

  [v5 waitForVirtualSubstream:substream];
}

- (void)useResidencySet:(id)set
{
  if (!set)
  {
    [MTLDebugComputeCommandEncoder useResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v5 useResidencySet:set];
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!sets[i])
      {
        [MTLDebugComputeCommandEncoder useResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v8 useResidencySets:sets count:count];
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder barrierAfterQueueStages:beforeStages:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
}

- (id).cxx_construct
{
  v2 = 48;
  v3 = 2728;
  do
  {
    v4 = self + v2;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
    *(v4 + 5) = 0;
    *(v4 + 6) = -1;
    *(v4 + 19) = 0;
    *(v4 + 20) = 0;
    *(v4 + 7) = 0;
    *(v4 + 8) = 0;
    v2 += 88;
    v4[72] = 0;
    v3 -= 88;
  }

  while (v3);
  v5 = 2776;
  v6 = 11264;
  do
  {
    v7 = self + v5;
    *(v7 + 3) = 0;
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = -1;
    *(v7 + 19) = 0;
    *(v7 + 20) = 0;
    *(v7 + 7) = 0;
    *(v7 + 8) = 0;
    v5 += 88;
    v7[72] = 0;
    v6 -= 88;
  }

  while (v6);
  v8 = 14040;
  v9 = 1408;
  do
  {
    v10 = self + v8;
    *(v10 + 3) = 0;
    *(v10 + 4) = 0;
    *(v10 + 5) = 0;
    *(v10 + 6) = -1;
    *(v10 + 19) = 0;
    *(v10 + 20) = 0;
    *(v10 + 7) = 0;
    *(v10 + 8) = 0;
    v8 += 88;
    v10[72] = 0;
    v9 -= 88;
  }

  while (v9);
  v11 = 15448;
  v12 = 2728;
  do
  {
    v13 = self + v11;
    *(v13 + 3) = 0;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0;
    *(v13 + 6) = -1;
    *(v13 + 19) = 0;
    *(v13 + 20) = 0;
    *(v13 + 7) = 0;
    *(v13 + 8) = 0;
    v11 += 88;
    v13[72] = 0;
    v12 -= 88;
  }

  while (v12);
  *(self + 1142) = 0u;
  *(self + 1143) = 0u;
  *(self + 1144) = 0u;
  *(self + 2293) = 0;
  *(self + 2292) = 0;
  *(self + 2291) = self + 18336;
  return self;
}

- (uint64_t)setBuffers:(uint64_t *)a1 offsets:(id *)a2 attributeStrides:withRange:.cold.5(uint64_t *a1, id *a2)
{
  v2 = *a1;
  [*a2 length];
  return MTLReportFailure();
}

- (uint64_t)_validateThreadsPerThreadgroup:(uint64_t *)a1 .cold.3(uint64_t *a1, id *a2)
{
  v2 = *a1;
  if (*a2)
  {
    [*a2 maxThreadsPerThreadgroup];
  }

  return MTLReportFailure();
}

- (uint64_t)validateComputeFunctionArgumentsCommon
{
  [*self pixelFormat];
  MTLPixelFormatGetName();
  return MTLReportFailure();
}

- (uint64_t)signalProgress:(uint64_t)a3 .cold.3(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a2;
    do
    {
      v5 = *(v4 + 16);
      v6 = *v5 == v4;
      v4 = v5;
    }

    while (v6);
  }

  else
  {
    v7 = a4;
    do
    {
      v5 = v7;
      v7 = *(v7 + 8);
    }

    while (v7);
  }

  v8 = *(v5 + 28);
  if (a1)
  {
    do
    {
      v9 = *(a2 + 16);
      v6 = *v9 == a2;
      a2 = v9;
    }

    while (v6);
  }

  else
  {
    do
    {
      v9 = a4;
      a4 = *(a4 + 8);
    }

    while (a4);
  }

  v11 = *(v9 + 28);
  return MTLReportFailure();
}

@end