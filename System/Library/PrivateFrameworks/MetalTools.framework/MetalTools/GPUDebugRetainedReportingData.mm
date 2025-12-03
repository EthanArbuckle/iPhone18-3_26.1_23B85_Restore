@interface GPUDebugRetainedReportingData
- (id).cxx_construct;
- (id)init:(id)init;
- (void)addUsedBuffer:(MetalBuffer)buffer;
- (void)dealloc;
- (void)setEncoderLabelForIndex:(id)index encoderIndex:(unsigned int)encoderIndex;
@end

@implementation GPUDebugRetainedReportingData

- (void)setEncoderLabelForIndex:(id)index encoderIndex:(unsigned int)encoderIndex
{
  indexCopy = index;
  encoderIndexCopy = encoderIndex;
  indexCopy2 = index;
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__emplace_unique_key_args<unsigned int,unsigned int &,NSString *&>(&self->_encoderLabels.__table_.__bucket_list_.__ptr_, &encoderIndexCopy);
}

- (id)init:(id)init
{
  v5.receiver = self;
  v5.super_class = GPUDebugRetainedReportingData;
  v3 = [(GPUDebugRetainedReportingData *)&v5 init];
  if (v3)
  {
    v3->_cbAllocations = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3->_usedPipelineStates = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v3;
}

- (void)addUsedBuffer:(MetalBuffer)buffer
{
  end = self->_usedBuffers.__end_;
  cap = self->_usedBuffers.__cap_;
  if (end >= cap)
  {
    begin = self->_usedBuffers.__begin_;
    v8 = end - begin;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
    }

    v10 = cap - begin;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MetalBuffer>>(&self->_usedBuffers, v11);
    }

    *(16 * v8) = buffer;
    v6 = (16 * v8 + 16);
    v12 = self->_usedBuffers.__begin_;
    v13 = (self->_usedBuffers.__end_ - v12);
    v14 = (16 * v8 - v13);
    memcpy(v14, v12, v13);
    v15 = self->_usedBuffers.__begin_;
    self->_usedBuffers.__begin_ = v14;
    self->_usedBuffers.__end_ = v6;
    self->_usedBuffers.__cap_ = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *end = buffer;
    v6 = end + 1;
  }

  self->_usedBuffers.__end_ = v6;
}

- (void)dealloc
{
  begin = self->_usedBuffers.__begin_;
  end = self->_usedBuffers.__end_;
  while (begin != end)
  {
    MetalBuffer::free(begin++);
  }

  [(NSMutableArray *)self->_usedPipelineStates removeAllObjects];
  [(NSMutableArray *)self->_cbAllocations removeAllObjects];

  for (i = self->_encoderLabels.__table_.__first_node_.__next_; i; i = *i)
  {
  }

  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_encoderLabels.__table_.__bucket_list_.__ptr_);
  v6.receiver = self;
  v6.super_class = GPUDebugRetainedReportingData;
  [(GPUDebugRetainedReportingData *)&v6 dealloc];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  return self;
}

@end