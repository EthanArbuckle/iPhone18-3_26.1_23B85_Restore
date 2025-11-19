void *HDStatisticsBucket<HDStatisticsPercentiles>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v3 = (a1 + 200);
  v4 = *(a1 + 200);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = (a1 + 200);
  do
  {
    if (v4[4] >= a2)
    {
      v5 = v4;
    }

    v4 = v4[v4[4] < a2];
  }

  while (v4);
  if (v5 == v3 || v5[4] > a2)
  {
LABEL_8:
    v6 = (v3 - 1);
    v10 = &v9;
    v7 = std::__tree<std::__value_type<long long,HDStatisticsPercentiles>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPercentiles>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPercentiles>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v3 - 1), a2);
    HDStatisticsPercentiles::configure((v7 + 5), *(a1 + 32));
    v10 = &v9;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsPercentiles>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPercentiles>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPercentiles>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6, v9);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsPercentiles>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 280), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsPercentiles>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 320), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 320), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsPercentiles>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 360), a2);
    if (v5)
    {
      WeakRetained = v5[3];
    }

    else
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      WeakRetained = [v6 bundleIdentifierForSourceID:{a2, v9[0]}];

      if (WeakRetained)
      {
        v9[1] = v9;
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 360), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void *std::__tree<std::__value_type<long long,HDStatisticsPercentiles>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPercentiles>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPercentiles>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsPercentiles>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsPercentiles>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsPercentiles>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsPercentiles>,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsPercentiles>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsPercentiles>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsPercentiles>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsPercentiles>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsPercentiles>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles>(HKStatistics *,HDStatisticsBucket<HDStatisticsPercentiles> const&)::{lambda(HDStatisticsPercentiles const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles>(HKStatistics *,HDStatisticsBucket<HDStatisticsPercentiles> const&)::{lambda(HDStatisticsPercentiles const&)#1}>,HDStatisticsPercentiles const& ()(HDStatisticsPercentiles const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsPercentiles const& ()(HDStatisticsPercentiles const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 552) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  if (v9 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsPercentiles>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v9 end:*(a2 + 16)];
    v11 = (*(*a1 + 128))(a1, v10, a4);
  }

  return v11;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_advanceToTime(uint64_t a1, double a2)
{
  while (*(a1 + 128) <= a2)
  {
    v4 = *(a1 + 528);
    v5 = *(a1 + 520);
    if (v4 == v5)
    {
      v20 = 0;
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
      v6 = [v13 dateIntervalContainingDate:v14 index:&v20];

      HDStatisticsBucket<HDStatisticsPercentiles>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsPercentiles>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsPercentiles>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsPercentiles>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsPercentiles>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsPercentiles>::advanceBucket((a1 + 112), v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsPercentiles>::addSample(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a2 + 32);
  if ((v4 & 1) != 0 && (v5 = *(a2 + 1), v5 >= *(a1 + 8)))
  {
    v6 = *a2;
    v7 = *(a2 + 2);
    v8 = a2[3];
    v9 = *(a2 + 33);
    *(&v42 + 1) = a2[1];
    *&v43 = v7;
    *(&v43 + 1) = v8;
    LOBYTE(v44) = v4;
    HIBYTE(v44) = v9;
    *&v42 = v6;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    v10 = *(a1 + 16);
    if (*(a1 + 36))
    {
      v11 = v5 < v10;
    }

    else
    {
      v11 = v5 <= v10;
    }

    if (v11)
    {
      if (v7 <= v10)
      {
        v13 = v7;
      }

      else
      {
        v13 = *(a1 + 16);
      }

      *&v43 = v13;
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 224), v8);
      v14 = *(a1 + 112);
      if (v14 == *(a1 + 104) && (*(a1 + 136) - *(a1 + 128)) <= 0)
      {
        v17 = *(a1 + 8);
        v18 = *(a1 + 16);
        if (v5 >= v17)
        {
          v17 = v5;
        }

        if (v18 >= v13)
        {
          v18 = v13;
        }

        *(a1 + 48) = v17;
        *(a1 + 56) = v18;
      }

      else
      {
        if (v5 < *(a1 + 48))
        {
          v15 = *(a1 + 8);
          if (v5 >= v15)
          {
            v15 = v5;
          }

          *(a1 + 48) = v15;
        }

        if (v13 > *(a1 + 56))
        {
          v16 = *(a1 + 16);
          if (v16 >= v13)
          {
            v16 = v13;
          }

          *(a1 + 56) = v16;
        }
      }

      if (*(a1 + 32) == 1)
      {
        v19 = *(a1 + 64);
        if (v5 < v19)
        {
          v19 = v5;
        }

        *(a1 + 64) = v19;
      }

      if (a3 && v5 < *(a1 + 16))
      {
        HDStatisticsBucket<HDStatisticsPercentiles>::_mergeThroughTime(a1 + 8, v5);
        v14 = *(a1 + 112);
      }

      v39 = v42;
      v40 = v43;
      LOWORD(v41) = v44;
      v20 = *(a1 + 120);
      if (v14 >= v20)
      {
        v23 = *(a1 + 104);
        v24 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v23) >> 4);
        v25 = v24 + 1;
        if (v24 + 1 > 0x555555555555555)
        {
          std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
        }

        v26 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23) >> 4);
        if (2 * v26 > v25)
        {
          v25 = 2 * v26;
        }

        if (v26 >= 0x2AAAAAAAAAAAAAALL)
        {
          v27 = 0x555555555555555;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v27);
        }

        v28 = 48 * v24;
        v29 = v40;
        *v28 = v39;
        *(v28 + 16) = v29;
        *(v28 + 32) = v41;
        *(v28 + 40) = 0;
        *(v28 + 42) = 0;
        v22 = 48 * v24 + 48;
        v30 = *(a1 + 104);
        v31 = *(a1 + 112) - v30;
        v32 = 48 * v24 - v31;
        memcpy((v28 - v31), v30, v31);
        v33 = *(a1 + 104);
        *(a1 + 104) = v32;
        *(a1 + 112) = v22;
        *(a1 + 120) = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      else
      {
        v21 = v40;
        *v14 = v39;
        *(v14 + 16) = v21;
        *(v14 + 32) = v41;
        *(v14 + 40) = 0;
        *(v14 + 42) = 0;
        v22 = v14 + 48;
      }

      *(a1 + 112) = v22;
      if (!*(a1 + 192) || *(a1 + 168) <= v5)
      {
        *(a1 + 160) = v6;
        *(a1 + 168) = v5;
        *(a1 + 176) = v7;
        *(a1 + 184) = v8;
        *(a1 + 192) = v4;
        *(a1 + 193) = v9;
      }

      if (*(a1 + 33) == 1)
      {
        v34 = HDStatisticsBucket<HDStatisticsPercentiles>::_canonicalSourceIDForSourceID(a1 + 8, v8);
        v35 = HDStatisticsBucket<HDStatisticsPercentiles>::_statisticsForSource(a1 + 8, v34);
        if (!*(v35 + 64) || v35[5] <= v5)
        {
          *(v35 + 4) = v6;
          v35[5] = v5;
          v35[6] = v7;
          *(v35 + 7) = v8;
          *(v35 + 64) = v4;
          *(v35 + 65) = v9;
        }
      }
    }

    else
    {
      v36 = v42;
      v37 = v43;
      v38 = v44;
      if (v5 >= v10)
      {
        v10 = v5;
      }

      *(&v36 + 1) = v10;
    }
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  if (v38 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 408, &v36);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 554) == 1)
  {
    *(a1 + 556) = 1;
  }

  else
  {
    *(a1 + 556) = 0;
    v2 = _Block_copy(*(a1 + 96));
    if (v2)
    {
      v4 = v2;
      v3 = (*(*a1 + 96))(a1);
      if (v3)
      {
        v4[2](v4, v3);
      }

      v2 = v4;
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsPercentiles>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[51], a1[52], 0xCCCCCCCCCCCCCCCDLL * ((a1[52] - a1[51]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsPercentiles>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsPercentiles>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F84EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsPercentiles>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  objc_storeStrong((a1 + 432), *(a1 + 40));
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  v8 = *(a1 + 128);
  if (v8)
  {
    *(a1 + 136) = v8;
    operator delete(v8);
  }

  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  if (*(a1 + 216))
  {
    v9 = *(a1 + 208);
    v10 = *(a1 + 200);
    *(a1 + 200) = a1 + 208;
    *(v9 + 16) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    if (v10[1])
    {
      v11 = v10[1];
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = v11[2];
      if (v12)
      {
        v13 = *v12;
        if (*v12 == v11)
        {
          *v12 = 0;
          while (1)
          {
            v15 = v12[1];
            if (!v15)
            {
              break;
            }

            do
            {
              v12 = v15;
              v15 = *v15;
            }

            while (v15);
          }
        }

        else
        {
          for (v12[1] = 0; v13; v13 = v12[1])
          {
            do
            {
              v12 = v13;
              v13 = *v13;
            }

            while (v13);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsPercentiles>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPercentiles>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPercentiles>>>::destroy(v11);
        for (i = v12[2]; i; i = i[2])
        {
          v12 = i;
        }

        v11 = v12;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsPercentiles>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPercentiles>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPercentiles>>>::destroy(v11);
  }

  HDStatisticsBucket<HDStatisticsPercentiles>::setStatisticsConfiguration(a1 + 8, *(a1 + 432));
  *(a1 + 416) = *(a1 + 408);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 556) == 1)
  {
    if (v3)
    {
      v6 = v3;
      v4 = _Block_copy(*(a1 + 96));
      v5 = v4;
      if (v4)
      {
        (*(v4 + 2))(v4, v6);
      }

      v3 = v6;
    }

    *(a1 + 556) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsPercentilesE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F85148(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v5 endDate];
      v9 = [v7 startDate];
      if ([v8 hk_isAfterDate:v9])
      {
        v10 = [v5 startDate];
        v11 = [v7 endDate];
        v12 = [v10 hk_isBeforeOrEqualToDate:v11];
      }

      else
      {
        v12 = 0;
      }

      v13 = _Block_copy(a1[12]);
      if ((v12 & 1) == 0)
      {
        operator new();
      }
    }

    else
    {
      v13 = _Block_copy(a1[12]);
    }

    *(a1 + 552) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsPercentilesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
    v27[3] = &unk_278629370;
    v15 = v5;
    v28 = v15;
    v16 = v13;
    v29 = v16;
    (*(*a1 + 9))(a1, v27);
    if (v5)
    {
      v17 = [v15 startDate];
      [v17 timeIntervalSinceReferenceDate];
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsPercentilesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
    v21[3] = &unk_2786293D8;
    v24 = a1;
    v5 = v15;
    v26 = 1;
    v22 = v5;
    v25 = a1;
    v23 = WeakRetained;
    v14 = (*(*a1 + 14))(a1, v21, a3);
    v18 = _Block_copy(v16);
    v19 = a1[12];
    a1[12] = v18;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to invalidate interval: no data source available."];
    v14 = 0;
  }

  return v14;
}

void sub_228F85598(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40FC36F0F4);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsPercentilesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(a1 + 32))
  {
    goto LABEL_11;
  }

  v3 = [v10 endDate];
  v4 = [*(a1 + 32) startDate];
  v5 = [v3 hk_isBeforeOrEqualToDate:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v10 startDate];
    v7 = [*(a1 + 32) endDate];
    v8 = [v6 hk_isAfterOrEqualToDate:v7];

    if ((v8 & 1) == 0)
    {
LABEL_11:
      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))(v9, v10);
      }
    }
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsPercentilesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((v4 + 8));
  v13 = *(a1 + 32);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsPercentilesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsPercentilesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
  v29[3] = &__block_descriptor_40_e8_v16__0d8l;
  v29[4] = v31;
  v14 = [v11 collectionCalculator:WeakRetained queryForInterval:v13 error:a2 sampleHandler:v30 mergeHandler:v29];

  if (v14)
  {
    v15 = *(a1 + 56);
    if (v15 != v4)
    {
      v16 = [*(a1 + 32) endDate];
      [v16 timeIntervalSinceReferenceDate];
      if (*(v15 + 40))
      {
        v18 = v17;
        while (*(v15 + 120) < v18)
        {
          v19 = [*(v15 + 40) dateIntervalAtIndex:*(v15 + 112) + 1];
          HDStatisticsBucket<HDStatisticsPercentiles>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsPercentiles>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_statisticsFromFinishedBucket(v15, v15 + 120);
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsPercentiles>::advanceBucket((v15 + 112), v23, v25);

          if (v20)
          {
            v26 = _Block_copy(*(v15 + 96));
            v27 = v26;
            if (v26)
            {
              (*(v26 + 2))(v26, v20);
            }
          }

          if (*(v15 + 556) == 1)
          {
            *(v15 + 556) = 0;
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsPercentilesE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  if (*(a1 + 32) <= a6)
  {
    v9 = 1;
  }

  else
  {
    a2 = 0;
    v9 = 0;
    a7 = 0.0;
    a5 = 0.0;
    a6 = 0.0;
  }

  v18 = v7;
  v19 = v8;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a2;
  v16 = v9;
  v17 = 0;
  if (*(a1 + 56))
  {
    if (v9)
    {
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  if (v9)
  {
    v11 = *(a1 + 40);
    if (a6 < v11)
    {
      if (a7 <= v11)
      {
        v11 = a7;
      }

      v13 = a6;
      v14 = v11;
      v16 = v9;
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 552) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsPercentiles>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsPercentilesE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsPercentilesE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsPercentilesE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsPercentilesE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v10 = *(a1 + 32);
  *v14 = a5;
  *&v14[1] = a6;
  *&v14[2] = a7;
  v14[3] = a2;
  v15 = 1;
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  [v11 timeIntervalSinceReferenceDate];
  v16 = v12 <= a7;

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF0968;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 1;
  *(a1 + 618) = 0;
  *(a1 + 620) = 0;
  *(a1 + 624) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF0968;
  v2 = *(a1 + 648);
  if (v2)
  {
    *(a1 + 656) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 584);
  if (v3)
  {
    *(a1 + 592) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 616) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 624) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 79, a2);
  v7 = a2;
  v4 = a1[79];
  v5 = a1[76];
  a1[76] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[76]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = (a1 + 72);
  if (v6 != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v6, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (*(a1 + 40))
  {
    return 1;
  }

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 248) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (v7)
  {
    return 1;
  }

  v9 = *(*a1 + 128);

  return v9(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 616) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_mergeThroughTime(v3, v3[1]);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v6 startDate];
  [v8 timeIntervalSinceReferenceDate];
  if (v9 > *(a2 + 16))
  {
    v14 = 1;
LABEL_8:

    goto LABEL_13;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 618) == 1)
    {
      if (*(a1 + 617))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v15 = *(a2 + 16);
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 619) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 648, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 618) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 618) = 1;
  v61 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v60 = v6;
  if (*(a1 + 617))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 640);
  if (!v9)
  {
    v8 = 0;
    v62 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 40))
  {
LABEL_5:
    v62 = 0;
    v8 = 1;
    goto LABEL_28;
  }

  [v9 sortUsingComparator:&__block_literal_global_1043];
  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = *(a1 + 640);
  v11 = [v10 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (!v11)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v12 = 0;
  v13 = *v64;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v64 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v63 + 1) + 8 * i);
      v16 = v15;
      if (v12)
      {
        v17 = [v15 startDate];
        v18 = [v12 endDate];
        v19 = [v17 hk_isBeforeOrEqualToDate:v18];

        if (v19)
        {
          v20 = [v16 endDate];
          v21 = [v12 endDate];
          v22 = [v20 hk_isAfterDate:v21];

          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = objc_alloc(MEMORY[0x277CCA970]);
          v24 = [v12 startDate];
          v25 = [v16 endDate];
          v26 = [v23 initWithStartDate:v24 endDate:v25];
        }

        else
        {
          [v62 addObject:v12];
          v26 = v16;
        }

        v12 = v26;
      }

      else
      {
        v12 = v15;
      }

LABEL_21:
    }

    v11 = [v10 countByEnumeratingWithState:&v63 objects:v67 count:16];
  }

  while (v11);

  if (v12)
  {
    [v62 addObject:v12];
  }

LABEL_27:

  v8 = 0;
LABEL_28:
  v27 = *(a1 + 640);
  *(a1 + 640) = 0;

  *(a1 + 617) = 0;
  if (v8)
  {
    v28 = *(a1 + 648);
    *(a1 + 664) = 0;
    *(a1 + 656) = 0;
    *(a1 + 648) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v62 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 648);
      v39 = *(a1 + 656);
      if (v38 != v39)
      {
        while (*(v38 + 8) >= v37)
        {
          v38 += 40;
          if (v38 == v39)
          {
            goto LABEL_44;
          }
        }

        if (v38 != v39)
        {
          v40 = (v38 + 40);
          if ((v38 + 40) != v39)
          {
            do
            {
              if (*(v40 + 1) >= v37)
              {
                v41 = *v40;
                v42 = v40[1];
                *(v38 + 32) = *(v40 + 16);
                *v38 = v41;
                *(v38 + 16) = v42;
                v38 += 40;
              }

              v40 = (v40 + 40);
            }

            while (v40 != v39);
            v39 = *(a1 + 656);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 656) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 648);
  v29 = *(a1 + 656);
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 656) = 0;
  if ([v62 count])
  {
LABEL_46:
    v44 = v62;
    if (v44)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v46)
      {
        v47 = *v64;
        while (2)
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v64 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v63 + 1) + 8 * j);
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v49, v61);

            if (!v50)
            {

              goto LABEL_68;
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v63 objects:v67 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_58;
    }

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, 0, v61))
    {
      goto LABEL_58;
    }

LABEL_68:
    v54 = 0;
  }

  else
  {
LABEL_58:
    v52 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    v54 = 1;
    std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(v28, v29, v53, 1, v43);
    if (v29 != v28)
    {
      v55 = v28;
      v51 = v61;
      do
      {
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, v55, 1, v51);
        v54 = v56;
        v55 += 40;
        if (v55 == v29)
        {
          v57 = 0;
        }

        else
        {
          v57 = v56;
        }

        v51 = v61;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40) && *(a1 + 592) != *(a1 + 584))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }

  *(a1 + 618) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 620) == 1)
    {
      *(a1 + 620) = 0;
      v6 = v60;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
      v7 = 1;
      goto LABEL_80;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v6 = v60;
LABEL_80:
  *(a1 + 618) = 0;
LABEL_81:

  v58 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228F86AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 618) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (!v6)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    if (*(a1 + 618))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 618) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 640);
    *(a1 + 640) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 617) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 617) & 1) == 0)
  {
    v8 = *(a1 + 640);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 640);
      *(a1 + 640) = v9;

      v8 = *(a1 + 640);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 616) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 616) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 616) forKey:@"needs_config"];
  v13 = v3;
  v33 = &unk_283BF1A08;
  v34 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v39) = 1;
  v35 = v4;
  v36 = 0;
  statistics::StatisticsEngine::makeCurrentBucket(&v33);
  v14 = &unk_283BE6258;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v32 = 511;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v30 = *(a1 + 144);
  v31 = *(a1 + 145);
  v29 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v15 = v5;
  v16 = v7;
  v7.i64[0] = *(a1 + 176);
  v20 = v6;
  v21 = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v40 = &unk_283BEB0A8;
    v45 = 127;
    v42 = vextq_s8(*v8, *v8, 8uLL);
    v41 = v8[1];
    v44 = 0;
    HIBYTE(v43) = v8[2].i8[9];
    LOBYTE(v43) = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>();
  }

  statistics::StatisticsBucket::makeStatistics(&v14);
  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::archive(&v40, (a1 + 240));
  statistics::Statistics::operator=(*(&v23 + 1), &v40);
  statistics::Statistics::~Statistics(&v40);
  v9 = *(a1 + 376);
  if (v9 != a1 + 384)
  {
    HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::archive(&v40, (v9 + 40));
    v10 = *(v9 + 32);
    v47 |= 0x200u;
    v46 = v10;
    PB::PtrVector<statistics::Statistics>::emplace_back<statistics::Statistics&>();
  }

  v11 = *(a1 + 184);
  if (v11 != *(a1 + 192))
  {
    v40 = &unk_283BF1F08;
    v42.i32[0] = 3;
    v41 = vextq_s8(*v11, *v11, 8uLL);
    PB::PtrVector<statistics::Interval>::emplace_back<statistics::Interval&>();
  }

  statistics::StatisticsBucket::operator=(v34, &v14);
  statistics::StatisticsBucket::~StatisticsBucket(&v14);
  v12 = *(a1 + 584);
  if (v12 != *(a1 + 592))
  {
    v40 = &unk_283BEB0A8;
    v45 = 127;
    v42 = vextq_s8(*v12, *v12, 8uLL);
    v41 = v12[1];
    v43 = 0;
    v44 = 0;
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample>();
  }

  PB::Writer::Writer(&v40);
  statistics::StatisticsEngine::writeTo(&v33, &v40);
  [v13 encodeBytes:v41.i64[0] length:&v40[-v41.i64[0]] forKey:@"hdsce_archived_representation"];
  PB::Writer::~Writer(&v40);
  statistics::StatisticsEngine::~StatisticsEngine(&v33);
}

void sub_228F872FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v30 = a2;
  *(a1 + 616) = [v30 decodeBoolForKey:@"needs_config"];
  v3 = v30;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v34, 0, -1.79769313e308, 1.79769313e308);
  v35 = 0u;
  v36 = 0u;
  v74 = 0;
  PB::Reader::Reader(v73, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v74]);
  v66 = &unk_283BF1A08;
  v67 = 0;
  v71 = 0;
  v69 = 0;
  v70 = 0;
  v72 = 0;
  statistics::StatisticsEngine::readFrom(&v66, v73);
  v33 = v68;
  if (v67)
  {
    v40 = 0;
    v43 = 0uLL;
    v44 = 0;
    memset(v46, 0, sizeof(v46));
    v45 = 0;
    v48 = 0u;
    memset(v49, 0, 26);
    memset(&v49[2], 0, 32);
    memset(v50, 0, 42);
    v51[1] = 0;
    v47 = 0;
    v51[0] = 0;
    v50[6] = v51;
    v52 = 0u;
    v53 = 0u;
    v54 = 1065353216;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
    v59 = 1065353216;
    v60 = 0u;
    v61 = 0u;
    v62 = 1065353216;
    v63 = 0u;
    v64 = 0u;
    v65 = 1065353216;
    v37 = vextq_s8(*(v67 + 8), *(v67 + 8), 8uLL);
    v4 = *(v67 + 72);
    v38 = *(v67 + 64);
    LOWORD(v39) = *(v67 + 185);
    v41 = vextq_s8(*(v67 + 24), *(v67 + 24), 8uLL);
    v42 = v4;
    v5 = *(v67 + 80);
    v6 = *(v67 + 88);
    v31 = v3;
    for (i = v67; v5 != v6; ++v5)
    {
      v7 = *v5;
      WORD4(v76) = 1;
      LOBYTE(v77) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      *v75 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v75[16] = v8;
      *&v76 = v9;
      BYTE1(v77) = *(v7 + 41);
      BYTE2(v77) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v46, v75);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::unarchive(v75, v10);
      v47 = *v75;
      v48 = *&v75[8];
      v49[0] = v76;
      v49[1] = v77;
      *&v49[2] = v78;
      if (*(&v49[2] + 1))
      {
        *&v49[3] = *(&v49[2] + 1);
        operator delete(*(&v49[2] + 1));
      }

      *(&v49[2] + 8) = v79;
      v50[0] = v81;
      *&v50[1] = v82;
      *(&v49[3] + 1) = v80;
      v80 = 0;
      v79 = 0uLL;
      *&v50[3] = v83;
      LOWORD(v50[5]) = v84;
    }

    v12 = i[17];
    for (j = i[18]; v12 != j; ++v12)
    {
      v13 = *v12;
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::unarchive(v75, *v12);
      v14 = *(v13 + 144);
      v15 = v51[0];
      if (!v51[0])
      {
LABEL_15:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v15;
          v17 = v15[4];
          if (v17 <= v14)
          {
            break;
          }

          v15 = *v16;
          if (!*v16)
          {
            goto LABEL_15;
          }
        }

        if (v17 >= v14)
        {
          break;
        }

        v15 = v16[1];
        if (!v15)
        {
          goto LABEL_15;
        }
      }

      v18 = v16[13];
      *(v16 + 10) = *v75;
      *(v16 + 4) = v76;
      v19 = v77;
      *(v16 + 3) = *&v75[8];
      *(v16 + 5) = v19;
      v16[12] = v78;
      if (v18)
      {
        v16[14] = v18;
        operator delete(v18);
        v16[13] = 0;
        v16[14] = 0;
        v16[15] = 0;
      }

      *(v16 + 13) = v79;
      v16[15] = v80;
      v16[16] = v81;
      v20 = v83;
      *(v16 + 17) = v82;
      v80 = 0;
      v79 = 0uLL;
      *(v16 + 19) = v20;
      *(v16 + 84) = v84;
    }

    v3 = v31;
    v21 = i[5];
    for (k = i[6]; v21 != k; v21 += 8)
    {
      v24 = *(*v21 + 8);
      v23 = *(*v21 + 16);
      if (v24 >= v23)
      {
        v25 = *(*v21 + 16);
      }

      else
      {
        v25 = *(*v21 + 8);
      }

      if (v23 < v24)
      {
        v23 = *(*v21 + 8);
      }

      HKIntervalMask<double>::_insertInterval(&v43, v25, v23);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::operator=(v34, &v37);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v37);
  }

  v26 = v69;
  for (m = v70; v26 != m; v26 += 8)
  {
    v28 = *(*v26 + 8);
    v29 = *(*v26 + 16);
    v37 = vextq_s8(*(*v26 + 24), *(*v26 + 24), 8uLL);
    v38 = v28;
    v39 = v29;
    LOWORD(v40) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&v35, v37.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v66);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::operator=((a1 + 112), &v33);
  if (v35)
  {
    *(&v35 + 1) = v35;
    operator delete(v35);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v34);
}

void sub_228F878B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a2);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(&STACK[0x3B0]);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x388]);
  v9 = STACK[0x370];
  if (STACK[0x370])
  {
    STACK[0x378] = v9;
    operator delete(v9);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a3);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(STACK[0x338]);
  v10 = STACK[0x2E8];
  if (STACK[0x2E8])
  {
    STACK[0x2F0] = v10;
    operator delete(v10);
  }

  v11 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v11;
    operator delete(v11);
  }

  objc_destroyWeak(&STACK[0x288]);
  v12 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v12;
    operator delete(v12);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x400]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 257;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 234) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 256) = a1 + 264;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = 1065353216;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 1065353216;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    *(a1 + 480) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 424);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 384);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 344);
  v2 = *(a1 + 320);
  if (v2)
  {
    *(a1 + 328) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 280);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 264));
  v3 = *(a1 + 184);
  if (v3)
  {
    *(a1 + 192) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  objc_destroyWeak((a1 + 88));
  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_configureForStartTime(uint64_t a1)
{
  v29 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v29];

    v5 = [v4 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
LABEL_5:
    v13 = v9;

    goto LABEL_6;
  }

  v10 = *(a1 + 64);
  v4 = v10;
  if (v10)
  {
    v11 = [v10 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v7 = v12;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

  v7 = -1.79769313e308;
  v13 = 1.79769313e308;
LABEL_6:

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v24 = 1;
  }

  v23 = *(a1 + 56);
  v25 = *(a1 + 24) & 1;
  if (v28 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v28, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  objc_storeStrong(&v27, *(a1 + 632));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v29;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v17);
  *(a1 + 616) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v22);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 59), (a2 + 472));
  v4 = *(a2 + 496);
  *(a2 + 496) = 0;
  v5 = a1[62];
  a1[62] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 40);
  *(a1 + 64) = 0;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 64, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  objc_copyWeak((a1 + 88), (a2 + 88));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v9 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v9);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 120) = *(a2 + 120);
  v10 = *(a2 + 128);
  v11 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v11;
  *(a1 + 128) = v10;
  v12 = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 176) = v12;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 184, *(a2 + 184), *(a2 + 192), (*(a2 + 192) - *(a2 + 184)) >> 4);
  *(a1 + 208) = *(a2 + 208);
  v13 = *(a2 + 216);
  v14 = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v13;
  v15 = (a1 + 264);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 248) = v14;
  *(a1 + 256) = a1 + 264;
  v16 = *(a2 + 256);
  if (v16 != (a2 + 264))
  {
    v17 = 0;
    v18 = (a1 + 264);
    while (1)
    {
      v19 = (a1 + 264);
      if (v18 == v15)
      {
        goto LABEL_12;
      }

      v20 = v17;
      v21 = (a1 + 264);
      if (v17)
      {
        do
        {
          v19 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        do
        {
          v19 = v21[2];
          v22 = *v19 == v21;
          v21 = v19;
        }

        while (v22);
      }

      v23 = v16[4];
      if (v19[4] < v23)
      {
LABEL_12:
        if (v17)
        {
          v24 = v19 + 1;
        }

        else
        {
          v24 = (a1 + 264);
        }

        if (!*v24)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v25 = v17;
            v26 = v17[4];
            if (v26 <= v23)
            {
              break;
            }

            v17 = *v25;
            if (!*v25)
            {
              goto LABEL_23;
            }
          }

          if (v26 >= v23)
          {
            break;
          }

          v17 = v25[1];
          if (!v17)
          {
            goto LABEL_23;
          }
        }
      }

      v27 = v16[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v16[2];
          v22 = *v28 == v16;
          v16 = v28;
        }

        while (!v22);
      }

      if (v28 == (a2 + 264))
      {
        break;
      }

      v17 = *v15;
      v18 = *(a1 + 256);
      v16 = v28;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 280, a2 + 280);
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 320, *(a2 + 320), *(a2 + 328), (*(a2 + 328) - *(a2 + 320)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 344, a2 + 344);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 384, a2 + 384);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 424, a2 + 424);
  return a1;
}

void sub_228F88208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 384);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 344);
  v14 = *(v10 + 320);
  if (v14)
  {
    *(v10 + 328) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 280);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(*v12);
  v15 = *v11;
  if (*v11)
  {
    *(v10 + 192) = v15;
    operator delete(v15);
  }

  v16 = *a9;
  if (*a9)
  {
    *(v10 + 104) = v16;
    operator delete(v16);
  }

  objc_destroyWeak((v10 + 88));
  v17 = *a10;
  if (*a10)
  {
    *(v10 + 72) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;

  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 64, (a2 + 64));
  WeakRetained = objc_loadWeakRetained((a2 + 88));
  objc_storeWeak((a1 + 88), WeakRetained);

  v9 = *(a1 + 96);
  if (v9)
  {
    *(a1 + 104) = v9;
    operator delete(v9);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = *(a2 + 120);
  v10 = *(a2 + 128);
  v11 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v11;
  *(a1 + 128) = v10;
  *(a1 + 176) = *(a2 + 176);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 184, (a2 + 184));
  *(a1 + 208) = *(a2 + 208);
  v12 = *(a2 + 216);
  v13 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v13;
  *(a1 + 216) = v12;
  v14 = a1 + 264;
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 264));
  *(a1 + 256) = *(a2 + 256);
  v15 = *(a2 + 264);
  v16 = *(a2 + 272);
  *(a1 + 264) = v15;
  *(a1 + 272) = v16;
  if (v16)
  {
    *(v15 + 16) = v14;
    *(a2 + 256) = a2 + 264;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
  }

  else
  {
    *(a1 + 256) = v14;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 280, (a2 + 280));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 320, (a2 + 320));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 344, (a2 + 344));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 384, (a2 + 384));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 424, (a2 + 424));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v7 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  if (*(a2 + 8) == 1.79769313e308)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 48)];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 8)];
  }

  v9 = v8;
  v10 = *(a1 + 16);
  v11 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = *(a1 + 16);
    if ([v12 shouldUseUnderlyingTypeForStatistics])
    {
      v13 = [v12 underlyingSampleType];

      v10 = v13;
    }
  }

  v14 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v10 startDate:v7 endDate:v9];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = *(a2 + 320);
      v18 = *(a2 + 328);
      while (v17 != v18)
      {
        v19 = *v17;
        v20 = objc_loadWeakRetained((a1 + 48));
        v21 = [v20 sourceForSourceID:v19];

        if (v21)
        {
          if (([v16 containsObject:v21] & 1) == 0)
          {
            [v16 addObject:v21];
          }
        }

        ++v17;
      }

      v22 = [v16 copy];
      [v14 _setSources:v22];
    }
  }

  v23[0] = &unk_283BF0B58;
  v23[3] = v23;
  v14;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](v24, v23);
  v25 = 0;
  operator new();
}

void sub_228F88CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (v37)
  {
  }

  if (v36)
  {
  }

  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 304);
  v2 = *(a1 + 320);
  if (v1 != (*(a1 + 328) - v2) >> 3)
  {
    *(a1 + 328) = v2;
    std::vector<long long>::reserve((a1 + 320), v1);
    for (i = *(a1 + 296); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 320, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 320];
    }
  }
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v71 = (a1 + 264);
    while (1)
    {
      v6 = *(a1 + 104);
      __p = *(a1 + 96);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - __p) >> 4);
      if (v7 == 1)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_90;
      }

      v8 = a2;
      v9 = a2;
      v10 = v5;
      v11 = *(a1 + 96);
      if (__p != v6)
      {
        do
        {
          v12 = *(v11 + 8);
          v13 = *(v11 + 16);
          if (v12 > v10 && v12 < v9)
          {
            v9 = *(v11 + 8);
          }

          if (v13 > v5)
          {
            v15 = *(v11 + 16);
          }

          else
          {
            v15 = v8;
          }

          if (v13 < v8)
          {
            v10 = v5;
            v8 = v15;
          }

          v11 += 48;
        }

        while (v11 != v6);
      }

      if (v8 >= v9)
      {
        v16 = v9;
      }

      else
      {
        v16 = v8;
      }

      v17 = *(a1 + 16);
      if (v17 > 0.0)
      {
        v18 = v17 * floor(v16 / v17);
        v19 = v17 * floor((v17 + v5) / v17);
        if (v18 >= v19)
        {
          v16 = v18;
        }

        else
        {
          v16 = v19;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (__p != v6)
      {
        if (v7 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v7);
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v79.var0 = a1;
        v21 = 126 - 2 * __clz(v7);
        if (__p == v6)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,false>(__p, v6, &v79, v22, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v72 = 0;
      }

      if (__p != v6)
      {
        v73 = 0;
        v36 = 0;
        for (i = __p; i != v6; i += 6)
        {
          v38 = *(i + 1);
          *&v78.var0 = *i;
          *&v78.var2 = v38;
          *&v78.var4 = i[4];
          v39 = *&v38;
          v40 = v16 - v78.var1;
          v41 = *&v38 - v78.var1;
          if (v41 - (v16 - v78.var1) >= 0.01)
          {
            if (v40 >= 0.01)
            {
              var0 = v78.var0;
              var4 = v78.var4;
              v46 = v40 / v41 * v78.var0;
              v78.var0 = v46;
              v78.var2 = v16;
              if (v78.var4)
              {
                var3 = v78.var3;
                var5 = v78.var5;
                v43 = var0 - v46;
                v44 = v16;
LABEL_51:
                HDRawQuantitySample::applyMask(&v78, (a1 + 64));
                v47 = *(i + 42);
                v48 = *(i + 41);
                v75 = *(i + 40);
                if (!v78.var4)
                {
                  goto LABEL_69;
                }

                if (v36)
                {
                  v49 = v78.var3;
                  if (v73 == v78.var3 || *(a1 + 24) == 1)
                  {
                    HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v78, v47 ^ 1);
                    LOBYTE(v47) = 1;
                  }
                }

                else
                {
                  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v78, v47 ^ 1);
                  LOBYTE(v47) = 1;
                  v49 = v78.var3;
                  v73 = v78.var3;
                }

                if (*(a1 + 25) != 1)
                {
                  goto LABEL_68;
                }

                v50 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, v49);
                if (!v50)
                {
                  goto LABEL_67;
                }

                v51 = [v72 objectForKeyedSubscript:v50];
                v52 = v51;
                if (v51)
                {
                  if ([v51 longLongValue] != v49 && *(a1 + 24) != 1)
                  {
LABEL_66:

LABEL_67:
LABEL_68:
                    v36 = 1;
LABEL_69:
                    if (var4)
                    {
                      v79.var0 = v43;
                      v79.var1 = v44;
                      v79.var2 = v39;
                      v79.var3 = var3;
                      v79.var4 = var4;
                      v79.var5 = var5;
                      LOBYTE(v80) = v75;
                      BYTE1(v80) = v48;
                      BYTE2(v80) = v47;
                      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v79);
                    }

                    continue;
                  }
                }

                else
                {
                  v53 = [MEMORY[0x277CCABB0] numberWithLongLong:v49];
                  [v72 setObject:v53 forKeyedSubscript:v50];
                }

                v54 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, v49);
                v55 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v54);
                HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::addSample(v55, &v78, v48 ^ 1);
                LOBYTE(v48) = 1;
                goto LABEL_66;
              }
            }

            else
            {
              v78.var4 = 0;
            }
          }

          else if (v78.var4)
          {
            var5 = 0;
            var4 = 0;
            var3 = 0;
            v43 = 0.0;
            v39 = 0.0;
            v44 = 0.0;
            goto LABEL_51;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 208) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 184), v16) + *(a1 + 208);
      v56 = *(a1 + 256);
      if (v56 != v71)
      {
        do
        {
          *(v56 + 16) = HKIntervalMask<double>::removeIntervalsBefore(v56 + 13, v16) + *(v56 + 16);
          v57 = v56[1];
          if (v57)
          {
            do
            {
              v58 = v57;
              v57 = *v57;
            }

            while (v57);
          }

          else
          {
            do
            {
              v58 = v56[2];
              v59 = *v58 == v56;
              v56 = v58;
            }

            while (!v59);
          }

          v56 = v58;
        }

        while (v58 != v71);
      }

      *(a1 + 56) = v16;

      if (__p)
      {
        operator delete(__p);
      }

LABEL_91:
      v68 = *(a1 + 56);
      if (v68 == v5)
      {
        v69 = [MEMORY[0x277CCA890] currentHandler];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence, HDStatisticsTimeInterval>>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence, HDStatisticsTimeInterval>>]"}];
        [v69 handleFailureInFunction:v70 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v68 = *(a1 + 56);
      }

      v5 = v68;
      if (v68 >= a2)
      {
        return;
      }
    }

    v24 = *__p;
    v23 = __p[1];
    v25 = __p[2];
    v26 = *(__p + 3);
    v27 = *(__p + 32);
    v28 = *(__p + 33);
    v29 = a2 - v23;
    if (a2 - v23 >= 0.01)
    {
      if (v25 - v23 - v29 < 0.01)
      {
        v34 = 0;
        v35 = 0;
        v32 = 0.0;
        v31 = __p[2];
        v30 = *(__p + 32);
        v33 = 0.0;
        v25 = 0.0;
        v27 = 0;
LABEL_83:
        v61 = *(__p + 42);
        v62 = *(__p + 41);
        v63 = *(__p + 40);
        v79.var0 = v24;
        v79.var1 = v23;
        v79.var2 = v31;
        v79.var3 = v26;
        v79.var4 = v30;
        v79.var5 = v28;
        *(&v79.var5 + 1) = *(__p + 34);
        *(&v79.var5 + 5) = *(__p + 19);
        *&v80 = v32;
        *(&v80 + 1) = v33;
        *&v81 = v25;
        *(&v81 + 1) = v34;
        LOBYTE(v82) = v27;
        HIBYTE(v82) = v35;
        HDRawQuantitySample::applyMask(&v79, (a1 + 64));
        if (v79.var4)
        {
          HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v79, v61 ^ 1);
          if (*(a1 + 25) == 1)
          {
            v64 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, v79.var3);
            v65 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v64);
            HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::addSample(v65, &v79, v62 ^ 1);
          }

          v63 = 1;
          LOBYTE(v62) = 1;
          LOBYTE(v61) = 1;
        }

        if (v82 == 1)
        {
          *&v78.var4 = v82;
          v66 = v81;
          v67 = *(a1 + 96);
          *v67 = v80;
          *(v67 + 16) = v66;
          *(v67 + 32) = *&v78.var4;
          *(v67 + 40) = v63;
          *(v67 + 41) = v62;
          *(v67 + 42) = v61;
        }

        else
        {
          *(a1 + 104) = *(a1 + 96);
        }

LABEL_90:
        *(a1 + 56) = a2;
        goto LABEL_91;
      }

      v60 = v24 * (v29 / (v25 - v23));
      v31 = a2;
      v30 = *(__p + 32);
      v32 = v24 - v60;
      v24 = v60;
      v33 = a2;
    }

    else
    {
      v30 = 0;
      v31 = __p[2];
      v32 = *__p;
      v33 = __p[1];
    }

    v34 = *(__p + 3);
    v35 = *(__p + 33);
    goto LABEL_83;
  }
}

__n128 *HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::addSample(__n128 *result, const HDRawQuantitySample *a2, int a3)
{
  v4 = a2;
  v5 = result;
  if (a2->var0 == 1.79769313e308)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (a2->var0 != -1.79769313e308);
  }

  v7 = result->n128_u32[0];
  if (!v6)
  {
    if (v7 || result->n128_u64[1])
    {
      return result;
    }

    if (a3)
    {
      result->n128_u64[1] = 1;
    }

    v9 = (result + 56);
    goto LABEL_20;
  }

  if (v6 == 1)
  {
    if (v7)
    {
      return result;
    }

    v8 = 1;
LABEL_14:
    *(result + 8) = 0u;
    v11 = &result->n128_u64[1];
    result[3].n128_u64[1] = 0;
    result->n128_u32[0] = v8;
    v13 = result + 4;
    v12 = result[4].n128_u64[0];
    *(&v5[1] + 8) = 0u;
    *(&v5[2] + 8) = 0u;
    if (v12)
    {
      v5[4].n128_u64[1] = v12;
      operator delete(v12);
      v14 = v5[3].n128_u8[0];
      *v13 = 0u;
      v5[5] = 0u;
      if (v14 && v5[1].n128_f64[1] > v5[6].n128_f64[1])
      {
        if (!a3)
        {
LABEL_19:
          v9 = (v5 + 56);
LABEL_20:
          a2 = v4;
          v10 = a3;
          goto LABEL_21;
        }

LABEL_18:
        ++*v11;
        goto LABEL_19;
      }
    }

    else
    {
      *v13 = 0uLL;
      v5[5] = 0uLL;
    }

    v15 = v5[7];
    v5[1] = v5[6];
    v5[2] = v15;
    v5[3].n128_u16[0] = v5[8].n128_u16[0];
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v7 != 2)
  {
    v8 = 2;
    goto LABEL_14;
  }

  ++result->n128_u64[1];
  v9 = (result + 56);
  v10 = 1;
LABEL_21:

  return HDStatisticsTimeInterval::addSample(v9, a2, v10);
}

void *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 264);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 264);
  v5 = (a1 + 264);
  do
  {
    if (v3[4] >= a2)
    {
      v5 = v3;
    }

    v3 = v3[v3[4] < a2];
  }

  while (v3);
  if (v5 == v4 || v5[4] > a2)
  {
LABEL_8:
    v8 = &v7;
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 256, a2);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 256, v7);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 344), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 384), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 384), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 424), a2);
    if (v5)
    {
      WeakRetained = v5[3];
    }

    else
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      WeakRetained = [v6 bundleIdentifierForSourceID:{a2, v9[0]}];

      if (WeakRetained)
      {
        v9[1] = v9;
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 424), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void *std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

__n128 HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::overallStatistics(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  *(a1 + 8) = *(a2 + 128);
  *a1 = *(a2 + 120);
  *(a1 + 24) = v4;
  *(a1 + 40) = *(a2 + 160);
  v6 = *(a2 + 176);
  v5 = *(a2 + 184);
  *(a1 + 56) = v6;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v7 = *(a2 + 192);
  *(a1 + 64) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 64, v5, v7, (v7 - v5) >> 4);
  *(a1 + 88) = *(a2 + 208);
  result = *(a2 + 216);
  v9 = *(a2 + 232);
  *(a1 + 96) = result;
  *(a1 + 112) = v9;
  *(a1 + 128) = *(a2 + 248);
  return result;
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 256);
  v27 = (a2 + 264);
  if (v2 == (a2 + 264))
  {
    return;
  }

  v26 = a1 + 16;
  do
  {
    v4 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a2, v2[4]);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_25;
    }

    v6 = [v4 hash];
    v7 = v6;
    v8 = *(a1 + 8);
    if (!*&v8)
    {
      goto LABEL_21;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v29 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v10 = v6;
      if (v6 >= *&v8)
      {
        v10 = v6 % *&v8;
      }
    }

    else
    {
      v10 = (*&v8 - 1) & v6;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_21:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v29 > 1)
      {
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_21;
      }

LABEL_20:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v14 = v12[2];
    v15 = v5;
    v16 = v5;
    v17 = v16;
    if (v14 != v16)
    {
      v18 = [v14 isEqualToString:v16];

      v5 = v15;
      if (v18)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v5 = v15;
LABEL_22:
    *(v12 + 6) = *(v2 + 10);
    v19 = *(v2 + 3);
    v20 = *(v2 + 4);
    *(v12 + 4) = *(v2 + 5);
    *(v12 + 3) = v20;
    *(v12 + 2) = v19;
    v12[10] = v2[12];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 11, v2[13], v2[14], (v2[14] - v2[13]) >> 4);
    }

    v12[14] = v2[16];
    v21 = *(v2 + 17);
    v22 = *(v2 + 19);
    *(v12 + 76) = *(v2 + 84);
    *(v12 + 17) = v22;
    *(v12 + 15) = v21;

LABEL_25:
    v23 = v2[1];
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
        v24 = v2[2];
        v25 = *v24 == v2;
        v2 = v24;
      }

      while (!v25);
    }

    v2 = v24;
  }

  while (v24 != v27);
}

void sub_228F8A26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](va);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::~__hash_table(v6);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0A38;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0A38;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 48;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsPresence const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0AC8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsPresence const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0AC8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsPresence const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsPresence const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsPresence const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsPresence const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 616) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  if (v9 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v9 end:*(a2 + 16)];
    v11 = (*(*a1 + 128))(a1, v10, a4);
  }

  return v11;
}

double _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_earliestStartTimeWithoutInvalidation(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ((*(a1 + 616) & 1) == 0)
    {
      v1 = *(a1 + 176);
      result = *(a1 + 120);
      if (v1 <= result)
      {
        v1 = -1.79769313e308;
      }

      else if (*(a1 + 144))
      {
        v1 = -1.79769313e308;
      }

      if (v1 >= result)
      {
        return v1;
      }

      return result;
    }

    return -1.79769313e308;
  }

  result = *(a1 + 176);
  if (result <= *(a1 + 120))
  {
    return -1.79769313e308;
  }

  if (*(a1 + 144))
  {
    return -1.79769313e308;
  }

  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 592) != *(v2 + 584))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, v2 + 120);
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, v2 + 120);
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = a1 + 8;
  v12 = *(a1 + 8);
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v13 = v12 - v6;
  v14 = v5;
  v15 = v6;
  if (v12 - v6 >= 0.01)
  {
    if (v7 - v6 - v13 < 0.01)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v14 = 0.0;
      v19 = 0.0;
      v15 = 0.0;
      goto LABEL_6;
    }

    v14 = v5 - v5 * (v13 / (v7 - v6));
    v15 = v12;
  }

  *&v42 = v14;
  *(&v42 + 1) = v15;
  *&v43 = v7;
  *(&v43 + 1) = v8;
  v16 = v10;
  LOBYTE(v44) = v9;
  v17 = v9;
  v18 = v8;
  v19 = v7;
  HIBYTE(v44) = v10;
LABEL_6:
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v20 = *(a1 + 16);
  v21 = v20 - v15;
  v22 = v19 - v15;
  v23 = v19 - v15 - (v20 - v15);
  if (!*(a1 + 36))
  {
    if (v23 < 0.01)
    {
LABEL_11:
      v20 = v19;
      if ((v17 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_16;
    }

    if (v21 >= 0.01)
    {
      goto LABEL_15;
    }

LABEL_14:
    v35 = v42;
    v36 = v43;
    v37 = v44;
    goto LABEL_45;
  }

  if (v21 < 0.01)
  {
    goto LABEL_14;
  }

  if (v23 < 0.01)
  {
    goto LABEL_11;
  }

LABEL_15:
  *&v35 = v14 - v21 / v22 * v14;
  *(&v35 + 1) = v20;
  *&v36 = v19;
  *(&v36 + 1) = v18;
  LOBYTE(v37) = v17;
  HIBYTE(v37) = v16;
  *&v42 = v21 / v22 * v14;
  *&v43 = v20;
  if ((v17 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_16:
  v33 = v20;
  v34 = v15;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 288), v18);
  if (*(a1 + 112) == *(a1 + 104) && *(a1 + 136) <= 0)
  {
    v27.f64[1] = *(a1 + 16);
    v24 = v34;
    v27.f64[0] = v34;
    v28.f64[0] = *(a1 + 8);
    v28.f64[1] = v33;
    v29 = vcgtq_f64(v28, v27);
    v28.f64[0] = v34;
    *(a1 + 48) = vbslq_s8(v29, *(a1 + 8), v28);
  }

  else
  {
    v24 = v34;
    if (v34 < *(a1 + 48))
    {
      v25 = *(a1 + 8);
      if (v34 >= v25)
      {
        v25 = v34;
      }

      *(a1 + 48) = v25;
    }

    if (v33 > *(a1 + 56))
    {
      v26 = *(a1 + 16);
      if (v26 >= v33)
      {
        v26 = v33;
      }

      *(a1 + 56) = v26;
    }
  }

  if (*(a1 + 32) == 1)
  {
    v30 = *(a1 + 64);
    if (v24 < v30)
    {
      v30 = v24;
    }

    *(a1 + 64) = v30;
  }

  if (a3 && v24 < *(a1 + 16))
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_mergeThroughTime(v11, v24);
  }

  v38[0] = v42;
  v38[1] = v43;
  v39 = v44;
  v40 = 0;
  v41 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v38);
  if (!*(a1 + 256) || *(a1 + 232) <= v6)
  {
    *(a1 + 224) = v5;
    *(a1 + 232) = v6;
    *(a1 + 240) = v7;
    *(a1 + 248) = v8;
    *(a1 + 256) = v9;
    *(a1 + 257) = v10;
    if (!*(a1 + 176) || *(a1 + 152) <= v6)
    {
      *(a1 + 144) = v5;
      *(a1 + 152) = v6;
      *(a1 + 160) = v7;
      *(a1 + 168) = v8;
      *(a1 + 176) = v9;
      *(a1 + 177) = v10;
    }
  }

  if (*(a1 + 33) == 1)
  {
    v31 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(v11, v18);
    v32 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_statisticsForSource(v11, v31);
    if (!*(v32 + 128) || v32[13] <= v6)
    {
      v32[12] = v5;
      v32[13] = v6;
      v32[14] = v7;
      *(v32 + 15) = v8;
      *(v32 + 128) = v9;
      *(v32 + 129) = v10;
      if (!*(v32 + 48) || v32[3] <= v6)
      {
        v32[2] = v5;
        v32[3] = v6;
        v32[4] = v7;
        *(v32 + 5) = v8;
        *(v32 + 48) = v9;
        *(v32 + 49) = v10;
      }
    }
  }

LABEL_45:
  if (v37 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 472, &v35);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 618) == 1)
  {
    *(a1 + 620) = 1;
  }

  else
  {
    *(a1 + 620) = 0;
    v2 = _Block_copy(*(a1 + 96));
    if (v2)
    {
      v4 = v2;
      v3 = (*(*a1 + 96))(a1);
      if (v3)
      {
        v4[2](v4, v3);
      }

      v2 = v4;
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[59], a1[60], 0xCCCCCCCCCCCCCCCDLL * ((a1[60] - a1[59]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::addSample(a1, v8, 1);
      v8 += 40;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F8B318(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 496), *(a1 + 40));
  *(v8 - 4) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  v9 = 0uLL;
  memset(v19, 0, sizeof(v19));
  v10 = *(a1 + 192);
  *(a1 + 128) = 0;
  *(a1 + 136) = *&v19[4];
  *(a1 + 152) = *&v19[20];
  *(a1 + 168) = *&v19[36];
  *(a1 + 184) = 0;
  if (v10)
  {
    *(a1 + 200) = v10;
    operator delete(v10);
    v9 = 0uLL;
  }

  *(a1 + 256) = 0;
  *(a1 + 224) = v9;
  *(a1 + 240) = v9;
  *(a1 + 192) = v9;
  *(a1 + 208) = v9;
  if (*(a1 + 280))
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 272);
    *(a1 + 264) = a1 + 272;
    *(v12 + 16) = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    if (v11[1])
    {
      v13 = v11[1];
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = v13[2];
      if (v14)
      {
        v15 = *v14;
        if (*v14 == v13)
        {
          *v14 = 0;
          while (1)
          {
            v18 = v14[1];
            if (!v18)
            {
              break;
            }

            do
            {
              v14 = v18;
              v18 = *v18;
            }

            while (v18);
          }
        }

        else
        {
          for (v14[1] = 0; v15; v15 = v14[1])
          {
            do
            {
              v14 = v15;
              v15 = *v15;
            }

            while (v15);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(v13);
  }

  objc_storeStrong(v8, *(a1 + 496));
  *(a1 + 480) = *(a1 + 472);
  *a1 = a2;
  v17 = *MEMORY[0x277D85DE8];
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 620) == 1)
  {
    if (v3)
    {
      v6 = v3;
      v4 = _Block_copy(*(a1 + 96));
      v5 = v4;
      if (v4)
      {
        (*(v4 + 2))(v4, v6);
      }

      v3 = v6;
    }

    *(a1 + 620) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F8B5D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v5 endDate];
      v9 = [v7 startDate];
      if ([v8 hk_isAfterDate:v9])
      {
        v10 = [v5 startDate];
        v11 = [v7 endDate];
        v12 = [v10 hk_isBeforeOrEqualToDate:v11];
      }

      else
      {
        v12 = 0;
      }

      v13 = _Block_copy(a1[12]);
      if ((v12 & 1) == 0)
      {
        operator new();
      }
    }

    else
    {
      v13 = _Block_copy(a1[12]);
    }

    *(a1 + 616) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
    v27[3] = &unk_278629370;
    v15 = v5;
    v28 = v15;
    v16 = v13;
    v29 = v16;
    (*(*a1 + 9))(a1, v27);
    if (v5)
    {
      v17 = [v15 startDate];
      [v17 timeIntervalSinceReferenceDate];
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
    v21[3] = &unk_2786293D8;
    v24 = a1;
    v5 = v15;
    v26 = 1;
    v22 = v5;
    v25 = a1;
    v23 = WeakRetained;
    v14 = (*(*a1 + 14))(a1, v21, a3);
    v18 = _Block_copy(v16);
    v19 = a1[12];
    a1[12] = v18;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to invalidate interval: no data source available."];
    v14 = 0;
  }

  return v14;
}

void sub_228F8BA28(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C4064CA91B5);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(a1 + 32))
  {
    goto LABEL_11;
  }

  v3 = [v10 endDate];
  v4 = [*(a1 + 32) startDate];
  v5 = [v3 hk_isBeforeOrEqualToDate:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v10 startDate];
    v7 = [*(a1 + 32) endDate];
    v8 = [v6 hk_isAfterOrEqualToDate:v7];

    if ((v8 & 1) == 0)
    {
LABEL_11:
      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))(v9, v10);
      }
    }
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((v4 + 8));
  v13 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
  v19[3] = &__block_descriptor_40_e8_v16__0d8l;
  v19[4] = v21;
  v14 = [v11 collectionCalculator:WeakRetained queryForInterval:v13 error:a2 sampleHandler:v20 mergeHandler:v19];

  if (v14)
  {
    v15 = *(a1 + 56);
    if (v15 != v4)
    {
      v16 = [*(a1 + 32) endDate];
      [v16 timeIntervalSinceReferenceDate];
      if (*(v15 + 40) && *(v15 + 120) < v17)
      {
        [*(v15 + 40) dateIntervalAtIndex:*(v15 + 112) + 1];
        objc_claimAutoreleasedReturnValue();
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v9 = *(a1 + 32) - a6;
  if (v9 >= 0.01)
  {
    v11 = a7 - a6;
    if (v11 - v9 >= 0.01)
    {
      a5 = a5 - v9 / v11 * a5;
      v10 = 1;
      a6 = *(a1 + 32);
    }

    else
    {
      a2 = 0;
      v10 = 0;
      a5 = 0.0;
      a6 = 0.0;
      a7 = 0.0;
    }
  }

  else
  {
    v10 = 1;
  }

  v21 = v7;
  v22 = v8;
  *v16 = a5;
  *&v16[1] = a6;
  v17 = a7;
  v18 = a2;
  v19 = v10;
  v20 = 0;
  if ((*(a1 + 56) & 1) == 0)
  {
    v12 = *(a1 + 40);
    v13 = v12 - a6;
    if (v12 - a6 < 0.01)
    {
      return 1;
    }

    v14 = a7 - a6;
    if (v14 - v13 >= 0.01)
    {
      a5 = a5 * (v13 / v14);
    }

    else
    {
      v12 = a7;
    }

    *v16 = a5;
    v17 = v12;
    v19 = v10;
    if ((v10 & 1) == 0)
    {
      return 1;
    }

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 616) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v10 = *(a1 + 32);
  *v14 = a5;
  *&v14[1] = a6;
  *&v14[2] = a7;
  v14[3] = a2;
  v15 = 1;
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  [v11 timeIntervalSinceReferenceDate];
  v16 = v12 <= a7;

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::archive(uint64_t a1, int8x16_t *a2)
{
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0;
  v4 = (a1 + 112);
  *(a1 + 160) = 0;
  *(a1 + 204) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_283BE6208;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  statistics::Statistics::makePrimaryStatistics(a1);
  HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>::archive(v6, &a2->i64[1]);
  statistics::Statistics::operator=(*(a1 + 128), v6);
  statistics::Statistics::~Statistics(v6);
  v5 = a2->i32[0];
  *(a1 + 204) |= 0x100u;
  *(a1 + 136) = v5;
  statistics::Statistics::makeMostRecentDatum(a1);
  v6[0] = &unk_283BEB0A8;
  v10 = 127;
  v7 = vextq_s8(a2[6], a2[6], 8uLL);
  v6[1] = a2[7].i64[0];
  v6[2] = a2[7].i64[1];
  v8 = 0;
  v9 = 0;
  statistics::RawQuantitySample::operator=(*v4, v6);
  PB::Base::~Base(v6);
}

void HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>::archive(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_283BE6208;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 160) = 0;
  *(a1 + 204) = 0;
  *(a1 + 16) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  statistics::Statistics::makePrimaryStatistics(a1);
  HDStatisticsPresence::archive(a2, v5);
  statistics::Statistics::operator=(*(a1 + 128), v5);
  statistics::Statistics::~Statistics(v5);
  statistics::Statistics::makeAuxiliaryStatistics(a1);
  HDStatisticsTimeInterval::archive((a2 + 48), v5);
  statistics::Statistics::operator=(*v4, v5);
  statistics::Statistics::~Statistics(v5);
}

double HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::unarchive(uint64_t a1, void *a2)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  v5 = (a1 + 8);
  *(a1 + 34) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 114) = 0u;
  v6 = a2[16];
  if (v6)
  {
    HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>::unarchive(v11, *(v6 + 8), *(v6 + 128));
    v7 = v11[1];
    *v5 = v11[0];
    v5[1] = v7;
    v5[2] = v11[2];
    *(a1 + 56) = v12;
    result = v15;
    v8 = v14;
    *(a1 + 64) = v13;
    *(a1 + 80) = v8;
    *(a1 + 88) = result;
  }

  *a1 = a2[17];
  v9 = a2[14];
  if (v9)
  {
    result = *(v9 + 8);
    v10 = *(v9 + 16);
    *(a1 + 96) = vextq_s8(*(v9 + 24), *(v9 + 24), 8uLL);
    *(a1 + 112) = result;
    *(a1 + 120) = v10;
    *(a1 + 128) = 1;
  }

  return result;
}

double HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>::unarchive(uint64_t a1, HDStatisticsTimeInterval *this, uint64_t a3)
{
  v4 = 0uLL;
  *(a1 + 26) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  if (a3)
  {
    v5 = *(a3 + 112);
    if (v5)
    {
      v4 = *(v5 + 24);
      v6 = *(v5 + 8);
      v7 = 1;
      v5 = *(v5 + 16);
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    *a1 = *(a3 + 24);
    v4 = vextq_s8(v4, v4, 8uLL);
    *(a1 + 8) = v4;
    *(a1 + 24) = v6;
    *(a1 + 32) = v5;
    *(a1 + 40) = v7;
    *(a1 + 41) = 0;
  }

  if (this)
  {
    HDStatisticsTimeInterval::unarchive(this, &v10);
    *(a1 + 48) = v10;
    v4.i64[0] = v13;
    v8 = v12;
    *(a1 + 56) = v11;
    *(a1 + 72) = v8;
    *(a1 + 80) = v4.i64[0];
  }

  return *v4.i64;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF0C08;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 1;
  *(a1 + 570) = 0;
  *(a1 + 572) = 0;
  *(a1 + 576) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF0C08;
  v2 = *(a1 + 600);
  if (v2)
  {
    *(a1 + 608) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 536);
  if (v3)
  {
    *(a1 + 544) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 568) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 576) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 73, a2);
  v7 = a2;
  v4 = a1[73];
  v5 = a1[70];
  a1[70] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[70]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = (a1 + 72);
  if (v6 != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v6, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (*(a1 + 40))
  {
    return 1;
  }

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 240) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (v7)
  {
    return 1;
  }

  v9 = *(*a1 + 128);

  return v9(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 568) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_mergeThroughTime(v3, v3[1]);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v6 startDate];
  [v8 timeIntervalSinceReferenceDate];
  if (v9 > *(a2 + 16))
  {
    v14 = 1;
LABEL_8:

    goto LABEL_13;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 570) == 1)
    {
      if (*(a1 + 569))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v15 = *(a2 + 16);
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 571) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 600, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 570) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 570) = 1;
  v61 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v60 = v6;
  if (*(a1 + 569))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 592);
  if (!v9)
  {
    v8 = 0;
    v62 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 40))
  {
LABEL_5:
    v62 = 0;
    v8 = 1;
    goto LABEL_28;
  }

  [v9 sortUsingComparator:&__block_literal_global_1066];
  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = *(a1 + 592);
  v11 = [v10 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (!v11)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v12 = 0;
  v13 = *v64;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v64 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v63 + 1) + 8 * i);
      v16 = v15;
      if (v12)
      {
        v17 = [v15 startDate];
        v18 = [v12 endDate];
        v19 = [v17 hk_isBeforeOrEqualToDate:v18];

        if (v19)
        {
          v20 = [v16 endDate];
          v21 = [v12 endDate];
          v22 = [v20 hk_isAfterDate:v21];

          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = objc_alloc(MEMORY[0x277CCA970]);
          v24 = [v12 startDate];
          v25 = [v16 endDate];
          v26 = [v23 initWithStartDate:v24 endDate:v25];
        }

        else
        {
          [v62 addObject:v12];
          v26 = v16;
        }

        v12 = v26;
      }

      else
      {
        v12 = v15;
      }

LABEL_21:
    }

    v11 = [v10 countByEnumeratingWithState:&v63 objects:v67 count:16];
  }

  while (v11);

  if (v12)
  {
    [v62 addObject:v12];
  }

LABEL_27:

  v8 = 0;
LABEL_28:
  v27 = *(a1 + 592);
  *(a1 + 592) = 0;

  *(a1 + 569) = 0;
  if (v8)
  {
    v28 = *(a1 + 600);
    *(a1 + 616) = 0;
    *(a1 + 608) = 0;
    *(a1 + 600) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v62 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTimeInterval>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 600);
      v39 = *(a1 + 608);
      if (v38 != v39)
      {
        while (*(v38 + 8) >= v37)
        {
          v38 += 40;
          if (v38 == v39)
          {
            goto LABEL_44;
          }
        }

        if (v38 != v39)
        {
          v40 = (v38 + 40);
          if ((v38 + 40) != v39)
          {
            do
            {
              if (*(v40 + 1) >= v37)
              {
                v41 = *v40;
                v42 = v40[1];
                *(v38 + 32) = *(v40 + 16);
                *v38 = v41;
                *(v38 + 16) = v42;
                v38 += 40;
              }

              v40 = (v40 + 40);
            }

            while (v40 != v39);
            v39 = *(a1 + 608);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 608) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 600);
  v29 = *(a1 + 608);
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  if ([v62 count])
  {
LABEL_46:
    v44 = v62;
    if (v44)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v46)
      {
        v47 = *v64;
        while (2)
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v64 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v63 + 1) + 8 * j);
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v49, v61);

            if (!v50)
            {

              goto LABEL_68;
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v63 objects:v67 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_58;
    }

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, 0, v61))
    {
      goto LABEL_58;
    }

LABEL_68:
    v54 = 0;
  }

  else
  {
LABEL_58:
    v52 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    v54 = 1;
    std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(v28, v29, v53, 1, v43);
    if (v29 != v28)
    {
      v55 = v28;
      v51 = v61;
      do
      {
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, v55, 1, v51);
        v54 = v56;
        v55 += 40;
        if (v55 == v29)
        {
          v57 = 0;
        }

        else
        {
          v57 = v56;
        }

        v51 = v61;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40) && *(a1 + 544) != *(a1 + 536))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }

  *(a1 + 570) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 572) == 1)
    {
      *(a1 + 572) = 0;
      v6 = v60;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
      v7 = 1;
      goto LABEL_80;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v6 = v60;
LABEL_80:
  *(a1 + 570) = 0;
LABEL_81:

  v58 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228F8D31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 570) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (!v6)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    if (*(a1 + 570))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 570) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 592);
    *(a1 + 592) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 569) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 569) & 1) == 0)
  {
    v8 = *(a1 + 592);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 592);
      *(a1 + 592) = v9;

      v8 = *(a1 + 592);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 568) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 568) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 568) forKey:@"needs_config"];
  v13 = v3;
  v33 = &unk_283BF1A08;
  v34 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v39) = 1;
  v35 = v4;
  v36 = 0;
  statistics::StatisticsEngine::makeCurrentBucket(&v33);
  v14 = &unk_283BE6258;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v32 = 511;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v30 = *(a1 + 144);
  v31 = *(a1 + 145);
  v29 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v15 = v5;
  v16 = v7;
  v7.i64[0] = *(a1 + 176);
  v20 = v6;
  v21 = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v40 = &unk_283BEB0A8;
    v45 = 127;
    v42 = vextq_s8(*v8, *v8, 8uLL);
    v41 = v8[1];
    v44 = 0;
    HIBYTE(v43) = v8[2].i8[9];
    LOBYTE(v43) = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>();
  }

  statistics::StatisticsBucket::makeStatistics(&v14);
  HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>::archive(&v40, a1 + 240);
  statistics::Statistics::operator=(*(&v23 + 1), &v40);
  statistics::Statistics::~Statistics(&v40);
  v9 = *(a1 + 328);
  if (v9 != a1 + 336)
  {
    HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>::archive(&v40, v9 + 40);
    v10 = *(v9 + 32);
    v47 |= 0x200u;
    v46 = v10;
    PB::PtrVector<statistics::Statistics>::emplace_back<statistics::Statistics&>();
  }

  v11 = *(a1 + 184);
  if (v11 != *(a1 + 192))
  {
    v40 = &unk_283BF1F08;
    v42.i32[0] = 3;
    v41 = vextq_s8(*v11, *v11, 8uLL);
    PB::PtrVector<statistics::Interval>::emplace_back<statistics::Interval&>();
  }

  statistics::StatisticsBucket::operator=(v34, &v14);
  statistics::StatisticsBucket::~StatisticsBucket(&v14);
  v12 = *(a1 + 536);
  if (v12 != *(a1 + 544))
  {
    v40 = &unk_283BEB0A8;
    v45 = 127;
    v42 = vextq_s8(*v12, *v12, 8uLL);
    v41 = v12[1];
    v43 = 0;
    v44 = 0;
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample>();
  }

  PB::Writer::Writer(&v40);
  statistics::StatisticsEngine::writeTo(&v33, &v40);
  [v13 encodeBytes:v41.i64[0] length:&v40[-v41.i64[0]] forKey:@"hdsce_archived_representation"];
  PB::Writer::~Writer(&v40);
  statistics::StatisticsEngine::~StatisticsEngine(&v33);
}

void sub_228F8DB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v30 = a2;
  *(a1 + 568) = [v30 decodeBoolForKey:@"needs_config"];
  v3 = v30;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::HDStatisticsBucket(v33, 0, -1.79769313e308, 1.79769313e308);
  v34 = 0u;
  v35 = 0u;
  v71 = 0;
  PB::Reader::Reader(v70, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v71]);
  v63 = &unk_283BF1A08;
  v64 = 0;
  v68 = 0;
  v66 = 0;
  v67 = 0;
  v69 = 0;
  statistics::StatisticsEngine::readFrom(&v63, v70);
  v32 = v65;
  if (v64)
  {
    v39 = 0;
    v42 = 0uLL;
    v44 = 0;
    v43 = 0;
    memset(&v45[18], 0, 32);
    v48[1] = 0;
    v48[0] = 0;
    memset(v45, 0, 66);
    v46 = 0;
    v47 = v48;
    v49 = 0u;
    v50 = 0u;
    v51 = 1065353216;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    v56 = 1065353216;
    v57 = 0u;
    v58 = 0u;
    v59 = 1065353216;
    v60 = 0u;
    v61 = 0u;
    v62 = 1065353216;
    v36 = vextq_s8(*(v64 + 8), *(v64 + 8), 8uLL);
    v4 = *(v64 + 72);
    v37 = *(v64 + 64);
    LOWORD(v38) = *(v64 + 185);
    v40 = vextq_s8(*(v64 + 24), *(v64 + 24), 8uLL);
    v41 = v4;
    v5 = *(v64 + 80);
    v6 = *(v64 + 88);
    for (i = v64; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v74) = 1;
      BYTE8(v74) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v72 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v73 = v8;
      *(&v73 + 1) = v9;
      BYTE9(v74) = *(v7 + 41);
      BYTE10(v74) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v45, v72.i8);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>::unarchive(&v72, *(v10 + 8), *(v10 + 128));
      *&v45[6] = v72;
      *&v45[10] = v73;
      *&v45[14] = v74;
      *&v45[18] = v75;
      if (*&v45[20])
      {
        *&v45[22] = *&v45[20];
        operator delete(*&v45[20]);
      }

      *&v45[20] = v76;
      *&v45[24] = v77;
      v77 = 0;
      v76 = 0uLL;
      v46 = v78;
    }

    v12 = i[17];
    for (j = i[18]; v12 != j; ++v12)
    {
      v13 = *v12;
      HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>::unarchive(&v72, *(*v12 + 8), *(*v12 + 128));
      v14 = *(v13 + 144);
      v15 = v48[0];
      if (!v48[0])
      {
LABEL_15:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v15;
          v17 = v15[4];
          if (v17 <= v14)
          {
            break;
          }

          v15 = *v16;
          if (!*v16)
          {
            goto LABEL_15;
          }
        }

        if (v17 >= v14)
        {
          break;
        }

        v15 = v16[1];
        if (!v15)
        {
          goto LABEL_15;
        }
      }

      v19 = v73;
      v18 = v74;
      v20 = v16[12];
      *(v16 + 5) = v72;
      *(v16 + 7) = v19;
      *(v16 + 9) = v18;
      v16[11] = v75;
      if (v20)
      {
        v16[13] = v20;
        operator delete(v20);
        v16[12] = 0;
        v16[13] = 0;
        v16[14] = 0;
      }

      *(v16 + 6) = v76;
      v16[14] = v77;
      v77 = 0;
      v76 = 0uLL;
      v16[15] = v78;
    }

    v21 = i[5];
    for (k = i[6]; v21 != k; v21 += 8)
    {
      v24 = *(*v21 + 8);
      v23 = *(*v21 + 16);
      if (v24 >= v23)
      {
        v25 = *(*v21 + 16);
      }

      else
      {
        v25 = *(*v21 + 8);
      }

      if (v23 < v24)
      {
        v23 = *(*v21 + 8);
      }

      HKIntervalMask<double>::_insertInterval(&v42, v25, v23);
    }

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::operator=(v33, &v36);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v36);
  }

  v26 = v66;
  for (m = v67; v26 != m; v26 += 8)
  {
    v28 = *(*v26 + 8);
    v29 = *(*v26 + 16);
    v36 = vextq_s8(*(*v26 + 24), *(*v26 + 24), 8uLL);
    v37 = v28;
    v38 = v29;
    LOWORD(v39) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&v34, v36.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v63);

  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v32);
  if (v34)
  {
    *(&v34 + 1) = v34;
    operator delete(v34);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v33);
}

void sub_228F8E0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a3);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(&STACK[0x350]);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x328]);
  v9 = STACK[0x310];
  if (STACK[0x310])
  {
    STACK[0x318] = v9;
    operator delete(v9);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x2E8]);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::destroy(STACK[0x2D8]);
  v10 = STACK[0x2B0];
  if (STACK[0x2B0])
  {
    STACK[0x2B8] = v10;
    operator delete(v10);
  }

  v11 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v11;
    operator delete(v11);
  }

  objc_destroyWeak(&STACK[0x258]);
  v12 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v12;
    operator delete(v12);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x3A0]);
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 257;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 1065353216;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 328) = 1065353216;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 1065353216;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 424);
  if (v2)
  {
    *(a1 + 432) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 376);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 336);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 296);
  v2 = *(a1 + 272);
  if (v2)
  {
    *(a1 + 280) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 232);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 216));
  v3 = *(a1 + 176);
  if (v3)
  {
    *(a1 + 184) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  objc_destroyWeak((a1 + 88));
  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::destroy(a1[1]);
    v2 = a1[12];
    if (v2)
    {
      a1[13] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_configureForStartTime(uint64_t a1)
{
  v29 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v29];

    v5 = [v4 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
LABEL_5:
    v13 = v9;

    goto LABEL_6;
  }

  v10 = *(a1 + 64);
  v4 = v10;
  if (v10)
  {
    v11 = [v10 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v7 = v12;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

  v7 = -1.79769313e308;
  v13 = 1.79769313e308;
LABEL_6:

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v24 = 1;
  }

  v23 = *(a1 + 56);
  v25 = *(a1 + 24) & 1;
  if (v28 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v28, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  objc_storeStrong(&v27, *(a1 + 584));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v29;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v17);
  *(a1 + 568) = 0;
  return HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v22);
}

void *HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 53), (a2 + 424));
  v4 = *(a2 + 448);
  *(a2 + 448) = 0;
  v5 = a1[56];
  a1[56] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 40);
  *(a1 + 64) = 0;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 64, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  objc_copyWeak((a1 + 88), (a2 + 88));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v9 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v9);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a2 + 120);
  v11 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  v12 = *(a2 + 168);
  *(a1 + 176) = 0;
  *(a1 + 168) = v12;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 4);
  v13 = *(a2 + 200);
  *(a1 + 216) = 0;
  v14 = (a1 + 216);
  *(a1 + 200) = v13;
  *(a1 + 224) = 0;
  *(a1 + 208) = a1 + 216;
  v15 = *(a2 + 208);
  if (v15 != (a2 + 216))
  {
    v16 = 0;
    v17 = (a1 + 216);
    while (1)
    {
      v18 = (a1 + 216);
      if (v17 == v14)
      {
        goto LABEL_12;
      }

      v19 = v16;
      v20 = (a1 + 216);
      if (v16)
      {
        do
        {
          v18 = v19;
          v19 = v19[1];
        }

        while (v19);
      }

      else
      {
        do
        {
          v18 = v20[2];
          v21 = *v18 == v20;
          v20 = v18;
        }

        while (v21);
      }

      v22 = v15[4];
      if (v18[4] < v22)
      {
LABEL_12:
        if (v16)
        {
          v23 = v18 + 1;
        }

        else
        {
          v23 = (a1 + 216);
        }

        if (!*v23)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v16)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v24 = v16;
            v25 = v16[4];
            if (v25 <= v22)
            {
              break;
            }

            v16 = *v24;
            if (!*v24)
            {
              goto LABEL_23;
            }
          }

          if (v25 >= v22)
          {
            break;
          }

          v16 = v24[1];
          if (!v16)
          {
            goto LABEL_23;
          }
        }
      }

      v26 = v15[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v15[2];
          v21 = *v27 == v15;
          v15 = v27;
        }

        while (!v21);
      }

      if (v27 == (a2 + 216))
      {
        break;
      }

      v16 = *v14;
      v17 = *(a1 + 208);
      v15 = v27;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 232, a2 + 232);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 272, *(a2 + 272), *(a2 + 280), (*(a2 + 280) - *(a2 + 272)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 296, a2 + 296);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 336, a2 + 336);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 376, a2 + 376);
  return a1;
}

void sub_228F8EA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v13 + 336);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 296);
  v15 = *(v13 + 272);
  if (v15)
  {
    *(v13 + 280) = v15;
    operator delete(v15);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 232);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::destroy(*v12);
  v16 = *a10;
  if (*a10)
  {
    *(v13 + 184) = v16;
    operator delete(v16);
  }

  v17 = *a11;
  if (*a11)
  {
    *(v13 + 104) = v17;
    operator delete(v17);
  }

  objc_destroyWeak((v13 + 88));
  v18 = *a12;
  if (*a12)
  {
    *(v13 + 72) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;

  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 64, (a2 + 64));
  WeakRetained = objc_loadWeakRetained((a2 + 88));
  objc_storeWeak((a1 + 88), WeakRetained);

  v9 = *(a1 + 96);
  if (v9)
  {
    *(a1 + 104) = v9;
    operator delete(v9);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v10 = *(a2 + 120);
  v11 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  *(a1 + 168) = *(a2 + 168);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 176, (a2 + 176));
  v13 = a1 + 216;
  v12 = *(a1 + 216);
  *(a1 + 200) = *(a2 + 200);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::destroy(v12);
  *(a1 + 208) = *(a2 + 208);
  v15 = *(a2 + 216);
  v16 = *(a2 + 224);
  v14 = (a2 + 216);
  *(a1 + 216) = v15;
  *(a1 + 224) = v16;
  if (v16)
  {
    *(v15 + 16) = v13;
    *(a2 + 208) = v14;
    *v14 = 0;
    *(a2 + 224) = 0;
  }

  else
  {
    *(a1 + 208) = v13;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 232, (a2 + 232));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 272, (a2 + 272));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 296, (a2 + 296));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 336, (a2 + 336));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 376, (a2 + 376));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v23 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  if (*(a2 + 8) == 1.79769313e308)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 48)];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 8)];
  }

  v8 = v7;
  v9 = v23;
  v10 = *(a1 + 16);
  v11 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = *(a1 + 16);
    if ([v12 shouldUseUnderlyingTypeForStatistics])
    {
      v13 = [v12 underlyingSampleType];

      v10 = v13;
    }
  }

  v14 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v10 startDate:v23 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = *(a2 + 272);
      v18 = *(a2 + 280);
      while (v17 != v18)
      {
        v19 = *v17;
        v20 = objc_loadWeakRetained((a1 + 48));
        v21 = [v20 sourceForSourceID:v19];

        if (v21)
        {
          if (([v16 containsObject:v21] & 1) == 0)
          {
            [v16 addObject:v21];
          }
        }

        ++v17;
      }

      v22 = [v16 copy];
      v9 = v23;
      [v14 _setSources:v22];
    }
  }

  v24[0] = &unk_283BF0DF8;
  v24[3] = v24;
  v14;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](v25, v24);
  v26 = 0;
  operator new();
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 256);
  v2 = *(a1 + 272);
  if (v1 != (*(a1 + 280) - v2) >> 3)
  {
    *(a1 + 280) = v2;
    std::vector<long long>::reserve((a1 + 272), v1);
    for (i = *(a1 + 248); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 272, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 272];
    }
  }
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v73 = (a1 + 216);
    while (1)
    {
      v6 = *(a1 + 104);
      __p = *(a1 + 96);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - __p) >> 4);
      if (v7 == 1)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_100;
      }

      v8 = a2;
      v9 = a2;
      v10 = v5;
      v11 = *(a1 + 96);
      if (__p != v6)
      {
        do
        {
          v12 = *(v11 + 8);
          v13 = *(v11 + 16);
          if (v12 > v10 && v12 < v9)
          {
            v9 = *(v11 + 8);
          }

          if (v13 > v5)
          {
            v15 = *(v11 + 16);
          }

          else
          {
            v15 = v8;
          }

          if (v13 < v8)
          {
            v10 = v5;
            v8 = v15;
          }

          v11 += 48;
        }

        while (v11 != v6);
      }

      if (v8 >= v9)
      {
        v16 = v9;
      }

      else
      {
        v16 = v8;
      }

      v17 = *(a1 + 16);
      if (v17 > 0.0)
      {
        v18 = v17 * floor(v16 / v17);
        v19 = v17 * floor((v17 + v5) / v17);
        if (v18 >= v19)
        {
          v16 = v18;
        }

        else
        {
          v16 = v19;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (__p != v6)
      {
        if (v7 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v7);
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v81.var0 = a1;
        v21 = 126 - 2 * __clz(v7);
        if (__p == v6)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTimeInterval>>::_SampleRemainder*,false>(__p, v6, &v81, v22, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v75 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v75 = 0;
      }

      if (__p != v6)
      {
        v76 = 0;
        v36 = 0;
        for (i = __p; i != v6; i += 6)
        {
          v38 = *(i + 1);
          *&v80.var0 = *i;
          *&v80.var2 = v38;
          *&v80.var4 = i[4];
          v39 = *&v38;
          v40 = v16 - v80.var1;
          v41 = *&v38 - v80.var1;
          if (v41 - (v16 - v80.var1) >= 0.01)
          {
            if (v40 >= 0.01)
            {
              var0 = v80.var0;
              var3 = v80.var3;
              var4 = v80.var4;
              v47 = v40 / v41 * v80.var0;
              v80.var0 = v47;
              v80.var2 = v16;
              if (v80.var4)
              {
                var5 = v80.var5;
                v44 = var0 - v47;
                v45 = v16;
LABEL_51:
                HDRawQuantitySample::applyMask(&v80, (a1 + 64));
                v48 = *(i + 42);
                v49 = *(i + 41);
                v78 = *(i + 40);
                if (v80.var4)
                {
                  if (v36)
                  {
                    v50 = v80.var3;
                    if (v76 == v80.var3 || *(a1 + 24) == 1)
                    {
                      if ((v48 & 1) == 0)
                      {
                        ++*(a1 + 120);
                      }

                      HDStatisticsTimeInterval::addSample((a1 + 168), &v80, v48 ^ 1);
                      LOBYTE(v48) = 1;
                    }
                  }

                  else
                  {
                    if ((v48 & 1) == 0)
                    {
                      ++*(a1 + 120);
                    }

                    HDStatisticsTimeInterval::addSample((a1 + 168), &v80, v48 ^ 1);
                    LOBYTE(v48) = 1;
                    v50 = v80.var3;
                    v76 = v80.var3;
                  }

                  if (*(a1 + 25) == 1)
                  {
                    v51 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, v50);
                    if (v51)
                    {
                      v52 = [v75 objectForKeyedSubscript:v51];
                      v74 = v52;
                      if (v52)
                      {
                        if ([v52 longLongValue] == v50 || *(a1 + 24) == 1)
                        {
                          v53 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v50);
                          v54 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v53);
                          if (v49)
                          {
                            goto LABEL_68;
                          }

LABEL_70:
                          ++v54->n128_u64[0];
                          v55 = 1;
                          goto LABEL_71;
                        }
                      }

                      else
                      {
                        v56 = [MEMORY[0x277CCABB0] numberWithLongLong:v50];
                        [v75 setObject:v56 forKeyedSubscript:v51];

                        v57 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v50);
                        v54 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v57);
                        if ((v49 & 1) == 0)
                        {
                          goto LABEL_70;
                        }

LABEL_68:
                        v55 = 0;
LABEL_71:
                        HDStatisticsTimeInterval::addSample(v54 + 3, &v80, v55);
                        v49 = 1;
                      }
                    }
                  }

                  v36 = 1;
                }

                if (var4)
                {
                  v81.var0 = v44;
                  v81.var1 = v45;
                  v81.var2 = v39;
                  v81.var3 = var3;
                  v81.var4 = var4;
                  v81.var5 = var5;
                  LOBYTE(v82) = v78;
                  BYTE1(v82) = v49;
                  BYTE2(v82) = v48;
                  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v81);
                }

                continue;
              }
            }

            else
            {
              v80.var4 = 0;
            }
          }

          else if (v80.var4)
          {
            var5 = 0;
            var4 = 0;
            var3 = 0;
            v44 = 0.0;
            v39 = 0.0;
            v45 = 0.0;
            goto LABEL_51;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 200) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 176), v16) + *(a1 + 200);
      v58 = *(a1 + 208);
      if (v58 != v73)
      {
        do
        {
          *(v58 + 15) = HKIntervalMask<double>::removeIntervalsBefore(v58 + 12, v16) + *(v58 + 15);
          v59 = v58[1];
          if (v59)
          {
            do
            {
              v60 = v59;
              v59 = *v59;
            }

            while (v59);
          }

          else
          {
            do
            {
              v60 = v58[2];
              v61 = *v60 == v58;
              v58 = v60;
            }

            while (!v61);
          }

          v58 = v60;
        }

        while (v60 != v73);
      }

      *(a1 + 56) = v16;

      if (__p)
      {
        operator delete(__p);
      }

LABEL_101:
      v70 = *(a1 + 56);
      if (v70 == v5)
      {
        v71 = [MEMORY[0x277CCA890] currentHandler];
        v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence, HDStatisticsTimeInterval>>::_mergeThroughTime(double) [Statistics = HDStatisticsCombined<HDStatisticsPresence, HDStatisticsTimeInterval>]"}];
        [v71 handleFailureInFunction:v72 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v70 = *(a1 + 56);
      }

      v5 = v70;
      if (v70 >= a2)
      {
        return;
      }
    }

    v24 = *__p;
    v23 = __p[1];
    v25 = __p[2];
    v26 = *(__p + 3);
    v27 = *(__p + 32);
    v28 = *(__p + 33);
    v29 = a2 - v23;
    if (a2 - v23 >= 0.01)
    {
      if (v25 - v23 - v29 < 0.01)
      {
        v34 = 0;
        v35 = 0;
        v32 = 0.0;
        v31 = __p[2];
        v30 = *(__p + 32);
        v33 = 0.0;
        v25 = 0.0;
        v27 = 0;
LABEL_89:
        v63 = *(__p + 42);
        v64 = *(__p + 41);
        v65 = *(__p + 40);
        v81.var0 = v24;
        v81.var1 = v23;
        v81.var2 = v31;
        v81.var3 = v26;
        v81.var4 = v30;
        v81.var5 = v28;
        *(&v81.var5 + 1) = *(__p + 34);
        *(&v81.var5 + 5) = *(__p + 19);
        *&v82 = v32;
        *(&v82 + 1) = v33;
        *&v83 = v25;
        *(&v83 + 1) = v34;
        LOBYTE(v84) = v27;
        HIBYTE(v84) = v35;
        HDRawQuantitySample::applyMask(&v81, (a1 + 64));
        if (v81.var4)
        {
          if ((v63 & 1) == 0)
          {
            ++*(a1 + 120);
          }

          HDStatisticsTimeInterval::addSample((a1 + 168), &v81, v63 ^ 1);
          if (*(a1 + 25) == 1)
          {
            v66 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v81.var3);
            v67 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v66);
            if ((v64 & 1) == 0)
            {
              ++v67->n128_u64[0];
            }

            HDStatisticsTimeInterval::addSample(v67 + 3, &v81, v64 ^ 1);
          }

          v65 = 1;
          LOBYTE(v64) = 1;
          LOBYTE(v63) = 1;
        }

        if (v84 == 1)
        {
          *&v80.var4 = v84;
          v68 = v83;
          v69 = *(a1 + 96);
          *v69 = v82;
          *(v69 + 16) = v68;
          *(v69 + 32) = *&v80.var4;
          *(v69 + 40) = v65;
          *(v69 + 41) = v64;
          *(v69 + 42) = v63;
        }

        else
        {
          *(a1 + 104) = *(a1 + 96);
        }

LABEL_100:
        *(a1 + 56) = a2;
        goto LABEL_101;
      }

      v62 = v24 * (v29 / (v25 - v23));
      v31 = a2;
      v30 = *(__p + 32);
      v32 = v24 - v62;
      v24 = v62;
      v33 = a2;
    }

    else
    {
      v30 = 0;
      v31 = __p[2];
      v32 = *__p;
      v33 = __p[1];
    }

    v34 = *(__p + 3);
    v35 = *(__p + 33);
    goto LABEL_89;
  }
}

void *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v4 = *(a1 + 216);
  v2 = (a1 + 216);
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (v3[4] >= a2)
    {
      v5 = v3;
    }

    v3 = v3[v3[4] < a2];
  }

  while (v3);
  if (v5 == v2 || v5[4] > a2)
  {
LABEL_8:
    v6 = (v2 - 1);
    v9 = &v8;
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v2 - 1), a2);
    v9 = &v8;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6, v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 296), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 336), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 336), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 376), a2);
    if (v5)
    {
      WeakRetained = v5[3];
    }

    else
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      WeakRetained = [v6 bundleIdentifierForSourceID:{a2, v9[0]}];

      if (WeakRetained)
      {
        v9[1] = v9;
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 376), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void *std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 208);
  v25 = (a2 + 216);
  if (v2 == (a2 + 216))
  {
    return;
  }

  v24 = a1 + 16;
  do
  {
    v4 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a2, v2[4]);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_25;
    }

    v6 = [v4 hash];
    v7 = v6;
    v8 = *(a1 + 8);
    if (!*&v8)
    {
      goto LABEL_21;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v27 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v10 = v6;
      if (v6 >= *&v8)
      {
        v10 = v6 % *&v8;
      }
    }

    else
    {
      v10 = (*&v8 - 1) & v6;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_21:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v27 > 1)
      {
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_21;
      }

LABEL_20:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v14 = v12[2];
    v15 = v5;
    v16 = v5;
    v17 = v16;
    if (v14 != v16)
    {
      v18 = [v14 isEqualToString:v16];

      v5 = v15;
      if (v18)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v5 = v15;
LABEL_22:
    v19 = *(v2 + 5);
    v20 = *(v2 + 7);
    *(v12 + 7) = *(v2 + 9);
    *(v12 + 5) = v20;
    *(v12 + 3) = v19;
    v12[9] = v2[11];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 10, v2[12], v2[13], (v2[13] - v2[12]) >> 4);
    }

    v12[13] = v2[15];

LABEL_25:
    v21 = v2[1];
    if (v21)
    {
      do
      {
        v22 = v21;
        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v2[2];
        v23 = *v22 == v2;
        v2 = v22;
      }

      while (!v23);
    }

    v2 = v22;
  }

  while (v22 != v25);
}

void sub_228F90788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](va);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::~__hash_table(v6);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,0>(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0CD8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0CD8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 48;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsPresence const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0D68;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsPresence const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0D68;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsPresence const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsPresence const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPresence,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPresence,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsPresence const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsPresence const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 568) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  if (v9 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v9 end:*(a2 + 16)];
    v11 = (*(*a1 + 128))(a1, v10, a4);
  }

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 544) != *(v2 + 536))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, v2 + 120);
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, v2 + 120);
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = a1 + 8;
  v12 = *(a1 + 8);
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v13 = v12 - v6;
  v14 = v5;
  v15 = v6;
  if (v12 - v6 >= 0.01)
  {
    if (v7 - v6 - v13 < 0.01)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v14 = 0.0;
      v19 = 0.0;
      v15 = 0.0;
      goto LABEL_6;
    }

    v14 = v5 - v5 * (v13 / (v7 - v6));
    v15 = v12;
  }

  *&v42 = v14;
  *(&v42 + 1) = v15;
  *&v43 = v7;
  *(&v43 + 1) = v8;
  v16 = v10;
  LOBYTE(v44) = v9;
  v17 = v9;
  v18 = v8;
  v19 = v7;
  HIBYTE(v44) = v10;
LABEL_6:
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v20 = *(a1 + 16);
  v21 = v20 - v15;
  v22 = v19 - v15;
  v23 = v19 - v15 - (v20 - v15);
  if (!*(a1 + 36))
  {
    if (v23 < 0.01)
    {
LABEL_11:
      v20 = v19;
      if ((v17 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_16;
    }

    if (v21 >= 0.01)
    {
      goto LABEL_15;
    }

LABEL_14:
    v35 = v42;
    v36 = v43;
    v37 = v44;
    goto LABEL_41;
  }

  if (v21 < 0.01)
  {
    goto LABEL_14;
  }

  if (v23 < 0.01)
  {
    goto LABEL_11;
  }

LABEL_15:
  *&v35 = v14 - v21 / v22 * v14;
  *(&v35 + 1) = v20;
  *&v36 = v19;
  *(&v36 + 1) = v18;
  LOBYTE(v37) = v17;
  HIBYTE(v37) = v16;
  *&v42 = v21 / v22 * v14;
  *&v43 = v20;
  if ((v17 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_16:
  v33 = v20;
  v34 = v15;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 240), v18);
  if (*(a1 + 112) == *(a1 + 104) && *(a1 + 128) <= 0)
  {
    v27.f64[1] = *(a1 + 16);
    v24 = v34;
    v27.f64[0] = v34;
    v28.f64[0] = *(a1 + 8);
    v28.f64[1] = v33;
    v29 = vcgtq_f64(v28, v27);
    v28.f64[0] = v34;
    *(a1 + 48) = vbslq_s8(v29, *(a1 + 8), v28);
  }

  else
  {
    v24 = v34;
    if (v34 < *(a1 + 48))
    {
      v25 = *(a1 + 8);
      if (v34 >= v25)
      {
        v25 = v34;
      }

      *(a1 + 48) = v25;
    }

    if (v33 > *(a1 + 56))
    {
      v26 = *(a1 + 16);
      if (v26 >= v33)
      {
        v26 = v33;
      }

      *(a1 + 56) = v26;
    }
  }

  if (*(a1 + 32) == 1)
  {
    v30 = *(a1 + 64);
    if (v24 < v30)
    {
      v30 = v24;
    }

    *(a1 + 64) = v30;
  }

  if (a3 && v24 < *(a1 + 16))
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_mergeThroughTime(v11, v24);
  }

  v38[0] = v42;
  v38[1] = v43;
  v39 = v44;
  v40 = 0;
  v41 = 0;
  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v38);
  if (!*(a1 + 168) || *(a1 + 144) <= v6)
  {
    *(a1 + 136) = v5;
    *(a1 + 144) = v6;
    *(a1 + 152) = v7;
    *(a1 + 160) = v8;
    *(a1 + 168) = v9;
    *(a1 + 169) = v10;
  }

  if (*(a1 + 33) == 1)
  {
    v31 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(v11, v18);
    v32 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_statisticsForSource(v11, v31);
    if (!*(v32 + 40) || v32[2] <= v6)
    {
      v32[1] = v5;
      v32[2] = v6;
      v32[3] = v7;
      *(v32 + 4) = v8;
      *(v32 + 40) = v9;
      *(v32 + 41) = v10;
    }
  }

LABEL_41:
  if (v37 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 424, &v35);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 570) == 1)
  {
    *(a1 + 572) = 1;
  }

  else
  {
    *(a1 + 572) = 0;
    v2 = _Block_copy(*(a1 + 96));
    if (v2)
    {
      v4 = v2;
      v3 = (*(*a1 + 96))(a1);
      if (v3)
      {
        v4[2](v4, v3);
      }

      v2 = v4;
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[53], a1[54], 0xCCCCCCCCCCCCCCCDLL * ((a1[54] - a1[53]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::addSample(a1, v8, 1);
      v8 += 40;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F91854(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 448), *(a1 + 40));
  v9 = *(a1 + 184);
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  v10 = 0uLL;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  if (v9)
  {
    *(a1 + 192) = v9;
    operator delete(v9);
    v10 = 0uLL;
  }

  *(a1 + 184) = v10;
  *(a1 + 200) = v10;
  if (*(a1 + 232))
  {
    v11 = *(a1 + 224);
    v12 = *(a1 + 216);
    *(a1 + 216) = a1 + 224;
    *(v11 + 16) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    if (v12[1])
    {
      v13 = v12[1];
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = v13[2];
      if (v14)
      {
        v15 = *v14;
        if (*v14 == v13)
        {
          *v14 = 0;
          while (1)
          {
            v17 = v14[1];
            if (!v17)
            {
              break;
            }

            do
            {
              v14 = v17;
              v17 = *v17;
            }

            while (v17);
          }
        }

        else
        {
          for (v14[1] = 0; v15; v15 = v14[1])
          {
            do
            {
              v14 = v15;
              v15 = *v15;
            }

            while (v15);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>>>::destroy(v13);
  }

  objc_storeStrong(v8, *(a1 + 448));
  *(a1 + 432) = *(a1 + 424);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 572) == 1)
  {
    if (v3)
    {
      v6 = v3;
      v4 = _Block_copy(*(a1 + 96));
      v5 = v4;
      if (v4)
      {
        (*(v4 + 2))(v4, v6);
      }

      v3 = v6;
    }

    *(a1 + 572) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F91AB4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTimeInterval>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v5 endDate];
      v9 = [v7 startDate];
      if ([v8 hk_isAfterDate:v9])
      {
        v10 = [v5 startDate];
        v11 = [v7 endDate];
        v12 = [v10 hk_isBeforeOrEqualToDate:v11];
      }

      else
      {
        v12 = 0;
      }

      v13 = _Block_copy(a1[12]);
      if ((v12 & 1) == 0)
      {
        operator new();
      }
    }

    else
    {
      v13 = _Block_copy(a1[12]);
    }

    *(a1 + 568) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
    v27[3] = &unk_278629370;
    v15 = v5;
    v28 = v15;
    v16 = v13;
    v29 = v16;
    (*(*a1 + 9))(a1, v27);
    if (v5)
    {
      v17 = [v15 startDate];
      [v17 timeIntervalSinceReferenceDate];
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
    v21[3] = &unk_2786293D8;
    v24 = a1;
    v5 = v15;
    v26 = 1;
    v22 = v5;
    v25 = a1;
    v23 = WeakRetained;
    v14 = (*(*a1 + 14))(a1, v21, a3);
    v18 = _Block_copy(v16);
    v19 = a1[12];
    a1[12] = v18;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to invalidate interval: no data source available."];
    v14 = 0;
  }

  return v14;
}

void sub_228F91F04(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C4004ACF899);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(a1 + 32))
  {
    goto LABEL_11;
  }

  v3 = [v10 endDate];
  v4 = [*(a1 + 32) startDate];
  v5 = [v3 hk_isBeforeOrEqualToDate:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v10 startDate];
    v7 = [*(a1 + 32) endDate];
    v8 = [v6 hk_isAfterOrEqualToDate:v7];

    if ((v8 & 1) == 0)
    {
LABEL_11:
      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))(v9, v10);
      }
    }
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((v4 + 8));
  v13 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
  v19[3] = &__block_descriptor_40_e8_v16__0d8l;
  v19[4] = v21;
  v14 = [v11 collectionCalculator:WeakRetained queryForInterval:v13 error:a2 sampleHandler:v20 mergeHandler:v19];

  if (v14)
  {
    v15 = *(a1 + 56);
    if (v15 != v4)
    {
      v16 = [*(a1 + 32) endDate];
      [v16 timeIntervalSinceReferenceDate];
      if (*(v15 + 40) && *(v15 + 120) < v17)
      {
        [*(v15 + 40) dateIntervalAtIndex:*(v15 + 112) + 1];
        objc_claimAutoreleasedReturnValue();
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v9 = *(a1 + 32) - a6;
  if (v9 >= 0.01)
  {
    v11 = a7 - a6;
    if (v11 - v9 >= 0.01)
    {
      a5 = a5 - v9 / v11 * a5;
      v10 = 1;
      a6 = *(a1 + 32);
    }

    else
    {
      a2 = 0;
      v10 = 0;
      a5 = 0.0;
      a6 = 0.0;
      a7 = 0.0;
    }
  }

  else
  {
    v10 = 1;
  }

  v21 = v7;
  v22 = v8;
  *v16 = a5;
  *&v16[1] = a6;
  v17 = a7;
  v18 = a2;
  v19 = v10;
  v20 = 0;
  if ((*(a1 + 56) & 1) == 0)
  {
    v12 = *(a1 + 40);
    v13 = v12 - a6;
    if (v12 - a6 < 0.01)
    {
      return 1;
    }

    v14 = a7 - a6;
    if (v14 - v13 >= 0.01)
    {
      a5 = a5 * (v13 / v14);
    }

    else
    {
      v12 = a7;
    }

    *v16 = a5;
    v17 = v12;
    v19 = v10;
    if ((v10 & 1) == 0)
    {
      return 1;
    }

    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  if (v10)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), v16, a3, a4);
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 568) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsPresence24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v10 = *(a1 + 32);
  *v14 = a5;
  *&v14[1] = a6;
  *&v14[2] = a7;
  v14[3] = a2;
  v15 = 1;
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  [v11 timeIntervalSinceReferenceDate];
  v16 = v12 <= a7;

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPresence,HDStatisticsTimeInterval>>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF0EA8;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 1;
  *(a1 + 578) = 0;
  *(a1 + 580) = 0;
  *(a1 + 584) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF0EA8;
  v2 = *(a1 + 608);
  if (v2)
  {
    *(a1 + 616) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 544);
  if (v3)
  {
    *(a1 + 552) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 576) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 584) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 74, a2);
  v7 = a2;
  v4 = a1[74];
  v5 = a1[71];
  a1[71] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[71]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = (a1 + 72);
  if (v6 != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v6, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (*(a1 + 40))
  {
    return 1;
  }

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 248) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (v7)
  {
    return 1;
  }

  v9 = *(*a1 + 128);

  return v9(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 576))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::_mergeThroughTime(v4, v5);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::~HDStatisticsBucket(v4);
  }

  return v1;
}

void sub_228F92BF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v6 startDate];
  [v8 timeIntervalSinceReferenceDate];
  if (v9 > *(a2 + 16))
  {
    v14 = 1;
LABEL_8:

    goto LABEL_13;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 578) == 1)
    {
      if (*(a1 + 577))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v15 = *(a2 + 16);
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 579) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 608, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 578) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 578) = 1;
  v68 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v67 = v6;
  if (*(a1 + 577))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 600);
  if (!v9)
  {
    v8 = 0;
    v69 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 40))
  {
LABEL_5:
    v69 = 0;
    v8 = 1;
    goto LABEL_28;
  }

  [v9 sortUsingComparator:&__block_literal_global_1075];
  v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v10 = *(a1 + 600);
  v11 = [v10 countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (!v11)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v12 = 0;
  v13 = *v71;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v71 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v70 + 1) + 8 * i);
      v16 = v15;
      if (v12)
      {
        v17 = [v15 startDate];
        v18 = [v12 endDate];
        v19 = [v17 hk_isBeforeOrEqualToDate:v18];

        if (v19)
        {
          v20 = [v16 endDate];
          v21 = [v12 endDate];
          v22 = [v20 hk_isAfterDate:v21];

          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = objc_alloc(MEMORY[0x277CCA970]);
          v24 = [v12 startDate];
          v25 = [v16 endDate];
          v26 = [v23 initWithStartDate:v24 endDate:v25];
        }

        else
        {
          [v69 addObject:v12];
          v26 = v16;
        }

        v12 = v26;
      }

      else
      {
        v12 = v15;
      }

LABEL_21:
    }

    v11 = [v10 countByEnumeratingWithState:&v70 objects:v74 count:16];
  }

  while (v11);

  if (v12)
  {
    [v69 addObject:v12];
  }

LABEL_27:

  v8 = 0;
LABEL_28:
  v27 = *(a1 + 600);
  *(a1 + 600) = 0;

  *(a1 + 577) = 0;
  if (v8)
  {
    v28 = *(a1 + 608);
    *(a1 + 624) = 0;
    *(a1 + 616) = 0;
    *(a1 + 608) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v69 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 608);
      v39 = *(a1 + 616);
      if (v38 != v39)
      {
        while (*(v38 + 8) >= v37)
        {
          v38 += 40;
          if (v38 == v39)
          {
            goto LABEL_44;
          }
        }

        if (v38 != v39)
        {
          v40 = (v38 + 40);
          if ((v38 + 40) != v39)
          {
            do
            {
              if (*(v40 + 1) >= v37)
              {
                v41 = *v40;
                v42 = v40[1];
                *(v38 + 32) = *(v40 + 16);
                *v38 = v41;
                *(v38 + 16) = v42;
                v38 += 40;
              }

              v40 = (v40 + 40);
            }

            while (v40 != v39);
            v39 = *(a1 + 616);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 616) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 608);
  v29 = *(a1 + 616);
  *(a1 + 624) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0;
  if ([v69 count])
  {
LABEL_46:
    v44 = v69;
    if (v44)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v70 objects:v74 count:16];
      if (v46)
      {
        v47 = *v71;
        while (2)
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v71 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v70 + 1) + 8 * j);
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_primitiveInvalidateInterval(a1, v49, v68);

            if (!v50)
            {

              goto LABEL_68;
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v70 objects:v74 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_58;
    }

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_primitiveInvalidateInterval(a1, 0, v68))
    {
      goto LABEL_58;
    }

LABEL_68:
    v54 = 0;
  }

  else
  {
LABEL_58:
    v52 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    v54 = 1;
    std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(v28, v29, v53, 1, v43);
    if (v29 != v28)
    {
      v55 = v28;
      v51 = v68;
      do
      {
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_primitiveAddSample(a1, v55, 1, v51);
        v54 = v56;
        v55 += 40;
        if (v55 == v29)
        {
          v57 = 0;
        }

        else
        {
          v57 = v56;
        }

        v51 = v68;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40))
  {
    while (*(a1 + 552) != *(a1 + 544))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPresence>>::advanceBucket((a1 + 112), v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_notifyForCurrentBucket(a1);
    }
  }

  *(a1 + 578) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 580) == 1)
    {
      *(a1 + 580) = 0;
      v6 = v67;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_notifyForCurrentBucket(a1);
      v7 = 1;
      goto LABEL_80;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v6 = v67;
LABEL_80:
  *(a1 + 578) = 0;
LABEL_81:

  v65 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228F9345C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 578) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (!v6)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    if (*(a1 + 578))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 578) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 600);
    *(a1 + 600) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 577) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 577) & 1) == 0)
  {
    v8 = *(a1 + 600);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 600);
      *(a1 + 600) = v9;

      v8 = *(a1 + 600);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 576) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsPresenceEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 576) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 576) forKey:@"needs_config"];
  v13 = v3;
  v33 = &unk_283BF1A08;
  v34 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v39) = 1;
  v35 = v4;
  v36 = 0;
  statistics::StatisticsEngine::makeCurrentBucket(&v33);
  v14 = &unk_283BE6258;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v32 = 511;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v30 = *(a1 + 144);
  v31 = *(a1 + 145);
  v29 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v15 = v5;
  v16 = v7;
  v7.i64[0] = *(a1 + 176);
  v20 = v6;
  v21 = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v40 = &unk_283BEB0A8;
    v45 = 127;
    v42 = vextq_s8(*v8, *v8, 8uLL);
    v41 = v8[1];
    v44 = 0;
    HIBYTE(v43) = v8[2].i8[9];
    LOBYTE(v43) = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>();
  }

  statistics::StatisticsBucket::makeStatistics(&v14);
  HDStatisticsRelative<HDStatisticsPresence>::archive(&v40, (a1 + 240));
  statistics::Statistics::operator=(*(&v23 + 1), &v40);
  statistics::Statistics::~Statistics(&v40);
  v9 = *(a1 + 336);
  if (v9 != a1 + 344)
  {
    HDStatisticsRelative<HDStatisticsPresence>::archive(&v40, (v9 + 40));
    v10 = *(v9 + 32);
    v47 |= 0x200u;
    v46 = v10;
    PB::PtrVector<statistics::Statistics>::emplace_back<statistics::Statistics&>();
  }

  v11 = *(a1 + 184);
  if (v11 != *(a1 + 192))
  {
    v40 = &unk_283BF1F08;
    v42.i32[0] = 3;
    v41 = vextq_s8(*v11, *v11, 8uLL);
    PB::PtrVector<statistics::Interval>::emplace_back<statistics::Interval&>();
  }

  statistics::StatisticsBucket::operator=(v34, &v14);
  statistics::StatisticsBucket::~StatisticsBucket(&v14);
  v12 = *(a1 + 544);
  if (v12 != *(a1 + 552))
  {
    v40 = &unk_283BEB0A8;
    v45 = 127;
    v42 = vextq_s8(*v12, *v12, 8uLL);
    v41 = v12[1];
    v43 = 0;
    v44 = 0;
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample>();
  }

  PB::Writer::Writer(&v40);
  statistics::StatisticsEngine::writeTo(&v33, &v40);
  [v13 encodeBytes:v41.i64[0] length:&v40[-v41.i64[0]] forKey:@"hdsce_archived_representation"];
  PB::Writer::~Writer(&v40);
  statistics::StatisticsEngine::~StatisticsEngine(&v33);
}

void sub_228F93CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v32 = a2;
  *(a1 + 576) = [v32 decodeBoolForKey:@"needs_config"];
  v3 = v32;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::HDStatisticsBucket(&v34.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *__p = 0u;
  v36 = 0u;
  v72 = 0;
  PB::Reader::Reader(v71, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v72]);
  v64 = &unk_283BF1A08;
  v65 = 0;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v70 = 0;
  statistics::StatisticsEngine::readFrom(&v64, v71);
  v4 = v65;
  v34.n128_u64[0] = v66;
  if (v65)
  {
    v33 = v3;
    v40 = 0;
    v43 = 0uLL;
    v44 = 0;
    memset(v46, 0, sizeof(v46));
    v45 = 0;
    memset(&v47[8], 0, 42);
    memset(&v47[56], 0, 34);
    v49[1] = 0;
    *v47 = 0;
    v49[0] = 0;
    v48 = v49;
    v50 = 0u;
    v51 = 0u;
    v52 = 1065353216;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    v57 = 1065353216;
    v58 = 0u;
    v59 = 0u;
    v60 = 1065353216;
    v61 = 0u;
    v62 = 0u;
    v63 = 1065353216;
    v37 = vextq_s8(*(v65 + 8), *(v65 + 8), 8uLL);
    v5 = *(v65 + 72);
    v38 = *(v65 + 64);
    LOWORD(v39) = *(v65 + 185);
    v41 = vextq_s8(*(v65 + 24), *(v65 + 24), 8uLL);
    v42 = v5;
    v6 = *(v65 + 80);
    for (i = *(v65 + 88); v6 != i; ++v6)
    {
      v8 = *v6;
      LOWORD(v75) = 1;
      BYTE8(v75) = 0;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      v73 = vextq_s8(*(v8 + 24), *(v8 + 24), 8uLL);
      *&v74 = v9;
      *(&v74 + 1) = v10;
      BYTE9(v75) = *(v8 + 41);
      BYTE10(v75) = *(v8 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v46, v73.i8);
    }

    v11 = v4[13];
    if (v11)
    {
      HDStatisticsRelative<HDStatisticsPresence>::unarchive(&v73, v11);
      *&v47[32] = v75;
      *&v47[48] = v76;
      *&v47[64] = v77;
      *&v47[80] = v78;
      *v47 = v73;
      *&v47[16] = v74;
    }

    v12 = v4[17];
    for (j = v4[18]; v12 != j; *(v17 + 7) = v22)
    {
      v14 = *v12;
      HDStatisticsRelative<HDStatisticsPresence>::unarchive(&v73, *v12);
      v15 = *(v14 + 144);
      v16 = v49[0];
      if (!v49[0])
      {
LABEL_13:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v18 <= v15)
          {
            break;
          }

          v16 = *v17;
          if (!*v17)
          {
            goto LABEL_13;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v16 = v17[1];
        if (!v16)
        {
          goto LABEL_13;
        }
      }

      v20 = v77;
      v19 = v78;
      v21 = v76;
      *(v17 + 9) = v75;
      *(v17 + 11) = v21;
      *(v17 + 13) = v20;
      *(v17 + 15) = v19;
      v22 = v74;
      *(v17 + 5) = v73;
      ++v12;
    }

    v23 = v4[5];
    for (k = v4[6]; v23 != k; v23 += 8)
    {
      v26 = *(*v23 + 8);
      v25 = *(*v23 + 16);
      if (v26 >= v25)
      {
        v27 = *(*v23 + 16);
      }

      else
      {
        v27 = *(*v23 + 8);
      }

      if (v25 < v26)
      {
        v25 = *(*v23 + 8);
      }

      HKIntervalMask<double>::_insertInterval(&v43, v27, v25);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::operator=(&v34.n128_i64[1], &v37);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::~HDStatisticsBucket(&v37);
    v3 = v33;
  }

  v28 = v67;
  for (m = v68; v28 != m; v28 += 8)
  {
    v30 = *(*v28 + 8);
    v31 = *(*v28 + 16);
    v37 = vextq_s8(*(*v28 + 24), *(*v28 + 24), 8uLL);
    v38 = v30;
    v39 = v31;
    LOWORD(v40) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](__p, v37.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v64);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPresence>>::operator=((a1 + 112), &v34);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::~HDStatisticsBucket(&v34.n128_i64[1]);
}

void sub_228F9418C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x3A0]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPresence>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 257;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = 1065353216;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 1065353216;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPresence>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 432);
  if (v2)
  {
    *(a1 + 440) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 384);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 344);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 304);
  v2 = *(a1 + 280);
  if (v2)
  {
    *(a1 + 288) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 240);
  std::__tree<long>::destroy(*(a1 + 224));
  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  objc_destroyWeak((a1 + 88));
  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_configureForStartTime(uint64_t a1)
{
  v28 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v28];

    v5 = [v4 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
LABEL_5:
    v13 = v9;

    goto LABEL_6;
  }

  v10 = *(a1 + 64);
  v4 = v10;
  if (v10)
  {
    v11 = [v10 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v7 = v12;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

  v7 = -1.79769313e308;
  v13 = 1.79769313e308;
LABEL_6:

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v23 = 1;
  }

  v22 = *(a1 + 56);
  v24 = *(a1 + 24) & 1;
  if (v27 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v27, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  objc_storeStrong(&v26, *(a1 + 592));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPresence>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::~HDStatisticsBucket(v17);
  *(a1 + 576) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPresence>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 54), a2 + 27);
  v4 = a2[28].n128_u64[1];
  a2[28].n128_u64[1] = 0;
  v5 = a1[57];
  a1[57] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 40);
  *(a1 + 64) = 0;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 64, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  objc_copyWeak((a1 + 88), (a2 + 88));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v9 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v9);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  v13 = *(a2 + 200);
  v14 = *(a2 + 120);
  v15 = *(a2 + 136);
  *(a1 + 224) = 0;
  v16 = (a1 + 224);
  *(a1 + 216) = a1 + 224;
  *(a1 + 120) = v14;
  *(a1 + 136) = v15;
  *(a1 + 184) = v12;
  *(a1 + 200) = v13;
  *(a1 + 152) = v10;
  *(a1 + 168) = v11;
  *(a1 + 232) = 0;
  v17 = *(a2 + 216);
  if (v17 != (a2 + 224))
  {
    v18 = 0;
    v19 = (a1 + 224);
    while (1)
    {
      v20 = v17[4];
      v21 = (a1 + 224);
      if (v19 == v16)
      {
        goto LABEL_12;
      }

      v22 = v18;
      v23 = (a1 + 224);
      if (v18)
      {
        do
        {
          v21 = v22;
          v22 = v22[1];
        }

        while (v22);
      }

      else
      {
        do
        {
          v21 = v23[2];
          v24 = *v21 == v23;
          v23 = v21;
        }

        while (v24);
      }

      if (v21[4] < v20)
      {
LABEL_12:
        if (v18)
        {
          v25 = v21 + 1;
        }

        else
        {
          v25 = (a1 + 224);
        }

        if (!*v25)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v26 = v18;
            v27 = v18[4];
            if (v27 <= v20)
            {
              break;
            }

            v18 = *v26;
            if (!*v26)
            {
              goto LABEL_23;
            }
          }

          if (v27 >= v20)
          {
            break;
          }

          v18 = v26[1];
          if (!v18)
          {
            goto LABEL_23;
          }
        }
      }

      v28 = v17[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v17[2];
          v24 = *v29 == v17;
          v17 = v29;
        }

        while (!v24);
      }

      if (v29 == (a2 + 224))
      {
        break;
      }

      v18 = *v16;
      v19 = *(a1 + 216);
      v17 = v29;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 240, a2 + 240);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 280, *(a2 + 280), *(a2 + 288), (*(a2 + 288) - *(a2 + 280)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 304, a2 + 304);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 344, a2 + 344);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 384, a2 + 384);
  return a1;
}

void sub_228F94A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 344);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 304);
  v13 = *(v10 + 280);
  if (v13)
  {
    *(v10 + 288) = v13;
    operator delete(v13);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 240);
  std::__tree<long>::destroy(*v11);
  v14 = *a9;
  if (*a9)
  {
    *(v10 + 104) = v14;
    operator delete(v14);
  }

  objc_destroyWeak((v10 + 88));
  v15 = *a10;
  if (*a10)
  {
    *(v10 + 72) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;

  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 64, (a2 + 64));
  WeakRetained = objc_loadWeakRetained((a2 + 88));
  objc_storeWeak((a1 + 88), WeakRetained);

  v9 = *(a1 + 96);
  if (v9)
  {
    *(a1 + 104) = v9;
    operator delete(v9);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v10 = *(a2 + 168);
  v11 = *(a2 + 184);
  v12 = *(a2 + 200);
  v14 = a1 + 224;
  v13 = *(a1 + 224);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  *(a1 + 168) = v10;
  v15 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v15;
  std::__tree<long>::destroy(v13);
  *(a1 + 216) = *(a2 + 216);
  v17 = *(a2 + 224);
  v18 = *(a2 + 232);
  v16 = (a2 + 224);
  *(a1 + 224) = v17;
  *(a1 + 232) = v18;
  if (v18)
  {
    *(v17 + 16) = v14;
    *(a2 + 216) = v16;
    *v16 = 0;
    *(a2 + 232) = 0;
  }

  else
  {
    *(a1 + 216) = v14;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 240, (a2 + 240));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 280, (a2 + 280));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 304, (a2 + 304));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 344, (a2 + 344));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 384, (a2 + 384));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPresence>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v57 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  v60 = a2;
  if (*(a2 + 8) == 1.79769313e308)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 48)];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 8)];
  }

  v8 = v7;
  v9 = *(a1 + 16);
  v10 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *(a1 + 16);
    if ([v11 shouldUseUnderlyingTypeForStatistics])
    {
      WeakRetained = [v11 underlyingSampleType];

      v9 = WeakRetained;
    }
  }

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v57 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      WeakRetained = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = *(a2 + 280);
      v14 = *(a2 + 288);
      while (v13 != v14)
      {
        v15 = *v13;
        v16 = objc_loadWeakRetained((a1 + 48));
        v17 = [v16 sourceForSourceID:v15];

        if (v17)
        {
          if (([WeakRetained containsObject:v17] & 1) == 0)
          {
            [WeakRetained addObject:v17];
          }
        }

        ++v13;
      }

      v18 = [WeakRetained copy];
      [v12 _setSources:v18];
    }
  }

  v67[0] = &unk_283BF0F78;
  v68 = v67;
  v58 = v12;
  v19 = *(v60 + 168);
  v63 = *(v60 + 152);
  v64 = v19;
  v20 = *(v60 + 200);
  v65 = *(v60 + 184);
  v66 = v20;
  v21 = *(v60 + 136);
  *__p = *(v60 + 120);
  v62 = v21;
  if (!v68)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  [v58 setDataCount:{*(*(*v68 + 48))(v68, __p)}];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_56;
  }

  v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v62 = 0u;
  LODWORD(v63) = 1065353216;
  v22 = *(v60 + 216);
  if (v22 == (v60 + 224))
  {
    goto LABEL_55;
  }

  v54 = &v62;
  do
  {
    v23 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPresence>>::_bundleIdentifierForSourceID(v60, v22[4]);
    v9 = v23;
    if (!v23)
    {
      goto LABEL_44;
    }

    v24 = [v23 hash];
    v25 = v24;
    v26 = __p[1];
    if (!__p[1])
    {
      goto LABEL_42;
    }

    v27 = vcnt_s8(__p[1]);
    v27.i16[0] = vaddlv_u8(v27);
    v28 = v27.u32[0];
    if (v27.u32[0] > 1uLL)
    {
      v29 = v24;
      if (v24 >= __p[1])
      {
        v29 = v24 % __p[1];
      }
    }

    else
    {
      v29 = (__p[1] - 1) & v24;
    }

    v30 = *(__p[0] + v29);
    if (!v30 || (v31 = *v30) == 0)
    {
LABEL_42:
      operator new();
    }

    v55 = __p[1] - 1;
    while (1)
    {
      v32 = v31[1];
      if (v32 == v25)
      {
        break;
      }

      if (v28 > 1)
      {
        if (v32 >= v26)
        {
          v32 %= v26;
        }
      }

      else
      {
        v32 &= v55;
      }

      if (v32 != v29)
      {
        goto LABEL_42;
      }

LABEL_41:
      v31 = *v31;
      if (!v31)
      {
        goto LABEL_42;
      }
    }

    v33 = v31[2];
    v34 = v9;
    v35 = v34;
    if (v33 != v34)
    {
      WeakRetained = [v33 isEqualToString:v34];

      if (WeakRetained)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

LABEL_43:
    v36 = *(v22 + 5);
    *(v31 + 5) = *(v22 + 7);
    *(v31 + 3) = v36;
    v37 = *(v22 + 9);
    v38 = *(v22 + 11);
    v39 = *(v22 + 13);
    *(v31 + 13) = *(v22 + 15);
    *(v31 + 11) = v39;
    *(v31 + 9) = v38;
    *(v31 + 7) = v37;

LABEL_44:
    v40 = v22[1];
    if (v40)
    {
      do
      {
        v41 = v40;
        v40 = *v40;
      }

      while (v40);
    }

    else
    {
      do
      {
        v41 = v22[2];
        v42 = *v41 == v22;
        v22 = v41;
      }

      while (!v42);
    }

    v22 = v41;
  }

  while (v41 != (v60 + 224));
  for (i = v62; i; i = *i)
  {
    v9 = i[2];
    if (!v68)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v44 = [MEMORY[0x277CCABB0] numberWithLongLong:{*(*(*v68 + 48))(v68, i + 3)}];
    [v56 setObject:v44 forKeyedSubscript:v9];
  }

LABEL_55:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>>>::~__hash_table(__p);
  [v58 setDataCountBySource:v56];

LABEL_56:
  std::__function::__value_func<HDStatisticsPresence const& ()(HDStatisticsRelative<HDStatisticsPresence> const&)>::~__value_func[abi:ne200100](v67);
  v45 = [*(a1 + 16) _unitForChangeInCanonicalUnit];
  v46 = [v58 averageQuantity];
  if (v46)
  {
    v9 = [v58 averageQuantity];
    if (([v9 isCompatibleWithUnit:v45] & 1) == 0)
    {

      goto LABEL_70;
    }
  }

  v47 = [v58 minimumQuantity];
  if (v47)
  {
    WeakRetained = [v58 minimumQuantity];
    if (![WeakRetained isCompatibleWithUnit:v45])
    {
      v48 = 1;
      goto LABEL_64;
    }
  }

  v49 = [v58 maximumQuantity];
  if (v49)
  {
    v50 = [v58 maximumQuantity];
    v51 = [v50 isCompatibleWithUnit:v45];

    v48 = v51 ^ 1;
    if (v47)
    {
      goto LABEL_64;
    }

LABEL_68:
    if (!v46)
    {
      goto LABEL_69;
    }

LABEL_65:

    if ((v48 & 1) == 0)
    {
      goto LABEL_71;
    }

LABEL_70:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Expected compatibility with %@", v45, v54}];
    goto LABEL_71;
  }

  v48 = 0;
  if (!v47)
  {
    goto LABEL_68;
  }

LABEL_64:

  if (v46)
  {
    goto LABEL_65;
  }

LABEL_69:

  if (v48)
  {
    goto LABEL_70;
  }

LABEL_71:

  v52 = *MEMORY[0x277D85DE8];

  return v58;
}