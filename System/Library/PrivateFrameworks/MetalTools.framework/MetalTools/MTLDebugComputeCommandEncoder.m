@interface MTLDebugComputeCommandEncoder
- (MTLDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5;
- (id).cxx_construct;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (id)formattedDescription:(unint64_t)a3;
- (uint64_t)validateComputeFunctionArgumentsCommon;
- (unint64_t)nextVirtualSubstream;
- (void)_setDefaults;
- (void)_validateAllFunctionArguments;
- (void)_validateThreadsPerThreadgroup:(id *)a3;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4;
- (void)beginVirtualSubstream;
- (void)dealloc;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4;
- (void)endEncoding;
- (void)endEncoding_private;
- (void)endVirtualSubstream;
- (void)enumerateBuffersUsingBlock:(id)a3;
- (void)enumerateSamplersUsingBlock:(id)a3;
- (void)enumerateTexturesUsingBlock:(id)a3;
- (void)enumerateThreadgroupMemoryLengthsUsingBlock:(id)a3;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4;
- (void)memoryBarrierWithScope:(unint64_t)a3;
- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setComputePipelineState:(id)a3;
- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4;
- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setStageInRegion:(id *)a3;
- (void)setStageInRegionWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4;
- (void)setTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)updateFence:(id)a3;
- (void)useHeap:(id)a3;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
- (void)validateComputeFunctionArgumentsCommon;
- (void)validateFunctionTableUseResource:(id)a3 selectorName:(id)a4;
- (void)validateStageInRegion:(id *)a3;
- (void)waitForFence:(id)a3;
- (void)waitForVirtualSubstream:(unint64_t)a3;
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

- (MTLDebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5
{
  v12.receiver = self;
  v12.super_class = MTLDebugComputeCommandEncoder;
  v7 = [MTLToolsComputeCommandEncoder initWithComputeCommandEncoder:sel_initWithComputeCommandEncoder_parent_descriptor_ parent:a3 descriptor:?];
  v8 = v7;
  if (v7)
  {
    v7->_commandBuffer = a4;
    [(MTLDebugComputeCommandEncoder *)v7 _setDefaults];
    v8->hasSetStageInRegion = 0;
    if (a5)
    {
      for (i = 0; i != 4; ++i)
      {
        -[MTLDebugCommandBuffer addObject:retained:purgeable:](v8->_commandBuffer, "addObject:retained:purgeable:", [objc_msgSend(objc_msgSend(a5 "sampleBufferAttachments")], 1, 0);
      }
    }

    v10 = [a5 substreamCount];
    v8->_activeSubstream = 0;
    v8->_numSubstreams = v10;
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

- (id)formattedDescription:(unint64_t)a3
{
  v30[5] = *MEMORY[0x277D85DE8];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = [@"\n" stringByPaddingToLength:a3 + 8 withString:@" " startingAtIndex:0];
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
  v11 = self;
  do
  {
    v29[0] = v6;
    v29[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer %lu:", v10];
    v29[2] = argumentFormattedDescription(a3 + 8, v11->_buffers);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v29, 3)}];
    ++v10;
    v11 = (v11 + 88);
  }

  while (v10 != 31);
  v28[0] = v20;
  v28[1] = @"Set Textures:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v28, 2)}];
  v12 = 0;
  v13 = self;
  do
  {
    v27[0] = v6;
    v27[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Texture %lu:", v12];
    v27[2] = argumentFormattedDescription(a3 + 8, v13->_textures);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v27, 3)}];
    ++v12;
    v13 = (v13 + 88);
  }

  while (v12 != 128);
  v26[0] = v20;
  v26[1] = @"Set Samplers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v26, 2)}];
  v14 = 0;
  v15 = self;
  do
  {
    v25[0] = v6;
    v25[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Sampler %lu:", v14];
    v25[2] = argumentFormattedDescription(a3 + 8, v15->_samplers);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v25, 3)}];
    ++v14;
    v15 = (v15 + 88);
  }

  while (v14 != 16);
  v24[0] = v20;
  v24[1] = @"Set ThreadgroupMemoryLengths:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v24, 2)}];
  v16 = 0;
  v17 = self;
  do
  {
    v23[0] = v6;
    v23[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Threadgroup %lu:", v16];
    v23[2] = argumentFormattedDescription(a3 + 8, v17->_threadgroupMemoryLengths);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v23, 3)}];
    ++v16;
    v17 = (v17 + 88);
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

- (void)setComputePipelineState:(id)a3
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setComputePipelineState:];
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_14:
    [MTLDebugComputeCommandEncoder setComputePipelineState:];
    goto LABEL_7;
  }

  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (([a3 conformsToProtocol:&unk_284228298] & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder setComputePipelineState:];
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    [MTLDebugComputeCommandEncoder setComputePipelineState:];
  }

LABEL_7:
  if (self->hasSetComputePipelineState && self->_computePipelineState == a3)
  {
    [MTLDebugComputeCommandEncoder setComputePipelineState:];
  }

  self->hasSetComputePipelineState = 1;
  if (!self->canSetComputePipelineState)
  {
    [MTLDebugComputeCommandEncoder setComputePipelineState:];
  }

  self->canSetComputePipelineState = 0;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  self->_computePipelineState = a3;
}

- (void)setBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setBytes:length:attributeStride:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= a6)
  {
    [MTLDebugComputeCommandEncoder setBytes:? length:? attributeStride:? atIndex:?];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeInlineDataSize]< a4)
  {
    [MTLDebugComputeCommandEncoder setBytes:? length:? attributeStride:? atIndex:?];
  }

  v11 = &self->_buffers[a6];
  validateArg(0, a6, v11);
  v12 = [(MTLToolsDevice *)self->super.super.super._device supportsDynamicAttributeStride];
  v13 = [(MTLToolsObject *)self baseObject];
  if (v12)
  {
    [v13 setBytes:a3 length:a4 attributeStride:a5 atIndex:a6];
  }

  else
  {
    [v13 setBytes:a3 length:a4 atIndex:a6];
  }

  MTLReportFailureTypeEnabled();
  v11->isValid = a4 != 0;
  v11->hasBeenUsed = 0;
  v11->type = 0;
  v11->object = 0;
  v11->var0 = 0;
  v11->bufferLength = a4;
  v11->bufferOffset = 0;
  v11->bufferAttributeStride = a5;
  v11->threadgroupMemoryLength = 0;
  v11->threadgroupMemoryOffset = 0;
  v11->hasLodClamp = 0;
  v11->lodMinClamp = 0.0;
  v11->lodMaxClamp = 0.0;
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= a6)
  {
    [MTLDebugComputeCommandEncoder setBuffer:? offset:? attributeStride:? atIndex:?];
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else if (a3)
  {
LABEL_5:
    if (([a3 conformsToProtocol:&unk_284222E68] & 1) == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }

    device = self->super.super.super._device;
    if (device != [a3 device])
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }

    if ([a3 length] <= a4)
    {
      [MTLDebugComputeCommandEncoder setBuffer:a3 offset:? attributeStride:? atIndex:?];
    }

    goto LABEL_14;
  }

  if (a4)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

LABEL_14:
  v12 = &self->_buffers[a6];
  validateArg(0, a6, v12);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  v13 = [(MTLToolsDevice *)self->super.super.super._device supportsDynamicAttributeStride];
  v14 = [(MTLToolsObject *)self baseObject];
  v15 = [a3 baseObject];
  if (v13)
  {
    [v14 setBuffer:v15 offset:a4 attributeStride:a5 atIndex:a6];
  }

  else
  {
    [v14 setBuffer:v15 offset:a4 atIndex:a6];
  }

  v16 = [a3 length];
  if (MTLReportFailureTypeEnabled() && a3 && !v12->hasLodClamp && v12->bufferAttributeStride == a5 && v12->bufferOffset == a4 && v12->bufferLength == v16 && v12->object == a3 && !(v12->var0 | v12->type) && *&v12->threadgroupMemoryLength == 0 && !*&v12->lodMinClamp)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  v12->isValid = v16 != 0;
  v12->hasBeenUsed = 0;
  v12->type = 0;
  v12->object = a3;
  v12->var0 = 0;
  v12->bufferLength = v16;
  v12->bufferOffset = a4;
  v12->bufferAttributeStride = a5;
  v12->threadgroupMemoryLength = 0;
  v12->threadgroupMemoryOffset = 0;
  v12->hasLodClamp = 0;
  v12->lodMinClamp = 0.0;
  v12->lodMaxClamp = 0.0;
}

- (void)setBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setBufferOffset:attributeStride:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= a5)
  {
    [MTLDebugComputeCommandEncoder setBufferOffset:? attributeStride:? atIndex:?];
  }

  v9 = &self->_buffers[a5];
  validateArg(0, a5, v9);
  p_object = &v9->object;
  object = v9->object;
  if (!object)
  {
    v16 = a5;
    MTLReportFailure();
    object = *p_object;
  }

  if ([object length] <= a3)
  {
    [MTLDebugComputeCommandEncoder setBufferOffset:? attributeStride:? atIndex:?];
  }

  v12 = [(MTLToolsDevice *)self->super.super.super._device supportsDynamicAttributeStride];
  v13 = [(MTLToolsObject *)self baseObject];
  if (v12)
  {
    [v13 setBufferOffset:a3 attributeStride:a4 atIndex:a5];
  }

  else
  {
    [v13 setBufferOffset:a3 atIndex:a5];
  }

  v14 = *p_object;
  v15 = [*p_object length];
  if (MTLReportFailureTypeEnabled() && v14 && !v9->hasLodClamp && v9->bufferAttributeStride == -1 && v9->bufferOffset == a3 && v9->bufferLength == v15 && v9->object == v14 && !(v9->var0 | v9->type) && *&v9->threadgroupMemoryLength == 0 && !*&v9->lodMinClamp)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  v9->isValid = v15 != 0;
  v9->hasBeenUsed = 0;
  v9->type = 0;
  v9->object = v14;
  v9->var0 = 0;
  v9->bufferLength = v15;
  v9->bufferOffset = a3;
  v9->bufferAttributeStride = -1;
  v9->threadgroupMemoryLength = 0;
  v9->threadgroupMemoryOffset = 0;
  v9->hasLodClamp = 0;
  v9->lodMinClamp = 0.0;
  v9->lodMaxClamp = 0.0;
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  std::vector<unsigned long>::vector[abi:ne200100](__b, a5.length);
  v10 = __b[0];
  if (length)
  {
    memset(__b[0], 255, 8 * length);
  }

  [(MTLDebugComputeCommandEncoder *)self setBuffers:a3 offsets:a4 attributeStrides:v10 withRange:location, length];
  if (__b[0])
  {
    __b[1] = __b[0];
    operator delete(__b[0]);
  }
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v10 = self;
  v39[31] = *MEMORY[0x277D85DE8];
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setBuffers:offsets:attributeStrides:withRange:];
  }

  if (location + length > [(MTLToolsDevice *)v10->super.super.super._device maxComputeBuffers])
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
  p_bufferLength = &v10->_buffers[location].bufferLength;
  v36 = location;
  v37 = length;
  v34 = a3;
  v35 = v10;
  do
  {
    v14 = a3[v11];
    if (v14)
    {
      if (([v14 conformsToProtocol:&unk_284222E68] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffers:offsets:attributeStrides:withRange:];
      }

      device = v10->super.super.super._device;
      if (device != [a3[v11] device])
      {
        [MTLDebugComputeCommandEncoder setBuffers:offsets:attributeStrides:withRange:];
      }

      v16 = a4[v12];
      if (v16 >= [a3[v11] length])
      {
        [MTLDebugComputeCommandEncoder setBuffers:&a3[v11] offsets:? attributeStrides:? withRange:?];
      }
    }

    else if (a4[v12])
    {
      v32 = v12;
      v33 = a4[v12];
      MTLReportFailure();
    }

    v17 = (p_bufferLength + 48);
    validateArg(0, location + v12, (p_bufferLength - 32));
    [(MTLDebugCommandBuffer *)v10->_commandBuffer addObject:a3[v11] retained:1 purgeable:1];
    v39[v12] = [a3[v11] baseObject];
    v18 = a3[v11];
    v19 = [v18 length];
    v20 = a4;
    v21 = a4[v12];
    v22 = a5[v12];
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
    a4 = v20;
    a3 = v34;
    v10 = v35;
  }

  while (v37 != v12);
LABEL_41:
  v29 = [(MTLToolsDevice *)v10->super.super.super._device supportsDynamicAttributeStride:v32];
  v30 = [(MTLToolsObject *)v10 baseObject];
  if (v29)
  {
    [v30 setBuffers:v39 offsets:a4 attributeStrides:a5 withRange:{location, length}];
  }

  else
  {
    [v30 setBuffers:v39 offsets:a4 withRange:{location, length}];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)setTexture:(id)a3 atIndex:(unint64_t)a4
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setTexture:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeTextures]<= a4)
  {
    [MTLDebugComputeCommandEncoder setTexture:? atIndex:?];
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else if (!a3)
  {
    goto LABEL_13;
  }

  if (([a3 conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder setTexture:atIndex:];
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    [MTLDebugComputeCommandEncoder setTexture:atIndex:];
  }

  if ([objc_msgSend(a3 "baseObject")])
  {
    [MTLDebugComputeCommandEncoder setTexture:atIndex:];
  }

  if ([objc_msgSend(a3 "baseObject")] == 3)
  {
    [MTLDebugComputeCommandEncoder setTexture:atIndex:];
  }

LABEL_13:
  v8 = &self->_textures[a4];
  validateArg(2, a4, v8);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (MTLReportFailureTypeEnabled() && !v8->hasLodClamp && v8->bufferAttributeStride == -1 && v8->type == 1 && v8->object == a3 && (v8->bufferLength | v8->var0 | v8->bufferOffset) == 0 && *&v8->threadgroupMemoryLength == 0 && *&v8->lodMinClamp == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  v8->isValid = a3 != 0;
  v8->hasBeenUsed = 0;
  v8->type = 1;
  v8->object = a3;
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

- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
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
    v10 = a3[v8];
    if (v10)
    {
      if (([v10 conformsToProtocol:&unk_28423C818] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder setTextures:withRange:];
      }

      device = self->super.super.super._device;
      if (device != [a3[v8] device])
      {
        [MTLDebugComputeCommandEncoder setTextures:withRange:];
      }

      if ([objc_msgSend(a3[v8] "baseObject")])
      {
        [MTLDebugComputeCommandEncoder setTextures:withRange:];
      }

      if ([objc_msgSend(a3[v8] "baseObject")] == 3)
      {
        [MTLDebugComputeCommandEncoder setTextures:withRange:];
      }
    }

    v12 = p_bufferLength + 347;
    validateArg(2, location + v8, (p_bufferLength + 337));
    [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3[v8] retained:1 purgeable:1];
    v20[v8] = [a3[v8] baseObject];
    v13 = a3[v8];
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

- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setSamplerState:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers]<= a4)
  {
    [MTLDebugComputeCommandEncoder setSamplerState:? atIndex:?];
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else if (!a3)
  {
    goto LABEL_9;
  }

  if (([a3 conformsToProtocol:&unk_284222970] & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder setSamplerState:atIndex:];
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    [MTLDebugComputeCommandEncoder setSamplerState:atIndex:];
  }

LABEL_9:
  v8 = &self->_samplers[a4];
  validateArg(3, a4, v8);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (MTLReportFailureTypeEnabled() && !v8->hasLodClamp && v8->bufferAttributeStride == -1 && v8->type == 2 && v8->object == a3 && (v8->bufferLength | v8->var0 | v8->bufferOffset) == 0 && *&v8->threadgroupMemoryLength == 0 && *&v8->lodMinClamp == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
  }

  v8->isValid = a3 != 0;
  v8->hasBeenUsed = 0;
  v8->type = 2;
  v8->object = a3;
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

- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
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
    v10 = a3[v8];
    if (v10)
    {
      if (([v10 conformsToProtocol:&unk_284222970] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder setSamplerStates:withRange:];
      }

      device = self->super.super.super._device;
      if (device != [a3[v8] device])
      {
        [MTLDebugComputeCommandEncoder setSamplerStates:withRange:];
      }
    }

    v12 = p_bufferLength + 1755;
    validateArg(3, location + v8, (p_bufferLength + 1745));
    [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3[v8] retained:1 purgeable:0];
    v20[v8] = [a3[v8] baseObject];
    v13 = a3[v8];
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

- (void)setSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setSamplerState:lodMinClamp:lodMaxClamp:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers]<= a6)
  {
    [MTLDebugComputeCommandEncoder setSamplerState:? lodMinClamp:? lodMaxClamp:? atIndex:?];
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else if (!a3)
  {
    goto LABEL_9;
  }

  if (([a3 conformsToProtocol:&unk_284222970] & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder setSamplerState:lodMinClamp:lodMaxClamp:atIndex:];
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    [MTLDebugComputeCommandEncoder setSamplerState:lodMinClamp:lodMaxClamp:atIndex:];
  }

LABEL_9:
  v12 = &self->_samplers[a6];
  validateArg(3, a6, v12);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:0];
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a3 baseObject];
  *&v15 = a4;
  *&v16 = a5;
  [v13 setSamplerState:v14 lodMinClamp:a6 lodMaxClamp:v15 atIndex:v16];
  if (MTLReportFailureTypeEnabled())
  {
    if (LODWORD(v12->lodMaxClamp) == LODWORD(a5) && LODWORD(v12->lodMinClamp) == LODWORD(a4) && v12->hasLodClamp && v12->bufferAttributeStride == -1 && v12->type == 2 && v12->object == a3 && (v12->bufferLength | v12->var0 | v12->bufferOffset) == 0 && *&v12->threadgroupMemoryLength == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }
  }

  v12->isValid = a3 != 0;
  v12->hasBeenUsed = 0;
  v12->type = 2;
  v12->object = a3;
  v12->var0 = 0;
  v12->bufferLength = 0;
  v12->bufferOffset = 0;
  v12->bufferAttributeStride = -1;
  v12->threadgroupMemoryLength = 0;
  v12->threadgroupMemoryOffset = 0;
  v12->hasLodClamp = 1;
  v12->lodMinClamp = a4;
  v12->lodMaxClamp = a5;
}

- (void)setSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
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
    v13 = a3[v11];
    if (v13)
    {
      if (([v13 conformsToProtocol:&unk_284222970] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder setSamplerStates:lodMinClamps:lodMaxClamps:withRange:];
      }

      v14 = *(&self->super.super.super.super.isa + v27);
      if (v14 != [a3[v11] device])
      {
        [MTLDebugComputeCommandEncoder setSamplerStates:lodMinClamps:lodMaxClamps:withRange:];
      }
    }

    v15 = (p_bufferLength + 1755);
    validateArg(3, location + v11, (p_bufferLength + 1745));
    [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3[v11] retained:1 purgeable:0];
    v29[v11] = [a3[v11] baseObject];
    v16 = a3[v11];
    v17 = a4[v11];
    v18 = a5[v11];
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

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes]<= a4)
  {
    [MTLDebugComputeCommandEncoder setThreadgroupMemoryLength:? atIndex:?];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength]< a3)
  {
    [MTLDebugComputeCommandEncoder setThreadgroupMemoryLength:? atIndex:?];
  }

  if (a3 % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes])
  {
    [MTLDebugComputeCommandEncoder setThreadgroupMemoryLength:? atIndex:?];
  }

  v7 = &self->_threadgroupMemoryLengths[a4];
  validateArg(1, a4, v7);
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (MTLReportFailureTypeEnabled() && !v7->hasLodClamp && !v7->threadgroupMemoryOffset && v7->threadgroupMemoryLength == a3 && v7->bufferAttributeStride == -1 && v7->type == 3 && !v7->object && !(v7->bufferLength | v7->var0 | v7->bufferOffset) && !*&v7->lodMinClamp)
  {
    [MTLDebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  v7->isValid = a3 != 0;
  v7->hasBeenUsed = 0;
  v7->type = 3;
  *&v7->object = 0u;
  *&v7->bufferLength = 0u;
  v7->bufferAttributeStride = -1;
  v7->threadgroupMemoryLength = a3;
  v7->threadgroupMemoryOffset = 0;
  v7->hasLodClamp = 0;
  v7->lodMinClamp = 0.0;
  v7->lodMaxClamp = 0.0;
}

- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setImageblockWidth:height:];
  }

  if ((a3 ^ (a3 - 1)) <= a3 - 1)
  {
    [MTLDebugComputeCommandEncoder setImageblockWidth:height:];
  }

  if ((a4 ^ (a4 - 1)) <= a4 - 1)
  {
    [MTLDebugComputeCommandEncoder setImageblockWidth:height:];
  }

  if (a4 * a3 >= 0x401)
  {
    v8 = a3;
    v9 = a4;
    MTLReportFailure();
  }

  self->_imageBlockSize.width = a3;
  self->_imageBlockSize.height = a4;
  v7 = [(MTLToolsObject *)self baseObject:v8];

  [v7 setImageblockWidth:a3 height:a4];
}

- (void)validateStageInRegion:(id *)a3
{
  p_stageInRegion = &self->stageInRegion;
  width = self->stageInRegion.size.width;
  if (!(self->stageInRegion.size.height * width * self->stageInRegion.size.depth))
  {
    size = self->stageInRegion.size;
    MTLReportFailure();
    width = p_stageInRegion->size.width;
  }

  if (width > a3->var0)
  {
    var0 = a3->var0;
    MTLReportFailure();
  }

  if (p_stageInRegion->size.height > a3->var1)
  {
    height = p_stageInRegion->size.height;
    var1 = a3->var1;
    MTLReportFailure();
  }

  if (p_stageInRegion->size.depth > a3->var2)
  {
    depth = p_stageInRegion->size.depth;
    var2 = a3->var2;
    MTLReportFailure();
  }
}

- (void)setStageInRegion:(id *)a3
{
  self->hasSetStageInRegion = 1;
  self->hasIndirectSetStageInRegion = 0;
  v4 = *&a3->var0.var0;
  v5 = *&a3->var1.var1;
  *&self->stageInRegion.origin.z = *&a3->var0.var2;
  *&self->stageInRegion.size.height = v5;
  *&self->stageInRegion.origin.x = v4;
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = *&a3->var0.var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v7;
  v8[2] = *&a3->var1.var1;
  [v6 setStageInRegion:v8];
}

- (void)setStageInRegionWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4
{
  self->hasSetStageInRegion = 0;
  self->hasIndirectSetStageInRegion = 1;
  if ((a4 & 3) != 0)
  {
    [MTLDebugComputeCommandEncoder setStageInRegionWithIndirectBuffer:indirectBufferOffset:];
  }

  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setStageInRegionWithIndirectBuffer:v8 indirectBufferOffset:a4];
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

- (void)_validateThreadsPerThreadgroup:(id *)a3
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  v29 = *a3;
  computePipelineState = self->_computePipelineState;
  if (computePipelineState)
  {
    [(MTLComputePipelineState *)computePipelineState requiredThreadsPerThreadgroup];
  }

  validateDispatchThreadsPerThreadgroupWithRTPTG();
  _MTLMessageContextEnd();
  p_var1 = &a3->var1;
  p_var2 = &a3->var2;
  v9 = a3->var1 * a3->var0 * a3->var2;
  if (!v9)
  {
    var2 = a3->var2;
    v28 = 0;
    var0 = a3->var0;
    var1 = a3->var1;
    MTLReportFailure();
    v9 = a3->var1 * a3->var0 * a3->var2;
  }

  if (v9 > [(MTLToolsDevice *)self->super.super.super._device maxTotalComputeThreadsPerThreadgroup:var0])
  {
    [(MTLDebugComputeCommandEncoder *)a3 _validateThreadsPerThreadgroup:&a3->var2, &self->super.super.super._device];
  }

  v10 = a3->var1 * a3->var0 * a3->var2;
  if (v10 > [(MTLComputePipelineState *)self->_computePipelineState maxTotalThreadsPerThreadgroup])
  {
    [(MTLDebugComputeCommandEncoder *)a3 _validateThreadsPerThreadgroup:&a3->var2, &self->_computePipelineState];
  }

  v11 = a3->var0;
  v12 = self->super.super.super._device;
  if (!v12)
  {
    if (!v11)
    {
      v14 = *p_var1;
      goto LABEL_17;
    }

    v19 = a3->var0;
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

  v19 = a3->var0;
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
    [(MTLDebugComputeCommandEncoder *)&a3->var2 _validateThreadsPerThreadgroup:?];
  }

  if ([-[MTLComputePipelineState descriptor](self->_computePipelineState descriptor])
  {
    v18 = a3->var1 * a3->var0 * a3->var2;
    if (v18 % [(MTLComputePipelineState *)self->_computePipelineState threadExecutionWidth])
    {
      [(MTLDebugComputeCommandEncoder *)a3 _validateThreadsPerThreadgroup:&a3->var2, &self->_computePipelineState];
    }
  }
}

- (void)validateComputeFunctionArgumentsCommon
{
  v125 = *MEMORY[0x277D85DE8];
  v103 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] protectionOptions];
  computePipelineState = self->_computePipelineState;
  v124[0] = self->_imageBlockSize;
  v98 = [(MTLComputePipelineState *)computePipelineState imageblockMemoryLengthForDimensions:v124];
  v4 = self->_computePipelineState;
  v5 = [(MTLComputePipelineState *)v4 mtl4Descriptor];
  v6 = [(MTLComputePipelineState *)v4 function];
  if (v5)
  {
    if (!v6)
    {
      v7 = _MTL4DebugFunctionDescriptorName([-[MTLComputePipelineState mtl4Descriptor](v4 "mtl4Descriptor")]);
      goto LABEL_6;
    }

    v6 = [(MTLComputePipelineState *)v4 function];
  }

  v7 = [v6 name];
LABEL_6:
  v100 = v7;
  device = self->super.super.super._device;
  v9 = [-[MTLComputePipelineState validationReflection](v4 "validationReflection")];
  [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
  [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
  [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
  [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes];
  v97 = [(MTLComputePipelineState *)self->_computePipelineState staticThreadgroupMemoryLength];
  allowsNullBufferBinds = self->allowsNullBufferBinds;
  v10 = [(MTLToolsDevice *)device requiresRaytracingEmulation];
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
  v99 = self;
  v109 = device;
  threadgroupMemoryLengths = self->_threadgroupMemoryLengths;
  v107 = *v121;
  v11 = 5;
  if (v10)
  {
    v11 = 6;
  }

  v105 = v11;
  v101 = ~v103;
  v104 = !v10;
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
        v14 = [v13 type];
        v106 = [v13 name];
        v15 = [v13 arrayLength];
        v119 = v13;
        v16 = [v13 index];
        if (v15)
        {
          v17 = v14 > 0x1B || ((1 << v14) & 0xF03000F) == 0;
          if (v17)
          {
            abort();
          }

          v18 = 0;
          v19 = v99 + 88 * v16;
          v114 = v15;
          v118 = v16;
          while (1)
          {
            v20 = v18 + v16;
            if (v14 <= 2)
            {
              break;
            }

            if ((v14 - 16) >= 2)
            {
              if (v14 == 3)
              {
                if ((v19[14040] & 1) == 0)
                {
                  v88 = v106;
                  v89 = v18;
                  v79 = MTLArgumentTypeToString(3);
                  v87 = v20;
                  v63 = @"Compute";
                  v71 = v100;
                  MTLReportFailure();
                  v16 = v118;
                }

                v21 = &samplers[v20];
                if (*(v19 + 1756) != 2)
                {
                  v88 = v106;
                  v89 = v18;
                  v79 = MTLArgumentTypeToString(3);
                  v87 = v20;
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
                v88 = v106;
                v89 = v18;
                v79 = MTLArgumentTypeToString(v14);
                v87 = v20;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
                v16 = v118;
                if (!v21->isValid)
                {
                  goto LABEL_125;
                }
              }

              v44 = v14 - 25;
              v45 = 5;
              if (v14 == 27)
              {
                v45 = 6;
              }

              v46 = v44 >= 2;
              v47 = v44 >= 2 && v14 != 27;
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
                v58 = MTLArgumentTypeToString(v14);
                v89 = v18;
                v90 = MTLDebugFunctionArgumentTypeToString(*(v19 + 7));
                v87 = v20;
                v88 = v106;
                v79 = v58;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
                v16 = v118;
              }

              goto LABEL_125;
            }

LABEL_126:
            ++v18;
            v19 += 88;
            if (v15 == v18)
            {
              goto LABEL_139;
            }
          }

          if (v14)
          {
            if (v14 == 1)
            {
              if ((v19[15448] & 1) == 0)
              {
                v88 = v106;
                v89 = v18;
                v79 = MTLArgumentTypeToString(1);
                v87 = v20;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
              }

              if (*(v19 + 1932) != 3)
              {
                v88 = v106;
                v89 = v18;
                v79 = MTLArgumentTypeToString(1);
                v87 = v20;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
              }

              v51 = *(v19 + 1938);
              if (v51 < [v119 threadgroupMemoryDataSize])
              {
                v54 = *(v19 + 1938);
                v55 = [v119 threadgroupMemoryDataSize];
                v90 = v106;
                v91 = v18;
                v88 = MTLArgumentTypeToString(1);
                v89 = v20;
                v79 = v54;
                v87 = v55;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
              }

              v21 = &threadgroupMemoryLengths[v20];
              v117 += *(v19 + 1938);
            }

            else
            {
              if (v14 != 2)
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
                v88 = v106;
                v89 = v18;
                v79 = MTLArgumentTypeToString(2);
                v87 = v20;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
              }

              if (*(v19 + 348) != 1)
              {
                v88 = v106;
                v89 = v18;
                v79 = MTLArgumentTypeToString(2);
                v87 = v20;
                v63 = @"Compute";
                v71 = v100;
                MTLReportFailure();
              }

              v24 = v119;
              v25 = [v119 textureType];
              v26 = [*v22 textureType];
              if (v25 != v26)
              {
                v27 = v26;
                if (![(MTLToolsDevice *)v109 relaxedTextureArrayBindingsEnabled]|| ([(MTLDebugComputeCommandEncoder *)v25 validateComputeFunctionArgumentsCommon]& 1) != 0)
                {
                  v28 = MTLTextureTypeString();
                  v29 = MTLArgumentTypeToString(2);
                  v90 = v106;
                  v91 = v18;
                  v88 = v20;
                  v89 = MTLTextureTypeString();
                  v80 = v28;
                  v87 = v29;
                  v24 = v119;
                  v64 = @"Compute";
                  v72 = v100;
                  MTLReportFailure();
                }
              }

              v30 = [v23 usage];
              if ([v24 access])
              {
                v31 = (*&v30 & 0x10000) != 0 ? 16 : 2;
                if ((v23[20] & v31) == 0)
                {
                  [(MTLDebugComputeCommandEncoder *)v22 validateComputeFunctionArgumentsCommon];
                }
              }

              device = v109;
              if (![(MTLToolsDevice *)v109 supportsFamily:1010])
              {
                v32 = [(MTLToolsDevice *)v109 supportsMTL4PlacementSparse];
                v33 = v24;
                v34 = v32;
                v35 = [v33 access];
                if (v34)
                {
                  v24 = v119;
                  if (v35 && [v23 isSparse] && objc_msgSend(v23, "sparseTextureTier") != 1)
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
                  if (v35 && [v23 isSparse])
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
                v56 = [*v22 label];
                if (!v56)
                {
                  v56 = [MEMORY[0x277CBEB68] null];
                }

                v94 = v56;
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
                v89 = v20;
                v90 = v93;
                v87 = v95;
                v88 = v94;
                v76 = v100;
                v84 = Name;
                v68 = @"Compute";
                MTLReportFailure();
                device = v109;
              }

              if ([v52 access] <= 1 && (objc_msgSend(v23, "requireUsage:", 1) & 1) == 0)
              {
                v88 = [v23 usage];
                v89 = 1;
                v85 = v106;
                v87 = v20;
                v69 = @"Compute";
                v77 = v100;
                MTLReportFailure();
              }

              v15 = v114;
              if (([v119 access] - 1) <= 1 && (objc_msgSend(v23, "requireUsage:", 2) & 1) == 0)
              {
                v88 = [v23 usage];
                v89 = 2;
                v86 = v106;
                v87 = v20;
                v70 = @"Compute";
                v78 = v100;
                MTLReportFailure();
              }

              if ([v119 access] == 1)
              {
                [v23 pixelFormat];
                if ((MTLReadWriteTextureIsSupported() & 1) == 0)
                {
                  v79 = v106;
                  v87 = v20;
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
                  v87 = [v53 protectionOptions];
                  v88 = v103;
                  v71 = v100;
                  v79 = v20;
                  v63 = @"Compute";
                  MTLReportFailure();
                }

                if ([v119 access])
                {
                  v43 = *v22;
                  if ((v103 & ~[*v22 protectionOptions]) != 0)
                  {
LABEL_123:
                    v87 = [v43 protectionOptions];
                    v88 = v103;
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
              v88 = v106;
              v89 = v18;
              v79 = MTLArgumentTypeToString(0);
              v87 = v20;
              v63 = @"Compute";
              v71 = v100;
              MTLReportFailure();
              v16 = v118;
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
              v88 = v106;
              v89 = v18;
              v79 = MTLArgumentTypeToString(0);
              v87 = v20;
              v63 = @"Compute";
              v71 = v100;
              MTLReportFailure();
            }

            v38 = *(v19 + 11);
            v39 = [v119 bufferAlignment];
            if (v39 <= 1)
            {
              v40 = 1;
            }

            else
            {
              v40 = v39;
            }

            if (v38 % v40)
            {
              v57 = MTLArgumentTypeToString(0);
              v89 = [v119 bufferAlignment];
              v90 = *(v19 + 11);
              v87 = v57;
              v88 = v20;
              v74 = v100;
              v82 = v106;
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
              v88 = v59;
              v89 = v20;
              v83 = v106;
              v87 = v18;
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
            v15 = v114;
            if (v42)
            {
              if ([v119 access] != 2 && (objc_msgSend(v42, "protectionOptions") & v101) != 0)
              {
                v87 = [v42 protectionOptions];
                v88 = v103;
                v71 = v100;
                v79 = v20;
                v63 = @"Compute";
                MTLReportFailure();
              }

              if ([v119 access])
              {
                v43 = *(v19 + 8);
                if ((v103 & ~[v43 protectionOptions]) != 0)
                {
                  goto LABEL_123;
                }
              }
            }
          }

LABEL_124:
          v16 = v118;
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
  if (v97 + v98 + v117 > [(MTLToolsDevice *)device maxThreadgroupMemoryLength:v63])
  {
    [(MTLToolsDevice *)device maxThreadgroupMemoryLength];
    MTLReportFailure();
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
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

    if (HIDWORD(a3->var0))
    {
      [MTLDebugComputeCommandEncoder dispatchThreadgroups:threadsPerThreadgroup:];
    }

    if (HIDWORD(a3->var1))
    {
      [MTLDebugComputeCommandEncoder dispatchThreadgroups:threadsPerThreadgroup:];
    }

    var2 = a3->var2;
    if (HIDWORD(var2))
    {
      var0 = a3->var2;
      MTLReportFailure();
      var2 = a3->var2;
    }

    if (!(a3->var1 * a3->var0 * var2))
    {
      v23 = var2;
      v24 = 0;
      var0 = a3->var0;
      var1 = a3->var1;
      MTLReportFailure();
    }

    *v25 = *&a4->var0;
    *&v25[16] = a4->var2;
    [(MTLDebugComputeCommandEncoder *)self _validateThreadsPerThreadgroup:v25, var0, var1, v23, v24];
    computePipelineState = self->_computePipelineState;
    *v25 = *&a4->var0;
    *&v25[16] = a4->var2;
    v28 = *a3;
    validateBuiltinArguments(computePipelineState, v25, &v28);
    [(MTLDebugComputeCommandEncoder *)self validateComputeFunctionArgumentsCommon];
  }

  v27 = 0;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v9 = self->_computePipelineState;
  v10 = [(MTLToolsObject *)self device];
  v11 = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
  v12 = [objc_msgSend(-[MTLComputePipelineState descriptor](v9 "descriptor")];
  if (v11)
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

        if (([(MTLDevice *)v10 supportsUnalignedVertexFetch]& 1) == 0 && (v16 + 1) >= 2 && (v16 & 3) != 0)
        {
          var0 = v16;
          var1 = v14;
          _MTLMessageContextPush_();
        }
      }

      ++v14;
      p_bufferAttributeStride += 11;
    }

    while (v11 != v14);
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
      v18 = a4->var2 * a3->var2;
      v19 = a4->var1 * a3->var1;
      *v25 = a4->var0 * a3->var0;
      *&v25[8] = v19;
      *&v25[16] = v18;
      [(MTLDebugComputeCommandEncoder *)self validateStageInRegion:v25];
    }
  }

  self->canSetComputePipelineState = 1;
  self->canEndEncoding = 1;
  self->_encodedVirtualSubstreamDispatch = 1;
  v17 = [(MTLToolsObject *)self baseObject];
  *v25 = *&a3->var0;
  *&v25[16] = a3->var2;
  v28 = *a4;
  [v17 dispatchThreadgroups:v25 threadsPerThreadgroup:&v28];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5
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
    if (a3)
    {
LABEL_7:
      if (([a3 conformsToProtocol:&unk_284222E68] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:indirectBufferOffset:threadsPerThreadgroup:];
      }

      device = self->super.super.super._device;
      if (device != [a3 device])
      {
        [MTLDebugComputeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:indirectBufferOffset:threadsPerThreadgroup:];
      }

      goto LABEL_11;
    }
  }

  else
  {
    [MTLDebugComputeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:indirectBufferOffset:threadsPerThreadgroup:];
    if (a3)
    {
      goto LABEL_7;
    }
  }

  [MTLDebugComputeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:indirectBufferOffset:threadsPerThreadgroup:];
LABEL_11:
  if (a4 + 12 > [a3 length])
  {
    [MTLDebugComputeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:a3 indirectBufferOffset:? threadsPerThreadgroup:?];
  }

  if ((a4 & 3) != 0)
  {
    [MTLDebugComputeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:indirectBufferOffset:threadsPerThreadgroup:];
  }

  v14 = *a5;
  [(MTLDebugComputeCommandEncoder *)self _validateThreadsPerThreadgroup:&v14];
  computePipelineState = self->_computePipelineState;
  v14 = *a5;
  *&v13.width = vdupq_n_s64(1uLL);
  v13.depth = 1;
  validateBuiltinArguments(computePipelineState, &v14, &v13);
  [(MTLDebugComputeCommandEncoder *)self validateComputeFunctionArgumentsCommon];
LABEL_16:
  self->canSetComputePipelineState = 1;
  self->canEndEncoding = 1;
  self->_encodedVirtualSubstreamDispatch = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  v14 = *a5;
  [v11 dispatchThreadgroupsWithIndirectBuffer:v12 indirectBufferOffset:a4 threadsPerThreadgroup:&v14];
}

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
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

    if (HIDWORD(a3->var0))
    {
      [MTLDebugComputeCommandEncoder dispatchThreads:threadsPerThreadgroup:];
    }

    if (HIDWORD(a3->var1))
    {
      [MTLDebugComputeCommandEncoder dispatchThreads:threadsPerThreadgroup:];
    }

    var2 = a3->var2;
    if (HIDWORD(var2))
    {
      var0 = a3->var2;
      MTLReportFailure();
      var2 = a3->var2;
    }

    if (!(a3->var1 * a3->var0 * var2))
    {
      v15 = var2;
      v16 = 0;
      var0 = a3->var0;
      var1 = a3->var1;
      MTLReportFailure();
    }

    v18 = *a4;
    [(MTLDebugComputeCommandEncoder *)self _validateThreadsPerThreadgroup:&v18, var0, var1, v15, v16];
    v8 = a4->var1;
    v18.depth = a4->var2;
    v9 = (a3->var0 + a4->var0 - 1) / a4->var0;
    v10 = (a3->var1 + v8 - 1) / v8;
    computePipelineState = self->_computePipelineState;
    *&v18.width = *&a4->var0;
    v17.width = v9;
    v17.height = v10;
    v17.depth = (a3->var2 + a4->var2 - 1) / a4->var2;
    validateBuiltinArguments(computePipelineState, &v18, &v17);
    [(MTLDebugComputeCommandEncoder *)self validateComputeFunctionArgumentsCommon];
  }

  self->canSetComputePipelineState = 1;
  self->canEndEncoding = 1;
  self->_encodedVirtualSubstreamDispatch = 1;
  v12 = [(MTLToolsObject *)self baseObject];
  v18 = *a3;
  v17 = *a4;
  [v12 dispatchThreads:&v18 threadsPerThreadgroup:&v17];
}

- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4
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
    if (a3)
    {
LABEL_7:
      if (([a3 conformsToProtocol:&unk_284222E68] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder dispatchThreadsWithIndirectBuffer:indirectBufferOffset:];
      }

      device = self->super.super.super._device;
      if (device != [a3 device])
      {
        [MTLDebugComputeCommandEncoder dispatchThreadsWithIndirectBuffer:indirectBufferOffset:];
      }

      goto LABEL_11;
    }
  }

  else
  {
    [MTLDebugComputeCommandEncoder dispatchThreadsWithIndirectBuffer:indirectBufferOffset:];
    if (a3)
    {
      goto LABEL_7;
    }
  }

  [MTLDebugComputeCommandEncoder dispatchThreadsWithIndirectBuffer:indirectBufferOffset:];
LABEL_11:
  if (a4 + 24 > [a3 length])
  {
    [MTLDebugComputeCommandEncoder dispatchThreadsWithIndirectBuffer:a3 indirectBufferOffset:?];
  }

  if ((a4 & 3) != 0)
  {
    [MTLDebugComputeCommandEncoder dispatchThreadsWithIndirectBuffer:indirectBufferOffset:];
  }

  [(MTLDebugComputeCommandEncoder *)self validateComputeFunctionArgumentsCommon];
LABEL_16:
  self->canSetComputePipelineState = 1;
  self->canEndEncoding = 1;
  self->_encodedVirtualSubstreamDispatch = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 dispatchThreadsWithIndirectBuffer:v9 indirectBufferOffset:a4];
}

- (void)updateFence:(id)a3
{
  v5 = a3;
  std::deque<objc_object *>::push_back(&self->updatedFences.__map_.__first_, &v5);
  self->canEndEncoding = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)waitForFence:(id)a3
{
  p_updatedFences = &self->updatedFences;
  size = self->updatedFences.__size_;
  if (size)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if ((*(p_updatedFences->__map_.var0 + (((p_updatedFences->__start_ + v7) >> 6) & 0x3FFFFFFFFFFFFF8)))[(p_updatedFences->__start_ + v7) & 0x1FF] == a3)
      {
        MTLReportFailure();
        size = p_updatedFences->__size_;
      }

      v7 = v8;
    }

    while (size > v8++);
  }

  self->canEndEncoding = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:0];
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];

  [v10 waitForFence:v11];
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
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 endEncoding];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  [(MTLDebugComputeCommandEncoder *)self endEncoding_private];
  v3 = [(MTLToolsObject *)self baseObject];

  return [v3 endEncodingAndRetrieveProgramAddressTable];
}

- (void)enumerateBuffersUsingBlock:(id)a3
{
  v5 = [(MTLDevice *)[(MTLToolsObject *)self device] maxComputeBuffers];

  enumerateFunctionArgumentWithArray(self->_buffers, v5, a3);
}

- (void)enumerateTexturesUsingBlock:(id)a3
{
  v5 = [(MTLDevice *)[(MTLToolsObject *)self device] maxComputeTextures];

  enumerateFunctionArgumentWithArray(self->_textures, v5, a3);
}

- (void)enumerateSamplersUsingBlock:(id)a3
{
  v5 = [(MTLDevice *)[(MTLToolsObject *)self device] maxComputeSamplers];

  enumerateFunctionArgumentWithArray(self->_samplers, v5, a3);
}

- (void)enumerateThreadgroupMemoryLengthsUsingBlock:(id)a3
{
  v5 = [(MTLDevice *)[(MTLToolsObject *)self device] maxComputeLocalMemorySizes];

  enumerateFunctionArgumentWithArray(self->_threadgroupMemoryLengths, v5, a3);
}

- (void)validateFunctionTableUseResource:(id)a3 selectorName:(id)a4
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 stage] != 1)
  {
    [MTLDebugComputeCommandEncoder validateFunctionTableUseResource:a3 selectorName:?];
  }
}

- (void)useResource:(id)a3 usage:(unint64_t)a4
{
  if (!a3)
  {
    [MTLDebugComputeCommandEncoder useResource:usage:];
  }

  if ([a3 storageMode] == 3)
  {
    [MTLDebugComputeCommandEncoder useResource:usage:];
  }

  if (a4 >= 8)
  {
    [MTLDebugComputeCommandEncoder useResource:usage:];
  }

  [(MTLDebugComputeCommandEncoder *)self validateFunctionTableUseResource:a3 selectorName:@"useResource:usage:"];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 useResource:v8 usage:a4];
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  if (a5 >= 8)
  {
    [MTLDebugComputeCommandEncoder useResources:count:usage:];
  }

  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v9 = 0;
    do
    {
      v10 = a3[v9];
      if (!v10)
      {
        v13 = v9;
        MTLReportFailure();
        v10 = a3[v9];
      }

      if ([v10 storageMode] == 3)
      {
        MTLReportFailure();
      }

      -[MTLDebugComputeCommandEncoder validateFunctionTableUseResource:selectorName:](self, "validateFunctionTableUseResource:selectorName:", a3[v9], [MEMORY[0x277CCACA8] stringWithFormat:@"useResources:count:usage: (index = %lu)", v9]);
      v11 = [a3[v9] baseObject];
      *(__p[0] + v9) = v11;
      [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3[v9++] retained:1 purgeable:1];
    }

    while (a4 != v9);
  }

  v12 = [(MTLToolsObject *)self baseObject];
  [v12 useResources:__p[0] count:a4 usage:a5];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useHeap:(id)a3
{
  if (!a3)
  {
    [MTLDebugComputeCommandEncoder useHeap:];
  }

  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
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
      v8 = a3[v7];
      if (!v8)
      {
        v11 = v7;
        MTLReportFailure();
        v8 = a3[v7];
      }

      v9 = [v8 baseObject];
      *(__p[0] + v7) = v9;
      [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3[v7++] retained:1 purgeable:1];
    }

    while (a4 != v7);
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 useHeaps:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)memoryBarrierWithScope:(unint64_t)a3
{
  if ([(MTLToolsDevice *)self->super.super.super._device supportsComputeMemoryBarrier])
  {
    if (a3 >= 4)
    {
      [MTLDebugComputeCommandEncoder memoryBarrierWithScope:];
    }

    v5 = [(MTLToolsObject *)self baseObject];

    [v5 memoryBarrierWithScope:a3];
  }

  else
  {

    MTLReportFailure();
  }
}

- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4
{
  if (!a3 || !a4)
  {
    [MTLDebugComputeCommandEncoder memoryBarrierWithResources:count:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device supportsComputeMemoryBarrier])
  {
    if (a3)
    {
      std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, a4);
      if (a4)
      {
        v7 = 0;
        do
        {
          v8 = a3[v7];
          if (!v8)
          {
            v11 = v7;
            MTLReportFailure();
            v8 = a3[v7];
          }

          v9 = [v8 baseObject];
          *(__p[0] + v7++) = v9;
        }

        while (a4 != v7);
      }

      v10 = [(MTLToolsObject *)self baseObject];
      [v10 memoryBarrierWithResources:__p[0] count:a4];
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

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (self->_encodingVirtualSubstream)
  {
    [MTLDebugComputeCommandEncoder executeCommandsInBuffer:withRange:];
  }

  v14.length = [a3 size];
  v13.location = location;
  v13.length = length;
  v14.location = 0;
  v8 = NSIntersectionRange(v13, v14);
  if (v8.location != location || v8.length != length)
  {
    v10 = length;
    v11 = [a3 size];
    v9 = location;
    MTLReportFailure();
  }

  if ([objc_msgSend(a3 descriptor] && (-[MTLComputePipelineState supportIndirectCommandBuffers](-[MTLDebugComputeCommandEncoder computePipelineState](self, "computePipelineState"), "supportIndirectCommandBuffers") & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder executeCommandsInBuffer:withRange:];
  }

  v12.receiver = self;
  v12.super_class = MTLDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v12 executeCommandsInBuffer:a3 withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  if (self->_encodingVirtualSubstream)
  {
    [MTLDebugComputeCommandEncoder executeCommandsInBuffer:indirectBuffer:indirectBufferOffset:];
  }

  if ([objc_msgSend(a3 "descriptor")] && (-[MTLComputePipelineState supportIndirectCommandBuffers](-[MTLDebugComputeCommandEncoder computePipelineState](self, "computePipelineState"), "supportIndirectCommandBuffers") & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder executeCommandsInBuffer:indirectBuffer:indirectBufferOffset:];
  }

  v9.receiver = self;
  v9.super_class = MTLDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v9 executeCommandsInBuffer:a3 indirectBuffer:a4 indirectBufferOffset:a5];
}

- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setAccelerationStructure:atBufferIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= a4)
  {
    [MTLDebugComputeCommandEncoder setAccelerationStructure:? atBufferIndex:?];
  }

  checkAccelerationStructure(self->super.super.super._device, a3, 1);
  v7 = &self->_buffers[a4];
  validateArg(25, a4, v7);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  v8 = [a3 size];
  if (MTLReportFailureTypeEnabled())
  {
    v9.i64[0] = 0;
    v9.i64[1] = v8;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v7->var0, v9), vceqq_s64(*&v7->bufferOffset, xmmword_22E27C260))))) & 1) == 0 && v7->type == 4 && *&v7->threadgroupMemoryLength == 0 && v7->object == a3 && a3 && !*&v7->lodMinClamp && !v7->hasLodClamp)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }
  }

  v7->isValid = v8 != 0;
  v7->hasBeenUsed = 0;
  v7->type = 4;
  v7->object = a3;
  v7->var0 = 0;
  v7->bufferLength = v8;
  *&v7->bufferOffset = xmmword_22E27C260;
  v7->threadgroupMemoryLength = 0;
  v7->threadgroupMemoryOffset = 0;
  v7->hasLodClamp = 0;
  v7->lodMinClamp = 0.0;
  v7->lodMaxClamp = 0.0;
}

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setVisibleFunctionTable:atBufferIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= a4)
  {
    [MTLDebugComputeCommandEncoder setVisibleFunctionTable:? atBufferIndex:?];
  }

  if ([-[MTLDevice baseObject](-[MTLToolsObject device](self "device")])
  {
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [MTLDebugComputeCommandEncoder setVisibleFunctionTable:atBufferIndex:];
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  if (([a3 conformsToProtocol:&unk_284225958] & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder setVisibleFunctionTable:atBufferIndex:];
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    [MTLDebugComputeCommandEncoder setVisibleFunctionTable:atBufferIndex:];
  }

LABEL_11:
  v8 = &self->_buffers[a4];
  validateArg(24, a4, v8);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  v9 = [a3 functionCount];
  if (MTLReportFailureTypeEnabled())
  {
    v10.i64[0] = 0;
    v10.i64[1] = v9;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v8->var0, v10), vceqq_s64(*&v8->bufferOffset, xmmword_22E27C260))))) & 1) == 0 && v8->type == 5 && *&v8->threadgroupMemoryLength == 0 && v8->object == a3 && a3 && !*&v8->lodMinClamp && !v8->hasLodClamp)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }
  }

  v8->isValid = v9 != 0;
  v8->hasBeenUsed = 0;
  v8->type = 5;
  v8->object = a3;
  v8->var0 = 0;
  v8->bufferLength = v9;
  *&v8->bufferOffset = xmmword_22E27C260;
  v8->threadgroupMemoryLength = 0;
  v8->threadgroupMemoryOffset = 0;
  v8->hasLodClamp = 0;
  v8->lodMinClamp = 0.0;
  v8->lodMaxClamp = 0.0;
}

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
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
    v10 = a3[v8];
    if (v10)
    {
      if (([v10 conformsToProtocol:&unk_284225958] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder setVisibleFunctionTables:withBufferRange:];
      }

      device = self->super.super.super._device;
      if (device != [a3[v8] device])
      {
        [MTLDebugComputeCommandEncoder setVisibleFunctionTables:withBufferRange:];
      }
    }

    v12 = p_bufferLength + 6;
    validateArg(24, location + v8, (p_bufferLength - 4));
    [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3[v8] retained:1 purgeable:1];
    v21[v8] = [a3[v8] baseObject];
    v13 = a3[v8];
    v14 = [v13 functionCount];
    if (MTLReportFailureTypeEnabled())
    {
      v15.i64[0] = 0;
      v15.i64[1] = v14;
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(p_bufferLength - 1), v15), vceqq_s64(*(p_bufferLength + 1), xmmword_22E27C260))))) & 1) == 0)
      {
        v19 = *(p_bufferLength - 3) == 5 && *(p_bufferLength + 3) == 0 && *(p_bufferLength - 2) == v13 && v13 != 0 && *(p_bufferLength + 44) == 0;
        if (v19 && (p_bufferLength[5] & 1) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }
    }

    *(p_bufferLength - 32) = v14 != 0;
    *(p_bufferLength - 31) = 0;
    *(p_bufferLength - 3) = 5;
    *(p_bufferLength - 2) = v13;
    *(p_bufferLength - 1) = 0;
    *p_bufferLength = v14;
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

- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder setIntersectionFunctionTable:atBufferIndex:];
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= a4)
  {
    [MTLDebugComputeCommandEncoder setIntersectionFunctionTable:? atBufferIndex:?];
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else if (!a3)
  {
    goto LABEL_9;
  }

  if (([a3 conformsToProtocol:&unk_28423AC08] & 1) == 0)
  {
    [MTLDebugComputeCommandEncoder setIntersectionFunctionTable:atBufferIndex:];
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    [MTLDebugComputeCommandEncoder setIntersectionFunctionTable:atBufferIndex:];
  }

LABEL_9:
  v8 = &self->_buffers[a4];
  validateArg(27, a4, v8);
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  v9 = [a3 functionCount];
  if (MTLReportFailureTypeEnabled())
  {
    v10.i64[0] = 0;
    v10.i64[1] = v9;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v8->var0, v10), vceqq_s64(*&v8->bufferOffset, xmmword_22E27C260))))) & 1) == 0 && v8->type == 6 && *&v8->threadgroupMemoryLength == 0 && v8->object == a3 && a3 && !*&v8->lodMinClamp && !v8->hasLodClamp)
    {
      [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
    }
  }

  v8->isValid = v9 != 0;
  v8->hasBeenUsed = 0;
  v8->type = 6;
  v8->object = a3;
  v8->var0 = 0;
  v8->bufferLength = v9;
  *&v8->bufferOffset = xmmword_22E27C260;
  v8->threadgroupMemoryLength = 0;
  v8->threadgroupMemoryOffset = 0;
  v8->hasLodClamp = 0;
  v8->lodMinClamp = 0.0;
  v8->lodMaxClamp = 0.0;
}

- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
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
    v10 = a3[v8];
    if (v10)
    {
      if (([v10 conformsToProtocol:&unk_28423AC08] & 1) == 0)
      {
        [MTLDebugComputeCommandEncoder setIntersectionFunctionTables:withBufferRange:];
      }

      device = self->super.super.super._device;
      if (device != [a3[v8] device])
      {
        [MTLDebugComputeCommandEncoder setIntersectionFunctionTables:withBufferRange:];
      }
    }

    v12 = p_bufferLength + 6;
    validateArg(27, location + v8, (p_bufferLength - 4));
    [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3[v8] retained:1 purgeable:1];
    v21[v8] = [a3[v8] baseObject];
    v13 = a3[v8];
    v14 = [v13 functionCount];
    if (MTLReportFailureTypeEnabled())
    {
      v15.i64[0] = 0;
      v15.i64[1] = v14;
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(p_bufferLength - 1), v15), vceqq_s64(*(p_bufferLength + 1), xmmword_22E27C260))))) & 1) == 0)
      {
        v19 = *(p_bufferLength - 3) == 6 && *(p_bufferLength + 3) == 0 && *(p_bufferLength - 2) == v13 && v13 != 0 && *(p_bufferLength + 44) == 0;
        if (v19 && (p_bufferLength[5] & 1) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:offset:attributeStride:atIndex:];
        }
      }
    }

    *(p_bufferLength - 32) = v14 != 0;
    *(p_bufferLength - 31) = 0;
    *(p_bufferLength - 3) = 6;
    *(p_bufferLength - 2) = v13;
    *(p_bufferLength - 1) = 0;
    *p_bufferLength = v14;
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
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 beginVirtualSubstream];
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
  v3 = [(MTLToolsObject *)self baseObject];

  return [v3 nextVirtualSubstream];
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
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 endVirtualSubstream];
}

- (void)waitForVirtualSubstream:(unint64_t)a3
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

  if (self->_currentVirtualSubstreamIndex <= a3)
  {
    v6 = a3;
    currentVirtualSubstreamIndex = self->_currentVirtualSubstreamIndex;
    MTLReportFailure();
  }

  v5 = [(MTLToolsObject *)self baseObject:v6];

  [v5 waitForVirtualSubstream:a3];
}

- (void)useResidencySet:(id)a3
{
  if (!a3)
  {
    [MTLDebugComputeCommandEncoder useResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v5 useResidencySet:a3];
}

- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      if (!a3[i])
      {
        [MTLDebugComputeCommandEncoder useResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugComputeCommandEncoder;
  [(MTLToolsComputeCommandEncoder *)&v8 useResidencySets:a3 count:a4];
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4
{
  if (self->hasEndEncoding)
  {
    [MTLDebugComputeCommandEncoder barrierAfterQueueStages:beforeStages:];
  }

  v7 = [(MTLToolsObject *)self baseObject];

  [v7 barrierAfterQueueStages:a3 beforeStages:a4];
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
  [*a1 pixelFormat];
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