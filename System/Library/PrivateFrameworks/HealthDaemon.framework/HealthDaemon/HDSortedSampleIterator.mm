@interface HDSortedSampleIterator
- (BOOL)advanceWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HDSortedSampleIterator)init;
- (HDSortedSampleIterator)initWithQueryDescriptor:(id)descriptor includeDeletedObjects:(BOOL)objects sortDescriptors:(id)descriptors anchor:(id)anchor bufferSize:(int64_t)size profile:(id)profile;
- (HKDeletedObject)deletedObject;
- (HKSample)sample;
- (HKSortedQueryAnchor)nextAnchor;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)objectID;
- (unint64_t)hash;
- (void)setHead:(uint64_t)head;
@end

@implementation HDSortedSampleIterator

- (HDSortedSampleIterator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = NSStringFromSelector(a2);
  [v3 raise:*MEMORY[0x277CBE660] format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (HDSortedSampleIterator)initWithQueryDescriptor:(id)descriptor includeDeletedObjects:(BOOL)objects sortDescriptors:(id)descriptors anchor:(id)anchor bufferSize:(int64_t)size profile:(id)profile
{
  objectsCopy = objects;
  descriptorCopy = descriptor;
  descriptorsCopy = descriptors;
  anchorCopy = anchor;
  profileCopy = profile;
  v34.receiver = self;
  v34.super_class = HDSortedSampleIterator;
  v17 = [(HDSortedSampleIterator *)&v34 init];
  if (v17)
  {
    v18 = [descriptorCopy copy];
    queryDescriptor = v17->_queryDescriptor;
    v17->_queryDescriptor = v18;

    if (objectsCopy && [descriptorsCopy count])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v17 file:@"HDSortedSampleIterator.mm" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"includeDeletedObjects == NO || (includeDeletedObjects && sortDescriptors.count == 0)"}];
    }

    v17->_includeDeletedObjects = objectsCopy;
    v20 = [descriptorsCopy copy];
    sortDescriptors = v17->_sortDescriptors;
    v17->_sortDescriptors = v20;

    v22 = [anchorCopy copy];
    anchor = v17->_anchor;
    v17->_anchor = v22;

    v17->_bufferSize = size;
    objc_storeWeak(&v17->_profile, profileCopy);
    value__2 = v17->_currentSample.__base_.__value__2;
    v17->_currentSample.__base_.__value_ = 0;
    v17->_currentSample.__base_.__value__2 = 0;

    v25 = v17->_currentDeletedObject.__base_.__value__2;
    v17->_currentDeletedObject.__base_.__value_ = 0;
    v17->_currentDeletedObject.__base_.__value__2 = 0;

    lastError = v17->_lastError;
    v17->_lastError = 0;

    begin = v17->_sampleBuffer.__begin_;
    v17->_isComplete = 0;
    v17->_includeDeletedObjects = objectsCopy;
    if (size > ((v17->_sampleBuffer.__cap_ - begin) >> 4))
    {
      if (!(size >> 60))
      {
        end = v17->_sampleBuffer.__end_;
        p_sampleBuffer = &v17->_sampleBuffer;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<long long,HKSample * {__strong}>>>(&v17->_sampleBuffer, size);
      }

      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    if (objectsCopy && size > ((v17->_deletedObjectsBuffer.__cap_ - v17->_deletedObjectsBuffer.__begin_) >> 4))
    {
      if (!(size >> 60))
      {
        v29 = v17->_deletedObjectsBuffer.__end_;
        p_sampleBuffer = &v17->_deletedObjectsBuffer;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<long long,HKSample * {__strong}>>>(&v17->_deletedObjectsBuffer, size);
      }

      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }
  }

  return v17;
}

- (BOOL)advanceWithError:(id *)error
{
  if (!self)
  {
    return 0;
  }

  begin = self->_sampleBuffer.__begin_;
  end = self->_sampleBuffer.__end_;
  if (begin == end)
  {
    includeDeletedObjects = self->_includeDeletedObjects;
    if (!includeDeletedObjects || self->_deletedObjectsBuffer.__begin_ == self->_deletedObjectsBuffer.__end_)
    {
      if (self->_isComplete)
      {
        goto LABEL_23;
      }

      v27 = a2;
      v12 = self->_deletedObjectsBuffer.__begin_;
      v11 = self->_deletedObjectsBuffer.__end_;
      self->_sampleBuffer.__end_ = begin;
      if (v11 != v12)
      {
        do
        {
          v13 = v11 - 2;

          v11 = v13;
        }

        while (v13 != v12);
        LOBYTE(includeDeletedObjects) = self->_includeDeletedObjects;
      }

      self->_deletedObjectsBuffer.__end_ = v12;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__28;
      v33 = __Block_byref_object_dispose__28;
      v34 = 0;
      queryDescriptor = self->_queryDescriptor;
      sortDescriptors = self->_sortDescriptors;
      anchor = self->_anchor;
      bufferSize = self->_bufferSize;
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __64__HDSortedSampleIterator__queryForNextPageIfNecessaryWithError___block_invoke;
      v28[3] = &unk_278616FB0;
      v28[4] = self;
      v28[5] = &v29;
      v28[6] = &v35;
      [_HDSortedSampleIteratorInternalPager getSamplesWithQueryDescriptor:queryDescriptor sortDescriptors:sortDescriptors anchor:anchor limit:bufferSize includeDeletedObjects:includeDeletedObjects profile:WeakRetained resultsHandler:v28];

      if ((v36[3] & 1) == 0)
      {
        v22 = v30[5];
        v23 = v22;
        if (v22)
        {
          if (error)
          {
            v24 = v22;
            *error = v23;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        goto LABEL_34;
      }

      if (self->_sampleBuffer.__begin_ == self->_sampleBuffer.__end_ && (!self->_includeDeletedObjects || self->_deletedObjectsBuffer.__begin_ == self->_deletedObjectsBuffer.__end_) && self->_isComplete)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:900 format:@"Sorted sample iterator is exhausted"];
LABEL_34:
        _Block_object_dispose(&v29, 8);

        _Block_object_dispose(&v35, 8);
        return 0;
      }

      _Block_object_dispose(&v29, 8);

      _Block_object_dispose(&v35, 8);
      begin = self->_sampleBuffer.__begin_;
      end = self->_sampleBuffer.__end_;
      a2 = v27;
    }
  }

  v7 = self->_includeDeletedObjects;
  if (begin != end)
  {
    if (!self->_includeDeletedObjects)
    {
      goto LABEL_19;
    }

    v9 = self->_deletedObjectsBuffer.__begin_;
    v8 = self->_deletedObjectsBuffer.__end_;
LABEL_17:
    if (v9 != v8)
    {
      self->_currentDeletedObject.__base_.__value_ = *(v8 - 2);
      objc_storeStrong(&self->_currentDeletedObject.__base_.__value__2, *(v8 - 1));
      [(HDSortedSampleIterator *)self setHead:?];
      v19 = self->_deletedObjectsBuffer.__end_;

      self->_deletedObjectsBuffer.__end_ = v19 - 2;
      return 1;
    }

LABEL_19:
    self->_currentSample.__base_.__value_ = *(end - 2);
    objc_storeStrong(&self->_currentSample.__base_.__value__2, *(end - 1));
    [(HDSortedSampleIterator *)self setHead:?];
    v20 = self->_sampleBuffer.__end_;

    self->_sampleBuffer.__end_ = v20 - 2;
    return 1;
  }

  if (self->_includeDeletedObjects)
  {
    v9 = self->_deletedObjectsBuffer.__begin_;
    v8 = self->_deletedObjectsBuffer.__end_;
    if (v9 != v8)
    {
      goto LABEL_17;
    }
  }

  if (!self->_isComplete)
  {
    v25 = a2;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:v25 object:self file:@"HDSortedSampleIterator.mm" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"_isComplete"}];
  }

LABEL_23:
  [MEMORY[0x277CCA9B8] hk_assignError:error code:900 format:@"Sorted sample iterator is exhausted"];
  return 0;
}

- (void)setHead:(uint64_t)head
{
  v4 = a2;
  objc_storeStrong((head + 160), a2);
}

void __64__HDSortedSampleIterator__queryForNextPageIfNecessaryWithError___block_invoke(void *a1, char a2, void *a3, void *a4, void *a5, char a6, void *a7)
{
  v14 = a5;
  v15 = a7;
  if (a2)
  {
    v18 = a3;
    v16 = *a3;
    v17 = v18[1];
    v25 = 0;
    v24 = 0uLL;
    v26 = &v24;
    v27 = 0;
    if (v17 != v16)
    {
      std::vector<std::tuple<long long,HKSample * {__strong}>>::__vallocate[abi:ne200100](&v24, (v17 - v16) >> 4);
    }

    v19 = a1[4];
    std::vector<std::tuple<long long,HKSample * {__strong}>>::__vdeallocate((v19 + 80));
    *(v19 + 80) = v24;
    *(v19 + 96) = v25;
    v25 = 0;
    v24 = 0uLL;
    v26 = &v24;
    std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v26);
    v22 = a4;
    v20 = *a4;
    v21 = v22[1];
    v25 = 0;
    v24 = 0uLL;
    v26 = &v24;
    v27 = 0;
    if (v21 != v20)
    {
      std::vector<std::tuple<long long,HKSample * {__strong}>>::__vallocate[abi:ne200100](&v24, (v21 - v20) >> 4);
    }

    v23 = a1[4];
    std::vector<std::tuple<long long,HKSample * {__strong}>>::__vdeallocate((v23 + 104));
    *(v23 + 104) = v24;
    *(v23 + 120) = v25;
    v25 = 0;
    v24 = 0uLL;
    v26 = &v24;
    std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v26);
    objc_storeStrong((a1[4] + 32), a5);
    *(a1[4] + 72) = a6;
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a7);
  }
}

- (HKSample)sample
{
  value__2 = self->_currentSample.__base_.__value__2;
  if (value__2)
  {
    v3 = value__2;
  }

  return value__2;
}

- (HKDeletedObject)deletedObject
{
  value__2 = self->_currentDeletedObject.__base_.__value__2;
  if (value__2)
  {
    v3 = value__2;
  }

  return value__2;
}

- (int64_t)objectID
{
  object = [(HDSortedSampleIterator *)self object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = 128;
  if (isKindOfClass)
  {
    v5 = 144;
  }

  return *(&self->super.isa + v5);
}

- (HKSortedQueryAnchor)nextAnchor
{
  if (self->_currentHead)
  {
    v3 = MEMORY[0x277CCD9F0];
    sortDescriptors = self->_sortDescriptors;
    sample = [(HDSortedSampleIterator *)self sample];
    v6 = [v3 sortedQueryAnchorWithSortDescriptors:sortDescriptors followingSample:sample objectID:{-[HDSortedSampleIterator objectID](self, "objectID")}];
  }

  else
  {
    v6 = self->_anchor;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(HDQueryDescriptor *)self->_queryDescriptor hash];
  v4 = [(NSArray *)self->_sortDescriptors hash];
  sample = [(HDSortedSampleIterator *)self sample];
  v6 = [sample hash];
  objectID = [(HDSortedSampleIterator *)self objectID];
  isComplete = self->_isComplete;
  includeDeletedObjects = self->_includeDeletedObjects;
  nextAnchor = [(HDSortedSampleIterator *)self nextAnchor];
  v11 = [nextAnchor hash];

  return v4 ^ v3 ^ v6 ^ objectID ^ isComplete ^ includeDeletedObjects ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      queryDescriptor = self->_queryDescriptor;
      v7 = v5->_queryDescriptor;
      if (queryDescriptor != v7 && (!v7 || ![(HDQueryDescriptor *)queryDescriptor isEqual:?]))
      {
        goto LABEL_22;
      }

      sortDescriptors = self->_sortDescriptors;
      v9 = v5->_sortDescriptors;
      if (sortDescriptors != v9 && (!v9 || ![(NSArray *)sortDescriptors isEqual:?]))
      {
        goto LABEL_22;
      }

      sample = [(HDSortedSampleIterator *)self sample];
      sample2 = [(HDSortedSampleIterator *)v5 sample];
      nextAnchor = sample2;
      if (sample == sample2)
      {
      }

      else
      {
        sample3 = [(HDSortedSampleIterator *)v5 sample];
        if (!sample3)
        {
          v17 = 0;
          goto LABEL_26;
        }

        sample4 = [(HDSortedSampleIterator *)self sample];
        sample5 = [(HDSortedSampleIterator *)v5 sample];
        v16 = [sample4 isEqual:sample5];

        if ((v16 & 1) == 0)
        {
LABEL_22:
          v17 = 0;
LABEL_23:

          goto LABEL_24;
        }
      }

      objectID = [(HDSortedSampleIterator *)self objectID];
      if (objectID != [(HDSortedSampleIterator *)v5 objectID]|| self->_isComplete != v5->_isComplete || self->_includeDeletedObjects != v5->_includeDeletedObjects)
      {
        goto LABEL_22;
      }

      sample = [(HDSortedSampleIterator *)self nextAnchor];
      nextAnchor = [(HDSortedSampleIterator *)v5 nextAnchor];
      if (sample == nextAnchor)
      {
        v17 = 1;
      }

      else
      {
        nextAnchor2 = [(HDSortedSampleIterator *)v5 nextAnchor];
        if (nextAnchor2)
        {
          nextAnchor3 = [(HDSortedSampleIterator *)self nextAnchor];
          nextAnchor4 = [(HDSortedSampleIterator *)v5 nextAnchor];
          v17 = [nextAnchor3 isEqual:nextAnchor4];
        }

        else
        {
          v17 = 0;
        }
      }

LABEL_26:

      goto LABEL_23;
    }

    v17 = 0;
  }

LABEL_24:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  queryDescriptor = self->_queryDescriptor;
  includeDeletedObjects = self->_includeDeletedObjects;
  sortDescriptors = self->_sortDescriptors;
  anchor = self->_anchor;
  bufferSize = self->_bufferSize;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [v4 initWithQueryDescriptor:queryDescriptor includeDeletedObjects:includeDeletedObjects sortDescriptors:sortDescriptors anchor:anchor bufferSize:bufferSize profile:WeakRetained];

  value__2 = self->_currentSample.__base_.__value__2;
  *(v11 + 128) = self->_currentSample.__base_.__value_;
  objc_storeStrong((v11 + 136), value__2);
  v13 = self->_currentDeletedObject.__base_.__value__2;
  *(v11 + 144) = self->_currentDeletedObject.__base_.__value_;
  objc_storeStrong((v11 + 152), v13);
  objc_storeStrong((v11 + 160), self->_currentHead);
  *(v11 + 72) = self->_isComplete;
  v15 = 0uLL;
  v16 = 0;
  std::vector<std::tuple<long long,HKSample * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKSample * {__strong}>*,std::tuple<long long,HKSample * {__strong}>*>(&v15, self->_sampleBuffer.__begin_, self->_sampleBuffer.__end_, (self->_sampleBuffer.__end_ - self->_sampleBuffer.__begin_) >> 4);
  std::vector<std::tuple<long long,HKSample * {__strong}>>::__vdeallocate((v11 + 80));
  *(v11 + 80) = v15;
  *(v11 + 96) = v16;
  v16 = 0;
  v15 = 0uLL;
  v17 = &v15;
  std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v15 = 0uLL;
  v16 = 0;
  std::vector<std::tuple<long long,HKDeletedObject * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKDeletedObject * {__strong}>*,std::tuple<long long,HKDeletedObject * {__strong}>*>(&v15, self->_deletedObjectsBuffer.__begin_, self->_deletedObjectsBuffer.__end_, (self->_deletedObjectsBuffer.__end_ - self->_deletedObjectsBuffer.__begin_) >> 4);
  std::vector<std::tuple<long long,HKSample * {__strong}>>::__vdeallocate((v11 + 104));
  *(v11 + 104) = v15;
  *(v11 + 120) = v16;
  v16 = 0;
  v15 = 0uLL;
  v17 = &v15;
  std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v17);
  *(v11 + 16) = self->_includeDeletedObjects;
  return v11;
}

- (id).cxx_construct
{
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 5) = 0u;
  return self;
}

@end