@interface GradientBuffer
+ (void)initialize;
- (GradientBuffer)initWithTensorBefore:(id)before tensorAfter:(id)after withScale:(float)scale shouldSparsify:(BOOL)sparsify error:(id *)error;
- (float)l2norm;
- (id).cxx_construct;
- (id)description;
- (void)accumulateDifferenceBetweenTensorBefore:(id)before andTensorAfter:(id)after withScale:(float)scale error:(id *)error;
- (void)applyToTensor:(id)tensor scale:(float)scale error:(id *)error;
- (void)multiply:(float)multiply;
- (void)reset;
@end

@implementation GradientBuffer

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = os_log_create("com.apple.speech.speechmodeltraining", "GradientBuffer");
    v3 = sLog;
    sLog = v2;
  }
}

- (GradientBuffer)initWithTensorBefore:(id)before tensorAfter:(id)after withScale:(float)scale shouldSparsify:(BOOL)sparsify error:(id *)error
{
  v62[1] = *MEMORY[0x1E69E9840];
  beforeCopy = before;
  afterCopy = after;
  v58.receiver = self;
  v58.super_class = GradientBuffer;
  v13 = [(GradientBuffer *)&v58 init];
  if (!v13)
  {
LABEL_29:
    v40 = v13;
    goto LABEL_33;
  }

  shape = [beforeCopy shape];
  shape2 = [afterCopy shape];
  v16 = [shape isEqual:shape2];

  if (v16)
  {
    v13->_isSparse = sparsify;
    v13->_size = 1;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    shape3 = [beforeCopy shape];
    v18 = [shape3 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v18)
    {
      v19 = *v55;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v55 != v19)
          {
            objc_enumerationMutation(shape3);
          }

          v21 = *(*(&v54 + 1) + 8 * i);
          v13->_size *= [v21 intValue];
        }

        v18 = [shape3 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v18);
    }

    dataPointer = [beforeCopy dataPointer];
    dataPointer2 = [afterCopy dataPointer];
    if (v13->_size)
    {
      v24 = dataPointer2;
      v25 = 0;
      do
      {
        v26 = (*(v24 + 4 * v25) - *(dataPointer + 4 * v25)) * scale;
        if (v13->_isSparse)
        {
          if (v26 != 0.0)
          {
            v53 = v25;
            v59 = &v53;
            *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v13->_sparseData.__table_.__bucket_list_.__ptr_, &v53) + 5) = v26;
          }
        }

        else
        {
          end = v13->_data.__end_;
          cap = v13->_data.__cap_;
          if (end >= cap)
          {
            begin = v13->_data.__begin_;
            v31 = end - begin;
            v32 = end - begin;
            v33 = v32 + 1;
            if ((v32 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v34 = cap - begin;
            if (v34 >> 1 > v33)
            {
              v33 = v34 >> 1;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v35 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v13->_data, v35);
            }

            v36 = end - begin;
            v37 = (4 * v32);
            v38 = (4 * v32 - 4 * v36);
            *v37 = v26;
            v29 = v37 + 1;
            memcpy(v38, begin, v31);
            v39 = v13->_data.__begin_;
            v13->_data.__begin_ = v38;
            v13->_data.__end_ = v29;
            v13->_data.__cap_ = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *end = v26;
            v29 = end + 1;
          }

          v13->_data.__end_ = v29;
        }

        ++v25;
      }

      while (v25 < v13->_size);
    }

    goto LABEL_29;
  }

  v41 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    [(GradientBuffer *)v41 initWithTensorBefore:v42 tensorAfter:v43 withScale:v44 shouldSparsify:v45 error:v46, v47, v48];
  }

  v49 = MEMORY[0x1E696ABC0];
  v61 = *MEMORY[0x1E696A578];
  v62[0] = @"unable to compute difference between two tensors of different shapes";
  v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
  *error = [v49 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:1 userInfo:v50];

  v40 = 0;
LABEL_33:

  return v40;
}

- (void)accumulateDifferenceBetweenTensorBefore:(id)before andTensorAfter:(id)after withScale:(float)scale error:(id *)error
{
  v60[1] = *MEMORY[0x1E69E9840];
  beforeCopy = before;
  afterCopy = after;
  shape = [beforeCopy shape];
  shape2 = [afterCopy shape];
  v13 = [shape isEqual:shape2];

  if ((v13 & 1) == 0)
  {
    v21 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [(GradientBuffer *)v21 initWithTensorBefore:v22 tensorAfter:v23 withScale:v24 shouldSparsify:v25 error:v26, v27, v28];
    }

    v29 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    v60[0] = @"unable to compute difference between two tensors of different shapes";
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:{1, error}];
    v31 = [v29 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:151 userInfo:v30];
    goto LABEL_30;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  shape3 = [beforeCopy shape];
  v15 = [shape3 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v15)
  {
    v16 = *v52;
    v17 = 1;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v52 != v16)
        {
          objc_enumerationMutation(shape3);
        }

        v19 = *(*(&v51 + 1) + 8 * i);
        intValue = [v19 intValue];

        v17 *= intValue;
      }

      v15 = [shape3 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v15);
  }

  else
  {
    v17 = 1;
  }

  if (v17 != self->_size)
  {
    v39 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [(GradientBuffer *)v39 accumulateDifferenceBetweenTensorBefore:v40 andTensorAfter:v41 withScale:v42 error:v43, v44, v45, v46];
    }

    v47 = MEMORY[0x1E696ABC0];
    v56 = *MEMORY[0x1E696A578];
    v57 = @"unable to accumulate difference of mismatch size";
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:{1, error}];
    v31 = [v47 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:151 userInfo:v30];
LABEL_30:
    *v49 = v31;

    goto LABEL_31;
  }

  dataPointer = [beforeCopy dataPointer];
  dataPointer2 = [afterCopy dataPointer];
  size = self->_size;
  if (size)
  {
    v35 = dataPointer2;
    for (j = 0; j < size; ++j)
    {
      v37 = (*(v35 + 4 * j) - *(dataPointer + 4 * j)) * scale;
      if (self->_isSparse)
      {
        if (v37 != 0.0)
        {
          v50 = j;
          v38 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&self->_sparseData.__table_.__bucket_list_.__ptr_, &v50);
          if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&self->_sparseData.__table_.__bucket_list_.__ptr_, &v50) && (v37 = v37 + *(v38 + 5), v37 == 0.0))
          {
            std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(&self->_sparseData.__table_.__bucket_list_.__ptr_, v38);
          }

          else
          {
            v55 = &v50;
            *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&self->_sparseData.__table_.__bucket_list_.__ptr_, &v50) + 5) = v37;
          }

          size = self->_size;
        }
      }

      else
      {
        self->_data.__begin_[j] = v37 + self->_data.__begin_[j];
      }
    }
  }

LABEL_31:
}

- (void)applyToTensor:(id)tensor scale:(float)scale error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  shape = [tensorCopy shape];
  v10 = [shape countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v10)
  {
    v11 = *v42;
    v12 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(shape);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        intValue = [v14 intValue];

        v12 *= intValue;
      }

      v10 = [shape countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 1;
  }

  if (v12 != self->_size)
  {
    v25 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [(GradientBuffer *)v25 applyToTensor:v26 scale:v27 error:v28, v29, v30, v31, v32];
    }

    v33 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A578];
    v50 = @"Unable to apply gradient to mismatch tensor";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v24 = [v33 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:1 userInfo:v23];
LABEL_21:
    *error = v24;

    goto LABEL_22;
  }

  dataPointer = [tensorCopy dataPointer];
  v17 = dataPointer;
  if (!self->_isSparse)
  {
    begin = self->_data.__begin_;
    v35 = self->_data.__end_ - begin;
    if (!v35)
    {
      goto LABEL_22;
    }

    v36 = 0;
    v37 = v35 >> 2;
    if (v37 <= 1)
    {
      v37 = 1;
    }

    while (1)
    {
      v38 = *v17 + (begin[v36] * scale);
      *v17 = v38;
      if ((LODWORD(v38) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        break;
      }

      ++v36;
      ++v17;
      if (v37 == v36)
      {
        goto LABEL_22;
      }
    }

    v39 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [GradientBuffer applyToTensor:v36 scale:v17 error:v39];
    }

    v40 = MEMORY[0x1E696ABC0];
    v45 = *MEMORY[0x1E696A578];
    v46 = @"inf/nan found during accumulation";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v24 = [v40 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:1 userInfo:v23];
    goto LABEL_21;
  }

  p_first_node = &self->_sparseData.__table_.__first_node_;
  while (1)
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    next_low = SLODWORD(p_first_node[2].__next_);
    v20 = *(dataPointer + 4 * next_low) + (*(&p_first_node[2].__next_ + 1) * scale);
    *(dataPointer + 4 * next_low) = v20;
    if ((LODWORD(v20) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v21 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
      {
        [GradientBuffer applyToTensor:next_low scale:v21 error:?];
      }

      v22 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A578];
      v48 = @"inf/nan found during accumulation";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v24 = [v22 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:1 userInfo:v23];
      goto LABEL_21;
    }
  }

LABEL_22:
}

- (void)reset
{
  if (self->_isSparse)
  {
    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(&self->_sparseData.__table_.__bucket_list_.__ptr_);
  }

  else
  {
    p_data = &self->_data;
    begin = self->_data.__begin_;
    v4 = p_data->__end_ - begin;
    if (v4)
    {
      v5 = v4 >> 2;
      if (v5 <= 1)
      {
        v5 = 1;
      }

      bzero(begin, 4 * v5);
    }
  }
}

- (float)l2norm
{
  if (self->_isSparse)
  {
    next = self->_sparseData.__table_.__first_node_.__next_;
    if (next)
    {
      v3 = 0.0;
      do
      {
        v3 = v3 + (next[5] * next[5]);
        next = *next;
      }

      while (next);
      return sqrtf(v3);
    }

LABEL_12:
    v3 = 0.0;
    return sqrtf(v3);
  }

  begin = self->_data.__begin_;
  v5 = self->_data.__end_ - begin;
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5 >> 2;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v3 = 0.0;
  do
  {
    v7 = *begin++;
    v3 = v3 + (v7 * v7);
    --v6;
  }

  while (v6);
  return sqrtf(v3);
}

- (void)multiply:(float)multiply
{
  if (self->_isSparse)
  {
    for (i = self->_sparseData.__table_.__first_node_.__next_; i; i = *i)
    {
      i[5] = i[5] * multiply;
    }
  }

  else
  {
    begin = self->_data.__begin_;
    v5 = self->_data.__end_ - begin;
    if (v5)
    {
      v6 = v5 >> 2;
      if (v6 <= 1)
      {
        v6 = 1;
      }

      do
      {
        *begin = *begin * multiply;
        ++begin;
        --v6;
      }

      while (v6);
    }
  }
}

- (id)description
{
  if (self->_isSparse)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"sparse gradient of size %lu with %lu non-zero values", self->_size, self->_sparseData.__table_.__size_];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"dense gradient with %lu values", self->_size, v4];
  }
  v2 = ;

  return v2;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  *(self + 18) = 1065353216;
  return self;
}

- (void)applyToTensor:(uint64_t)a1 scale:(float *)a2 error:(NSObject *)a3 .cold.2(uint64_t a1, float *a2, NSObject *a3)
{
  LOWORD(v3) = 2048;
  *(&v3 + 2) = *a2;
  OUTLINED_FUNCTION_1_0(&dword_1B501D000, a2, a3, "ptr[%d] == %f", 67109376, *&v3);
}

- (void)applyToTensor:(float *)a1 scale:(uint64_t)a2 error:(NSObject *)a3 .cold.3(float *a1, uint64_t a2, NSObject *a3)
{
  LOWORD(v3) = 2048;
  *(&v3 + 2) = *a1;
  OUTLINED_FUNCTION_1_0(&dword_1B501D000, a2, a3, "ptr[%d] == %f", 67109376, *&v3);
}

@end