@interface HDStatisticsCollectionCalculatorAttenuatedDataSource
- (BOOL)_attenuationSamplesWindowContainsSample:(id *)sample;
- (BOOL)_attenuationSamplesWindowContainsSampleStart:(id *)start;
- (BOOL)collectionCalculator:(id)calculator queryForInterval:(id)interval error:(id *)error sampleHandler:(id)handler mergeHandler:(id)mergeHandler;
- (deque<HDQuantitySampleAttenuationEngineSample,)attenuationSamplesWindow;
- (id).cxx_construct;
- (id)initForProfile:(id)profile quantityType:(id)type predicate:(id)predicate restrictedSourceEntities:(id)entities attenuationType:(id)attenuationType;
- (queue<HDQuantitySampleAttenuationEngineSample,)_extractAttenuatedSamplesFrom:()queue<HDQuantitySampleAttenuationEngineSample;
- (void)_appendToAttenuationSamplesWindowUsingSourceSample:(id *)sample attenuatedSample:(id *)attenuatedSample;
- (void)_attenuationSamplesWindowAdvanceToSample:(id *)sample;
- (void)setAttenuationSamplesWindow:()deque<HDQuantitySampleAttenuationEngineSample;
@end

@implementation HDStatisticsCollectionCalculatorAttenuatedDataSource

- (id)initForProfile:(id)profile quantityType:(id)type predicate:(id)predicate restrictedSourceEntities:(id)entities attenuationType:(id)attenuationType
{
  profileCopy = profile;
  typeCopy = type;
  predicateCopy = predicate;
  entitiesCopy = entities;
  attenuationTypeCopy = attenuationType;
  v23.receiver = self;
  v23.super_class = HDStatisticsCollectionCalculatorAttenuatedDataSource;
  v17 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)&v23 initForProfile:profileCopy quantityType:typeCopy predicate:predicateCopy restrictedSourceEntities:entitiesCopy];
  if (v17)
  {
    v18 = [[HDQuantitySampleAttenuationProvider alloc] initWithQuantityType:attenuationTypeCopy profile:profileCopy];
    v19 = v17[12];
    v17[12] = v18;

    v20 = [[HDQuantitySampleAttenuationEngine alloc] initWithAttenuationEngineDelegate:v17[12]];
    v21 = v17[13];
    v17[13] = v20;
  }

  return v17;
}

- (BOOL)collectionCalculator:(id)calculator queryForInterval:(id)interval error:(id *)error sampleHandler:(id)handler mergeHandler:(id)mergeHandler
{
  handlerCopy = handler;
  mergeHandlerCopy = mergeHandler;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __127__HDStatisticsCollectionCalculatorAttenuatedDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke;
  v28[3] = &unk_27862EA28;
  v28[4] = self;
  v14 = handlerCopy;
  v29 = v14;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __127__HDStatisticsCollectionCalculatorAttenuatedDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke_2;
  v26[3] = &unk_278623948;
  v15 = mergeHandlerCopy;
  v27 = v15;
  v25.receiver = self;
  v25.super_class = HDStatisticsCollectionCalculatorAttenuatedDataSource;
  if ([(HDStatisticsCollectionCalculatorDefaultDataSource *)&v25 collectionCalculator:calculator queryForInterval:interval error:error sampleHandler:v28 mergeHandler:v26])
  {
    attenuationEngine = self->_attenuationEngine;
    v24 = 0;
    v17 = [(HDQuantitySampleAttenuationEngine *)attenuationEngine delegateLoadingWasSuccessful:&v24];
    v18 = v24;
    v19 = v18;
    if (!v17)
    {
      v20 = v18;
      v21 = v20;
      if (v20)
      {
        if (error)
        {
          v22 = v20;
          *error = v21;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __127__HDStatisticsCollectionCalculatorAttenuatedDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6)
{
  v8 = a5;
  *(v45 + 3) = 0;
  v45[0] = 0;
  if (a3)
  {
    v11 = *(a1 + 32);
    *&v42 = a5;
    *(&v42 + 1) = a6;
    *&v43 = a4;
    BYTE8(v43) = 1;
    *(&v43 + 9) = 0;
    HIDWORD(v43) = 0;
    *&v44 = a2;
    [v11 _attenuationSamplesWindowAdvanceToSample:&v42];
  }

  v12 = *(a1 + 32);
  *&v42 = v8;
  *(&v42 + 1) = a6;
  *&v43 = a4;
  BYTE8(v43) = 1;
  *(&v43 + 9) = 0;
  HIDWORD(v43) = 0;
  *&v44 = a2;
  v13 = [v12 _attenuationSamplesWindowContainsSample:&v42];
  v14 = *(a1 + 32);
  *&v42 = v8;
  *(&v42 + 1) = a6;
  *&v43 = a4;
  BYTE8(v43) = 1;
  *(&v43 + 9) = 0;
  HIDWORD(v43) = 0;
  *&v44 = a2;
  v15 = [v14 _attenuationSamplesWindowContainsSampleStart:&v42];
  if ((v13 & 1) != 0 || v15)
  {
    v29 = v15;
    v17 = *(a1 + 32);
    *v38 = v8;
    *&v38[1] = a6;
    *&v38[2] = a4;
    v39 = 1;
    memset(v40, 0, sizeof(v40));
    v41 = a2;
    if (v17)
    {
      [v17 _extractAttenuatedSamplesFrom:v38];
    }

    else
    {
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
    }

    while (*(&v44 + 1))
    {
      v18 = (*(*(&v42 + 1) + 8 * (v44 / 0x66)) + 40 * (v44 % 0x66));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      *&v44 = v44 + 1;
      --*(&v44 + 1);
      if (v44 >= 0xCC)
      {
        operator delete(**(&v42 + 1));
        *(&v42 + 1) += 8;
        *&v44 = v44 - 102;
      }

      if (((*(*(a1 + 40) + 16))(v21, v19, v20) & 1) == 0)
      {
        std::deque<HDQuantitySampleAttenuationEngineSample>::~deque[abi:ne200100](&v42);
        return 0;
      }
    }

    std::deque<HDQuantitySampleAttenuationEngineSample>::~deque[abi:ne200100](&v42);
    v15 = v29;
    if (v13)
    {
      return 1;
    }
  }

  else if (v13)
  {
    return 1;
  }

  v22 = *(a1 + 32);
  v23 = a2;
  if (v15)
  {
    v23 = 0;
    v24 = v22[19] + v22[18] - 1;
    v8 = *(*(v22[15] + 8 * (v24 / 0x66)) + 40 * (v24 % 0x66) + 8);
  }

  *&v44 = 0;
  v43 = 0u;
  v42 = 0u;
  v25 = v22[13];
  *&v35 = v8;
  *(&v35 + 1) = a6;
  *&v36 = a4;
  v16 = 1;
  BYTE8(v36) = 1;
  *(&v36 + 9) = 0;
  HIDWORD(v36) = 0;
  v37 = v23;
  if (v25)
  {
    [v25 attenuateSample:&v35];
    if (*(&v42 + 1) - *&v42 > 0.000001)
    {
      v30 = xmmword_22916A740;
      do
      {
        v26 = *(a1 + 32);
        *&v35 = v8;
        *(&v35 + 1) = a6;
        *&v36 = a4;
        BYTE8(v36) = 1;
        *(&v36 + 9) = v45[0];
        HIDWORD(v36) = *(v45 + 3);
        v37 = v23;
        v33[0] = v42;
        v33[1] = v43;
        v34 = v44;
        [v26 _appendToAttenuationSamplesWindowUsingSourceSample:&v35 attenuatedSample:{v33, v30}];
        v16 = (*(*(a1 + 40) + 16))(*&v43, *&v42, *(&v42 + 1));
        if (!v16 || a6 - *(&v42 + 1) <= 0.000001)
        {
          break;
        }

        v27 = *(*(a1 + 32) + 104);
        v31[0] = *(&v42 + 1);
        *&v31[1] = a6;
        *&v31[2] = a4;
        v32 = v30;
        if (v27)
        {
          [v27 attenuateSample:v31];
        }

        else
        {
          v37 = 0;
          v35 = 0u;
          v36 = 0u;
        }

        v42 = v35;
        v43 = v36;
        *&v44 = v37;
      }

      while (*(&v35 + 1) - *&v35 > 0.000001);
    }
  }

  return v16;
}

- (void)_appendToAttenuationSamplesWindowUsingSourceSample:(id *)sample attenuatedSample:(id *)attenuatedSample
{
  v4 = *&attenuatedSample->var0;
  v5 = sample->var2 - attenuatedSample->var2;
  v6 = xmmword_22916A740;
  std::deque<HDQuantitySampleAttenuationEngineSample>::push_back(&self->_attenuationSamplesWindow.__map_.__first_, &v4);
}

- (BOOL)_attenuationSamplesWindowContainsSample:(id *)sample
{
  size = self->_attenuationSamplesWindow.__size_;
  result = size && (begin = self->_attenuationSamplesWindow.__map_.__begin_, start = self->_attenuationSamplesWindow.__start_, *(begin[start / 0x66] + 5 * (start % 0x66)) <= sample->var0) && *(begin[(size + start - 1) / 0x66] + 5 * ((size + start - 1) % 0x66) + 1) >= sample->var1;
  return result;
}

- (BOOL)_attenuationSamplesWindowContainsSampleStart:(id *)start
{
  size = self->_attenuationSamplesWindow.__size_;
  result = size && (begin = self->_attenuationSamplesWindow.__map_.__begin_, start = self->_attenuationSamplesWindow.__start_, *(begin[start / 0x66] + 5 * (start % 0x66)) <= start->var0) && (v6 = *(begin[(size + start - 1) / 0x66] + 5 * ((size + start - 1) % 0x66) + 1), v6 < start->var1) && start->var0 < v6;
  return result;
}

- (queue<HDQuantitySampleAttenuationEngineSample,)_extractAttenuatedSamplesFrom:()queue<HDQuantitySampleAttenuationEngineSample
{
  *&retstr->var0.__map_.__end_ = 0u;
  *&retstr->var0.__start_ = 0u;
  *&retstr->var0.__map_.__first_ = 0u;
  p_end = &self[2].var0.__map_.__end_;
  if (self[3].var0.__map_.__begin_)
  {
    v7 = 0;
    do
    {
      v8 = (p_end[1][(p_end[4] + v7) / 0x66] + 40 * ((p_end[4] + v7) % 0x66));
      v9 = *v8;
      v10 = v8[1];
      v11 = fmax(a4->var2 - v8[2], 0.0);
      var0 = a4->var0;
      if (*v8 > a4->var0 || v10 <= var0)
      {
        if (v9 >= var0)
        {
          var1 = a4->var1;
          if (v10 <= var1)
          {
            v19 = *v8;
            v20 = v10;
            v21 = v11;
            var3 = a4->var3;
            var4 = a4->var4;
            v22 = var3;
            std::deque<HDQuantitySampleAttenuationEngineSample>::push_back(retstr, &v19);
          }

          else if (v9 < var1)
          {
            if (v10 < var1)
            {
              var1 = v8[1];
            }

            v19 = *v8;
            v20 = var1;
            v21 = v11;
            v15 = a4->var3;
            var4 = a4->var4;
            v22 = v15;
            std::deque<HDQuantitySampleAttenuationEngineSample>::push_back(retstr, &v19);
          }
        }
      }

      else
      {
        v16 = a4->var1;
        if (v10 < v16)
        {
          v16 = v8[1];
        }

        v19 = a4->var0;
        v20 = v16;
        v21 = v11;
        v17 = a4->var3;
        var4 = a4->var4;
        v22 = v17;
        std::deque<HDQuantitySampleAttenuationEngineSample>::push_back(retstr, &v19);
      }

      if (v10 >= a4->var1)
      {
        break;
      }

      ++v7;
    }

    while (p_end[5] > v7);
  }

  return self;
}

- (void)_attenuationSamplesWindowAdvanceToSample:(id *)sample
{
  p_attenuationSamplesWindow = &self->_attenuationSamplesWindow;
  size = self->_attenuationSamplesWindow.__size_;
  if (size)
  {
    begin = self->_attenuationSamplesWindow.__map_.__begin_;
    start = self->_attenuationSamplesWindow.__start_;
    v8 = (begin[start / 0x66] + 40 * (start % 0x66));
    var0 = sample->var0;
    if (*v8 > sample->var0 || *(begin[(size + start - 1) / 0x66] + 5 * ((size + start - 1) % 0x66) + 1) <= var0)
    {
      end = self->_attenuationSamplesWindow.__map_.__end_;
      self->_attenuationSamplesWindow.__size_ = 0;
      v11 = (end - begin) >> 3;
      if (v11 >= 3)
      {
        do
        {
          operator delete(*begin);
          v12 = p_attenuationSamplesWindow->__map_.__end_;
          begin = (p_attenuationSamplesWindow->__map_.__begin_ + 1);
          p_attenuationSamplesWindow->__map_.__begin_ = begin;
          v11 = (v12 - begin) >> 3;
        }

        while (v11 > 2);
      }

      if (v11 == 1)
      {
        v13 = 51;
      }

      else
      {
        if (v11 != 2)
        {
          return;
        }

        v13 = 102;
      }

      p_attenuationSamplesWindow->__start_ = v13;
    }

    else if (v8[1] <= var0)
    {
      do
      {
        if (*(begin[start / 0x66] + 5 * (start % 0x66) + 1) > sample->var0)
        {
          break;
        }

        --size;
        p_attenuationSamplesWindow->__start_ = ++start;
        p_attenuationSamplesWindow->__size_ = size;
        if (start >= 0xCC)
        {
          operator delete(*begin);
          begin = (p_attenuationSamplesWindow->__map_.__begin_ + 1);
          p_attenuationSamplesWindow->__map_.__begin_ = begin;
          size = p_attenuationSamplesWindow->__size_;
          start = p_attenuationSamplesWindow->__start_ - 102;
          p_attenuationSamplesWindow->__start_ = start;
        }
      }

      while (size);
    }
  }
}

- (deque<HDQuantitySampleAttenuationEngineSample,)attenuationSamplesWindow
{
  *&retstr->__map_.__first_ = 0u;
  *&retstr->__map_.__end_ = 0u;
  *&retstr->__start_ = 0u;
  start = self->_attenuationSamplesWindow.__start_;
  v5 = start / 0x66;
  begin = self->_attenuationSamplesWindow.__map_.__begin_;
  v7 = &begin[start / 0x66];
  if (self->_attenuationSamplesWindow.__map_.__end_ == begin)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v8 = start % 0x66;
  v9 = (begin[v5] + 40 * (start % 0x66));
  v10 = self->_attenuationSamplesWindow.__size_ + start;
  v11 = v10 / 0x66;
  v12 = v10 % 0x66;
  if ((begin[v11] + 40 * v12) == v9)
  {
LABEL_5:
    v13 = 0;
    return std::deque<HDQuantitySampleAttenuationEngineSample>::__append_with_size[abi:ne200100]<std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample const*,HDQuantitySampleAttenuationEngineSample const&,HDQuantitySampleAttenuationEngineSample const* const*,long,102l>>(retstr, v7, v9, v13);
  }

  v13 = v12 - v8 + 102 * ((8 * v11 - 8 * v5) >> 3);
  return std::deque<HDQuantitySampleAttenuationEngineSample>::__append_with_size[abi:ne200100]<std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample const*,HDQuantitySampleAttenuationEngineSample const&,HDQuantitySampleAttenuationEngineSample const* const*,long,102l>>(retstr, v7, v9, v13);
}

- (void)setAttenuationSamplesWindow:()deque<HDQuantitySampleAttenuationEngineSample
{
  p_attenuationSamplesWindow = &self->_attenuationSamplesWindow;
  if (&self->_attenuationSamplesWindow == a3)
  {
    return;
  }

  start = a3->__start_;
  v5 = start / 0x66;
  begin = a3->__map_.__begin_;
  v7 = &begin[start / 0x66];
  if (a3->__map_.__end_ == begin)
  {
    v9 = 0;
    v22 = 0;
LABEL_9:
    v13 = 0;
    p_size = &self->_attenuationSamplesWindow.__size_;
    goto LABEL_11;
  }

  v8 = start % 0x66;
  v9 = (begin[v5] + 40 * (start % 0x66));
  v10 = a3->__size_ + start;
  v11 = v10 / 0x66;
  v12 = v10 % 0x66;
  if ((begin[v11] + 40 * v12) == v9)
  {
    v22 = v9;
    goto LABEL_9;
  }

  v13 = v12 - v8 + 102 * ((8 * v11 - 8 * v5) >> 3);
  p_size = &self->_attenuationSamplesWindow.__size_;
  size = self->_attenuationSamplesWindow.__size_;
  if (size < v13)
  {
    v44 = v7;
    v45 = v9;
    std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample*,HDQuantitySampleAttenuationEngineSample&,HDQuantitySampleAttenuationEngineSample**,long,102l>::operator+=[abi:ne200100](&v44, size);
    v16 = v44;
    v17 = v45;
    v18 = p_attenuationSamplesWindow->__start_;
    v19 = p_attenuationSamplesWindow->__map_.__begin_;
    v20 = &v19[v18 / 0x66];
    if (p_attenuationSamplesWindow->__map_.__end_ == v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = *v20 + 40 * (v18 % 0x66);
    }

    v44 = v20;
    v45 = v21;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample const*,HDQuantitySampleAttenuationEngineSample const&,HDQuantitySampleAttenuationEngineSample const* const*,long,102l>,std::__copy_impl::_CopySegment<std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample const*,HDQuantitySampleAttenuationEngineSample const&,HDQuantitySampleAttenuationEngineSample const* const*,long,102l>,std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample*,HDQuantitySampleAttenuationEngineSample&,HDQuantitySampleAttenuationEngineSample**,long,102l>>>(v7, v9, v16, v17, &v44);
    std::deque<HDQuantitySampleAttenuationEngineSample>::__append_with_size[abi:ne200100]<std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample const*,HDQuantitySampleAttenuationEngineSample const&,HDQuantitySampleAttenuationEngineSample const* const*,long,102l>>(p_attenuationSamplesWindow, v16, v17, v13 - p_attenuationSamplesWindow->__size_);
    return;
  }

  v22 = v9;
LABEL_11:
  v23 = self->_attenuationSamplesWindow.__start_;
  v24 = self->_attenuationSamplesWindow.__map_.__begin_;
  v25 = &v24[v23 / 0x66];
  if (self->_attenuationSamplesWindow.__map_.__end_ == v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = *v25 + 40 * (v23 % 0x66);
  }

  v44 = v7;
  v45 = v22;
  std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample*,HDQuantitySampleAttenuationEngineSample&,HDQuantitySampleAttenuationEngineSample**,long,102l>::operator+=[abi:ne200100](&v44, v13);
  v27 = v44;
  v28 = v45;
  v44 = v25;
  v45 = v26;
  std::__for_each_segment[abi:ne200100]<std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample const*,HDQuantitySampleAttenuationEngineSample const&,HDQuantitySampleAttenuationEngineSample const* const*,long,102l>,std::__copy_impl::_CopySegment<std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample const*,HDQuantitySampleAttenuationEngineSample const&,HDQuantitySampleAttenuationEngineSample const* const*,long,102l>,std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample*,HDQuantitySampleAttenuationEngineSample&,HDQuantitySampleAttenuationEngineSample**,long,102l>>>(v7, v9, v27, v28, &v44);
  v29 = p_attenuationSamplesWindow->__start_;
  v30 = p_attenuationSamplesWindow->__size_;
  v31 = p_attenuationSamplesWindow->__map_.__begin_;
  end = p_attenuationSamplesWindow->__map_.__end_;
  v33 = &v31[(v29 + v30) / 0x66];
  if (end == v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = *v33 + 40 * ((v29 + v30) % 0x66);
  }

  if (v34 != v45)
  {
    v35 = 102 * (v33 - v44) - 0x3333333333333333 * ((v34 - *v33) >> 3);
    v36 = (v45 - *v44) >> 3;
    v37 = v35 + 0x3333333333333333 * v36;
    if (v37 >= 1)
    {
      v38 = &v31[v29 / 0x66];
      v39 = end == v31 ? 0 : *v38 + 40 * (v29 % 0x66);
      v40 = v45 == v39 ? 0 : 102 * (v44 - v38) - 0x3333333333333333 * v36 + 0x3333333333333333 * ((v39 - *v38) >> 3);
      v44 = &v31[v29 / 0x66];
      v45 = v39;
      v41 = end == v31 ? 0 : 102 * ((end - v31) >> 3) - 1;
      std::__deque_iterator<HDQuantitySampleAttenuationEngineSample,HDQuantitySampleAttenuationEngineSample*,HDQuantitySampleAttenuationEngineSample&,HDQuantitySampleAttenuationEngineSample**,long,102l>::operator+=[abi:ne200100](&v44, v40);
      *p_size = v30 - v37;
      if (v41 - (v29 + v30 - v37) >= 0xCC)
      {
        do
        {
          operator delete(*(end - 8));
          v42 = p_attenuationSamplesWindow->__map_.__begin_;
          end = (p_attenuationSamplesWindow->__map_.__end_ - 1);
          v43 = 102 * ((end - v42) >> 3) - 1;
          p_attenuationSamplesWindow->__map_.__end_ = end;
          if (end == v42)
          {
            v43 = 0;
          }
        }

        while (v43 - (p_attenuationSamplesWindow->__size_ + p_attenuationSamplesWindow->__start_) > 0xCB);
      }
    }
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  return self;
}

@end