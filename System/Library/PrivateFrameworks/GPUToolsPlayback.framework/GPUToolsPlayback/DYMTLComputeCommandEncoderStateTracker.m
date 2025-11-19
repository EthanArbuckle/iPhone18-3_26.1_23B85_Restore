@interface DYMTLComputeCommandEncoderStateTracker
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (DYMTLComputeCommandEncoderStateTracker)initWithEncoder:(id)a3 dispatchType:(unint64_t)a4;
- (void)applyToEncoder:(id)a3 rawBytesBlock:(id)a4;
- (void)enumerateBuffersUsingBlock:(id)a3;
- (void)enumerateSamplersUsingBlock:(id)a3;
- (void)enumerateTexturesUsingBlock:(id)a3;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setStageInRegion:(id *)a3;
- (void)setStageInRegionWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4;
- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)useHeap:(id)a3;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
@end

@implementation DYMTLComputeCommandEncoderStateTracker

- (DYMTLComputeCommandEncoderStateTracker)initWithEncoder:(id)a3 dispatchType:(unint64_t)a4
{
  v7 = a3;
  if (v7)
  {
    v12.receiver = self;
    v12.super_class = DYMTLComputeCommandEncoderStateTracker;
    v8 = [(DYMTLComputeCommandEncoderStateTracker *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_computeEncoder, a3);
      v9->_dispatchType = a4;
      v9->_hasSetStageInRegion = 0;
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  if (([(MTLComputeCommandEncoderSPI *)self->_computeEncoder conformsToProtocol:v4]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DYMTLComputeCommandEncoderStateTracker;
    v5 = [(DYMTLComputeCommandEncoderStateTracker *)&v7 conformsToProtocol:v4];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
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

- (void)setBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  DYMTLBoundBufferInfo::DYMTLBoundBufferInfo(&v9, a3, a4);
  DYMTLBoundBufferInfo::operator=(&self->_buffers[a5].m_buffer, &v9);
  free(v9.m_bytes);

  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setBytes:a3 length:a4 atIndex:a5];
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  v10 = 0;
  v11 = a4;
  DYMTLBoundBufferInfo::operator=(&self->_buffers[a5].m_buffer, &v9);
  free(v10);

  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setBuffer:v8 offset:a4 atIndex:a5];
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  if (a5.length)
  {
    v10 = &self->_buffers[a5.location];
    v11 = a3;
    v12 = a4;
    v13 = a5.length;
    do
    {
      v14 = *v12++;
      v15 = *v11;
      v16 = 0;
      v17 = v14;
      DYMTLBoundBufferInfo::operator=(&v10->m_buffer, &v15);
      free(v16);

      ++v11;
      ++v10;
      --v13;
    }

    while (v13);
  }

  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setBuffers:a3 offsets:a4 withRange:location, length];
}

- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    v4 = &self->_textures[a4.location];
    v5 = a3;
    length = a4.length;
    do
    {
      v7 = *v5++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setTextures:a3 withRange:a4.location];
}

- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = self + 16 * a4;
  *(v4 + 230) = a3;
  *(v4 + 231) = 0x447A000000000000;
  [MTLComputeCommandEncoderSPI setSamplerState:"setSamplerState:atIndex:" atIndex:?];
}

- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    p_minLOD = &self->_samplers[a4.location].minLOD;
    v5 = a3;
    length = a4.length;
    do
    {
      v7 = *v5++;
      *(p_minLOD - 1) = v7;
      *p_minLOD = 0x447A000000000000;
      p_minLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setSamplerStates:a3 withRange:a4.location];
}

- (void)setSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v6 = self + 16 * a6;
  *(v6 + 230) = a3;
  *(v6 + 462) = a4;
  *(v6 + 463) = a5;
  [MTLComputeCommandEncoderSPI setSamplerState:"setSamplerState:lodMinClamp:lodMaxClamp:atIndex:" lodMinClamp:? lodMaxClamp:? atIndex:?];
}

- (void)setSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  if (a6.length)
  {
    p_maxLOD = &self->_samplers[a6.location].maxLOD;
    v7 = a3;
    v8 = a4;
    v9 = a5;
    length = a6.length;
    do
    {
      v12 = *v7++;
      v11 = v12;
      *&v12 = *v8++;
      v13 = v12;
      *&v12 = *v9++;
      *(p_maxLOD - 3) = v11;
      *(p_maxLOD - 1) = v13;
      *p_maxLOD = v12;
      p_maxLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setSamplerStates:a3 lodMinClamps:a4 lodMaxClamps:a5 withRange:a6.location];
}

- (void)setStageInRegion:(id *)a3
{
  self->_hasSetStageInRegion = 1;
  v3 = *&a3->var0.var0;
  v4 = *&a3->var1.var1;
  *&self->_stageInRegion.origin.z = *&a3->var0.var2;
  *&self->_stageInRegion.size.height = v4;
  *&self->_stageInRegion.origin.x = v3;
  computeEncoder = self->_computeEncoder;
  v6 = *&a3->var0.var2;
  v7[0] = *&a3->var0.var0;
  v7[1] = v6;
  v7[2] = *&a3->var1.var1;
  [(MTLComputeCommandEncoderSPI *)computeEncoder setStageInRegion:v7];
}

- (void)setStageInRegionWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4
{
  self->_stageInRegionIndirectBuffer = a3;
  self->_stageInRegionIndirectBufferOffset = a4;
  [MTLComputeCommandEncoderSPI setStageInRegionWithIndirectBuffer:"setStageInRegionWithIndirectBuffer:indirectBufferOffset:" indirectBufferOffset:?];
}

- (void)useResource:(id)a3 usage:(unint64_t)a4
{
  v6 = a3;
  end = self->_usedResources.__end_;
  cap = self->_usedResources.__cap_;
  v20 = v6;
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
    *v18 = v6;
    v18[1] = a4;
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
    v9 = v6;
    *end = v6;
    *(end + 1) = a4;
    v10 = (end + 16);
  }

  self->_usedResources.__end_ = v10;
  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder useResource:v9 usage:a4];
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  if (a4)
  {
    end = self->_usedResources.__end_;
    v9 = a3;
    v10 = a4;
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
        *v19 = *v9;
        v19[1] = a5;
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
        *end = *v9;
        *(end + 1) = a5;
        end = (end + 16);
      }

      self->_usedResources.__end_ = end;
      ++v9;
      --v10;
    }

    while (v10);
  }

  computeEncoder = self->_computeEncoder;

  [(MTLComputeCommandEncoderSPI *)computeEncoder useResources:a3 count:a4 usage:a5];
}

- (void)useHeap:(id)a3
{
  v4 = a3;
  std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::push_back[abi:ne200100](&self->_usedHeaps.__begin_, &v4);
  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder useHeap:v4];
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v7 = a3;
    v8 = a4;
    do
    {
      std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::push_back[abi:ne200100](&self->_usedHeaps.__begin_, v7++);
      --v8;
    }

    while (v8);
  }

  computeEncoder = self->_computeEncoder;

  [(MTLComputeCommandEncoderSPI *)computeEncoder useHeaps:a3 count:a4];
}

- (void)enumerateBuffersUsingBlock:(id)a3
{
  v4 = a3;
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

  v4[2](v4, i, v5, &v7);
  if (v5 <= 0x1D && (v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)enumerateTexturesUsingBlock:(id)a3
{
  v4 = a3;
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

  v4[2](v4, v7, v5, &v8);
  if (v5 <= 0x7E && (v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)enumerateSamplersUsingBlock:(id)a3
{
  v4 = a3;
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

  v4[2](v4, i, v5, &v7);
  if (v5 <= 0xE && (v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)applyToEncoder:(id)a3 rawBytesBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  begin = self->_usedHeaps.__begin_;
  var0 = self->_usedHeaps.var0;
  while (begin != var0)
  {
    v10 = *begin;
    [v6 useHeap:v10];

    ++begin;
  }

  v11 = self->_usedResources.__begin_;
  end = self->_usedResources.__end_;
  while (v11 != end)
  {
    [v6 useResource:*v11 usage:*(v11 + 1)];
    v11 = (v11 + 16);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __71__DYMTLComputeCommandEncoderStateTracker_applyToEncoder_rawBytesBlock___block_invoke;
  v28[3] = &unk_27930F8C0;
  v13 = v7;
  v30 = v13;
  v14 = v6;
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

  v19 = [(MTLComputeCommandEncoderSPI *)self->_computeEncoder label];

  if (v19)
  {
    v20 = [(MTLComputeCommandEncoderSPI *)self->_computeEncoder label];
    [v16 setLabel:v20];
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