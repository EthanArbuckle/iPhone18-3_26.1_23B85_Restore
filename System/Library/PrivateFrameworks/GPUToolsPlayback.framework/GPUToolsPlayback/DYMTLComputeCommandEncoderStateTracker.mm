@interface DYMTLComputeCommandEncoderStateTracker
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (DYMTLComputeCommandEncoderStateTracker)initWithEncoder:(id)encoder dispatchType:(unint64_t)type;
- (void)applyToEncoder:(id)encoder rawBytesBlock:(id)block;
- (void)enumerateBuffersUsingBlock:(id)block;
- (void)enumerateSamplersUsingBlock:(id)block;
- (void)enumerateTexturesUsingBlock:(id)block;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setStageInRegion:(id *)region;
- (void)setStageInRegionWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)useHeap:(id)heap;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
@end

@implementation DYMTLComputeCommandEncoderStateTracker

- (DYMTLComputeCommandEncoderStateTracker)initWithEncoder:(id)encoder dispatchType:(unint64_t)type
{
  encoderCopy = encoder;
  if (encoderCopy)
  {
    v12.receiver = self;
    v12.super_class = DYMTLComputeCommandEncoderStateTracker;
    v8 = [(DYMTLComputeCommandEncoderStateTracker *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_computeEncoder, encoder);
      v9->_dispatchType = type;
      v9->_hasSetStageInRegion = 0;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (([(MTLComputeCommandEncoderSPI *)self->_computeEncoder conformsToProtocol:protocolCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DYMTLComputeCommandEncoderStateTracker;
    v5 = [(DYMTLComputeCommandEncoderStateTracker *)&v7 conformsToProtocol:protocolCopy];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = DYMTLComputeCommandEncoderStateTracker;
  if ([(DYMTLComputeCommandEncoderStateTracker *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    computeEncoder = self->_computeEncoder;
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  DYMTLBoundBufferInfo::DYMTLBoundBufferInfo(&v9, bytes, length);
  DYMTLBoundBufferInfo::operator=(&self->_buffers[index].m_buffer, &v9);
  free(v9.m_bytes);

  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setBytes:bytes length:length atIndex:index];
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  v9 = bufferCopy;
  v10 = 0;
  offsetCopy = offset;
  DYMTLBoundBufferInfo::operator=(&self->_buffers[index].m_buffer, &v9);
  free(v10);

  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setBuffer:bufferCopy offset:offset atIndex:index];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.length)
  {
    v10 = &self->_buffers[range.location];
    buffersCopy = buffers;
    offsetsCopy = offsets;
    v13 = range.length;
    do
    {
      v14 = *offsetsCopy++;
      v15 = *buffersCopy;
      v16 = 0;
      v17 = v14;
      DYMTLBoundBufferInfo::operator=(&v10->m_buffer, &v15);
      free(v16);

      ++buffersCopy;
      ++v10;
      --v13;
    }

    while (v13);
  }

  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setBuffers:buffers offsets:offsets withRange:location, length];
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = &self->_textures[range.location];
    texturesCopy = textures;
    length = range.length;
    do
    {
      v7 = *texturesCopy++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setTextures:textures withRange:range.location];
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  v4 = self + 16 * index;
  *(v4 + 230) = state;
  *(v4 + 231) = 0x447A000000000000;
  [MTLComputeCommandEncoderSPI setSamplerState:"setSamplerState:atIndex:" atIndex:?];
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  if (range.length)
  {
    p_minLOD = &self->_samplers[range.location].minLOD;
    statesCopy = states;
    length = range.length;
    do
    {
      v7 = *statesCopy++;
      *(p_minLOD - 1) = v7;
      *p_minLOD = 0x447A000000000000;
      p_minLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setSamplerStates:states withRange:range.location];
}

- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  v6 = self + 16 * index;
  *(v6 + 230) = state;
  *(v6 + 462) = clamp;
  *(v6 + 463) = maxClamp;
  [MTLComputeCommandEncoderSPI setSamplerState:"setSamplerState:lodMinClamp:lodMaxClamp:atIndex:" lodMinClamp:? lodMaxClamp:? atIndex:?];
}

- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  if (range.length)
  {
    p_maxLOD = &self->_samplers[range.location].maxLOD;
    statesCopy = states;
    clampsCopy = clamps;
    maxClampsCopy = maxClamps;
    length = range.length;
    do
    {
      v12 = *statesCopy++;
      v11 = v12;
      *&v12 = *clampsCopy++;
      v13 = v12;
      *&v12 = *maxClampsCopy++;
      *(p_maxLOD - 3) = v11;
      *(p_maxLOD - 1) = v13;
      *p_maxLOD = v12;
      p_maxLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setSamplerStates:states lodMinClamps:clamps lodMaxClamps:maxClamps withRange:range.location];
}

- (void)setStageInRegion:(id *)region
{
  self->_hasSetStageInRegion = 1;
  v3 = *&region->var0.var0;
  v4 = *&region->var1.var1;
  *&self->_stageInRegion.origin.z = *&region->var0.var2;
  *&self->_stageInRegion.size.height = v4;
  *&self->_stageInRegion.origin.x = v3;
  computeEncoder = self->_computeEncoder;
  v6 = *&region->var0.var2;
  v7[0] = *&region->var0.var0;
  v7[1] = v6;
  v7[2] = *&region->var1.var1;
  [(MTLComputeCommandEncoderSPI *)computeEncoder setStageInRegion:v7];
}

- (void)setStageInRegionWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  self->_stageInRegionIndirectBuffer = buffer;
  self->_stageInRegionIndirectBufferOffset = offset;
  [MTLComputeCommandEncoderSPI setStageInRegionWithIndirectBuffer:"setStageInRegionWithIndirectBuffer:indirectBufferOffset:" indirectBufferOffset:?];
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  resourceCopy = resource;
  end = self->_usedResources.__end_;
  cap = self->_usedResources.__cap_;
  v20 = resourceCopy;
  if (end >= cap)
  {
    begin = self->_usedResources.__begin_;
    v12 = end - begin;
    v13 = (end - begin) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v15 = cap - begin;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
    v17 = 0xFFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLUsedResourceInfo>>(&self->_usedResources, v17);
    }

    v18 = (16 * v13);
    *v18 = resourceCopy;
    v18[1] = usage;
    v10 = (16 * v13 + 16);
    memcpy(0, begin, v12);
    v19 = self->_usedResources.__begin_;
    self->_usedResources.__begin_ = 0;
    self->_usedResources.__end_ = v10;
    self->_usedResources.__cap_ = 0;
    if (v19)
    {
      operator delete(v19);
    }

    v9 = v20;
  }

  else
  {
    v9 = resourceCopy;
    *end = resourceCopy;
    *(end + 1) = usage;
    v10 = (end + 16);
  }

  self->_usedResources.__end_ = v10;
  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder useResource:v9 usage:usage];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  if (count)
  {
    end = self->_usedResources.__end_;
    resourcesCopy = resources;
    countCopy = count;
    do
    {
      cap = self->_usedResources.__cap_;
      if (end >= cap)
      {
        begin = self->_usedResources.__begin_;
        v13 = end - begin;
        v14 = (end - begin) >> 4;
        v15 = v14 + 1;
        if ((v14 + 1) >> 60)
        {
          std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
        }

        v16 = cap - begin;
        if (v16 >> 3 > v15)
        {
          v15 = v16 >> 3;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLUsedResourceInfo>>(&self->_usedResources, v17);
        }

        v18 = (end - begin) >> 4;
        v19 = (16 * v14);
        *v19 = *resourcesCopy;
        v19[1] = usage;
        end = (16 * v14 + 16);
        v20 = (16 * v14 - 16 * v18);
        memcpy(&v19[-2 * v18], begin, v13);
        v21 = self->_usedResources.__begin_;
        self->_usedResources.__begin_ = v20;
        self->_usedResources.__end_ = end;
        self->_usedResources.__cap_ = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *end = *resourcesCopy;
        *(end + 1) = usage;
        end = (end + 16);
      }

      self->_usedResources.__end_ = end;
      ++resourcesCopy;
      --countCopy;
    }

    while (countCopy);
  }

  computeEncoder = self->_computeEncoder;

  [(MTLComputeCommandEncoderSPI *)computeEncoder useResources:resources count:count usage:usage];
}

- (void)useHeap:(id)heap
{
  heapCopy = heap;
  std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::push_back[abi:ne200100](&self->_usedHeaps.__begin_, &heapCopy);
  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder useHeap:heapCopy];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  if (count)
  {
    heapsCopy = heaps;
    countCopy = count;
    do
    {
      std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::push_back[abi:ne200100](&self->_usedHeaps.__begin_, heapsCopy++);
      --countCopy;
    }

    while (countCopy);
  }

  computeEncoder = self->_computeEncoder;

  [(MTLComputeCommandEncoderSPI *)computeEncoder useHeaps:heaps count:count];
}

- (void)enumerateBuffersUsingBlock:(id)block
{
  blockCopy = block;
  v5 = 0;
  v7 = 0;
  for (i = self->_buffers; (i->m_buffer == 0) == (i->m_bytes == 0); ++i)
  {
    if (v5 > 0x1D)
    {
      goto LABEL_8;
    }

LABEL_7:
    ++v5;
  }

  blockCopy[2](blockCopy, i, v5, &v7);
  if (v5 <= 0x1D && (v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)enumerateTexturesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = 0;
  v8 = 0;
  textures = self->_textures;
  while (1)
  {
    v7 = textures[v5];
    if (v7)
    {
      break;
    }

    if (v5 > 0x7E)
    {
      goto LABEL_8;
    }

LABEL_7:
    ++v5;
  }

  blockCopy[2](blockCopy, v7, v5, &v8);
  if (v5 <= 0x7E && (v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)enumerateSamplersUsingBlock:(id)block
{
  blockCopy = block;
  v5 = 0;
  v7 = 0;
  for (i = self->_samplers; !i->sampler; ++i)
  {
    if (v5 > 0xE)
    {
      goto LABEL_8;
    }

LABEL_7:
    ++v5;
  }

  blockCopy[2](blockCopy, i, v5, &v7);
  if (v5 <= 0xE && (v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)applyToEncoder:(id)encoder rawBytesBlock:(id)block
{
  encoderCopy = encoder;
  blockCopy = block;
  begin = self->_usedHeaps.__begin_;
  var0 = self->_usedHeaps.var0;
  while (begin != var0)
  {
    v10 = *begin;
    [encoderCopy useHeap:v10];

    ++begin;
  }

  v11 = self->_usedResources.__begin_;
  end = self->_usedResources.__end_;
  while (v11 != end)
  {
    [encoderCopy useResource:*v11 usage:*(v11 + 1)];
    v11 = (v11 + 16);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __71__DYMTLComputeCommandEncoderStateTracker_applyToEncoder_rawBytesBlock___block_invoke;
  v28[3] = &unk_27930F8C0;
  v13 = blockCopy;
  v30 = v13;
  v14 = encoderCopy;
  v29 = v14;
  [(DYMTLComputeCommandEncoderStateTracker *)self enumerateBuffersUsingBlock:v28];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __71__DYMTLComputeCommandEncoderStateTracker_applyToEncoder_rawBytesBlock___block_invoke_2;
  v26[3] = &unk_27930F538;
  v15 = v14;
  v27 = v15;
  [(DYMTLComputeCommandEncoderStateTracker *)self enumerateTexturesUsingBlock:v26];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__DYMTLComputeCommandEncoderStateTracker_applyToEncoder_rawBytesBlock___block_invoke_3;
  v24[3] = &unk_27930F8E8;
  v16 = v15;
  v25 = v16;
  [(DYMTLComputeCommandEncoderStateTracker *)self enumerateSamplersUsingBlock:v24];
  for (i = 0; i != 31; ++i)
  {
    v18 = self->_threadgroupMemories[i];
    if (v18)
    {
      [v16 setThreadgroupMemoryLength:v18 atIndex:i];
    }
  }

  if (self->_computePipelineState)
  {
    [v16 setComputePipelineState:?];
  }

  label = [(MTLComputeCommandEncoderSPI *)self->_computeEncoder label];

  if (label)
  {
    label2 = [(MTLComputeCommandEncoderSPI *)self->_computeEncoder label];
    [v16 setLabel:label2];
  }

  if (self->_hasSetStageInRegion)
  {
    v21 = *&self->_stageInRegion.origin.z;
    v23[0] = *&self->_stageInRegion.origin.x;
    v23[1] = v21;
    v23[2] = *&self->_stageInRegion.size.height;
    [v16 setStageInRegion:v23];
  }

  stageInRegionIndirectBuffer = self->_stageInRegionIndirectBuffer;
  if (stageInRegionIndirectBuffer)
  {
    [v16 setStageInRegionWithIndirectBuffer:stageInRegionIndirectBuffer indirectBufferOffset:self->_stageInRegionIndirectBufferOffset];
  }
}

void __71__DYMTLComputeCommandEncoderStateTracker_applyToEncoder_rawBytesBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 || !*(a2 + 8))
  {
    v6 = *(a1 + 32);
    v7 = *a2;
    if (*a2 && !*(a2 + 8))
    {
      v8 = *(a2 + 16);
    }

    else
    {
      v8 = 0;
    }

    v13 = v7;
    [v6 setBuffer:v7 offset:v8 atIndex:a3];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = (*(*(a1 + 40) + 16))();
    v11 = *(a1 + 32);
    if (*a2 || !*(a2 + 8))
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a2 + 16);
    }

    [v11 setBytes:v10 length:v12 atIndex:a3];
  }
}

uint64_t __71__DYMTLComputeCommandEncoderStateTracker_applyToEncoder_rawBytesBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  LODWORD(a4) = *(a2 + 8);
  LODWORD(a5) = *(a2 + 12);
  return [*(a1 + 32) setSamplerState:*a2 lodMinClamp:a3 lodMaxClamp:a4 atIndex:a5];
}

@end