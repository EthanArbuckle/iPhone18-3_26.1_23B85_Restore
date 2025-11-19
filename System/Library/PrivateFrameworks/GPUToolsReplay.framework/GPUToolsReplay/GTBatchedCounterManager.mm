@interface GTBatchedCounterManager
+ (void)initialize;
- (BOOL)_addBatchAtEncoderIndex:(unsigned int)a3 inEncoderArray:(id)a4;
- (BOOL)nextPerEncoderBatchListForHighPriorityBatches:(id)a3 withHighPriorityInfo:(id)a4;
- (GTBatchedCounterManager)initWithEncoderBatchPriorityList:(id)a3;
- (id).cxx_construct;
- (id)nextPerEncoderBatchList:(id)a3;
- (void)_clearData;
- (void)_initializeData:(id)a3;
- (void)cleanup;
- (void)resume;
@end

@implementation GTBatchedCounterManager

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 16) = 1065353216;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 120) = 0;
  return self;
}

- (void)resume
{
  v2 = atomic_load(&self->_paused);
  if (v2)
  {
    atomic_store(0, &self->_paused);
    v3 = +[GTBatchedCounterManager semaphoreRequests];
    dispatch_semaphore_signal(v3);
  }
}

- (BOOL)nextPerEncoderBatchListForHighPriorityBatches:(id)a3 withHighPriorityInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[GTBatchedCounterManager semaphore];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);

  end = self->_highPriorityArray.__end_;
  cap = self->_highPriorityArray.__cap_;
  if (end >= cap)
  {
    begin = self->_highPriorityArray.__begin_;
    v13 = (end - begin) >> 4;
    if ((v13 + 1) >> 60)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v14 = cap - begin;
    v15 = v14 >> 3;
    if (v14 >> 3 <= (v13 + 1))
    {
      v15 = v13 + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      if (!(v16 >> 60))
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v17 = (16 * v13);
    *v17 = v7;
    v17[1] = v6;
    v11 = (16 * v13 + 16);
    v19 = self->_highPriorityArray.__begin_;
    v18 = self->_highPriorityArray.__end_;
    v20 = (v17 + v19 - v18);
    if (v19 != v18)
    {
      v21 = self->_highPriorityArray.__begin_;
      v22 = v20;
      do
      {
        v23 = *v21;
        *v21 = 0;
        v21[1] = 0;
        v21 += 2;
        *v22++ = v23;
      }

      while (v21 != v18);
      while (v19 != v18)
      {

        v24 = *v19;
        v19 += 2;
      }
    }

    v25 = self->_highPriorityArray.__begin_;
    self->_highPriorityArray.__begin_ = v20;
    self->_highPriorityArray.__end_ = v11;
    self->_highPriorityArray.__cap_ = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *end = v7;
    *(end + 1) = v6;
    v11 = end + 16;
  }

  self->_highPriorityArray.__end_ = v11;
  v26 = +[GTBatchedCounterManager semaphore];
  dispatch_semaphore_signal(v26);

  v27 = +[GTBatchedCounterManager semaphoreRequests];
  dispatch_semaphore_signal(v27);

  return 1;
}

- (id)nextPerEncoderBatchList:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v4 = +[GTBatchedCounterManager semaphoreRequests];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  if (+[GTBatchedCounterManager isInitialized])
  {
    v5 = +[GTBatchedCounterManager semaphore];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

    v6 = objc_opt_new();
    end = self->_highPriorityArray.__end_;
    if (self->_highPriorityArray.__begin_ == end)
    {
      [v28 removeAllObjects];
      if (self->_perEncoderBatchQueue.__end_ == self->_perEncoderBatchQueue.__begin_)
      {
        v19 = 1;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v18 += [(GTBatchedCounterManager *)self _addBatchAtEncoderIndex:v17++ inEncoderArray:v6];
        }

        while (v17 < 0xAAAAAAAAAAAAAAABLL * ((self->_perEncoderBatchQueue.__end_ - self->_perEncoderBatchQueue.__begin_) >> 4));
        v19 = v18 == 0;
      }

      v21 = +[GTBatchedCounterManager semaphore];
      dispatch_semaphore_signal(v21);

      v22 = atomic_load(&self->_paused);
      if ((v22 & 1) == 0)
      {
        v23 = +[GTBatchedCounterManager semaphoreRequests];
        dispatch_semaphore_signal(v23);
      }

      if (v19)
      {
        v16 = 0;
      }

      else
      {
        v16 = v6;
      }
    }

    else
    {
      v26 = *(end - 2);
      v8 = *(end - 1);
      std::vector<std::pair<NSDictionary * {__strong},NSArray * {__strong}>>::__base_destruct_at_end[abi:nn200100](&self->_highPriorityArray, self->_highPriorityArray.__end_ - 16);
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v8;
      v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v9)
      {
        v10 = 0;
        v11 = *v31;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v30 + 1) + 8 * i);
            v14 = [v13 unsignedIntValue];
            if (v14 == -1 || std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>(self->_processedBatches.__begin_ + 5 * v10, v14))
            {
              [(GTBatchedCounterManager *)self _addBatchAtEncoderIndex:v10 inEncoderArray:v6, v26];
            }

            else
            {
              v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
              [v6 addObject:v15];

              std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(self->_processedBatches.__begin_ + 5 * v10, v14);
            }

            v10 = (v10 + 1);
          }

          v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v9);
      }

      if ([v6 count])
      {
        v16 = v6;
        [v28 setDictionary:v26];
      }

      else
      {
        v16 = 0;
      }

      v20 = +[GTBatchedCounterManager semaphore];
      dispatch_semaphore_signal(v20);
    }
  }

  else
  {
    v16 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)_addBatchAtEncoderIndex:(unsigned int)a3 inEncoderArray:(id)a4
{
  v6 = a4;
  begin = self->_perEncoderBatchQueue.__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((self->_perEncoderBatchQueue.__end_ - begin) >> 4) <= a3)
  {
    goto LABEL_7;
  }

  v8 = a3;
  v9 = &begin[48 * a3];
  if (!v9[2].i64[1])
  {
LABEL_6:
    [v6 addObject:{&unk_2860D66F8, v16}];
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v16 = xmmword_24DA8BC20;
  while (1)
  {
    v10 = (v9[2].i64[0] >> 7) & 0x1FFFFFFFFFFFFF8;
    v11 = v9[2].i64[0] & 0x3FF;
    v12 = *(*(v9->i64[1] + v10) + 4 * v11);
    if (!std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>(self->_processedBatches.__begin_ + 5 * v8, *(*(v9->i64[1] + v10) + 4 * v11)))
    {
      break;
    }

    v9[2] = vaddq_s64(v9[2], xmmword_24DA8BC20);
    std::deque<unsigned int>::__maybe_remove_front_spare[abi:nn200100](v9);
    if (!v9[2].i64[1])
    {
      goto LABEL_6;
    }
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
  [v6 addObject:v15];

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(self->_processedBatches.__begin_ + 5 * v8, *(*(v9->i64[1] + ((v9[2].i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9[2].i64[0] & 0x3FF)));
  v9[2] = vaddq_s64(v9[2], xmmword_24DA8BC20);
  std::deque<unsigned int>::__maybe_remove_front_spare[abi:nn200100](v9);
  v13 = 1;
LABEL_8:

  return v13;
}

- (void)_initializeData:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v56 = a3;
  size = self->_batchToEncoderMap.__table_.__bucket_list_.__deleter_.__size_;
  if (size)
  {
    v5 = self->_batchToEncoderMap.__table_.__size_ / size;
  }

  else
  {
    v5 = 0.0;
  }

  self->_batchToEncoderMap.__table_.__max_load_factor_ = fmaxf(v5, 0.4);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(&self->_batchToEncoderMap, vcvtps_u32_f32(([v56 count] << 8) / self->_batchToEncoderMap.__table_.__max_load_factor_));
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  v74 = 0u;
  obj = v56;
  v6 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (v6)
  {
    v7 = 0;
    v64 = 0;
    v58 = *v75;
    v61 = self;
    do
    {
      v59 = v6;
      for (i = 0; i != v59; ++i)
      {
        if (*v75 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v74 + 1) + 8 * i);
        v72 = 0u;
        v73 = 0u;
        v71 = 0u;
        end = self->_perEncoderBatchQueue.__end_;
        cap = self->_perEncoderBatchQueue.__cap_;
        if (end >= cap)
        {
          begin = self->_perEncoderBatchQueue.__begin_;
          v13 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 4) + 1;
          if (v13 > 0x555555555555555)
          {
            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }

          v14 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 4);
          if (2 * v14 > v13)
          {
            v13 = 2 * v14;
          }

          if (v14 >= 0x2AAAAAAAAAAAAAALL)
          {
            v15 = 0x555555555555555;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            if (v15 <= 0x555555555555555)
            {
              operator new();
            }

LABEL_70:
            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }

          v16 = (16 * ((end - begin) >> 4));
          *v16 = 0u;
          v16[1] = 0u;
          v71 = 0u;
          v72 = 0u;
          v16[2] = 0uLL;
          v73 = 0uLL;
          v17 = v16 - (end - begin);
          if (begin != end)
          {
            v18 = begin;
            v19 = (v16 - (end - begin));
            do
            {
              *v19 = *v18;
              v19[1] = *(v18 + 1);
              v19[2] = *(v18 + 2);
              v19[3] = *(v18 + 3);
              *v18 = 0uLL;
              *(v18 + 1) = 0uLL;
              v19[4] = *(v18 + 4);
              v19[5] = *(v18 + 5);
              *(v18 + 4) = 0;
              *(v18 + 5) = 0;
              v18 += 48;
              v19 += 6;
            }

            while (v18 != end);
            do
            {
              begin = (std::deque<unsigned int>::~deque[abi:nn200100](begin) + 48);
            }

            while (begin != end);
          }

          v11 = v16 + 3;
          v20 = self->_perEncoderBatchQueue.__begin_;
          self->_perEncoderBatchQueue.__begin_ = v17;
          *&self->_perEncoderBatchQueue.__end_ = (v16 + 3);
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *end = 0;
          *(end + 1) = *(&v71 + 1);
          *(end + 1) = v72;
          *(end + 4) = 0;
          v71 = 0uLL;
          v72 = 0uLL;
          *(end + 5) = *(&v73 + 1);
          v73 = 0uLL;
          v11 = end + 48;
        }

        self->_perEncoderBatchQueue.__end_ = v11;
        std::deque<unsigned int>::~deque[abi:nn200100](&v71);
        v71 = 0u;
        v72 = 0u;
        LODWORD(v73) = 1065353216;
        v21 = self->_processedBatches.__end_;
        v22 = self->_processedBatches.__cap_;
        if (v21 >= v22)
        {
          v24 = self->_processedBatches.__begin_;
          v25 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v24) >> 3) + 1;
          if (v25 > 0x666666666666666)
          {
            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }

          v26 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v24) >> 3);
          if (2 * v26 > v25)
          {
            v25 = 2 * v26;
          }

          if (v26 >= 0x333333333333333)
          {
            v27 = 0x666666666666666;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            if (v27 <= 0x666666666666666)
            {
              operator new();
            }

            goto LABEL_70;
          }

          v28 = 8 * ((v21 - v24) >> 3);
          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__hash_table(v28, &v71);
          v29 = self;
          v30 = self->_processedBatches.__end_;
          v31 = v29->_processedBatches.__begin_;
          v32 = (v28 + v31 - v30);
          if (v30 != v31)
          {
            v33 = v29->_processedBatches.__begin_;
            v34 = v28 + v31 - v30;
            do
            {
              v35 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__hash_table(v34, v33);
              v33 += 5;
              v34 = v35 + 40;
            }

            while (v33 != v30);
            do
            {
              std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v31);
              v31 += 40;
            }

            while (v31 != v30);
          }

          v23 = (v28 + 40);
          self = v61;
          v36 = v61->_processedBatches.__begin_;
          v61->_processedBatches.__begin_ = v32;
          *&v61->_processedBatches.__end_ = (v28 + 40);
          if (v36)
          {
            operator delete(v36);
          }
        }

        else
        {
          v23 = (std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__hash_table(v21, &v71) + 40);
        }

        self->_processedBatches.__end_ = v23;
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v71);
        v37 = self->_processedBatches.__end_;
        v38 = *(v37 - 4);
        if (v38)
        {
          v39 = *(v37 - 2) / v38;
        }

        else
        {
          v39 = 0.0;
        }

        *(v37 - 2) = fmaxf(v39, 0.4);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>((v37 - 10), vcvtps_u32_f32([v8 count] / *(v37 - 2)));
        v40 = self->_perEncoderBatchQueue.__end_;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v62 = v8;
        v41 = [v62 countByEnumeratingWithState:&v67 objects:v78 count:16];
        if (v41)
        {
          v63 = *v68;
          do
          {
            v42 = 0;
            v65 = v41;
            do
            {
              if (*v68 != v63)
              {
                objc_enumerationMutation(v62);
              }

              v43 = [*(*(&v67 + 1) + 8 * v42) unsignedIntValue];
              v44 = *(v40 - 5);
              v45 = *(v40 - 4);
              v46 = *(v40 - 5);
              if (v45 == v46)
              {
                v47 = 0;
              }

              else
              {
                v47 = ((v45 - v46) << 7) - 1;
              }

              v49 = *(v40 - 2);
              v48 = *(v40 - 1);
              v50 = v48 + v49;
              if (v47 == v48 + v49)
              {
                if (v49 < 0x400)
                {
                  v51 = *(v40 - 3);
                  v52 = *(v40 - 6);
                  if (v45 - v46 < (v51 - v52))
                  {
                    if (v51 != v45)
                    {
                      operator new();
                    }

                    operator new();
                  }

                  if (v51 == v52)
                  {
                    v53 = 1;
                  }

                  else
                  {
                    v53 = (v51 - v52) >> 2;
                  }

                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int *>>(v53);
                }

                *(v40 - 2) = v49 - 1024;
                *&v71 = *v46;
                *(v40 - 5) = v46 + 8;
                std::__split_buffer<unsigned int *>::emplace_back<unsigned int *&>(v40 - 6, &v71);
                v46 = *(v40 - 5);
                v48 = *(v40 - 1);
                v50 = *(v40 - 2) + v48;
              }

              *(*&v46[(v50 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v50 & 0x3FF)) = v43;
              *(v40 - 1) = v48 + 1;
              v66 = v7;
              *&v71 = &v66;
              v54 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->_batchToEncoderMap.__table_.__bucket_list_.__ptr_, v7++);
              *(v54 + 5) = v64;
              ++v42;
            }

            while (v42 != v65);
            v41 = [v62 countByEnumeratingWithState:&v67 objects:v78 count:16];
          }

          while (v41);
        }

        ++v64;
      }

      v6 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
    }

    while (v6);
  }

  gInitialized = 1;
  v55 = *MEMORY[0x277D85DE8];
}

- (void)_clearData
{
  end = self->_processedBatches.__end_;
  begin = self->_processedBatches.__begin_;
  while (end != begin)
  {
    end = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(end - 40);
  }

  self->_processedBatches.__end_ = begin;
  if (self->_batchToEncoderMap.__table_.__size_)
  {
    next = self->_batchToEncoderMap.__table_.__first_node_.__next_;
    if (next)
    {
      do
      {
        v6 = *next;
        operator delete(next);
        next = v6;
      }

      while (v6);
    }

    self->_batchToEncoderMap.__table_.__first_node_.__next_ = 0;
    size = self->_batchToEncoderMap.__table_.__bucket_list_.__deleter_.__size_;
    if (size)
    {
      for (i = 0; i != size; ++i)
      {
        self->_batchToEncoderMap.__table_.__bucket_list_.__ptr_[i] = 0;
      }
    }

    self->_batchToEncoderMap.__table_.__size_ = 0;
  }

  v10 = self->_perEncoderBatchQueue.__begin_;
    ;
  }

  self->_perEncoderBatchQueue.__end_ = v10;
}

- (void)cleanup
{
  gInitialized = 0;
  [(GTBatchedCounterManager *)self _clearData];
  v2 = +[GTBatchedCounterManager semaphore];
  dispatch_semaphore_signal(v2);

  v3 = +[GTBatchedCounterManager semaphoreRequests];
  dispatch_semaphore_signal(v3);
}

- (GTBatchedCounterManager)initWithEncoderBatchPriorityList:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GTBatchedCounterManager;
  v5 = [(GTBatchedCounterManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GTBatchedCounterManager *)v5 _initializeData:v4];
    atomic_store(1u, &v6->_paused);
  }

  return v6;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = dispatch_semaphore_create(1);
    v5 = gSemaphore;
    gSemaphore = v4;

    v6 = dispatch_semaphore_create(0);
    v7 = gSemaphoreRequests;
    gSemaphoreRequests = v6;
  }
}

@end