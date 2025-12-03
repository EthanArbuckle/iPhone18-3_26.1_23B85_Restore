@interface SMTGradientBuffer
+ (void)initialize;
- (SMTGradientBuffer)initWithTensorBefore:(id)before tensorAfter:(id)after withScale:(float)scale shouldSparsify:(BOOL)sparsify error:(id *)error;
- (float)l2norm;
- (id).cxx_construct;
- (id)description;
- (void)accumulateDifferenceBetweenTensorBefore:(id)before andTensorAfter:(id)after withScale:(float)scale error:(id *)error;
- (void)applyToTensor:(id)tensor scale:(float)scale error:(id *)error;
- (void)multiply:(float)multiply;
- (void)reset;
@end

@implementation SMTGradientBuffer

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  *(self + 18) = 1065353216;
  return self;
}

- (id)description
{
  if (self->_isSparse)
  {
    [NSString stringWithFormat:@"sparse gradient of size %lu with %lu non-zero values", self->_size, self->_sparseData.__table_.__size_];
  }

  else
  {
    [NSString stringWithFormat:@"dense gradient with %lu values", self->_size, v4];
  }
  v2 = ;

  return v2;
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

- (void)reset
{
  if (self->_isSparse)
  {
    if (self->_sparseData.__table_.__size_)
    {
      next = self->_sparseData.__table_.__first_node_.__next_;
      if (next)
      {
        do
        {
          v4 = *next;
          operator delete(next);
          next = v4;
        }

        while (v4);
      }

      self->_sparseData.__table_.__first_node_.__next_ = 0;
      size = self->_sparseData.__table_.__bucket_list_.__deleter_.__size_;
      if (size)
      {
        for (i = 0; i != size; ++i)
        {
          self->_sparseData.__table_.__bucket_list_.__ptr_[i] = 0;
        }
      }

      self->_sparseData.__table_.__size_ = 0;
    }
  }

  else
  {
    begin = self->_data.__begin_;
    v8 = self->_data.__end_ - begin;
    if (v8)
    {
      v9 = v8 >> 2;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      bzero(begin, 4 * v9);
    }
  }
}

- (void)applyToTensor:(id)tensor scale:(float)scale error:(id *)error
{
  tensorCopy = tensor;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  shape = [tensorCopy shape];
  v10 = [shape countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v10)
  {
    v11 = *v31;
    v12 = 1;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(shape);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        intValue = [v14 intValue];

        v12 *= intValue;
      }

      v10 = [shape countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 1;
  }

  if (v12 != self->_size)
  {
    v23 = qword_10003FF80;
    if (os_log_type_enabled(qword_10003FF80, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39[0] = @"Unable to apply gradient to mismatch tensor";
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_22;
      }
    }

    else if (!error)
    {
      goto LABEL_22;
    }

    v40 = NSLocalizedDescriptionKey;
    v41 = @"Unable to apply gradient to mismatch tensor";
    v21 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v22 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:1 userInfo:v21];
LABEL_21:
    *error = v22;

    goto LABEL_22;
  }

  dataPointer = [tensorCopy dataPointer];
  if (!self->_isSparse)
  {
    begin = self->_data.__begin_;
    v25 = self->_data.__end_ - begin;
    if (!v25)
    {
      goto LABEL_22;
    }

    v26 = 0;
    v27 = v25 >> 2;
    if (v27 <= 1)
    {
      v27 = 1;
    }

    while (1)
    {
      v28 = dataPointer[v26] + (begin[v26] * scale);
      dataPointer[v26] = v28;
      if (COERCE_INT(fabs(v28)) >= 2139095040)
      {
        break;
      }

      if (v27 == ++v26)
      {
        goto LABEL_22;
      }
    }

    v29 = qword_10003FF80;
    if (os_log_type_enabled(qword_10003FF80, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      LODWORD(v39[0]) = v26;
      WORD2(v39[0]) = 2048;
      *(v39 + 6) = v28;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "ptr[%d] == %f", buf, 0x12u);
      if (!error)
      {
        goto LABEL_22;
      }
    }

    else if (!error)
    {
      goto LABEL_22;
    }

    v34 = NSLocalizedDescriptionKey;
    v35 = @"inf/nan found during accumulation";
    v21 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v22 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:1 userInfo:v21];
    goto LABEL_21;
  }

  p_first_node = &self->_sparseData.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      goto LABEL_22;
    }

    next_low = SLODWORD(p_first_node[2].__next_);
    v19 = dataPointer[next_low] + (*(&p_first_node[2].__next_ + 1) * scale);
    dataPointer[next_low] = v19;
  }

  while (COERCE_INT(fabs(v19)) < 2139095040);
  v20 = qword_10003FF80;
  if (!os_log_type_enabled(qword_10003FF80, OS_LOG_TYPE_ERROR))
  {
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  *buf = 67109376;
  LODWORD(v39[0]) = next_low;
  WORD2(v39[0]) = 2048;
  *(v39 + 6) = v19;
  _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "ptr[%d] == %f", buf, 0x12u);
  if (error)
  {
LABEL_17:
    v36 = NSLocalizedDescriptionKey;
    v37 = @"inf/nan found during accumulation";
    v21 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v22 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:1 userInfo:v21];
    goto LABEL_21;
  }

LABEL_22:
}

- (void)accumulateDifferenceBetweenTensorBefore:(id)before andTensorAfter:(id)after withScale:(float)scale error:(id *)error
{
  beforeCopy = before;
  afterCopy = after;
  shape = [beforeCopy shape];
  shape2 = [afterCopy shape];
  v13 = [shape isEqual:shape2];

  if ((v13 & 1) == 0)
  {
    v21 = qword_10003FF80;
    if (os_log_type_enabled(qword_10003FF80, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = @"unable to compute difference between two tensors of different shapes";
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_57;
      }
    }

    else if (!error)
    {
      goto LABEL_57;
    }

    v51 = NSLocalizedDescriptionKey;
    v52 = @"unable to compute difference between two tensors of different shapes";
    v22 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v23 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v22];
LABEL_56:
    *error = v23;

    goto LABEL_57;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  shape3 = [beforeCopy shape];
  v15 = [shape3 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v15)
  {
    v16 = *v45;
    v17 = 1;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(shape3);
        }

        v19 = *(*(&v44 + 1) + 8 * i);
        intValue = [v19 intValue];

        v17 *= intValue;
      }

      v15 = [shape3 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v15);
  }

  else
  {
    v17 = 1;
  }

  if (v17 != self->_size)
  {
    v41 = qword_10003FF80;
    if (os_log_type_enabled(qword_10003FF80, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = @"unable to accumulate difference of mismatch size";
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_57;
      }
    }

    else if (!error)
    {
      goto LABEL_57;
    }

    v48 = NSLocalizedDescriptionKey;
    v49 = @"unable to accumulate difference of mismatch size";
    v22 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v23 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v22];
    goto LABEL_56;
  }

  dataPointer = [beforeCopy dataPointer];
  dataPointer2 = [afterCopy dataPointer];
  size = self->_size;
  if (size)
  {
    v27 = dataPointer2;
    for (j = 0; j < size; ++j)
    {
      v29 = (v27[j] - dataPointer[j]) * scale;
      if (self->_isSparse)
      {
        if (v29 != 0.0)
        {
          v43 = j;
          v30 = sub_10002168C(&self->_sparseData.__table_.__bucket_list_.__ptr_, j);
          if (v30 && (v29 = v29 + v30[5], v29 == 0.0))
          {
            v31 = self->_sparseData.__table_.__bucket_list_.__deleter_.__size_;
            v32 = *(v30 + 1);
            v33 = vcnt_s8(v31);
            v33.i16[0] = vaddlv_u8(v33);
            if (v33.u32[0] > 1uLL)
            {
              if (v32 >= v31)
              {
                v32 %= v31;
              }
            }

            else
            {
              v32 &= v31 - 1;
            }

            ptr = self->_sparseData.__table_.__bucket_list_.__ptr_;
            v35 = ptr[v32];
            do
            {
              v36 = v35;
              v35 = *v35;
            }

            while (v35 != v30);
            if (v36 == &self->_sparseData.__table_.__first_node_)
            {
              goto LABEL_40;
            }

            v37 = *(v36 + 1);
            if (v33.u32[0] > 1uLL)
            {
              if (v37 >= v31)
              {
                v37 %= v31;
              }
            }

            else
            {
              v37 &= v31 - 1;
            }

            if (v37 != v32)
            {
LABEL_40:
              if (!*v30)
              {
                goto LABEL_41;
              }

              v38 = *(*v30 + 8);
              if (v33.u32[0] > 1uLL)
              {
                if (v38 >= v31)
                {
                  v38 %= v31;
                }
              }

              else
              {
                v38 &= v31 - 1;
              }

              if (v38 != v32)
              {
LABEL_41:
                ptr[v32] = 0;
              }
            }

            v39 = *v30;
            if (*v30)
            {
              v40 = *(v39 + 8);
              if (v33.u32[0] > 1uLL)
              {
                if (v40 >= v31)
                {
                  v40 %= v31;
                }
              }

              else
              {
                v40 &= v31 - 1;
              }

              if (v40 != v32)
              {
                self->_sparseData.__table_.__bucket_list_.__ptr_[v40] = v36;
                v39 = *v30;
              }
            }

            *v36 = v39;
            *v30 = 0;
            --self->_sparseData.__table_.__size_;
            operator delete(v30);
          }

          else
          {
            *buf = &v43;
            *(sub_100021740(&self->_sparseData.__table_.__bucket_list_.__ptr_, j) + 5) = v29;
          }

          size = self->_size;
        }
      }

      else
      {
        self->_data.__begin_[j] = v29 + self->_data.__begin_[j];
      }
    }
  }

LABEL_57:
}

- (SMTGradientBuffer)initWithTensorBefore:(id)before tensorAfter:(id)after withScale:(float)scale shouldSparsify:(BOOL)sparsify error:(id *)error
{
  beforeCopy = before;
  afterCopy = after;
  v55.receiver = self;
  v55.super_class = SMTGradientBuffer;
  v13 = [(SMTGradientBuffer *)&v55 init];
  if (v13)
  {
    shape = [beforeCopy shape];
    v15 = afterCopy;
    shape2 = [afterCopy shape];
    v17 = [shape isEqual:shape2];

    if ((v17 & 1) == 0)
    {
      v47 = qword_10003FF80;
      if (os_log_type_enabled(qword_10003FF80, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v60 = @"unable to compute difference between two tensors of different shapes";
        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        if (!error)
        {
          goto LABEL_49;
        }
      }

      else if (!error)
      {
        goto LABEL_49;
      }

      v57 = NSLocalizedDescriptionKey;
      v58 = @"unable to compute difference between two tensors of different shapes";
      v48 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      *error = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:1 userInfo:v48];

      error = 0;
      goto LABEL_49;
    }

    v13->_isSparse = sparsify;
    v13->_size = 1;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    shape3 = [beforeCopy shape];
    v19 = [shape3 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v19)
    {
      v20 = *v52;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v52 != v20)
          {
            objc_enumerationMutation(shape3);
          }

          v22 = *(*(&v51 + 1) + 8 * i);
          v13->_size *= [v22 intValue];
        }

        v19 = [shape3 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v19);
    }

    dataPointer = [beforeCopy dataPointer];
    dataPointer2 = [afterCopy dataPointer];
    if (v13->_size)
    {
      v25 = dataPointer2;
      v26 = 0;
      do
      {
        v27 = (v25[v26] - dataPointer[v26]) * scale;
        if (v13->_isSparse)
        {
          if (v27 == 0.0)
          {
            goto LABEL_44;
          }

          size = v13->_sparseData.__table_.__bucket_list_.__deleter_.__size_;
          if (!size)
          {
            goto LABEL_40;
          }

          v29 = vcnt_s8(size);
          v29.i16[0] = vaddlv_u8(v29);
          if (v29.u32[0] > 1uLL)
          {
            v30 = v26;
            if (size <= v26)
            {
              v30 = v26 % size;
            }
          }

          else
          {
            v30 = (size - 1) & v26;
          }

          v40 = v13->_sparseData.__table_.__bucket_list_.__ptr_[v30];
          if (!v40 || (v41 = *v40) == 0)
          {
LABEL_40:
            operator new();
          }

          while (1)
          {
            v42 = *(v41 + 1);
            if (v42 == v26)
            {
              if (*(v41 + 4) == v26)
              {
                v41[5] = v27;
                goto LABEL_44;
              }
            }

            else
            {
              if (v29.u32[0] > 1uLL)
              {
                if (v42 >= size)
                {
                  v42 %= size;
                }
              }

              else
              {
                v42 &= size - 1;
              }

              if (v42 != v30)
              {
                goto LABEL_40;
              }
            }

            v41 = *v41;
            if (!v41)
            {
              goto LABEL_40;
            }
          }
        }

        end = v13->_data.__end_;
        cap = v13->_data.__cap_;
        if (end >= cap)
        {
          begin = v13->_data.__begin_;
          v35 = end - begin;
          v36 = end - begin;
          v37 = v36 + 1;
          if ((v36 + 1) >> 62)
          {
            sub_100002C6C();
          }

          v38 = cap - begin;
          if (v38 >> 1 > v37)
          {
            v37 = v38 >> 1;
          }

          if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v39 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v37;
          }

          if (v39)
          {
            sub_100002C84(v39);
          }

          v43 = v36;
          v44 = (4 * v36);
          v45 = &v44[-v43];
          *v44 = v27;
          v33 = v44 + 1;
          memcpy(v45, begin, v35);
          v46 = v13->_data.__begin_;
          v13->_data.__begin_ = v45;
          v13->_data.__end_ = v33;
          v13->_data.__cap_ = 0;
          if (v46)
          {
            operator delete(v46);
          }
        }

        else
        {
          *end = v27;
          v33 = end + 1;
        }

        v13->_data.__end_ = v33;
LABEL_44:
        ++v26;
      }

      while (v26 < v13->_size);
    }
  }

  error = v13;
  v15 = afterCopy;
LABEL_49:

  return error;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_10003FF80 = os_log_create("com.apple.speech.speechmodeltraining", "SMTGradientBuffer");

    _objc_release_x1();
  }
}

@end