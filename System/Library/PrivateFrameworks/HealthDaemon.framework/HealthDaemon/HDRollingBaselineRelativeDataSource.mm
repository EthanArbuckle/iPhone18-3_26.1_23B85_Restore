@interface HDRollingBaselineRelativeDataSource
- (BOOL)_couldSampleEverResolveToDeterminateValue:(HDRawQuantitySample *)value;
- (BOOL)_primeBaselineCalculatorWithPriorSamplesForSample:(HDRawQuantitySample *)sample baselineCompatibilityID:(id)d error:(id *)error;
- (BOOL)_shouldContinueWithError:(id *)error;
- (BOOL)_supplementCalculatorWithSubsequentSamplesForSample:(HDRawQuantitySample *)sample baselineCompatibilityID:(id)d error:(id *)error;
- (HDProfile)profile;
- (HDRollingBaselineRelativeDataSource)initWithProfile:(id)profile quantityType:(id)type configuration:(id)configuration queryPrefetchWindow:(double)window currentDate:(id)date;
- (id).cxx_construct;
- (id)_predicateForSamplesStartingWithinDateInterval:(id)interval sourceID:(int64_t)d isIntervalStartDateInclusive:(BOOL)inclusive;
- (id)computeRelativeValueForSample:(HDRawQuantitySample *)sample error:(id *)error;
@end

@implementation HDRollingBaselineRelativeDataSource

- (HDRollingBaselineRelativeDataSource)initWithProfile:(id)profile quantityType:(id)type configuration:(id)configuration queryPrefetchWindow:(double)window currentDate:(id)date
{
  profileCopy = profile;
  typeCopy = type;
  configurationCopy = configuration;
  dateCopy = date;
  v26.receiver = self;
  v26.super_class = HDRollingBaselineRelativeDataSource;
  v16 = [(HDRollingBaselineRelativeDataSource *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_profile, profileCopy);
    objc_storeStrong(&v17->_quantityType, type);
    v18 = [[HDRollingBaselineRelativeQuantityCalculator alloc] initWithConfiguration:configurationCopy];
    baselineCalculator = v17->_baselineCalculator;
    v17->_baselineCalculator = v18;

    v20 = [[_HDRollingBaselineRelativeDataSourceBaselineCompatibilityMap alloc] initWithProfile:profileCopy quantityType:typeCopy];
    canonicalSourceMap = v17->_canonicalSourceMap;
    v17->_canonicalSourceMap = v20;

    v17->_queryPrefetchWindow = window;
    objc_storeStrong(&v17->_currentDate, date);
    if (v17->_prefetchedSamplesByBaselineCompatibilityID.__table_.__size_)
    {
      std::__hash_table<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>>>::__deallocate_node(v17->_prefetchedSamplesByBaselineCompatibilityID.__table_.__first_node_.__next_);
      v17->_prefetchedSamplesByBaselineCompatibilityID.__table_.__first_node_.__next_ = 0;
      size = v17->_prefetchedSamplesByBaselineCompatibilityID.__table_.__bucket_list_.__deleter_.__size_;
      if (size)
      {
        for (i = 0; i != size; ++i)
        {
          v17->_prefetchedSamplesByBaselineCompatibilityID.__table_.__bucket_list_.__ptr_[i] = 0;
        }
      }

      v17->_prefetchedSamplesByBaselineCompatibilityID.__table_.__size_ = 0;
    }

    ptr = v17->_prefetchedSamplesByBaselineCompatibilityID.__table_.__bucket_list_.__ptr_;
    v17->_prefetchedSamplesByBaselineCompatibilityID.__table_.__bucket_list_.__ptr_ = 0;
    if (ptr)
    {
      operator delete(ptr);
    }

    v17->_prefetchedSamplesByBaselineCompatibilityID.__table_.__bucket_list_.__deleter_.__size_ = 0;
    v17->_prefetchedSamplesByBaselineCompatibilityID.__table_.__first_node_.__next_ = 0;
    v17->_prefetchedSamplesByBaselineCompatibilityID.__table_.__size_ = 0;
    v17->_prefetchedSamplesByBaselineCompatibilityID.__table_.__max_load_factor_ = 1.0;
    std::__hash_table<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>>>::__deallocate_node(0);
  }

  return v17;
}

- (id)computeRelativeValueForSample:(HDRawQuantitySample *)sample error:(id *)error
{
  v7 = [(_HDRollingBaselineRelativeDataSourceBaselineCompatibilityMap *)self->_canonicalSourceMap baselineCompatibilityIDForSourceID:sample->var3];
  v8 = *&sample->var2;
  v17 = *&sample->var0;
  v18 = v8;
  v19 = *&sample->var4;
  if (![(HDRollingBaselineRelativeDataSource *)self _primeBaselineCalculatorWithPriorSamplesForSample:&v17 baselineCompatibilityID:v7 error:error])
  {
    goto LABEL_10;
  }

  v9 = [(HDRollingBaselineRelativeQuantityCalculator *)self->_baselineCalculator hasSufficientDataToBaselineSampleWithSourceID:v7];
  baselineCalculator = self->_baselineCalculator;
  var0 = sample->var0;
  if (v9)
  {
    [(HDRollingBaselineRelativeQuantityCalculator *)baselineCalculator baselineRelativeValueForSampleValue:v7 sourceID:var0];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
LABEL_6:
    v13 = v12;
    goto LABEL_11;
  }

  [(HDRollingBaselineRelativeQuantityCalculator *)baselineCalculator addSupplementarySampleValue:v7 startTime:var0 sourceID:sample->var1];
  if ([(HDRollingBaselineRelativeQuantityCalculator *)self->_baselineCalculator hasSufficientDataToBaselineSampleWithSourceID:v7])
  {
LABEL_5:
    [(HDRollingBaselineRelativeQuantityCalculator *)self->_baselineCalculator baselineRelativeValueForSampleValue:v7 sourceID:sample->var0];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    goto LABEL_6;
  }

  v14 = *&sample->var2;
  v17 = *&sample->var0;
  v18 = v14;
  v19 = *&sample->var4;
  if ([(HDRollingBaselineRelativeDataSource *)self _supplementCalculatorWithSubsequentSamplesForSample:&v17 baselineCompatibilityID:v7 error:error])
  {
    if ([(HDRollingBaselineRelativeQuantityCalculator *)self->_baselineCalculator hasSufficientDataToBaselineSampleWithSourceID:v7])
    {
      goto LABEL_5;
    }

    v16 = *&sample->var2;
    v17 = *&sample->var0;
    v18 = v16;
    v19 = *&sample->var4;
    if ([(HDRollingBaselineRelativeDataSource *)self _couldSampleEverResolveToDeterminateValue:&v17])
    {
      v13 = &unk_283CB43C0;
    }

    else
    {
      v13 = &unk_283CB43D0;
    }
  }

  else
  {
LABEL_10:
    v13 = 0;
  }

LABEL_11:

  return v13;
}

- (BOOL)_primeBaselineCalculatorWithPriorSamplesForSample:(HDRawQuantitySample *)sample baselineCompatibilityID:(id)d error:(id *)error
{
  dCopy = d;
  v33 = dCopy;
  [(HDRollingBaselineRelativeQuantityCalculator *)self->_baselineCalculator pruneForNextSampleStartTime:dCopy sourceID:sample->var1];
  if (!std::__hash_table<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>>>::find<NSString * {__strong}>(&self->_prefetchedSamplesByBaselineCompatibilityID.__table_.__bucket_list_.__ptr_, &v33))
  {
    goto LABEL_10;
  }

  v9 = std::__hash_table<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>>>::find<NSString * {__strong}>(&self->_prefetchedSamplesByBaselineCompatibilityID.__table_.__bucket_list_.__ptr_, &v33);
  v10 = v9;
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (v9[8])
  {
    v11 = v9[7];
    v27 = xmmword_229166A20;
    while (1)
    {
      v12 = (v10[4][v11 / 0x66] + 40 * (v11 % 0x66));
      if (v12[1] >= sample->var1)
      {
        break;
      }

      [(HDRollingBaselineRelativeQuantityCalculator *)self->_baselineCalculator addNextSampleValue:dCopy startTime:*v12 sourceID:?];
      v13 = vaddq_s64(*(v10 + 7), xmmword_229166A20);
      *(v10 + 7) = v13;
      v11 = v13.i64[0];
      if (v13.i64[0] < 0xCCuLL)
      {
        if (!v13.i64[1])
        {
          goto LABEL_10;
        }
      }

      else
      {
        operator delete(*v10[4]++);
        v14 = v10[8];
        v11 = v10[7] - 102;
        v10[7] = v11;
        if (!v14)
        {
          goto LABEL_10;
        }
      }
    }

    v25 = 1;
  }

  else
  {
LABEL_10:
    [(HDRollingBaselineRelativeQuantityCalculator *)self->_baselineCalculator mostRecentSampleStartTimeForSourceID:dCopy, v27];
    v16 = v15;
    var1 = sample->var1;
    configuration = [(HDRollingBaselineRelativeQuantityCalculator *)self->_baselineCalculator configuration];
    [configuration maximumWindowDuration];
    v20 = var1 - v19;

    if (v16 >= v20)
    {
      v20 = v16;
    }

    v21 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v20 end:sample->var1 + self->_queryPrefetchWindow];
    v22 = [(HDRollingBaselineRelativeDataSource *)self _predicateForSamplesStartingWithinDateInterval:v21 sourceID:sample->var3 isIntervalStartDateInclusive:v20 != v16];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __119__HDRollingBaselineRelativeDataSource__primeBaselineCalculatorWithPriorSamplesForSample_baselineCompatibilityID_error___block_invoke;
    v28[3] = &unk_27862B710;
    v24 = *&sample->var2;
    v30 = *&sample->var0;
    v31 = v24;
    v32 = *&sample->var4;
    v28[4] = self;
    v29 = dCopy;
    v25 = [HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v22 profile:WeakRetained options:0 error:error handler:v28];
  }

  return v25;
}

uint64_t __119__HDRollingBaselineRelativeDataSource__primeBaselineCalculatorWithPriorSamplesForSample_baselineCompatibilityID_error___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *(a1 + 32);
  if (*(a1 + 56) > a2)
  {
    [*&v16[2] addNextSampleValue:*(a1 + 40) startTime:a4 sourceID:a5];
    goto LABEL_34;
  }

  v19 = [*(a1 + 40) hash];
  v20 = v19;
  v21 = v16[7];
  if (!*&v21)
  {
    goto LABEL_20;
  }

  v22 = vcnt_s8(v21);
  v22.i16[0] = vaddlv_u8(v22);
  v23 = v22.u32[0];
  if (v22.u32[0] > 1uLL)
  {
    v24 = v19;
    if (v19 >= *&v21)
    {
      v24 = v19 % *&v21;
    }
  }

  else
  {
    v24 = (*&v21 - 1) & v19;
  }

  v25 = *(*&v16[6] + 8 * v24);
  if (!v25 || (v26 = *v25) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v27 = v26[1];
    if (v27 == v20)
    {
      break;
    }

    if (v23 > 1)
    {
      if (v27 >= *&v21)
      {
        v27 %= *&v21;
      }
    }

    else
    {
      v27 &= *&v21 - 1;
    }

    if (v27 != v24)
    {
      goto LABEL_20;
    }

LABEL_19:
    v26 = *v26;
    if (!v26)
    {
      goto LABEL_20;
    }
  }

  if ((std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringEqual,HDStringHash,true>::operator()[abi:ne200100](v26[2], *(a1 + 40)) & 1) == 0)
  {
    goto LABEL_19;
  }

  v28 = *(v26 + 2);
  v29 = v26[5];
  v30 = v26[4];
  if (v29 == v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = 102 * ((v29 - v30) >> 3) - 1;
  }

  v33 = v26[7];
  v32 = v26[8];
  v34 = v32 + v33;
  if (v31 == v32 + v33)
  {
    if (v33 < 0x66)
    {
      v35 = v26[6];
      v36 = v26[3];
      if (v29 - v30 < (v35 - v36))
      {
        operator new();
      }

      if (v35 == v36)
      {
        v37 = 1;
      }

      else
      {
        v37 = (v35 - v36) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v37);
    }

    v26[7] = v33 - 102;
    v41 = *v30;
    v26[4] = (v30 + 8);
    std::__split_buffer<std::__thread_id *>::emplace_back<std::__thread_id *&>(v26 + 3, &v41);
    v32 = v26[8];
    v30 = v26[4];
    v34 = v26[7] + v32;
  }

  v38 = *&v30[8 * (v34 / 0x66)] + 40 * (v34 % 0x66);
  *v38 = a4;
  *(v38 + 8) = a2;
  *(v38 + 16) = a3;
  *(v38 + 24) = a9;
  *(v38 + 32) = 1;
  v26[8] = v32 + 1;
LABEL_34:
  v39 = *(a1 + 32);

  return [v39 _shouldContinueWithError:a12];
}

- (BOOL)_supplementCalculatorWithSubsequentSamplesForSample:(HDRawQuantitySample *)sample baselineCompatibilityID:(id)d error:(id *)error
{
  dCopy = d;
  v35 = dCopy;
  var1 = sample->var1;
  configuration = [(HDRollingBaselineRelativeQuantityCalculator *)self->_baselineCalculator configuration];
  [configuration maximumWindowDuration];
  v12 = v11;

  v13 = var1 + v12;
  if (std::__hash_table<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>>>::find<NSString * {__strong}>(&self->_prefetchedSamplesByBaselineCompatibilityID.__table_.__bucket_list_.__ptr_, &v35))
  {
    v14 = std::__hash_table<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},std::deque<HDRawQuantitySample>>>>::find<NSString * {__strong}>(&self->_prefetchedSamplesByBaselineCompatibilityID.__table_.__bucket_list_.__ptr_, &v35);
    v15 = v14;
    if (!v14)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v16 = v14[8];
    if (v16)
    {
      for (i = 0; v16 > i; ++i)
      {
        v18 = (v15[4][(v15[7] + i) / 0x66] + 40 * ((v15[7] + i) % 0x66));
        v19 = v18[1];
        if (v19 > sample->var1)
        {
          if (v19 >= v13 || ([(HDRollingBaselineRelativeQuantityCalculator *)self->_baselineCalculator addSupplementarySampleValue:dCopy startTime:*v18 sourceID:?], [(HDRollingBaselineRelativeQuantityCalculator *)self->_baselineCalculator hasSufficientDataToBaselineSampleWithSourceID:dCopy]))
          {
            v26 = 1;
            goto LABEL_16;
          }

          v16 = v15[8];
        }
      }
    }
  }

  v20 = sample->var1;
  [(HDRollingBaselineRelativeQuantityCalculator *)self->_baselineCalculator mostRecentSupplementarySampleStartTimeForSourceID:dCopy];
  if (v20 >= v21)
  {
    v21 = v20;
  }

  v22 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v21 end:v13];
  v23 = [(HDRollingBaselineRelativeDataSource *)self _predicateForSamplesStartingWithinDateInterval:v22 sourceID:sample->var3 isIntervalStartDateInclusive:0];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __121__HDRollingBaselineRelativeDataSource__supplementCalculatorWithSubsequentSamplesForSample_baselineCompatibilityID_error___block_invoke;
  v28[3] = &unk_27862B738;
  v28[4] = self;
  v29 = dCopy;
  v30 = &v31;
  v25 = [HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v23 profile:WeakRetained options:0 error:error handler:v28];

  if (v25)
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v32 + 24);
  }

  _Block_object_dispose(&v31, 8);
LABEL_16:

  return v26 & 1;
}

uint64_t __121__HDRollingBaselineRelativeDataSource__supplementCalculatorWithSubsequentSamplesForSample_baselineCompatibilityID_error___block_invoke(void *a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  [*(a1[4] + 16) addSupplementarySampleValue:a1[5] startTime:a4 sourceID:a2];
  if ([*(a1[4] + 16) hasSufficientDataToBaselineSampleWithSourceID:a1[5]])
  {
    *(*(a1[6] + 8) + 24) = 1;
    return 0;
  }

  else
  {
    v14 = a1[4];

    return [v14 _shouldContinueWithError:a11];
  }
}

- (BOOL)_shouldContinueWithError:(id *)error
{
  shouldContinueHandler = self->_shouldContinueHandler;
  if (shouldContinueHandler)
  {
    return shouldContinueHandler[2](shouldContinueHandler, error);
  }

  else
  {
    return 1;
  }
}

- (id)_predicateForSamplesStartingWithinDateInterval:(id)interval sourceID:(int64_t)d isIntervalStartDateInclusive:(BOOL)inclusive
{
  inclusiveCopy = inclusive;
  v20[4] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v9 = HDSampleEntityPredicateForDataType(self->_quantityType);
  endDate = [intervalCopy endDate];
  v11 = HDSampleEntityPredicateForStartDate(3);

  startDate = [intervalCopy startDate];
  if (inclusiveCopy)
  {
    HDSampleEntityPredicateForStartDate(6);
  }

  else
  {
    HDSampleEntityPredicateForStartDate(5);
  }
  v13 = ;

  v14 = [(_HDRollingBaselineRelativeDataSourceBaselineCompatibilityMap *)self->_canonicalSourceMap predicateForDataEntitiesWithSourceIDsCompatibleWithSourceID:d];
  v15 = MEMORY[0x277D10B20];
  v20[0] = v9;
  v20[1] = v11;
  v20[2] = v13;
  v20[3] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v17 = [v15 predicateMatchingAllPredicates:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)_couldSampleEverResolveToDeterminateValue:(HDRawQuantitySample *)value
{
  selfCopy = self;
  [(NSDate *)self->_currentDate timeIntervalSinceReferenceDate];
  v6 = v5;
  var1 = value->var1;
  configuration = [(HDRollingBaselineRelativeQuantityCalculator *)selfCopy->_baselineCalculator configuration];
  [configuration maximumWindowDuration];
  LOBYTE(selfCopy) = v6 - var1 <= v9;

  return selfCopy;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

@end