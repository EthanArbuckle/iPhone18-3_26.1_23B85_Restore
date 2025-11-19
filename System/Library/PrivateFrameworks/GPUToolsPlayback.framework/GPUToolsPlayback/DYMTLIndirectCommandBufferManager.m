@interface DYMTLIndirectCommandBufferManager
- (DYMTLIndirectCommandBufferManager)initWithFunctionPlayer:(id)a3;
- (id).cxx_construct;
- (id)convertIndirectCommandBufferData:(const char *)a3 range:(_NSRange)a4 toFBufStream:(const CoreFunction *)a5;
- (id)saveComputeEncoder:(id)a3 withDescriptor:(id)a4;
- (id)saveRenderEncoder:(id)a3 withDescriptor:(id)a4;
- (pair<unsigned)bufferIdAndOffsetForGPUVirtualAddress:(unint64_t)a3;
- (unint64_t)computePipelineIdForUniqueIdentifier:(unint64_t)a3;
- (unint64_t)renderPipelineIdForUniqueIdentifier:(unint64_t)a3;
- (unint64_t)setupComputeCommandEncoder:(id)a3 withData:(const char *)a4 atIndex:(unint64_t)a5 forIndirectCommandBuffer:(id)a6;
- (unint64_t)setupRenderCommandEncoder:(id)a3 withData:(const char *)a4 atIndex:(unint64_t)a5 forIndirectCommandBuffer:(id)a6;
- (unsigned)executeIndirectRenderCommands:(id)a3 withData:(const char *)a4 forRange:(_NSRange)a5 forIndirectCommandBuffer:(id)a6;
- (void)_calculateGPUVirtualAddress;
- (void)addComputePipelineStateUniqueIdentifier:(unint64_t)a3 forObjectId:(unint64_t)a4;
- (void)addGPUVirtualAddress:(unint64_t)a3 forObjectId:(unint64_t)a4;
- (void)addRenderPipelineStateUniqueIdentifier:(unint64_t)a3 forObjectId:(unint64_t)a4;
- (void)executeIndirectComputeCommand:(id)a3 withData:(const char *)a4 atIndex:(unint64_t)a5 forIndirectCommandBuffer:(id)a6;
- (void)executeIndirectRenderCommand:(id)a3 withData:(const char *)a4 atIndex:(unint64_t)a5 forIndirectCommandBuffer:(id)a6;
- (void)restoreBuffer:(id)a3 optimizedRanges:(const char *)a4 commandQueue:(id)a5;
- (void)restoreBuffer:(id)a3 withData:(const char *)a4 commandQueue:(id)a5;
- (void)updateReplayerTranslationBuffer;
@end

@implementation DYMTLIndirectCommandBufferManager

- (DYMTLIndirectCommandBufferManager)initWithFunctionPlayer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DYMTLIndirectCommandBufferManager;
  v6 = [(DYMTLIndirectCommandBufferManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, a3);
  }

  return v7;
}

- (pair<unsigned)bufferIdAndOffsetForGPUVirtualAddress:(unint64_t)a3
{
  v3 = GPUTools::MTL::Utils::DYMTLTranslateGPUAddressToBuffer(&self->_gpuVirtualAddressArray.__begin_, a3);
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (unint64_t)renderPipelineIdForUniqueIdentifier:(unint64_t)a3
{
  v5 = a3;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_renderPipelineStateUniqueIdentifier.__table_.__bucket_list_.__ptr_, &v5);
  if (v3)
  {
    return v3[3];
  }

  else
  {
    return -1;
  }
}

- (unint64_t)computePipelineIdForUniqueIdentifier:(unint64_t)a3
{
  v5 = a3;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_computePipelineStateUniqueIdentifier.__table_.__bucket_list_.__ptr_, &v5);
  if (v3)
  {
    return v3[3];
  }

  else
  {
    return -1;
  }
}

- (void)addGPUVirtualAddress:(unint64_t)a3 forObjectId:(unint64_t)a4
{
  v5[0] = a4;
  v5[2] = v5;
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_gpuVirtualAddressMap.__table_.__bucket_list_.__ptr_, v5)[3] = a3;
  self->_recalculateVirtualAddress = 1;
}

- (void)addRenderPipelineStateUniqueIdentifier:(unint64_t)a3 forObjectId:(unint64_t)a4
{
  v4[0] = a3;
  v4[2] = v4;
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_renderPipelineStateUniqueIdentifier.__table_.__bucket_list_.__ptr_, v4)[3] = a4;
}

- (void)addComputePipelineStateUniqueIdentifier:(unint64_t)a3 forObjectId:(unint64_t)a4
{
  v4[0] = a3;
  v4[2] = v4;
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_computePipelineStateUniqueIdentifier.__table_.__bucket_list_.__ptr_, v4)[3] = a4;
}

- (void)_calculateGPUVirtualAddress
{
  if (self->_recalculateVirtualAddress)
  {
    p_gpuVirtualAddressArray = &self->_gpuVirtualAddressArray;
    self->_gpuVirtualAddressArray.__end_ = self->_gpuVirtualAddressArray.__begin_;
    std::vector<GPUTools::MTL::Utils::DYMTLBufferGPUAddress>::reserve(&self->_gpuVirtualAddressArray.__begin_, self->_gpuVirtualAddressMap.__table_.__size_);
    for (i = p_gpuVirtualAddressArray[-5].__cap_; i; i = *i)
    {
      v6 = *(i + 2);
      v7 = *(i + 3);
      v8 = [(DYMTLFunctionPlayer *)self->_player objectForKey:v6];
      v9 = [v8 length];
      end = self->_gpuVirtualAddressArray.__end_;
      cap = self->_gpuVirtualAddressArray.__cap_;
      if (end >= cap)
      {
        begin = p_gpuVirtualAddressArray->__begin_;
        v14 = end - p_gpuVirtualAddressArray->__begin_;
        v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3) + 1;
        if (v15 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLBufferGPUAddress>>(p_gpuVirtualAddressArray, v17);
        }

        v18 = (8 * (v14 >> 3));
        *v18 = v7;
        v18[1] = v9;
        v18[2] = v6;
        v12 = (v18 + 3);
        v19 = (v18 - v14);
        memcpy(v18 - v14, begin, v14);
        v20 = self->_gpuVirtualAddressArray.__begin_;
        self->_gpuVirtualAddressArray.__begin_ = v19;
        self->_gpuVirtualAddressArray.__end_ = v12;
        self->_gpuVirtualAddressArray.__cap_ = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *end = v7;
        *(end + 1) = v9;
        v12 = (end + 24);
        *(end + 2) = v6;
      }

      self->_gpuVirtualAddressArray.__end_ = v12;
    }

    v21 = self->_gpuVirtualAddressArray.__begin_;
    v22 = self->_gpuVirtualAddressArray.__end_;
    v23 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
    if (v22 == v21)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,GPUTools::MTL::Utils::DYMTLBufferGPUAddress *,false>(v21, v22, &v25, v24, 1, v4);
    self->_recalculateVirtualAddress = 0;
  }
}

- (void)executeIndirectRenderCommand:(id)a3 withData:(const char *)a4 atIndex:(unint64_t)a5 forIndirectCommandBuffer:(id)a6
{
  v10 = a3;
  v11 = a6;
  [(DYMTLIndirectCommandBufferManager *)self _calculateGPUVirtualAddress];
  v12 = DYMTLGetAssociatedObject(v11, 0);
  v13 = DYMTLGetAssociatedObject(v11, 3u);
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  MakeDYMTLIndirectCommandBufferDescriptor(v12, [v13 maxKernelThreadgroupMemoryBindCount], v15);
  memset(v14, 0, sizeof(v14));
  GPUTools::MTL::Utils::DYMTLCreateIndirectCommandEncoder(v15, v14);
  DYMTLDrawRenderCommandEncoder(v10, a5, a4, v14, [(DYMTLFunctionPlayer *)self->_player objectMap], &self->_gpuVirtualAddressArray.__begin_);
}

- (unsigned)executeIndirectRenderCommands:(id)a3 withData:(const char *)a4 forRange:(_NSRange)a5 forIndirectCommandBuffer:(id)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  v12 = a6;
  [(DYMTLIndirectCommandBufferManager *)self _calculateGPUVirtualAddress];
  v13 = DYMTLGetAssociatedObject(v12, 0);
  v14 = DYMTLGetAssociatedObject(v12, 3u);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  MakeDYMTLIndirectCommandBufferDescriptor(v13, [v14 maxKernelThreadgroupMemoryBindCount], v19);
  memset(v18, 0, sizeof(v18));
  GPUTools::MTL::Utils::DYMTLCreateIndirectCommandEncoder(v19, v18);
  v15 = [(DYMTLIndirectCommandBufferManager *)self saveRenderEncoder:v11 withDescriptor:v13];
  if (location >= location + length)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      DYMTSetupRenderCommandEncoder(v11, v19, location, a4, v18, [(DYMTLFunctionPlayer *)self->_player objectMap], self);
      v16 += DYMTLDrawRenderCommandEncoder(v11, location++, a4, v18, [(DYMTLFunctionPlayer *)self->_player objectMap], &self->_gpuVirtualAddressArray.__begin_);
      --length;
    }

    while (length);
  }

  [v15 restoreEncoder:v11 withDescriptor:v13];

  return v16;
}

- (void)executeIndirectComputeCommand:(id)a3 withData:(const char *)a4 atIndex:(unint64_t)a5 forIndirectCommandBuffer:(id)a6
{
  v10 = a3;
  v11 = a6;
  [(DYMTLIndirectCommandBufferManager *)self _calculateGPUVirtualAddress];
  v12 = DYMTLGetAssociatedObject(v11, 0);
  v13 = DYMTLGetAssociatedObject(v11, 3u);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  MakeDYMTLIndirectCommandBufferDescriptor(v12, [v13 maxKernelThreadgroupMemoryBindCount], v34);
  v33 = 0u;
  memset(v32, 0, sizeof(v32));
  GPUTools::MTL::Utils::DYMTLCreateIndirectCommandEncoder(v34, v32);
  v14 = v10;
  v15 = &a4[*(&v33 + 1) * a5];
  v16 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::commandType(v32, v15);
  if (v16)
  {
    ThreadgroupMemoryLength = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getThreadgroupMemoryLength(v32, v15);
    if (v35)
    {
      v18 = ThreadgroupMemoryLength;
      for (i = 0; i < v35; ++i)
      {
        [v14 setThreadgroupMemoryLength:*&v18[8 * i] atIndex:i];
      }
    }

    if (v16 == 32)
    {
      v26 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::concurrentDispatchThreadgroupsArguments(v32, v15);
      v27 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::indirectDispatchArguments(v32, v15);
      v28 = *(v27 + 1);
      v29 = *(v27 + 2);
      v38 = *v27;
      v39 = v28;
      v40 = v29;
      [v14 setStageInRegion:&v38];
      v30 = *(v26 + 2);
      v38 = *v26;
      *&v39 = v30;
      v31 = *(v26 + 5);
      v36 = *(v26 + 24);
      v37 = v31;
      [v14 dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
    }

    else if (v16 == 64)
    {
      v20 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::concurrentDispatchThreadsArguments(v32, v15);
      v21 = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::indirectDispatchArguments(v32, v15);
      v22 = *(v21 + 1);
      v23 = *(v21 + 2);
      v38 = *v21;
      v39 = v22;
      v40 = v23;
      [v14 setStageInRegion:&v38];
      v24 = *(v20 + 2);
      v38 = *v20;
      *&v39 = v24;
      v25 = *(v20 + 5);
      v36 = *(v20 + 24);
      v37 = v25;
      [v14 dispatchThreads:&v38 threadsPerThreadgroup:&v36];
    }
  }
}

- (void)restoreBuffer:(id)a3 withData:(const char *)a4 commandQueue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = DYMTLGetAssociatedObject(v8, 0);
  v11 = [v8 size];
  v12 = v8;
  v13 = DYMTLGetAssociatedObject(v12, 3u);
  v14 = v12;
  if (([v13 options] & 0x20) != 0)
  {
    v15 = [(objc_object *)v12 device];
    v14 = [v15 newIndirectCommandBufferWithDescriptor:v10 maxCommandCount:v11 options:0];
  }

  [(DYMTLIndirectCommandBufferManager *)self _calculateGPUVirtualAddress];
  MakeDYMTLIndirectCommandBufferDescriptor(v10, [v13 maxKernelThreadgroupMemoryBindCount], &v19);
  v16 = DYMTLGetOriginalObject(v14);
  DYMTLEncodeIndirectCommandBuffer(v16, &v19, v11, a4, [(DYMTLFunctionPlayer *)self->_player objectMap], self);

  if (v14 != v12)
  {
    v17 = [v9 commandBuffer];
    v18 = [v17 blitCommandEncoder];
    [v18 copyIndirectCommandBuffer:v14 sourceRange:0 destination:v11 destinationIndex:{v12, 0}];
    [v18 endEncoding];
    [v17 commit];
  }
}

- (void)restoreBuffer:(id)a3 optimizedRanges:(const char *)a4 commandQueue:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v10 = GPUTools::MTL::MakeIndirectCommandBufferOptimizedRangeList(a4, v9);
  if ([v10 count])
  {
    v11 = [v8 commandBuffer];
    v12 = [v11 blitCommandEncoder];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [*(*(&v20 + 1) + 8 * v16) rangeValue];
          [v12 optimizeIndirectCommandBuffer:v7 withRange:{v17, v18}];
          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [v12 endEncoding];
    [v11 commit];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (unint64_t)setupRenderCommandEncoder:(id)a3 withData:(const char *)a4 atIndex:(unint64_t)a5 forIndirectCommandBuffer:(id)a6
{
  v10 = a3;
  v11 = a6;
  [(DYMTLIndirectCommandBufferManager *)self _calculateGPUVirtualAddress];
  v12 = DYMTLGetAssociatedObject(v11, 0);
  v13 = DYMTLGetAssociatedObject(v11, 3u);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  MakeDYMTLIndirectCommandBufferDescriptor(v12, [v13 maxKernelThreadgroupMemoryBindCount], v17);
  memset(v16, 0, sizeof(v16));
  GPUTools::MTL::Utils::DYMTLCreateIndirectCommandEncoder(v17, v16);
  v14 = DYMTSetupRenderCommandEncoder(v10, v17, a5, a4, v16, [(DYMTLFunctionPlayer *)self->_player objectMap], self);

  return v14;
}

- (unint64_t)setupComputeCommandEncoder:(id)a3 withData:(const char *)a4 atIndex:(unint64_t)a5 forIndirectCommandBuffer:(id)a6
{
  v10 = a3;
  v11 = a6;
  [(DYMTLIndirectCommandBufferManager *)self _calculateGPUVirtualAddress];
  v27 = DYMTLGetAssociatedObject(v11, 0);
  v12 = DYMTLGetAssociatedObject(v11, 3u);
  v32 = 0;
  v31 = 0u;
  memset(v30, 0, sizeof(v30));
  MakeDYMTLIndirectCommandBufferDescriptor(v27, [v12 maxKernelThreadgroupMemoryBindCount], v30);
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  GPUTools::MTL::Utils::DYMTLCreateIndirectCommandEncoder(v30, v28);
  v13 = [(DYMTLFunctionPlayer *)self->_player objectMap];
  v14 = v10;
  v15 = self;
  v16 = &a4[*(&v29 + 1) * a5];
  if (BYTE9(v30[0]))
  {
    v17 = 0;
  }

  else
  {
    v17 = [(DYMTLIndirectCommandBufferManager *)v15 computePipelineIdForUniqueIdentifier:GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getPipelineStateUniqueIdentifier(v28, v16)];
    v18 = GetObjectForKey(v13, v17);
    [v14 setComputePipelineState:v18];
  }

  if ((BYTE8(v30[0]) & 1) == 0)
  {
    KernelBuffers = GPUTools::MTL::Utils::DYMTLIndirectCommandEncoder::getKernelBuffers(v28, v16);
    if (v31)
    {
      v20 = KernelBuffers;
      v21 = 0;
      do
      {
        v22 = [(DYMTLIndirectCommandBufferManager *)v15 bufferIdAndOffsetForGPUVirtualAddress:*&v20[8 * v21]];
        v24 = v23;
        v25 = GetObjectForKey(v13, v22);
        [v14 setBuffer:v25 offset:v24 atIndex:v21];

        ++v21;
      }

      while (v21 < v31);
    }
  }

  return v17;
}

- (void)updateReplayerTranslationBuffer
{
  __p = 0;
  v63 = 0;
  v64 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  next = self->_gpuVirtualAddressMap.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v4 = next[2];
      v5 = [(DYMTLFunctionPlayer *)self->_player objectForKey:v4];
      if ([v5 conformsToProtocol:&unk_2860CA848])
      {
        v57 = v4;
        v58 = v5;
        std::vector<std::pair<unsigned long long,objc_object * {__strong}>>::push_back[abi:ne200100](&v59, &v57);
      }

      next = *next;
    }

    while (next);
    v6 = __p;
    v7 = v63;
    v8 = (v60 - v59) >> 4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v9 = v7 - v6;
  if ((v7 - v6) > 0xFFFFFFFFFFFFFFF7)
  {
    v63 = v7 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(&__p, 8uLL);
    v6 = __p;
  }

  *&v6[v9] = v8;
  v10 = v59;
  v11 = v60;
  while (v10 != v11)
  {
    v12 = *v10;
    v13 = v10[1];
    v14 = DYMTLGetOriginalObject(v13);
    v15 = __p;
    v16 = v63 - __p;
    if ((v63 - __p) > 0xFFFFFFFFFFFFFFF7)
    {
      v63 += 8;
    }

    else
    {
      std::vector<unsigned char>::__append(&__p, 8uLL);
      v15 = __p;
    }

    *&v15[v16] = v12;
    v17 = [v14 gpuAddress];
    v18 = __p;
    v19 = v63 - __p;
    if ((v63 - __p) > 0xFFFFFFFFFFFFFFF7)
    {
      v63 += 8;
    }

    else
    {
      std::vector<unsigned char>::__append(&__p, 8uLL);
      v18 = __p;
    }

    *&v18[v19] = v17;
    v20 = [v14 length];
    v21 = __p;
    v22 = v63 - __p;
    if ((v63 - __p) > 0xFFFFFFFFFFFFFFF7)
    {
      v63 += 8;
    }

    else
    {
      std::vector<unsigned char>::__append(&__p, 8uLL);
      v21 = __p;
    }

    *&v21[v22] = v20;

    v10 += 2;
  }

  v57 = &v59;
  std::vector<std::pair<unsigned long long,objc_object * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v57);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v23 = self->_renderPipelineStateUniqueIdentifier.__table_.__first_node_.__next_;
  if (v23)
  {
    do
    {
      v24 = v23[3];
      v25 = [(DYMTLFunctionPlayer *)self->_player objectForKey:v24];
      if ([v25 conformsToProtocol:&unk_2860CADD8])
      {
        v57 = v24;
        v58 = v25;
        std::vector<std::pair<unsigned long long,objc_object * {__strong}>>::push_back[abi:ne200100](&v59, &v57);
      }

      v23 = *v23;
    }

    while (v23);
    v26 = (v60 - v59) >> 4;
  }

  else
  {
    v26 = 0;
  }

  v27 = __p;
  v28 = v63 - __p;
  if ((v63 - __p) > 0xFFFFFFFFFFFFFFF7)
  {
    v63 += 8;
  }

  else
  {
    std::vector<unsigned char>::__append(&__p, 8uLL);
    v27 = __p;
  }

  *&v27[v28] = v26;
  v29 = v59;
  v30 = v60;
  while (v29 != v30)
  {
    v31 = v29[1];
    v32 = *v29;
    v33 = __p;
    v34 = v63 - __p;
    if ((v63 - __p) > 0xFFFFFFFFFFFFFFF7)
    {
      v63 += 8;
    }

    else
    {
      std::vector<unsigned char>::__append(&__p, 8uLL);
      v33 = __p;
    }

    *&v33[v34] = v32;
    v35 = DYMTLGetOriginalObject(v31);
    v36 = [v35 uniqueIdentifier];
    v37 = __p;
    v38 = v63 - __p;
    if ((v63 - __p) > 0xFFFFFFFFFFFFFFF7)
    {
      v63 += 8;
    }

    else
    {
      std::vector<unsigned char>::__append(&__p, 8uLL);
      v37 = __p;
    }

    *&v37[v38] = v36;

    v29 += 2;
  }

  v57 = &v59;
  std::vector<std::pair<unsigned long long,objc_object * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v57);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v39 = self->_computePipelineStateUniqueIdentifier.__table_.__first_node_.__next_;
  if (v39)
  {
    do
    {
      v40 = v39[3];
      v41 = [(DYMTLFunctionPlayer *)self->_player objectForKey:v40];
      if ([v41 conformsToProtocol:&unk_2860CB080])
      {
        v57 = v40;
        v58 = v41;
        std::vector<std::pair<unsigned long long,objc_object * {__strong}>>::push_back[abi:ne200100](&v59, &v57);
      }

      v39 = *v39;
    }

    while (v39);
    v42 = (v60 - v59) >> 4;
  }

  else
  {
    v42 = 0;
  }

  v43 = __p;
  v44 = v63 - __p;
  if ((v63 - __p) > 0xFFFFFFFFFFFFFFF7)
  {
    v63 += 8;
  }

  else
  {
    std::vector<unsigned char>::__append(&__p, 8uLL);
    v43 = __p;
  }

  *&v43[v44] = v42;
  v45 = v59;
  v46 = v60;
  while (v45 != v46)
  {
    v47 = v45[1];
    v48 = *v45;
    v49 = __p;
    v50 = v63 - __p;
    if ((v63 - __p) > 0xFFFFFFFFFFFFFFF7)
    {
      v63 += 8;
    }

    else
    {
      std::vector<unsigned char>::__append(&__p, 8uLL);
      v49 = __p;
    }

    *&v49[v50] = v48;
    v51 = DYMTLGetOriginalObject(v47);
    v52 = [v51 uniqueIdentifier];
    v53 = __p;
    v54 = v63 - __p;
    if ((v63 - __p) > 0xFFFFFFFFFFFFFFF7)
    {
      v63 += 8;
    }

    else
    {
      std::vector<unsigned char>::__append(&__p, 8uLL);
      v53 = __p;
    }

    *&v53[v54] = v52;

    v45 += 2;
  }

  v57 = &v59;
  std::vector<std::pair<unsigned long long,objc_object * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v57);
  v55 = [(DYMTLFunctionPlayer *)self->_player device];
  v56 = [v55 newBufferWithBytes:__p length:v63 - __p options:0];

  [(DYMTLFunctionPlayer *)self->_player setObject:v56 forKey:*MEMORY[0x277D0B270]];
  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }
}

- (id)convertIndirectCommandBufferData:(const char *)a3 range:(_NSRange)a4 toFBufStream:(const CoreFunction *)a5
{
  length = a4.length;
  location = a4.location;
  [(DYMTLIndirectCommandBufferManager *)self _calculateGPUVirtualAddress];
  v10 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(a5->var6, 0);
  v11 = [(DYMTLFunctionPlayer *)self->_player objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(&a5->var6[1], 0)];
  v12 = DYMTLGetAssociatedObject(v11, 0);
  v13 = [v11 size];
  v14 = DYMTLGetAssociatedObject(v11, 3u);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  MakeDYMTLIndirectCommandBufferDescriptor(v12, [v14 maxKernelThreadgroupMemoryBindCount], v20);
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  GPUTools::MTL::Utils::DYMTLCreateIndirectCommandEncoder(v20, v18);
  v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a3 length:*(&v19 + 1) * v13 freeWhenDone:0];
  v16 = GPUTools::MTL::Utils::DYMTLConvertIndirectCommandBufferDataToFBufStream(v20, v15, v10, location, length, self, a5->var1);

  return v16;
}

- (id)saveRenderEncoder:(id)a3 withDescriptor:(id)a4
{
  v4 = [IndirectRenderCommandEncoderState saveEncoder:a3 withDescriptor:a4 player:self->_player];

  return v4;
}

- (id)saveComputeEncoder:(id)a3 withDescriptor:(id)a4
{
  v4 = [IndirectComputeCommandEncoderState saveEncoder:a3 withDescriptor:a4 player:self->_player];

  return v4;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 17) = 0;
  return self;
}

@end