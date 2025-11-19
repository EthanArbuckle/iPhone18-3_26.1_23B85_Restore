@interface CCSetDistribution
- (CCSetDistribution)init;
- (CCSetDistribution)initWithSet:(id)a3 sharedItemCount:(unint64_t)a4 localInstanceCount:(unint64_t)a5;
- (id).cxx_construct;
- (id)_sanitizedEncodedDescriptors;
- (id)compute;
- (void)_sanitizedEncodedDescriptors;
- (void)addSetChange:(id)a3;
@end

@implementation CCSetDistribution

- (CCSetDistribution)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSetDistribution)initWithSet:(id)a3 sharedItemCount:(unint64_t)a4 localInstanceCount:(unint64_t)a5
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = CCSetDistribution;
  v8 = [(CCSetDistribution *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_set, a3);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    devices = v9->_devices;
    v9->_devices = v10;

    operator new();
  }

  return 0;
}

- (void)addSetChange:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v4 = [v43 sharedItem];
  v5 = [v4 content];
  v6 = [v5 data];
  v7 = [v6 length];

  ptr = self->_contentLengths.__ptr_;
  v10 = ptr[1];
  v9 = ptr[2];
  if (v10 >= v9)
  {
    v12 = *ptr;
    v13 = v10 - *ptr;
    v14 = v13 >> 1;
    if (v13 >> 1 <= -2)
    {
      std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
    }

    v15 = v9 - v12;
    if (v15 <= v14 + 1)
    {
      v16 = v14 + 1;
    }

    else
    {
      v16 = v15;
    }

    v17 = v15 >= 0x7FFFFFFFFFFFFFFELL;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v16;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(self->_contentLengths.__ptr_, v18);
    }

    v19 = (2 * v14);
    v20 = &v19[-(v13 >> 1)];
    *v19 = v7;
    v11 = v19 + 1;
    memcpy(v20, v12, v13);
    v21 = *ptr;
    *ptr = v20;
    ptr[1] = v11;
    ptr[2] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v10 = v7;
    v11 = v10 + 1;
  }

  ptr[1] = v11;
  self->_sumContentLength += v7;
  v22 = [v43 allLocalInstances];
  if ([v22 count])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v22;
    v23 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v23)
    {
      v24 = *v46;
      v25 = v22;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = [*(*(&v45 + 1) + 8 * i) metaContent];
          v28 = [v27 data];
          v29 = [v28 length];

          v30 = self->_metaContentLengths.__ptr_;
          v32 = v30[1];
          v31 = v30[2];
          if (v32 >= v31)
          {
            v34 = *v30;
            v35 = v32 - *v30;
            v36 = v35 >> 1;
            if (v35 >> 1 <= -2)
            {
              std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
            }

            v37 = v31 - v34;
            if (v37 <= v36 + 1)
            {
              v38 = v36 + 1;
            }

            else
            {
              v38 = v37;
            }

            v17 = v37 >= 0x7FFFFFFFFFFFFFFELL;
            v39 = 0x7FFFFFFFFFFFFFFFLL;
            if (!v17)
            {
              v39 = v38;
            }

            if (v39)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(self->_metaContentLengths.__ptr_, v39);
            }

            *(2 * v36) = v29;
            v33 = 2 * v36 + 2;
            memcpy(0, v34, v35);
            v40 = *v30;
            *v30 = 0;
            v30[1] = v33;
            v30[2] = 0;
            if (v40)
            {
              operator delete(v40);
            }

            v22 = v25;
          }

          else
          {
            *v32 = v29;
            v33 = (v32 + 2);
          }

          v30[1] = v33;
          self->_sumMetaContentLength += v29;
        }

        v23 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v23);
    }

    ++self->_localContentCount;
  }

  v41 = [v43 allDevices];
  [(NSMutableSet *)self->_devices addObjectsFromArray:v41];
  self->_deviceContentCount += [v41 count];

  v42 = *MEMORY[0x1E69E9840];
}

- (id)compute
{
  v36[12] = *MEMORY[0x1E69E9840];
  v3 = *(self->_contentLengths.__ptr_ + 1) - *self->_contentLengths.__ptr_;
  v4 = v3 >> 1;
  if (v3)
  {
    v5 = self->_sumContentLength / v4;
  }

  else
  {
    v5 = 0.0;
  }

  cntrl = self->_contentLengths.__cntrl_;
  ptr = self->_contentLengths.__ptr_;
  v34 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  [CCSetMetrics _populationStandardDeviation:&ptr mean:v5];
  v8 = v7;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v9 = *(self->_metaContentLengths.__ptr_ + 1) - *self->_metaContentLengths.__ptr_;
  v10 = v9 >> 1;
  if (v9)
  {
    v11 = self->_sumMetaContentLength / v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = self->_metaContentLengths.__cntrl_;
  v31 = self->_metaContentLengths.__ptr_;
  v32 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  [CCSetMetrics _populationStandardDeviation:&v31 mean:v11];
  v14 = v13;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v15 = [(CCSet *)self->_set itemType];
  v30 = [(CCSetDistribution *)self _sanitizedEncodedDescriptors];
  v35[0] = @"itemType";
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v15];
  v36[0] = v29;
  v36[1] = v30;
  v35[1] = @"encodedDescriptors";
  v35[2] = @"contentCount";
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v4];
  v36[2] = v28;
  v35[3] = @"contentLengthMean";
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v36[3] = v27;
  v35[4] = @"contentLengthStdev";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v36[4] = v16;
  v35[5] = @"metaContentCount";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v10];
  v36[5] = v17;
  v35[6] = @"metaContentLengthMean";
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v36[6] = v18;
  v35[7] = @"metaContentLengthStdev";
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  v36[7] = v19;
  v35[8] = @"localContentCount";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_localContentCount];
  v36[8] = v20;
  v35[9] = @"deviceContributorCount";
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableSet count](self->_devices, "count")}];
  v36[9] = v21;
  v35[10] = @"deviceContributedContentCount";
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_deviceContentCount];
  v36[10] = v22;
  v35[11] = @"isSynchronized";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v36[11] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:12];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)_sanitizedEncodedDescriptors
{
  v29 = *MEMORY[0x1E69E9840];
  p_set = &self->_set;
  v18 = [(CCSet *)self->_set descriptors];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v18;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 key];
        if (([v9 isEqual:@"sourceIdentifier"] & 1) != 0 || objc_msgSend(v9, "isEqual:", @"localeIdentifier"))
        {
          [v3 addObject:v8];
        }

        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = *p_set;
          *buf = 138412546;
          v25 = v9;
          v26 = 2112;
          v27 = v11;
          _os_log_debug_impl(&dword_1B6DB2000, v10, OS_LOG_TYPE_DEBUG, "Filtering out descriptor with key: %@ for set: %@", buf, 0x16u);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v5);
  }

  v19 = 0;
  v12 = [(BMResourceDescriptor *)CCSetDescriptor encodedStringFromDescriptors:v3 error:&v19];
  v13 = v19;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CCSetDistribution *)p_set _sanitizedEncodedDescriptors];
    }

    v14 = &stru_1F2EBB700;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  return self;
}

- (void)_sanitizedEncodedDescriptors
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_ERROR, "Failed to encode sanitized descriptors for set: %@ error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end