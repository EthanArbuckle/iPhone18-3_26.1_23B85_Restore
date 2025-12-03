@interface DYMTLIndirectArgumentBufferManager
- (DYMTLIndirectArgumentBufferManager)initWithFunctionPlayer:(id)player;
- (__n128)findStructTypeForArgumentIndex:inStructType:;
- (id).cxx_construct;
- (id)argumentEncoderForDecodingOperation:(const void *)operation reflectionStructType:(id *)type;
- (id)blitBufferFromGPU:(id)u;
- (id)findStructTypeForArgumentIndex:(unint64_t)index inStructType:(id)type;
- (id)findStructTypeForArgumentIndex:inStructType:;
- (id)objectWithId:(unint64_t)id;
- (void)decodeReplayerIAB:(id)b offset:(unint64_t)offset function:(id)function argument:(id)argument;
- (void)encodeIndirectArgumentsForBuffer:(unint64_t)buffer data:(void *)data decodingMap:(void *)map;
- (void)encodeIndirectArgumentsForBuffer:(unint64_t)buffer decodingMap:(void *)map;
- (void)executeIABDecodingOp:(const void *)op bufferId:(unint64_t)id data:(void *)data indirectDecodingMap:(void *)map;
- (void)findAncestorsForBuffer:(unint64_t)buffer commandBufferIndex:(unint64_t)index commandEncoderIndex:(unint64_t)encoderIndex callIndex:(unint64_t)callIndex ancestors:(void *)ancestors;
- (void)initializeResourcePatchingTypes;
- (void)notifyReplayerTargetCommandBuffersFinished;
- (void)notifyReplayerTargetIndirectArgumentBuffers:(void *)buffers;
- (void)processAncestorMapData:(const void *)data;
- (void)processCommandBuffer:(unint64_t)buffer functionIndex:(unsigned int)index ancestorMapData:(const void *)data indirectArgumentBuffersData:(const void *)buffersData resourceMapsData:(const void *)mapsData driverDecodingData:(id)decodingData;
- (void)processIndirectArgumentBuffersData:(const void *)data;
- (void)processResourceMapsData:(const void *)data;
- (void)resolveIABDecodingOperations;
- (void)uploadDriverDecodingData:(id)data;
@end

@implementation DYMTLIndirectArgumentBufferManager

- (DYMTLIndirectArgumentBufferManager)initWithFunctionPlayer:(id)player
{
  playerCopy = player;
  v9.receiver = self;
  v9.super_class = DYMTLIndirectArgumentBufferManager;
  v6 = [(DYMTLIndirectArgumentBufferManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, player);
    v7->_resourcePatchingTypesInitialized = 0;
  }

  return v7;
}

- (void)initializeResourcePatchingTypes
{
  if (!self->_resourcePatchingTypesInitialized)
  {
    self->_resourcePatchingTypesInitialized = 1;
    device = [(DYMTLIndirectArgumentBufferManager *)self device];
    v7 = DYMTLGetOriginalObject(device);

    v4 = 0;
    resourcePatchingType = self->_resourcePatchingType;
    do
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [v7 resourcePatchingTypeForResourceType:v4];
      }

      else
      {
        v6 = 2;
      }

      resourcePatchingType[v4++] = v6;
    }

    while (v4 != 6);
  }
}

- (void)processCommandBuffer:(unint64_t)buffer functionIndex:(unsigned int)index ancestorMapData:(const void *)data indirectArgumentBuffersData:(const void *)buffersData resourceMapsData:(const void *)mapsData driverDecodingData:(id)decodingData
{
  decodingDataCopy = decodingData;
  [(DYMTLIndirectArgumentBufferManager *)self initializeResourcePatchingTypes];
  self->_currentCommandBuffer = buffer;
  self->_currentCommandBufferFunctionIndex = index;
  objc_storeStrong(&self->_currentDeviceDecodingData, decodingData);
  v34.objectId = buffer;
  *&v34.functionIndex = index + 1;
  begin = self->_commandBufferIds.__begin_;
  end = self->_commandBufferIds.__end_;
  p_commandBufferIds = &self->_commandBufferIds;
  if (begin != end)
  {
    while (!DYCommandBufferUID::operator==(begin, &v34))
    {
      if (++begin == end)
      {
        begin = end;
        break;
      }
    }

    end = self->_commandBufferIds.__end_;
  }

  if (begin == end)
  {
    cap = self->_commandBufferIds.__cap_;
    if (end >= cap)
    {
      v21 = end - p_commandBufferIds->__begin_;
      if ((v21 + 1) >> 60)
      {
        std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
      }

      v22 = cap - p_commandBufferIds->__begin_;
      v23 = v22 >> 3;
      if (v22 >> 3 <= (v21 + 1))
      {
        v23 = v21 + 1;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF0)
      {
        v24 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (v24)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<DYCommandBufferUID>>(&self->_commandBufferIds, v24);
      }

      v25 = (16 * v21);
      *v25 = v34;
      v20 = (16 * v21 + 16);
      v26 = self->_commandBufferIds.__begin_;
      v27 = (self->_commandBufferIds.__end_ - v26);
      v28 = (v25 - v27);
      memcpy((v25 - v27), v26, v27);
      v29 = self->_commandBufferIds.__begin_;
      self->_commandBufferIds.__begin_ = v28;
      self->_commandBufferIds.__end_ = v20;
      self->_commandBufferIds.__cap_ = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *end = v34;
      v20 = end + 1;
    }

    self->_commandBufferIds.__end_ = v20;
    [(DYMTLIndirectArgumentBufferManager *)self uploadDriverDecodingData:decodingDataCopy, v34];
    [(DYMTLIndirectArgumentBufferManager *)self processAncestorMapData:data];
    [(DYMTLIndirectArgumentBufferManager *)self processIndirectArgumentBuffersData:buffersData];
    [(DYMTLIndirectArgumentBufferManager *)self processResourceMapsData:mapsData];
    [(DYMTLIndirectArgumentBufferManager *)self resolveIABDecodingOperations];
    begin_node = self->_deviceResourcesBuffers.__tree_.__begin_node_;
    if (begin_node != &self->_deviceResourcesBuffers.__tree_.__end_node_)
    {
      do
      {
        [(DYMTLIndirectArgumentBufferManager *)self encodeIndirectArgumentsForBuffer:begin_node->_currentDeviceDecodingData decodingMap:&self->_decodingMap];
        player = begin_node->_player;
        if (player)
        {
          do
          {
            currentCommandBuffer = player;
            player = player->super.super.isa;
          }

          while (player);
        }

        else
        {
          do
          {
            currentCommandBuffer = begin_node->_currentCommandBuffer;
            v33 = currentCommandBuffer->super.isa == begin_node;
            begin_node = currentCommandBuffer;
          }

          while (!v33);
        }

        begin_node = currentCommandBuffer;
      }

      while (currentCommandBuffer != &self->_deviceResourcesBuffers.__tree_.__end_node_);
    }
  }

  else
  {
    self->_traceProcessed = 1;
  }
}

- (id)objectWithId:(unint64_t)id
{
  v6[0] = id;
  objectMap = [(DYMTLFunctionPlayer *)self->_player objectMap];
  v6[2] = v6;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(objectMap, v6)[3];

  return v4;
}

- (void)uploadDriverDecodingData:(id)data
{
  dataCopy = data;
  if (dataCopy && dataCopy != MEMORY[0x277D85CC8])
  {
    v7 = dataCopy;
    device = [(DYMTLIndirectArgumentBufferManager *)self device];
    v6 = DYMTLGetOriginalObject(device);

    if (objc_opt_respondsToSelector())
    {
      [v6 setIndirectArgumentBufferDecodingData:v7];
    }

    dataCopy = v7;
  }
}

- (void)processAncestorMapData:(const void *)data
{
  memset(v4, 0, sizeof(v4));
  GPUTools::MTL::Utils::MakeDYMTLMutableBufferAncestorMaps();
  std::vector<std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::push_back[abi:ne200100](&self->_ancestorMaps.__begin_, v4);
  v5 = v4;
  std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

- (void)processIndirectArgumentBuffersData:(const void *)data
{
  memset(v4, 0, sizeof(v4));
  GPUTools::MTL::Utils::MakeDYMTLIndirectArgumentBufferInfos();
  std::vector<std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>>::push_back[abi:ne200100](&self->_indirectArgumentBuffers.__begin_, v4);
  v5 = v4;
  std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

- (void)processResourceMapsData:(const void *)data
{
  v4 = *data;
  v5 = (data + 16);
  v6 = *(data + 1);
  if (v6)
  {
    do
    {
      v7 = v5;
      v8 = *v5;
      v9 = v7[2];
      v44 = v7[1];
      *&v45 = v8;
      *(&v45 + 1) = v9;
      v46 = &v44;
      v10 = std::__tree<std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<DYMTLOriginalProcessBuffer>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_bufferVitualAddressMap, &v44);
      v11 = v10;
      v13 = v10[6];
      v12 = v10[7];
      if (v13 >= v12)
      {
        v15 = v10[5];
        v16 = (v13 - v15) >> 4;
        v17 = v16 + 1;
        if ((v16 + 1) >> 60)
        {
          std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
        }

        v18 = v12 - v15;
        if (v18 >> 3 > v17)
        {
          v17 = v18 >> 3;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF0)
        {
          v19 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>>((v10 + 5), v19);
        }

        v20 = (16 * v16);
        *v20 = v45;
        v14 = 16 * v16 + 16;
        v21 = v10[5];
        v22 = v10[6] - v21;
        v23 = 16 * v16 - v22;
        memcpy(v20 - v22, v21, v22);
        v24 = v11[5];
        v11[5] = v23;
        v11[6] = v14;
        v11[7] = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v13 = v45;
        v14 = (v13 + 1);
      }

      v11[6] = v14;
      v25 = *(&v45 + 1);
      v46 = &v45;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_bufferLengthMap.__table_.__bucket_list_.__ptr_, &v45)[3] = v25;
      v5 = v7 + 3;
      --v6;
    }

    while (v6);
    v5 = v7 + 3;
  }

  v26 = v5 + 1;
  v27 = *v5;
  if (*v5)
  {
    do
    {
      v29 = *v26;
      v28 = v26[1];
      v26 += 2;
      v46 = v28;
      *&v45 = &v46;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_textureMap.__table_.__bucket_list_.__ptr_, &v46)[3] = v29;
      --v27;
    }

    while (v27);
    v5 = v26 - 1;
  }

  v30 = *v26;
  for (i = (v5 + 2); v30; --v30)
  {
    v46 = *i;
    v44 = i[1];
    *&v45 = &v44;
    v32 = std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_samplerMap.__table_.__bucket_list_.__ptr_, &v44);
    std::vector<unsigned long long>::push_back[abi:ne200100](v32 + 3, &v46);
    i += 2;
  }

  if (v4 > 0x16)
  {
    v33 = (i + 1);
    v34 = *i;
    if (*i)
    {
      do
      {
        v36 = *v33;
        v35 = v33[1];
        v33 += 2;
        v46 = v35;
        *&v45 = &v46;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_renderPipelineMap.__table_.__bucket_list_.__ptr_, &v46)[3] = v36;
        --v34;
      }

      while (v34);
      i = (v33 - 1);
    }

    v37 = *v33;
    for (j = i + 2; v37; --v37)
    {
      v40 = *j;
      v39 = j[1];
      j += 2;
      v46 = v39;
      *&v45 = &v46;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_computePipelineMap.__table_.__bucket_list_.__ptr_, &v46)[3] = v40;
    }

    v41 = *j;
    if (*j)
    {
      v42 = j + 2;
      do
      {
        v43 = *(v42 - 1);
        v46 = *v42;
        *&v45 = &v46;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_indirectCommandBufferMap.__table_.__bucket_list_.__ptr_, &v46)[3] = v43;
        v42 += 2;
        --v41;
      }

      while (v41);
    }
  }
}

- (void)resolveIABDecodingOperations
{
  end = self->_indirectArgumentBuffers.__end_;
  v4 = *(end - 3);
  v3 = *(end - 2);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      v6 = v4 + 24 * v5;
      v7 = *v6;
      v8 = *(v6 + 8);
      if (*v6 != v8)
      {
        do
        {
          if (v7[2])
          {
            __p = 0;
            v39 = 0;
            v40 = 0;
            v36 = *(v7 + 1);
            std::vector<unsigned long long>::push_back[abi:ne200100](&__p, v7 + 3);
            LOBYTE(v37) = 1;
            v33 = v7;
            v9 = std::__hash_table<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_decodingMap.__table_.__bucket_list_.__ptr_, v7);
            std::__tree<DYMTLIABDecodingOp>::__emplace_unique_key_args<DYMTLIABDecodingOp,DYMTLIABDecodingOp const&>((v9 + 3), &v36);
            if (__p)
            {
              v39 = __p;
              operator delete(__p);
            }

            v34 = 0;
            v35 = 0;
            v33 = &v34;
            [(DYMTLIndirectArgumentBufferManager *)self findAncestorsForBuffer:*v7 commandBufferIndex:0xAAAAAAAAAAAAAAABLL * ((self->_indirectArgumentBuffers.__end_ - self->_indirectArgumentBuffers.__begin_) >> 3) - 1 commandEncoderIndex:v5 callIndex:v7[4] ancestors:&v33, end];
            v10 = v33;
            if (v33 != &v34)
            {
              do
              {
                v32 = *(v10 + 4);
                __p = 0;
                v39 = 0;
                v40 = 0;
                v11 = v7[2];
                *&v36 = 0;
                *(&v36 + 1) = v11;
                std::vector<unsigned long long>::push_back[abi:ne200100](&__p, v7 + 3);
                LOBYTE(v37) = 0;
                v41 = &v32;
                v12 = std::__hash_table<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_decodingMap.__table_.__bucket_list_.__ptr_, &v32);
                std::__tree<DYMTLIABDecodingOp>::__emplace_unique_key_args<DYMTLIABDecodingOp,DYMTLIABDecodingOp const&>((v12 + 3), &v36);
                if (__p)
                {
                  v39 = __p;
                  operator delete(__p);
                }

                v13 = *(v10 + 1);
                if (v13)
                {
                  do
                  {
                    v14 = v13;
                    v13 = *v13;
                  }

                  while (v13);
                }

                else
                {
                  do
                  {
                    v14 = *(v10 + 2);
                    v15 = *v14 == v10;
                    v10 = v14;
                  }

                  while (!v15);
                }

                v10 = v14;
              }

              while (v14 != &v34);
            }

            std::__tree<BufferEntry>::destroy(&v33, v34);
          }

          v7 += 5;
        }

        while (v7 != v8);
        v4 = *(end - 3);
        v3 = *(end - 2);
      }

      ++v5;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3));
  }

  for (i = self->_decodingMap.__table_.__first_node_.__next_; i; i = *i)
  {
    *(&v36 + 1) = 0;
    v37 = 0;
    v35 = 0;
    *&v36 = &v36 + 8;
    v33 = 0;
    v34 = 0;
    v17 = i[3];
    if (v17 != i + 4)
    {
      v18 = 0;
      encodedLength = 0;
      do
      {
        if (v18 && v17[5] == v18[1] && (v20 = v17[7], v21 = v17[8] - v20, v22 = v18[3], v21 == v18[4] - v22) && !memcmp(v20, v22, v21))
        {
          v27 = v33;
          if (v34 == v33)
          {
LABEL_40:
            std::__tree<DYMTLIABDecodingOp>::__emplace_unique_key_args<DYMTLIABDecodingOp,DYMTLIABDecodingOp const&>(&v36, (v17 + 4));
            std::vector<unsigned long long>::push_back[abi:ne200100](&v33, v17 + 4);
          }

          else
          {
            v28 = (v34 - v33) >> 3;
            if (v28 <= 1)
            {
              v28 = 1;
            }

            while (1)
            {
              v29 = *v27++;
              if (!((v17[4] - v29) % encodedLength))
              {
                break;
              }

              if (!--v28)
              {
                goto LABEL_40;
              }
            }
          }
        }

        else
        {
          v31 = 0;
          v23 = [(DYMTLIndirectArgumentBufferManager *)self argumentEncoderForDecodingOperation:v17 + 4 reflectionStructType:&v31, end];
          v24 = v31;
          encodedLength = [v23 encodedLength];
          std::__tree<DYMTLIABDecodingOp>::__emplace_unique_key_args<DYMTLIABDecodingOp,DYMTLIABDecodingOp const&>(&v36, (v17 + 4));
          v34 = v33;
          std::vector<unsigned long long>::push_back[abi:ne200100](&v33, v17 + 4);

          v18 = v17 + 4;
        }

        v25 = v17[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v17[2];
            v15 = *v26 == v17;
            v17 = v26;
          }

          while (!v15);
        }

        v17 = v26;
      }

      while (v26 != i + 4);
    }

    std::__tree<DYMTLIABDecodingOp>::swap(i + 3, &v36);
    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    std::__tree<DYMTLIABDecodingOp>::destroy(&v36, *(&v36 + 1));
  }
}

- (void)findAncestorsForBuffer:(unint64_t)buffer commandBufferIndex:(unint64_t)index commandEncoderIndex:(unint64_t)encoderIndex callIndex:(unint64_t)callIndex ancestors:(void *)ancestors
{
  bufferCopy = buffer;
  if (index)
  {
    v12 = ancestors + 8;
    indexCopy = index;
    do
    {
      v14 = self->_ancestorMaps.__begin_ + 24 * indexCopy;
      v15 = v14[1] - *v14;
      if (v15)
      {
        v16 = -1 - 0x3333333333333333 * (v15 >> 3);
        for (i = indexCopy == index ? encoderIndex : v16; i; --i)
        {
          v18 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>((*v14 + 40 * i), &bufferCopy);
          if (v18)
          {
            v19 = v18[5];
            if (indexCopy == index && i == encoderIndex)
            {
              for (; v19; v19 = *v19)
              {
                if (v19[3] <= callIndex)
                {
                  v20 = *v12;
                  if (!*v12)
                  {
                    goto LABEL_21;
                  }

                  v21 = v19[2];
                  v22 = v12;
                  do
                  {
                    v23 = v20[4];
                    v24 = v23 >= v21;
                    v25 = v23 < v21;
                    if (v24)
                    {
                      v22 = v20;
                    }

                    v20 = v20[v25];
                  }

                  while (v20);
                  if (v22 == v12 || v21 < v22[4])
                  {
LABEL_21:
                    std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(ancestors, v19 + 2);
                    [(DYMTLIndirectArgumentBufferManager *)self findAncestorsForBuffer:v19[2] commandBufferIndex:index commandEncoderIndex:encoderIndex callIndex:v19[3] ancestors:ancestors];
                  }
                }
              }
            }

            else
            {
              for (; v19; v19 = *v19)
              {
                std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(ancestors, v19 + 2);
                [(DYMTLIndirectArgumentBufferManager *)self findAncestorsForBuffer:v19[2] commandBufferIndex:indexCopy commandEncoderIndex:i callIndex:v19[3] ancestors:ancestors];
              }
            }
          }
        }
      }

      --indexCopy;
    }

    while (indexCopy);
  }
}

- (void)encodeIndirectArgumentsForBuffer:(unint64_t)buffer decodingMap:(void *)map
{
  bufferCopy = buffer;
  if (std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(map, &bufferCopy))
  {
    v6 = [(DYMTLIndirectArgumentBufferManager *)self objectWithId:bufferCopy];
    v7 = v6;
    if (v6)
    {
      storageMode = [v6 storageMode];
      if (!storageMode)
      {
        v13 = 0;
        contents = [v7 contents];
        if (contents)
        {
          goto LABEL_11;
        }

LABEL_8:

        return;
      }

      if (storageMode == 2)
      {
        queue = [(DYMTLIndirectArgumentBufferManager *)self queue];
        commandBuffer = [queue commandBuffer];
        blitCommandEncoder = [commandBuffer blitCommandEncoder];
        device = [v7 device];
        v13 = [device newBufferWithLength:objc_msgSend(v7 options:{"length"), 0}];

        [blitCommandEncoder copyFromBuffer:v7 sourceOffset:0 toBuffer:v13 destinationOffset:0 size:{objc_msgSend(v7, "length")}];
        [blitCommandEncoder endEncoding];
        [commandBuffer commit];
        [commandBuffer waitUntilCompleted];
        contents = [v13 contents];

        if (!contents)
        {
          goto LABEL_8;
        }

LABEL_11:
        [(DYMTLIndirectArgumentBufferManager *)self encodeIndirectArgumentsForBuffer:bufferCopy data:contents decodingMap:map];
        if ([v7 storageMode] == 2)
        {
          queue2 = [(DYMTLIndirectArgumentBufferManager *)self queue];
          commandBuffer2 = [queue2 commandBuffer];
          blitCommandEncoder2 = [commandBuffer2 blitCommandEncoder];
          [blitCommandEncoder2 copyFromBuffer:v13 sourceOffset:0 toBuffer:v7 destinationOffset:0 size:{objc_msgSend(v7, "length")}];
          [blitCommandEncoder2 endEncoding];
          [commandBuffer2 commit];
          [commandBuffer2 waitUntilCompleted];
        }

        goto LABEL_8;
      }
    }

    v13 = 0;
    goto LABEL_8;
  }
}

- (void)encodeIndirectArgumentsForBuffer:(unint64_t)buffer data:(void *)data decodingMap:(void *)map
{
  v46[0] = buffer;
  if (self->_currentCommandBuffer)
  {
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(map, v46);
    if (v7)
    {
      v43 = 0u;
      v44 = 0u;
      v45 = 1065353216;
      v8 = v7[3];
      v9 = v7 + 4;
      if (v8 != v7 + 4)
      {
        do
        {
          v10 = objc_autoreleasePoolPush();
          [(DYMTLIndirectArgumentBufferManager *)self executeIABDecodingOp:v8 + 4 bufferId:v46[0] data:data indirectDecodingMap:&v43];
          objc_autoreleasePoolPop(v10);
          v11 = v8[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v8[2];
              v13 = *v12 == v8;
              v8 = v12;
            }

            while (!v13);
          }

          v8 = v12;
        }

        while (v12 != v9);
      }

      if (!self->_traceProcessed)
      {
        begin = self->_commandBufferIds.__begin_;
        if (self->_commandBufferIds.__end_ == begin)
        {
          v16 = 0;
        }

        else
        {
          v15 = 0;
          v16 = 0;
          do
          {
            *&v32 = self->_currentCommandBuffer;
            DWORD2(v32) = self->_currentCommandBufferFunctionIndex;
            if (DYCommandBufferUID::operator==(&begin[v15], &v32))
            {
              break;
            }

            ++v16;
            begin = self->_commandBufferIds.__begin_;
            ++v15;
          }

          while (v16 < self->_commandBufferIds.__end_ - begin);
        }

        v40 = 0u;
        v41 = 0u;
        v42 = 1065353216;
        v17 = v44;
        if (v44)
        {
          do
          {
            v18 = v17[2];
            v39[0] = 0;
            v39[1] = 0;
            v38 = v39;
            [(DYMTLIndirectArgumentBufferManager *)self findAncestorsForBuffer:v18 commandBufferIndex:v16 commandEncoderIndex:-1 - 0x5555555555555555 * ((*(self->_indirectArgumentBuffers.__begin_ + 3 * v16 + 1) - *(self->_indirectArgumentBuffers.__begin_ + 3 * v16)) >> 3) callIndex:-1 ancestors:&v38];
            v19 = v38;
            if (v38 != v39)
            {
              v20 = v17 + 4;
              do
              {
                v37 = v19[4];
                v21 = v17[3];
                if (v21 != v20)
                {
                  do
                  {
                    v32 = *(v21 + 2);
                    v33 = *(v21 + 48);
                    v35 = 0;
                    v36 = 0;
                    __p = 0;
                    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v21[7], v21[8], (v21[8] - v21[7]) >> 3);
                    v33 = 0;
                    v46[2] = &v37;
                    v22 = std::__hash_table<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v40, &v37);
                    std::__tree<DYMTLIABDecodingOp>::__emplace_unique_key_args<DYMTLIABDecodingOp,DYMTLIABDecodingOp const&>((v22 + 3), &v32);
                    if (__p)
                    {
                      v35 = __p;
                      operator delete(__p);
                    }

                    v23 = v21[1];
                    if (v23)
                    {
                      do
                      {
                        v24 = v23;
                        v23 = *v23;
                      }

                      while (v23);
                    }

                    else
                    {
                      do
                      {
                        v24 = v21[2];
                        v13 = *v24 == v21;
                        v21 = v24;
                      }

                      while (!v13);
                    }

                    v21 = v24;
                  }

                  while (v24 != v20);
                }

                v25 = v19[1];
                if (v25)
                {
                  do
                  {
                    v26 = v25;
                    v25 = *v25;
                  }

                  while (v25);
                }

                else
                {
                  do
                  {
                    v26 = v19[2];
                    v13 = *v26 == v19;
                    v19 = v26;
                  }

                  while (!v13);
                }

                v19 = v26;
              }

              while (v26 != v39);
            }

            std::__tree<BufferEntry>::destroy(&v38, v39[0]);
            v17 = *v17;
          }

          while (v17);
          for (i = v41; i; i = *i)
          {
            *&v32 = i + 2;
            v28 = std::__hash_table<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v43, i + 2);
            std::set<DYMTLIABDecodingOp>::insert[abi:ne200100]<std::__tree_const_iterator<DYMTLIABDecodingOp,std::__tree_node<DYMTLIABDecodingOp,void *> *,long>>((v28 + 3), i[3], i + 4);
          }

          v29 = v44;
          if (v44)
          {
            do
            {
              [(DYMTLIndirectArgumentBufferManager *)self encodeIndirectArgumentsForBuffer:v29[2] decodingMap:&v43];
              v29 = *v29;
            }

            while (v29);
            for (j = v44; j; j = *j)
            {
              *&v32 = j + 2;
              v31 = std::__hash_table<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_decodingMap.__table_.__bucket_list_.__ptr_, j + 2);
              std::set<DYMTLIABDecodingOp>::insert[abi:ne200100]<std::__tree_const_iterator<DYMTLIABDecodingOp,std::__tree_node<DYMTLIABDecodingOp,void *> *,long>>((v31 + 3), j[3], j + 4);
            }
          }
        }

        std::__hash_table<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>>>::~__hash_table(&v40);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<DYMTLIABDecodingOp>>>>::~__hash_table(&v43);
    }
  }

  else
  {
    std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&self->_deviceResourcesBuffers, v46);
  }
}

- (void)executeIABDecodingOp:(const void *)op bufferId:(unint64_t)id data:(void *)data indirectDecodingMap:(void *)map
{
  v32 = 0;
  idCopy = id;
  v9 = [(DYMTLIndirectArgumentBufferManager *)self argumentEncoderForDecodingOperation:op reflectionStructType:&v32];
  v10 = v32;
  v11 = v10;
  v31 = v9;
  if (v9)
  {
    if (v10)
    {
      v12 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_bufferLengthMap.__table_.__bucket_list_.__ptr_, &idCopy);
      if (v12)
      {
        v13 = DYMTLGetOriginalObject(v9);
        layout = [v13 layout];

        encodedLength = [(objc_object *)v9 encodedLength];
        v15 = v12[3];
        if (encodedLength - 1 >= v15)
        {
LABEL_21:

          goto LABEL_22;
        }

        v24 = encodedLength;
        objectMap = [(DYMTLFunctionPlayer *)self->_player objectMap];
        device = [(DYMTLIndirectArgumentBufferManager *)self device];
        v27 = [device newBufferWithBytes:data length:v15 options:0];

        hashOffset = [layout hashOffset];
        device2 = [(DYMTLIndirectArgumentBufferManager *)self device];
        supportsArgumentBuffersTier2 = [device2 supportsArgumentBuffersTier2];

        hashValue = [layout hashValue];
        if ((*(op + 16) & 1) == 0)
        {
          v23 = 0;
          do
          {
            if ((supportsArgumentBuffersTier2 & 1) != 0 || *(data + hashOffset + v23) == hashValue)
            {
              rencodeBufferData(idCopy, v31, layout, v11, map, &self->_bufferVitualAddressMap, &self->_textureMap, &self->_samplerMap, &self->_usedSamplersMap, &self->_renderPipelineMap, &self->_computePipelineMap, &self->_indirectCommandBufferMap, objectMap, &self->_replayerBufferBaseVirtualAddressMap, &self->_replayerTextureMap, &self->_replayerSamplerMap, &self->_replayerRenderPipelineMap, &self->_replayerComputePipelineMap, &self->_replayerIndirectCommandBufferMap, op, &self->_encodedResourcesMap, v27, v23, self->_resourcePatchingType, self->_patcher, self->_currentCommandBuffer, v11 & 0xFFFFFFFF00000000 | self->_currentCommandBufferFunctionIndex);
            }

            ++v23;
          }

          while (v23 <= v15 - v24);
          goto LABEL_20;
        }

        v19 = *op;
        if (*op)
        {
          v20 = v19 % v24;
          v21 = v15 - v24;
          if (v19 % v24 > v15 - v24)
          {
LABEL_20:
            memcpy(data, [v27 contents], v15);
            [(objc_object *)v31 setArgumentBuffer:0 offset:0];

            goto LABEL_21;
          }

          v22 = hashOffset;
        }

        else
        {
          v22 = hashOffset;
          v20 = 0;
          v21 = v15 - v24;
        }

        do
        {
          if ((supportsArgumentBuffersTier2 & 1) != 0 || *(data + v22 + v20) == hashValue)
          {
            rencodeBufferData(idCopy, v31, layout, v11, map, &self->_bufferVitualAddressMap, &self->_textureMap, &self->_samplerMap, &self->_usedSamplersMap, &self->_renderPipelineMap, &self->_computePipelineMap, &self->_indirectCommandBufferMap, objectMap, &self->_replayerBufferBaseVirtualAddressMap, &self->_replayerTextureMap, &self->_replayerSamplerMap, &self->_replayerRenderPipelineMap, &self->_replayerComputePipelineMap, &self->_replayerIndirectCommandBufferMap, op, &self->_encodedResourcesMap, v27, v20, self->_resourcePatchingType, self->_patcher, self->_currentCommandBuffer, v15 & 0xFFFFFFFF00000000 | self->_currentCommandBufferFunctionIndex);
          }

          v20 += v24;
        }

        while (v20 <= v21);
        goto LABEL_20;
      }
    }
  }

LABEL_22:
}

- (id)findStructTypeForArgumentIndex:(unint64_t)index inStructType:(id)type
{
  v10 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  typeCopy = type;
  v9 = 0;
  v7[0] = &unk_2860B2970;
  v7[1] = &v8;
  v7[2] = v7;
  v7[3] = v7;
  operator new();
}

- (id)argumentEncoderForDecodingOperation:(const void *)operation reflectionStructType:(id *)type
{
  device = [(DYMTLIndirectArgumentBufferManager *)self device];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(DYMTLIndirectArgumentBufferManager *)self objectWithId:*(operation + 1)];
    if (!v8 || (v9 = *(operation + 3), v10 = *(operation + 4), v9 == v10))
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        if (!v11)
        {
          v12 = *v9;
          v16 = 0;
          v11 = [v8 newArgumentEncoderWithBufferIndex:v12 reflection:&v16];
          v13 = v16;
          bufferStructType = [v13 bufferStructType];
          if (bufferStructType)
          {
            bufferStructType = bufferStructType;
            *type = bufferStructType;
          }
        }

        ++v9;
      }

      while (v9 != v10);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)notifyReplayerTargetIndirectArgumentBuffers:(void *)buffers
{
  v3 = buffers + 8;
  v4 = *buffers;
  if (*buffers != buffers + 8)
  {
    do
    {
      v17 = 0u;
      v18 = 0u;
      *&v17 = *(v4 + 4);
      v6 = *(v4 + 5);
      v7 = *(v4 + 6);
      while (v6 != v7)
      {
        v15 = 0;
        v16 = 0;
        v8 = *(v6 + 8);
        v14 = *v6;
        v15 = v8;
        objc_storeStrong(&v16, *(v6 + 16));
        v9 = v18;
        if (v18 >= *(&v18 + 1))
        {
          v10 = std::vector<DYMTLReplayerIAB::Usage>::__emplace_back_slow_path<DYMTLReplayerIAB::Usage const&>(&v17 + 1, &v14);
        }

        else
        {
          *v18 = v14;
          *(v9 + 8) = v15;
          *(v9 + 16) = v16;
          v10 = v9 + 24;
        }

        *&v18 = v10;

        v6 += 24;
      }

      std::vector<DYMTLReplayerIAB>::push_back[abi:ne200100](&self->_replayerIABs, &v17);
      v14 = &v17 + 1;
      std::vector<DYMTLReplayerIAB::Usage>::__destroy_vector::operator()[abi:ne200100](&v14);

      v11 = *(v4 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v4 + 2);
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != v3);
  }
}

- (void)notifyReplayerTargetCommandBuffersFinished
{
  p_replayerIABs = &self->_replayerIABs;
  begin = self->_replayerIABs.__begin_;
  end = self->_replayerIABs.__end_;
  if (begin != end)
  {
    do
    {
      v6 = [(DYMTLIndirectArgumentBufferManager *)self blitBufferFromGPU:*begin];
      v7 = *(begin + 1);
      v8 = *(begin + 2);
      while (v7 != v8)
      {
        [(DYMTLIndirectArgumentBufferManager *)self decodeReplayerIAB:v6 offset:*v7 function:v7[1] argument:v7[2]];
        v7 += 3;
      }

      begin = (begin + 32);
    }

    while (begin != end);
    begin = p_replayerIABs->__begin_;
  }

  std::vector<DYMTLReplayerIAB>::__base_destruct_at_end[abi:ne200100](p_replayerIABs, begin);
}

- (id)blitBufferFromGPU:(id)u
{
  uCopy = u;
  if ([uCopy storageMode])
  {
    device = [uCopy device];
    v6 = [device newBufferWithLength:objc_msgSend(uCopy options:{"length"), 0}];
    queue = [(DYMTLIndirectArgumentBufferManager *)self queue];
    commandBuffer = [queue commandBuffer];
    blitCommandEncoder = [commandBuffer blitCommandEncoder];
    [blitCommandEncoder copyFromBuffer:uCopy sourceOffset:0 toBuffer:v6 destinationOffset:0 size:{objc_msgSend(uCopy, "length")}];
    [blitCommandEncoder endEncoding];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }

  else
  {
    v6 = uCopy;
  }

  return v6;
}

- (void)decodeReplayerIAB:(id)b offset:(unint64_t)offset function:(id)function argument:(id)argument
{
  v30[22] = *MEMORY[0x277D85DE8];
  bCopy = b;
  functionCopy = function;
  argumentCopy = argument;
  v19 = [functionCopy newArgumentEncoderWithBufferIndex:{objc_msgSend(argumentCopy, "index")}];
  v11 = DYMTLGetOriginalObject(v19);
  layout = [v11 layout];

  encodedLength = [(objc_object *)v19 encodedLength];
  v21 = [(objc_object *)bCopy length];
  device = [(objc_object *)bCopy device];
  if (self->_currentDeviceDecodingData && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [device setIndirectArgumentBufferDecodingData:0];
  }

  memset(v26, 0, sizeof(v26));
  objectMap = [(DYMTLFunctionPlayer *)self->_player objectMap];
  if (offset % encodedLength < v21)
  {
    v12 = DYMTLGetOriginalObject(bCopy);
    v28 = offset % encodedLength;
    v29 = v12;
    v27 = layout;
    v13 = argumentCopy;
    v30[0] = &v27;
    v30[1] = &v29;
    v30[2] = &v28;
    v30[3] = &self->_replayerBufferBaseVirtualAddressMap.__tree_.__begin_node_;
    v30[4] = &self->_bufferVitualAddressMap.__tree_.__begin_node_;
    v30[5] = &self->_replayerTextureMap.__table_.__bucket_list_.__ptr_;
    v30[6] = &self->_replayerSamplerMap.__table_.__bucket_list_.__ptr_;
    v30[7] = &self->_replayerRenderPipelineMap.__table_.__bucket_list_.__ptr_;
    v30[8] = &self->_replayerComputePipelineMap.__table_.__bucket_list_.__ptr_;
    v30[9] = &self->_replayerIndirectCommandBufferMap.__table_.__bucket_list_.__ptr_;
    v30[17] = 0;
    operator new();
  }

  if (self->_currentDeviceDecodingData && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [device setIndirectArgumentBufferDecodingData:self->_currentDeviceDecodingData];
  }

  v30[0] = 0;
  functionType = [functionCopy functionType];
  switch(functionType)
  {
    case 1:
      index = [argumentCopy index];
      v16 = MEMORY[0x277D0B288];
      goto LABEL_15;
    case 2:
      index = [argumentCopy index];
      v16 = MEMORY[0x277D0B258];
      goto LABEL_15;
    case 3:
      index = [argumentCopy index];
      v16 = MEMORY[0x277D0B260];
LABEL_15:
      v30[0] = (index + *v16);
      break;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__erase_unique<unsigned long long>(objectMap, v30);
  v30[0] = v26;
  std::vector<std::pair<unsigned long long,std::map<unsigned long long,unsigned long long>>>::__destroy_vector::operator()[abi:ne200100](v30);

  v17 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 120) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 13) = 0;
  *(self + 14) = self + 120;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 42) = 1065353216;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 52) = 1065353216;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 62) = 1065353216;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 72) = 1065353216;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 82) = 1065353216;
  *(self + 21) = 0u;
  *(self + 22) = 0u;
  *(self + 92) = 1065353216;
  *(self + 376) = 0u;
  *(self + 392) = 0u;
  *(self + 102) = 1065353216;
  *(self + 26) = 0u;
  *(self + 27) = 0u;
  *(self + 112) = 1065353216;
  *(self + 456) = 0u;
  *(self + 472) = 0u;
  *(self + 122) = 1065353216;
  *(self + 504) = 0u;
  *(self + 62) = self + 504;
  *(self + 67) = 0;
  *(self + 520) = 0u;
  *(self + 552) = 0u;
  *(self + 68) = self + 552;
  *(self + 568) = 0u;
  *(self + 584) = 0u;
  *(self + 150) = 1065353216;
  *(self + 38) = 0u;
  *(self + 39) = 0u;
  *(self + 160) = 1065353216;
  *(self + 648) = 0u;
  *(self + 664) = 0u;
  *(self + 170) = 1065353216;
  *(self + 43) = 0u;
  *(self + 44) = 0u;
  *(self + 180) = 1065353216;
  *(self + 728) = 0u;
  *(self + 744) = 0u;
  *(self + 190) = 1065353216;
  return self;
}

- (__n128)findStructTypeForArgumentIndex:inStructType:
{
  *a2 = &unk_2860B29B8;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (id)findStructTypeForArgumentIndex:inStructType:
{
  v4 = *a2;
  v5 = *a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  members = [v4 members];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZZ82__DYMTLIndirectArgumentBufferManager_findStructTypeForArgumentIndex_inStructType__ENK3__1clEP13MTLStructTypem_block_invoke;
  v9[3] = &unk_27930F498;
  v9[4] = &v12;
  v9[5] = v5;
  v10 = *(self + 8);
  v11 = *(self + 24);
  [members enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

@end