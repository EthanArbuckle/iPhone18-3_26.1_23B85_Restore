void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEF768;
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

  HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 576) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::configureMergeAnchor(uint64_t a1, void *a2)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 592), a2);
  v7 = a2;
  v4 = *(a1 + 592);
  v5 = *(a1 + 568);
  *(a1 + 568) = v4;
  v6 = v4;

  HDStatisticsBucket<HDStatisticsNoiseLevel>::setStatisticsConfiguration(a1 + 120, *(a1 + 568));
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 272) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 576))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsNoiseLevel>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsNoiseLevel>::_mergeThroughTime(v4, v4[1]);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(v4);
  }

  return v1;
}

void sub_228F51754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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

    goto LABEL_23;
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

      if (*(a1 + 40))
      {
        if (*(a1 + 576))
        {
          v15 = -1.79769313e308;
        }

        else
        {
          v16 = *(a1 + 176);
          v15 = *(a1 + 120);
          if (v16 <= v15)
          {
            v16 = -1.79769313e308;
          }

          if (v16 >= v15)
          {
            v15 = v16;
          }
        }
      }

      else
      {
        v15 = -1.79769313e308;
        if (*(a1 + 176) > *(a1 + 120))
        {
          v15 = *(a1 + 176);
        }
      }

      if (v15 > *(a2 + 8))
      {
        v17 = *(a2 + 16);
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

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
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

  [v9 sortUsingComparator:&__block_literal_global_892];
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveInvalidateInterval(a1, v49, v68);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveInvalidateInterval(a1, 0, v68))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveAddSample(a1, v55, 1, v51);
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
      HDStatisticsBucket<HDStatisticsNoiseLevel>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsNoiseLevel>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_statisticsFromFinishedBucket(a1, (a1 + 120));
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::advanceBucket((a1 + 112), v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_notifyForCurrentBucket(a1);
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_notifyForCurrentBucket(a1);
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

void sub_228F5200C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 578) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveInvalidateInterval(a1, v7, a3);
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 576) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 576) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
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
  HDStatisticsNoiseLevel::archive((a1 + 240), &v40);
  statistics::Statistics::operator=(*(&v23 + 1), &v40);
  statistics::Statistics::~Statistics(&v40);
  v9 = *(a1 + 336);
  if (v9 != a1 + 344)
  {
    HDStatisticsNoiseLevel::archive((v9 + 40), &v40);
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

void sub_228F52854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v33 = a2;
  *(a1 + 576) = [v33 decodeBoolForKey:@"needs_config"];
  v3 = v33;
  HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(&v35.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *__p = 0u;
  v37 = 0u;
  v74 = 0;
  PB::Reader::Reader(v73, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v74]);
  v66 = &unk_283BF1A08;
  v67 = 0;
  v71 = 0;
  v69 = 0;
  v70 = 0;
  v72 = 0;
  statistics::StatisticsEngine::readFrom(&v66, v73);
  v4 = v67;
  v35.n128_u64[0] = v68;
  if (v67)
  {
    v41 = 0;
    v44 = 0uLL;
    v46 = 0;
    v45 = 0;
    memset(v47, 0, sizeof(v47));
    v48 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
    v49 = 257;
    v51[1] = 0;
    v51[0] = 0;
    v50 = v51;
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
    v38 = vextq_s8(*(v4 + 8), *(v4 + 8), 8uLL);
    v6 = *(v4 + 72);
    v39 = *(v4 + 64);
    LOWORD(v40) = *(v4 + 185);
    v42 = vextq_s8(*(v4 + 24), *(v4 + 24), 8uLL);
    v43 = v6;
    v7 = *(v4 + 80);
    for (i = *(v4 + 88); v7 != i; ++v7)
    {
      v9 = *v7;
      LOWORD(v77) = 1;
      BYTE8(v77) = 0;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v75 = vextq_s8(*(v9 + 24), *(v9 + 24), 8uLL);
      *&v76 = v10;
      *(&v76 + 1) = v11;
      BYTE9(v77) = *(v9 + 41);
      BYTE10(v77) = *(v9 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v47, v75.i8);
    }

    v34 = a1;
    v12 = *(v4 + 104);
    if (v12)
    {
      HDStatisticsNoiseLevel::unarchive(v12, v5);
      *&v47[40] = v76;
      *&v47[56] = v77;
      *&v47[72] = v78[0];
      *&v47[82] = *(v78 + 10);
      *&v47[24] = v75;
      objc_storeStrong(&v48, v79);
      v49 = v80;
    }

    v14 = *(v4 + 136);
    for (j = *(v4 + 144); v14 != j; ++v14)
    {
      v15 = *v14;
      HDStatisticsNoiseLevel::unarchive(*v14, v5);
      v16 = *(v15 + 18);
      v17 = v51[0];
      if (!v51[0])
      {
LABEL_14:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v18 = v17;
          v19 = v17[4];
          if (v19 <= v16)
          {
            break;
          }

          v17 = *v18;
          if (!*v18)
          {
            goto LABEL_14;
          }
        }

        if (v19 >= v16)
        {
          break;
        }

        v17 = v18[1];
        if (!v17)
        {
          goto LABEL_14;
        }
      }

      v20 = *(v78 + 10);
      v22 = v77;
      v21 = v78[0];
      v23 = v75;
      *(v18 + 7) = v76;
      *(v18 + 9) = v22;
      *(v18 + 11) = v21;
      *(v18 + 98) = v20;
      *(v18 + 5) = v23;
      objc_storeStrong(v18 + 15, v79);
      *(v18 + 64) = v80;
    }

    a1 = v34;
    v24 = *(v4 + 40);
    for (k = *(v4 + 48); v24 != k; v24 += 8)
    {
      v27 = *(*v24 + 8);
      v26 = *(*v24 + 16);
      if (v27 >= v26)
      {
        v28 = *(*v24 + 16);
      }

      else
      {
        v28 = *(*v24 + 8);
      }

      if (v26 < v27)
      {
        v26 = *(*v24 + 8);
      }

      HKIntervalMask<double>::_insertInterval(&v44, v28, v26);
    }

    HDStatisticsBucket<HDStatisticsNoiseLevel>::operator=(&v35.n128_i64[1], &v38);
    HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(&v38);
  }

  v29 = v69;
  for (m = v70; v29 != m; v29 += 8)
  {
    v31 = *(*v29 + 8);
    v32 = *(*v29 + 16);
    v38 = vextq_s8(*(*v29 + 24), *(*v29 + 24), 8uLL);
    v39 = v31;
    v40 = v32;
    LOWORD(v41) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](__p, v38.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v66);

  HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::operator=((a1 + 112), &v35);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(&v35.n128_i64[1]);
}

void sub_228F52DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(&STACK[0x380]);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a3);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x330]);
  v9 = STACK[0x318];
  if (STACK[0x318])
  {
    STACK[0x320] = v9;
    operator delete(v9);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x2F0]);
  std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(STACK[0x2E0]);

  v10 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v10;
    operator delete(v10);
  }

  objc_destroyWeak((v7 + 88));
  v11 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v11;
    operator delete(v11);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x3B0]);
  HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 257;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 208) = 257;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 1065353216;
  *(a1 + 328) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 336) = 1065353216;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 1065353216;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 1065353216;
  return a1;
}

void sub_228F52FC4(_Unwind_Exception *a1)
{
  v5 = v2;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 104) = v7;
    operator delete(v7);
  }

  objc_destroyWeak((v1 + 88));
  v8 = *v4;
  if (*v4)
  {
    *(v1 + 72) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 432);
  if (v2)
  {
    *(a1 + 440) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(uint64_t a1)
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
  std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(*(a1 + 224));

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

void std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_configureForStartTime(uint64_t a1)
{
  v27 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v27];

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
  HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v23 = 1;
  }

  v22 = *(a1 + 56);
  v24 = *(a1 + 24) & 1;
  if (v26 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v26, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  HDStatisticsBucket<HDStatisticsNoiseLevel>::setStatisticsConfiguration(v21, *(a1 + 592));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v27;
  HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(v17);
  *(a1 + 576) = 0;
  return HDStatisticsBucket<HDStatisticsNoiseLevel>::~HDStatisticsBucket(v21);
}

void HDStatisticsBucket<HDStatisticsNoiseLevel>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 32), a2);
  v4 = a2;
  HDStatisticsNoiseLevel::configure((a1 + 120), v4);
}

void *HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsNoiseLevel>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 54), a2 + 27);
  v4 = a2[28].n128_u64[1];
  a2[28].n128_u64[1] = 0;
  v5 = a1[57];
  a1[57] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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

  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel((a1 + 120), (a2 + 120));
  *(a1 + 224) = 0;
  v10 = (a1 + 224);
  *(a1 + 216) = a1 + 224;
  *(a1 + 232) = 0;
  v11 = *(a2 + 216);
  if (v11 != (a2 + 224))
  {
    do
    {
      v12 = *v10;
      v13 = (a1 + 224);
      if (*(a1 + 216) == v10)
      {
        goto LABEL_11;
      }

      v14 = *v10;
      v15 = (a1 + 224);
      if (v12)
      {
        do
        {
          v13 = v14;
          v14 = v14[1];
        }

        while (v14);
      }

      else
      {
        do
        {
          v13 = v15[2];
          v16 = *v13 == v15;
          v15 = v13;
        }

        while (v16);
      }

      v17 = v11[4];
      if (v13[4] < v17)
      {
LABEL_11:
        if (v12)
        {
          v18 = v13 + 1;
        }

        else
        {
          v18 = (a1 + 224);
        }

        if (!*v18)
        {
LABEL_22:
          operator new();
        }
      }

      else
      {
        if (!v12)
        {
          goto LABEL_22;
        }

        while (1)
        {
          while (1)
          {
            v19 = v12;
            v20 = v12[4];
            if (v20 <= v17)
            {
              break;
            }

            v12 = *v19;
            if (!*v19)
            {
              goto LABEL_22;
            }
          }

          if (v20 >= v17)
          {
            break;
          }

          v12 = v19[1];
          if (!v12)
          {
            goto LABEL_22;
          }
        }
      }

      v21 = v11[1];
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
          v22 = v11[2];
          v16 = *v22 == v11;
          v11 = v22;
        }

        while (!v16);
      }

      v11 = v22;
    }

    while (v22 != (a2 + 224));
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

void sub_228F537E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v11 + 344);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 304);
  v14 = *(v11 + 280);
  if (v14)
  {
    *(v11 + 288) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 240);
  std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(*v12);

  v15 = *a10;
  if (*a10)
  {
    *(v11 + 104) = v15;
    operator delete(v15);
  }

  objc_destroyWeak((v11 + 88));
  v16 = *a11;
  if (*a11)
  {
    *(v11 + 72) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsNoiseLevel>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsNoiseLevel>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsNoiseLevel>::operator=(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  v12 = *(a2 + 178);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 178) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  *(a1 + 120) = *(a2 + 120);
  objc_storeStrong((a1 + 200), *(a2 + 200));
  v14 = a1 + 224;
  v13 = *(a1 + 224);
  *(a1 + 208) = *(a2 + 208);
  std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(v13);
  *(a1 + 216) = *(a2 + 216);
  v16 = *(a2 + 224);
  v17 = *(a2 + 232);
  v15 = (a2 + 224);
  *(a1 + 224) = v16;
  *(a1 + 232) = v17;
  if (v17)
  {
    *(v16 + 16) = v14;
    *(a2 + 216) = v15;
    *v15 = 0;
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

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_statisticsFromFinishedBucket(uint64_t a1, double *a2)
{
  v103 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 5;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v76 = [v5 initWithTimeIntervalSinceReferenceDate:a2[v6]];
  v78 = a2;
  if (a2[1] == 1.79769313e308)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a2[6]];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a2[1]];
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
      v12 = [v11 underlyingSampleType];

      v9 = v12;
    }
  }

  v13 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v76 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *(v78 + 35);
      v17 = *(v78 + 36);
      while (v16 != v17)
      {
        v18 = *v16;
        v19 = objc_loadWeakRetained((a1 + 48));
        v20 = [v19 sourceForSourceID:v18];

        if (v20)
        {
          if (([v15 containsObject:v20] & 1) == 0)
          {
            [v15 addObject:v20];
          }
        }

        ++v16;
      }

      v21 = [v15 copy];
      [v13 _setSources:v21];
    }
  }

  v101[0] = &unk_283BEF838;
  v102 = v101;
  v77 = v13;
  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(&v84, (v78 + 15));
  if (!v102)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v22 = (*(*v102 + 48))(v102, &v84);
  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(&v92, v22);

  HDStatisticsNoiseLevel::finalizeSamples(&v92);
  v80 = *(a1 + 24);
  v23 = _HKStatisticsOptionBaselineRelativeQuantities();
  v24 = *(a1 + 16);
  if ((v23 & v80) != 0)
  {
    [v24 _unitForChangeInCanonicalUnit];
  }

  else
  {
    [v24 canonicalUnit];
  }
  v79 = ;
  if ((v80 & 2) != 0)
  {
    v25 = 0.0;
    if (v93 > 0.0 && v92 > 0.0)
    {
      v25 = log10(v92 / v93) * 10.0;
    }

    v26 = [MEMORY[0x277CCD7E8] quantityWithUnit:v79 doubleValue:v25];
    [v77 setAverageQuantity:v26];
  }

  if ((v80 & 4) != 0)
  {
    v27 = [MEMORY[0x277CCD7E8] quantityWithUnit:v79 doubleValue:v95];
    [v77 setMinimumQuantity:v27];
  }

  if ((v80 & 8) != 0)
  {
    v28 = [MEMORY[0x277CCD7E8] quantityWithUnit:v79 doubleValue:v94];
    [v77 setMaximumQuantity:v28];
  }

  if ((v80 & 0x20) != 0)
  {
    v29 = v98;
    v30 = v99;
    v31 = [MEMORY[0x277CCD7E8] quantityWithUnit:v79 doubleValue:v97];
    [v77 setMostRecentQuantity:v31];

    v32 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v29 end:v30];
    [v77 setMostRecentQuantityDateInterval:v32];
  }

  [v77 setDataCount:v96];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_100;
  }

  if ((v80 & 2) != 0)
  {
    v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v74 = 0;
  }

  if ((v80 & 4) != 0)
  {
    v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v72 = 0;
  }

  if ((v80 & 8) != 0)
  {
    v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v70 = 0;
  }

  if ((v80 & 0x20) != 0)
  {
    v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v73 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v73 = 0;
    v71 = 0;
  }

  v75 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v82 = 0u;
  v83 = 1065353216;
  v33 = *(v78 + 27);
  if (v33 == v78 + 28)
  {
    goto LABEL_91;
  }

  do
  {
    v34 = HDStatisticsBucket<HDStatisticsNoiseLevel>::_bundleIdentifierForSourceID(v78, *(v33 + 4));
    v35 = v34;
    if (!v34)
    {
      goto LABEL_68;
    }

    v36 = [v34 hash];
    v37 = v36;
    if (!__p[1])
    {
      goto LABEL_66;
    }

    v38 = vcnt_s8(__p[1]);
    v38.i16[0] = vaddlv_u8(v38);
    v39 = v38.u32[0];
    if (v38.u32[0] > 1uLL)
    {
      v40 = v36;
      if (v36 >= __p[1])
      {
        v40 = v36 % __p[1];
      }
    }

    else
    {
      v40 = (__p[1] - 1) & v36;
    }

    v41 = *(__p[0] + v40);
    if (!v41 || (v42 = *v41) == 0)
    {
LABEL_66:
      operator new();
    }

    while (1)
    {
      v43 = v42[1];
      if (v43 == v37)
      {
        break;
      }

      if (v39 > 1)
      {
        if (v43 >= __p[1])
        {
          v43 %= __p[1];
        }
      }

      else
      {
        v43 &= __p[1] - 1;
      }

      if (v43 != v40)
      {
        goto LABEL_66;
      }

LABEL_65:
      v42 = *v42;
      if (!v42)
      {
        goto LABEL_66;
      }
    }

    v44 = v42[2];
    v45 = v35;
    v46 = v45;
    if (v44 != v45)
    {
      v47 = [v44 isEqualToString:v45];

      if (v47)
      {
        goto LABEL_67;
      }

      goto LABEL_65;
    }

LABEL_67:
    *(v42 + 3) = *(v33 + 5);
    v48 = *(v33 + 7);
    v49 = *(v33 + 9);
    v50 = *(v33 + 11);
    *(v42 + 82) = *(v33 + 98);
    *(v42 + 9) = v50;
    *(v42 + 7) = v49;
    *(v42 + 5) = v48;
    objc_storeStrong(v42 + 13, *(v33 + 15));
    *(v42 + 56) = *(v33 + 64);

LABEL_68:
    v51 = *(v33 + 1);
    if (v51)
    {
      do
      {
        v52 = v51;
        v51 = *v51;
      }

      while (v51);
    }

    else
    {
      do
      {
        v52 = *(v33 + 2);
        v53 = *v52 == v33;
        v33 = v52;
      }

      while (!v53);
    }

    v33 = v52;
  }

  while (v52 != v78 + 28);
  for (i = v82; i; i = *i)
  {
    v55 = i[2];
    if (!v102)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v56 = (*(*v102 + 48))(v102, i + 3);
    HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(&v84, v56);
    HDStatisticsNoiseLevel::finalizeSamples(&v84);
    if ((v80 & 2) != 0)
    {
      v58 = v85;
      v59 = 0.0;
      if (v85 > 0.0)
      {
        v57 = v84;
        if (v84 > 0.0)
        {
          v59 = log10(v84 / v85) * 10.0;
        }
      }

      v60 = [MEMORY[0x277CCD7E8] quantityWithUnit:v79 doubleValue:{v59, v58, v57}];
      [v74 setObject:v60 forKeyedSubscript:v55];
    }

    if ((v80 & 4) != 0)
    {
      v61 = [MEMORY[0x277CCD7E8] quantityWithUnit:v79 doubleValue:v87];
      [v72 setObject:v61 forKeyedSubscript:v55];
    }

    if ((v80 & 8) != 0)
    {
      v62 = [MEMORY[0x277CCD7E8] quantityWithUnit:v79 doubleValue:v86];
      [v70 setObject:v62 forKeyedSubscript:v55];
    }

    if ((v80 & 0x20) != 0)
    {
      v63 = v89;
      v64 = v90;
      v65 = [MEMORY[0x277CCD7E8] quantityWithUnit:v79 doubleValue:v88];
      [v71 setObject:v65 forKeyedSubscript:v55];

      v66 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v63 end:v64];
      [v73 setObject:v66 forKeyedSubscript:v55];
    }

    if (!v102)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v67 = [MEMORY[0x277CCABB0] numberWithLongLong:{*((*(*v102 + 48))(v102, i + 3) + 32)}];
    [v75 setObject:v67 forKeyedSubscript:v55];
  }

LABEL_91:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsNoiseLevel>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsNoiseLevel>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsNoiseLevel>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsNoiseLevel>>>::~__hash_table(__p);
  if ((v80 & 2) != 0)
  {
    [v77 setAverageQuantityBySource:v74];
  }

  if ((v80 & 4) != 0)
  {
    [v77 setMinimumQuantityBySource:v72];
  }

  if ((v80 & 8) != 0)
  {
    [v77 setMaximumQuantityBySource:v70];
  }

  if ((v80 & 0x20) != 0)
  {
    [v77 setMostRecentQuantityBySource:v71];
    [v77 setMostRecentQuantityDateIntervalBySource:v73];
  }

  [v77 setDataCountBySource:v75];

LABEL_100:
  std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsNoiseLevel const&)>::~__value_func[abi:ne200100](v101);
  v68 = *MEMORY[0x277D85DE8];

  return v77;
}

void sub_228F54714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51)
{
  std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsNoiseLevel const&)>::~__value_func[abi:ne200100](v51 - 160);

  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsNoiseLevel>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 264);
  v2 = *(a1 + 280);
  if (v1 != (*(a1 + 288) - v2) >> 3)
  {
    *(a1 + 288) = v2;
    std::vector<long long>::reserve((a1 + 280), v1);
    for (i = *(a1 + 256); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 280, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 280];
    }
  }
}

void HDStatisticsBucket<HDStatisticsNoiseLevel>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    while (1)
    {
      v6 = *(a1 + 96);
      v7 = *(a1 + 104);
      v8 = 0xAAAAAAAAAAAAAAABLL * (v7 - v6);
      if (v8 == 1)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_89;
      }

      v9 = a2;
      v10 = a2;
      v11 = v5;
      v12 = *(a1 + 96);
      if (v6 != v7)
      {
        do
        {
          v13 = *(v12 + 8);
          v14 = *(v12 + 16);
          if (v13 > v11 && v13 < v10)
          {
            v10 = *(v12 + 8);
          }

          if (v14 > v5)
          {
            v16 = *(v12 + 16);
          }

          else
          {
            v16 = v9;
          }

          if (v14 < v9)
          {
            v11 = v5;
            v9 = v16;
          }

          v12 += 48;
        }

        while (v12 != v7);
      }

      if (v9 >= v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = v9;
      }

      v18 = *(a1 + 16);
      if (v18 > 0.0)
      {
        v19 = v18 * floor(v17 / v18);
        v20 = v18 * floor((v18 + v5) / v18);
        if (v19 >= v20)
        {
          v17 = v19;
        }

        else
        {
          v17 = v20;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (v6 != v7)
      {
        if (v8 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(0xAAAAAAAAAAAAAAABLL * (v7 - v6));
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsNoiseLevel>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      v22 = __clz(v8);
      if (WeakRetained)
      {
        *&v71.var0 = a1;
        v23 = 126 - 2 * v22;
        if (v6 == v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(v6, v7, &v71, v24, 1);
      }

      else
      {
        v37 = 126 - 2 * v22;
        if (v6 == v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v37;
        }
      }

      std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, v24, 1);
      if (*(a1 + 25) == 1)
      {
        v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v66 = 0;
      }

      if (v6 != v7)
      {
        v65 = 0;
        v38 = 0;
        for (i = v6; i != v7; i += 3)
        {
          v40 = i[1];
          *&v70.var0 = *i;
          *&v70.var2 = v40;
          *&v70.var4 = *(i + 4);
          if (v70.var4 && v70.var1 <= v17)
          {
            var2 = v70.var2;
            if (v70.var2 >= v17)
            {
              var0 = v70.var0;
              v70.var2 = v17;
              v42 = var2 > v17;
              v70.var4 = v70.var1 < v17;
              if (v70.var1 < v17)
              {
                var5 = v70.var5;
                var3 = v70.var3;
                v43 = var2 > v17;
                v44 = v17;
LABEL_57:
                HDStatisticsNoiseLevel::applyMaskToSample(&v70, (a1 + 64));
                v46 = *(i + 42);
                v47 = *(i + 41);
                v67 = *(i + 40);
                if (!v70.var4)
                {
                  goto LABEL_74;
                }

                if (v38)
                {
                  v48 = v70.var3;
                  if (v65 == v70.var3 || *(a1 + 24) == 1)
                  {
                    HDStatisticsNoiseLevel::addSample((a1 + 120), &v70, v46 ^ 1);
                    v46 = 1;
                  }
                }

                else
                {
                  HDStatisticsNoiseLevel::addSample((a1 + 120), &v70, v46 ^ 1);
                  v46 = 1;
                  v48 = v70.var3;
                  v65 = v70.var3;
                }

                if (*(a1 + 25) != 1)
                {
                  goto LABEL_73;
                }

                v49 = HDStatisticsBucket<HDStatisticsNoiseLevel>::_bundleIdentifierForSourceID(a1, v48);
                if (!v49)
                {
                  goto LABEL_72;
                }

                v50 = [v66 objectForKeyedSubscript:v49];
                v64 = v50;
                if (v50)
                {
                  if ([v50 longLongValue] != v48 && *(a1 + 24) != 1)
                  {
LABEL_71:

LABEL_72:
LABEL_73:
                    v38 = 1;
LABEL_74:
                    if (v43)
                    {
                      v71.var0 = var0;
                      v71.var1 = v44;
                      v71.var2 = var2;
                      v71.var3 = var3;
                      v71.var4 = v42;
                      v71.var5 = var5;
                      LOBYTE(v72) = v67;
                      BYTE1(v72) = v47;
                      BYTE2(v72) = v46;
                      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v71);
                    }

                    continue;
                  }
                }

                else
                {
                  v63 = [MEMORY[0x277CCABB0] numberWithLongLong:v48];
                  [v66 setObject:v63 forKeyedSubscript:v49];
                }

                v51 = HDStatisticsBucket<HDStatisticsNoiseLevel>::_canonicalSourceIDForSourceID(a1, v48);
                v52 = HDStatisticsBucket<HDStatisticsNoiseLevel>::_statisticsForSource(a1, v51);
                HDStatisticsNoiseLevel::addSample(v52, &v70, v47 ^ 1);
                v47 = 1;
                goto LABEL_71;
              }
            }

            else
            {
              v70.var4 = v70.var2 > v70.var1;
              if (v70.var2 > v70.var1)
              {
                v42 = 0;
                v43 = 0;
                var3 = 0;
                var5 = 0;
                var2 = 0.0;
                v44 = 0.0;
                var0 = 0.0;
                goto LABEL_57;
              }
            }
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 56) = v17;

      if (v6)
      {
        operator delete(v6);
      }

LABEL_90:
      v60 = *(a1 + 56);
      if (v60 == v5)
      {
        v61 = [MEMORY[0x277CCA890] currentHandler];
        v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsNoiseLevel>::_mergeThroughTime(double) [Statistics = HDStatisticsNoiseLevel]"];
        [v61 handleFailureInFunction:v62 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v60 = *(a1 + 56);
      }

      v5 = v60;
      if (v60 >= a2)
      {
        return;
      }
    }

    v25 = *v6;
    v26 = *(v6 + 1);
    v27 = *(v6 + 2);
    v28 = *(v6 + 3);
    v29 = *(v6 + 32);
    v30 = 0.0;
    v31 = *(v6 + 33);
    if (v29)
    {
      if (v26 > a2)
      {
        v29 = 0;
        v32 = v27 > v26;
        v33 = *(v6 + 2);
        v34 = *(v6 + 33);
        v30 = *v6;
        v35 = *(v6 + 1);
LABEL_81:
        v36 = *(v6 + 3);
        goto LABEL_82;
      }

      if (v27 >= a2)
      {
        v29 = v26 < a2;
        v32 = v27 > a2;
        v33 = a2;
        v34 = *(v6 + 33);
        v30 = *v6;
        v35 = a2;
        goto LABEL_81;
      }

      v34 = 0;
      v36 = 0;
      v32 = 0;
      v29 = v27 > v26;
    }

    else
    {
      v34 = 0;
      v36 = 0;
      v32 = 0;
    }

    v33 = *(v6 + 2);
    v35 = 0.0;
    v27 = 0.0;
LABEL_82:
    v53 = *(v6 + 42);
    v54 = *(v6 + 41);
    v55 = *(v6 + 40);
    v71.var0 = *v6;
    v71.var1 = v26;
    v71.var2 = v33;
    v71.var3 = v28;
    v71.var4 = v29;
    v71.var5 = v31;
    *(&v71.var5 + 1) = *(v6 + 34);
    *(&v71.var5 + 5) = *(v6 + 19);
    *&v72 = v30;
    *(&v72 + 1) = v35;
    *&v73 = v27;
    *(&v73 + 1) = v36;
    LOBYTE(v74) = v32;
    HIBYTE(v74) = v34;
    HDStatisticsNoiseLevel::applyMaskToSample(&v71, (a1 + 64));
    if (v71.var4)
    {
      HDStatisticsNoiseLevel::addSample((a1 + 120), &v71, v53 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v56 = HDStatisticsBucket<HDStatisticsNoiseLevel>::_canonicalSourceIDForSourceID(a1, v71.var3);
        v57 = HDStatisticsBucket<HDStatisticsNoiseLevel>::_statisticsForSource(a1, v56);
        HDStatisticsNoiseLevel::addSample(v57, &v71, v54 ^ 1);
      }

      v55 = 1;
      v54 = 1;
      v53 = 1;
    }

    if (v74 == 1)
    {
      *&v70.var4 = v74;
      v58 = v73;
      v59 = *(a1 + 96);
      *v59 = v72;
      *(v59 + 16) = v58;
      *(v59 + 32) = *&v70.var4;
      *(v59 + 40) = v55;
      *(v59 + 41) = v54;
      *(v59 + 42) = v53;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_89:
    *(a1 + 56) = a2;
    goto LABEL_90;
  }
}

void *HDStatisticsBucket<HDStatisticsNoiseLevel>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v3 = (a1 + 224);
  v4 = *(a1 + 224);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = (a1 + 224);
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
    v7 = std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v3 - 1), a2);
    HDStatisticsNoiseLevel::configure((v7 + 5), *(a1 + 32));
    v10 = &v9;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6, v9);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsNoiseLevel>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 304), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsNoiseLevel>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 344), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 344), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsNoiseLevel>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 384), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 384), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void *std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
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

void sub_228F554BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsNoiseLevel>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsNoiseLevel>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsNoiseLevel>,void *>>>::operator()[abi:ne200100](char a1, id *a2)
{
  if (a1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsNoiseLevel>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsNoiseLevel>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsNoiseLevel>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsNoiseLevel>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;

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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel>(HKStatistics *,HDStatisticsBucket<HDStatisticsNoiseLevel> const&)::{lambda(HDStatisticsNoiseLevel const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel>(HKStatistics *,HDStatisticsBucket<HDStatisticsNoiseLevel> const&)::{lambda(HDStatisticsNoiseLevel const&)#1}>,HDStatisticsNoiseLevel const& ()(HDStatisticsNoiseLevel const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsNoiseLevel const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 576) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  v10 = *(a1 + 40);
  if (v10)
  {
    if (*(a1 + 576))
    {
      v11 = -1.79769313e308;
    }

    else
    {
      v11 = *(a1 + 176);
      v13 = *(a1 + 120);
      if (v11 <= v13)
      {
        v11 = -1.79769313e308;
      }

      if (v11 < v13)
      {
        v11 = *(a1 + 120);
      }
    }
  }

  else
  {
    v11 = *(a1 + 176);
    if (v11 <= *(a1 + 120))
    {
      v11 = -1.79769313e308;
    }
  }

  if (v9 >= v11)
  {
    if (v10 && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v14 = *(a2 + 16);
    v15 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
    v12 = (*(*a1 + 128))(a1, v15, a4);
  }

  return v12;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_advanceToTime(uint64_t a1, double a2)
{
  while (*(a1 + 128) <= a2)
  {
    v4 = *(a1 + 552);
    v5 = *(a1 + 544);
    if (v4 == v5)
    {
      v20 = 0;
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
      v6 = [v13 dateIntervalContainingDate:v14 index:&v20];

      HDStatisticsBucket<HDStatisticsNoiseLevel>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsNoiseLevel>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_statisticsFromFinishedBucket(a1, (a1 + 120));
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsNoiseLevel>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsNoiseLevel>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_statisticsFromFinishedBucket(a1, (a1 + 120));
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::advanceBucket((a1 + 112), v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::addSample(uint64_t a1, double *a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = *(a2 + 3);
  v7 = *(a2 + 32);
  v8 = *(a2 + 33);
  v9 = a1 + 8;
  v10 = *(a1 + 8);
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  if (v7)
  {
    if (v4 > v10)
    {
      *&v32 = v3;
      *(&v32 + 1) = v4;
      *&v33 = v5;
      *(&v33 + 1) = v6;
      HIBYTE(v34) = v8;
      LOBYTE(v34) = v5 > v4;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0;
      v10 = v4;
      if (v5 <= v4)
      {
        return;
      }

LABEL_7:
      v13 = *(a1 + 16);
      if (v10 > v13)
      {
        v25 = v32;
        v26 = v33;
        HIBYTE(v27) = HIBYTE(v34);
        LOBYTE(v27) = *&v33 > *(&v32 + 1);
        if (*&v33 <= *(&v32 + 1))
        {
          return;
        }

        goto LABEL_35;
      }

      if (v5 >= v13)
      {
        *&v25 = v32;
        v26 = v33;
        HIBYTE(v27) = HIBYTE(v34);
        *&v33 = v13;
        *(&v25 + 1) = v13;
        v14 = *&v26 > v13;
        LOBYTE(v34) = v10 < v13;
        LOBYTE(v27) = *&v26 > v13;
        if (v10 >= v13)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v14 = 0;
        LOBYTE(v34) = v5 > v10;
        LOBYTE(v27) = 0;
        v13 = v5;
        if (v5 <= v10)
        {
          return;
        }
      }

      v23 = v13;
      v24 = v10;
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 248), v6);
      if (*(a1 + 112) == *(a1 + 104) && *(a1 + 160) <= 0)
      {
        v18.f64[1] = *(a1 + 16);
        v15 = v24;
        v18.f64[0] = v24;
        v19.f64[0] = *(a1 + 8);
        v19.f64[1] = v23;
        v20 = vcgtq_f64(v19, v18);
        v19.f64[0] = v24;
        *(a1 + 48) = vbslq_s8(v20, *(a1 + 8), v19);
      }

      else
      {
        v15 = v24;
        if (v24 < *(a1 + 48))
        {
          v16 = *(a1 + 8);
          if (v24 >= v16)
          {
            v16 = v24;
          }

          *(a1 + 48) = v16;
        }

        if (v23 > *(a1 + 56))
        {
          v17 = *(a1 + 16);
          if (v17 >= v23)
          {
            v17 = v23;
          }

          *(a1 + 56) = v17;
        }
      }

      if (a3 && v15 < *(a1 + 16))
      {
        HDStatisticsBucket<HDStatisticsNoiseLevel>::_mergeThroughTime(v9, v15);
      }

      v28[0] = v32;
      v28[1] = v33;
      v29 = v34;
      v30 = 0;
      v31 = 0;
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v28);
      if (!*(a1 + 200) || *(a1 + 176) <= v4)
      {
        *(a1 + 168) = v3;
        *(a1 + 176) = v4;
        *(a1 + 184) = v5;
        *(a1 + 192) = v6;
        *(a1 + 200) = v7;
        *(a1 + 201) = v8;
      }

      if (*(a1 + 33) == 1)
      {
        v21 = HDStatisticsBucket<HDStatisticsNoiseLevel>::_canonicalSourceIDForSourceID(v9, v6);
        v22 = HDStatisticsBucket<HDStatisticsNoiseLevel>::_statisticsForSource(v9, v21);
        if (!*(v22 + 72) || v22[6] <= v4)
        {
          v22[5] = v3;
          v22[6] = v4;
          v22[7] = v5;
          *(v22 + 8) = v6;
          *(v22 + 72) = v7;
          *(v22 + 73) = v8;
          if (!v14)
          {
            return;
          }

LABEL_35:
          std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 432, &v25);
          return;
        }
      }

LABEL_34:
      if (!v14)
      {
        return;
      }

      goto LABEL_35;
    }

    if (v5 >= v10)
    {
      *(&v32 + 1) = v10;
      *&v33 = v5;
      *(&v33 + 1) = v6;
      HIBYTE(v34) = v8;
      *&v32 = v3;
      LOBYTE(v34) = v5 > v10;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0;
      if (v5 > v10)
      {
        goto LABEL_7;
      }
    }
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 578) == 1)
  {
    *(a1 + 580) = 1;
  }

  else
  {
    *(a1 + 580) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[54], a1[55], 0xCCCCCCCCCCCCCCCDLL * ((a1[55] - a1[54]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F55F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  objc_storeStrong((a1 + 456), *(a1 + 40));
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  v8 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 186) = 0u;
  v9 = *(a1 + 208);
  *(a1 + 208) = v8;
  v10 = v8;

  *(a1 + 216) = 257;
  if (*(a1 + 240))
  {
    v11 = *(a1 + 232);
    v12 = *(a1 + 224);
    *(a1 + 224) = a1 + 232;
    *(v11 + 16) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
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

        std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsNoiseLevel>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsNoiseLevel>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsNoiseLevel>>>::destroy(v13);
  }

  HDStatisticsBucket<HDStatisticsNoiseLevel>::setStatisticsConfiguration(a1 + 8, *(a1 + 456));
  *(a1 + 440) = *(a1 + 432);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 580) == 1)
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

    *(a1 + 580) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F561E4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 576) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F56634(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40F1163A8CLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
          HDStatisticsBucket<HDStatisticsNoiseLevel>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsNoiseLevel>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_statisticsFromFinishedBucket(v15, (v15 + 120));
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsNoiseLevel>::advanceBucket((v15 + 112), v23, v25);

          if (v20)
          {
            v26 = _Block_copy(*(v15 + 96));
            v27 = v26;
            if (v26)
            {
              (*(v26 + 2))(v26, v20);
            }
          }

          if (*(v15 + 580) == 1)
          {
            *(v15 + 580) = 0;
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v9 = *(a1 + 32);
  if (v9 >= a6)
  {
    if (v9 <= a7)
    {
      v10 = v9 < a7;
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
    v10 = a7 > a6;
  }

  v20 = v7;
  v21 = v8;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a2;
  v18 = v10;
  v19 = 0;
  if (*(a1 + 56))
  {
    if (v10)
    {
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
    }

    return 1;
  }

  v12 = *(a1 + 40);
  if (a6 > v12)
  {
    v10 = 0;
  }

  if (v10)
  {
    v13 = a7 > a6;
    if (a7 >= v12)
    {
      v13 = a6 < v12;
    }

    else
    {
      v12 = a7;
    }

    v15 = a6;
    v16 = v12;
    v18 = v13;
    if (v13)
    {
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 576) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsNoiseLevel>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI22HDStatisticsNoiseLevelE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEF8E8;
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 1;
  *(a1 + 626) = 0;
  *(a1 + 628) = 0;
  *(a1 + 632) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEF8E8;
  v2 = *(a1 + 656);
  if (v2)
  {
    *(a1 + 664) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 592);
  if (v3)
  {
    *(a1 + 600) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 624) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 632) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 80, a2);
  v7 = a2;
  v4 = a1[80];
  v5 = a1[77];
  a1[77] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[77]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 256) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 624) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_mergeThroughTime(v3, v4);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

void sub_228F5730C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 626) == 1)
    {
      if (*(a1 + 625))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v15 = *(a2 + 16);
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 627) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 656, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 626) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 626) = 1;
  v61 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v60 = v6;
  if (*(a1 + 625))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 648);
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

  [v9 sortUsingComparator:&__block_literal_global_915];
  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = *(a1 + 648);
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
  v27 = *(a1 + 648);
  *(a1 + 648) = 0;

  *(a1 + 625) = 0;
  if (v8)
  {
    v28 = *(a1 + 656);
    *(a1 + 672) = 0;
    *(a1 + 664) = 0;
    *(a1 + 656) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v62 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 656);
      v39 = *(a1 + 664);
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
            v39 = *(a1 + 664);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 664) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 656);
  v29 = *(a1 + 664);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v49, v61);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, 0, v61))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_primitiveAddSample(a1, v55, 1, v51);
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

  if (*(a1 + 40) && *(a1 + 600) != *(a1 + 592))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }

  *(a1 + 626) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 628) == 1)
    {
      *(a1 + 628) = 0;
      v6 = v60;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 626) = 0;
LABEL_81:

  v58 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228F57B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 626) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 626))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 626) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 648);
    *(a1 + 648) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 625) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 625) & 1) == 0)
  {
    v8 = *(a1 + 648);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 648);
      *(a1 + 648) = v9;

      v8 = *(a1 + 648);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 624) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 624) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 624) forKey:@"needs_config"];
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
  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::archive(&v40, (a1 + 240));
  statistics::Statistics::operator=(*(&v23 + 1), &v40);
  statistics::Statistics::~Statistics(&v40);
  v9 = *(a1 + 384);
  if (v9 != a1 + 392)
  {
    HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::archive(&v40, (v9 + 40));
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
  v12 = *(a1 + 592);
  if (v12 != *(a1 + 600))
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

void sub_228F583C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v33 = a2;
  *(a1 + 624) = [v33 decodeBoolForKey:@"needs_config"];
  v3 = v33;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::HDStatisticsBucket(&v36.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *v37 = 0u;
  v38 = 0u;
  v78 = 0;
  PB::Reader::Reader(v77, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v78]);
  v70 = &unk_283BF1A08;
  v71 = 0;
  v75 = 0;
  v73 = 0;
  v74 = 0;
  v76 = 0;
  statistics::StatisticsEngine::readFrom(&v70, v77);
  v4 = v71;
  v36.n128_u64[0] = v72;
  if (v71)
  {
    v35 = v3;
    v42 = 0;
    v45 = 0uLL;
    v46 = 0;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    LOWORD(v53) = 0;
    memset(v54, 0, 74);
    v55[1] = 0;
    v47 = 0;
    memset(v48, 0, sizeof(v48));
    v49 = 0;
    v55[0] = 0;
    v54[10] = v55;
    v56 = 0u;
    v57 = 0u;
    v58 = 1065353216;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
    v63 = 1065353216;
    v64 = 0u;
    v65 = 0u;
    v66 = 1065353216;
    v67 = 0u;
    v68 = 0u;
    v69 = 1065353216;
    v39 = vextq_s8(*(v71 + 8), *(v71 + 8), 8uLL);
    v5 = *(v71 + 72);
    v40 = *(v71 + 64);
    LOWORD(v41) = *(v71 + 185);
    v43 = vextq_s8(*(v71 + 24), *(v71 + 24), 8uLL);
    v44 = v5;
    v6 = *(v71 + 80);
    for (i = *(v71 + 88); v6 != i; ++v6)
    {
      v8 = *v6;
      WORD4(v80) = 1;
      LOBYTE(v81) = 0;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      *v79 = vextq_s8(*(v8 + 24), *(v8 + 24), 8uLL);
      *&v79[16] = v9;
      *&v80 = v10;
      BYTE1(v81) = *(v8 + 41);
      BYTE2(v81) = *(v8 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v48, v79);
    }

    v11 = v4[13];
    if (v11)
    {
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::unarchive(v79, v11);
      v49 = *v79;
      v50 = *&v79[8];
      v51 = v80;
      v52 = v81;
      v53 = v82;
      v54[0] = v83;
      if (v54[1])
      {
        v54[2] = v54[1];
        operator delete(v54[1]);
      }

      *&v54[1] = v84;
      v54[3] = v85;
      v85 = 0;
      v84 = 0uLL;
      v54[4] = v86;
      *&v54[5] = v87;
      *&v54[7] = v88;
      LOWORD(v54[9]) = v89;
    }

    v34 = a1;
    v13 = v4[17];
    for (j = v4[18]; v13 != j; ++v13)
    {
      v14 = *v13;
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::unarchive(v79, *v13);
      v15 = *(v14 + 144);
      v16 = v55[0];
      if (!v55[0])
      {
LABEL_15:
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
            goto LABEL_15;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v16 = v17[1];
        if (!v16)
        {
          goto LABEL_15;
        }
      }

      v19 = v17[14];
      *(v17 + 10) = *v79;
      v20 = v80;
      v21 = v82;
      v22 = v81;
      *(v17 + 3) = *&v79[8];
      *(v17 + 4) = v20;
      *(v17 + 5) = v22;
      v17[12] = v21;
      v17[13] = v83;
      if (v19)
      {
        v17[15] = v19;
        operator delete(v19);
        v17[14] = 0;
        v17[15] = 0;
        v17[16] = 0;
      }

      *(v17 + 7) = v84;
      v17[16] = v85;
      v85 = 0;
      v84 = 0uLL;
      v17[17] = v86;
      v23 = v88;
      *(v17 + 9) = v87;
      *(v17 + 10) = v23;
      *(v17 + 88) = v89;
    }

    a1 = v34;
    v24 = v4[5];
    for (k = v4[6]; v24 != k; v24 += 8)
    {
      v27 = *(*v24 + 8);
      v26 = *(*v24 + 16);
      if (v27 >= v26)
      {
        v28 = *(*v24 + 16);
      }

      else
      {
        v28 = *(*v24 + 8);
      }

      if (v26 < v27)
      {
        v26 = *(*v24 + 8);
      }

      HKIntervalMask<double>::_insertInterval(&v45, v28, v26);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::operator=(&v36.n128_i64[1], &v39);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v39);
    v3 = v35;
  }

  v29 = v73;
  for (m = v74; v29 != m; v29 += 8)
  {
    v31 = *(*v29 + 8);
    v32 = *(*v29 + 16);
    v39 = vextq_s8(*(*v29 + 24), *(*v29 + 24), 8uLL);
    v40 = v31;
    v41 = v32;
    LOWORD(v42) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](v37, v39.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v70);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::operator=((a1 + 112), &v36);
  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v36.n128_i64[1]);
}

void sub_228F5896C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(v7 + 432);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a3);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v7 + 352);
  v9 = STACK[0x378];
  if (STACK[0x378])
  {
    STACK[0x380] = v9;
    operator delete(v9);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v7 + 288);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::destroy(STACK[0x340]);
  v10 = STACK[0x2F0];
  if (STACK[0x2F0])
  {
    STACK[0x2F8] = v10;
    operator delete(v10);
  }

  v11 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v11;
    operator delete(v11);
  }

  objc_destroyWeak((v7 + 88));
  v12 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v12;
    operator delete(v12);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x410]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 242) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 1065353216;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = 1065353216;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 1065353216;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 1065353216;
  return a1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

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

  objc_storeStrong(&v26, *(a1 + 640));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v17);
  *(a1 + 624) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::~HDStatisticsBucket(v21);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  v11 = *(a2 + 144);
  v12 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v11;
  *(a1 + 160) = v12;
  *(a1 + 128) = v10;
  v13 = *(a2 + 184);
  *(a1 + 192) = 0;
  *(a1 + 184) = v13;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 192, *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 4);
  *(a1 + 216) = *(a2 + 216);
  v14 = *(a2 + 240);
  v15 = *(a2 + 256);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v14;
  v16 = (a1 + 272);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 256) = v15;
  *(a1 + 264) = a1 + 272;
  v17 = *(a2 + 264);
  if (v17 != (a2 + 272))
  {
    v18 = 0;
    v19 = (a1 + 272);
    while (1)
    {
      v20 = (a1 + 272);
      if (v19 == v16)
      {
        goto LABEL_12;
      }

      v21 = v18;
      v22 = (a1 + 272);
      if (v18)
      {
        do
        {
          v20 = v21;
          v21 = v21[1];
        }

        while (v21);
      }

      else
      {
        do
        {
          v20 = v22[2];
          v23 = *v20 == v22;
          v22 = v20;
        }

        while (v23);
      }

      v24 = v17[4];
      if (v20[4] < v24)
      {
LABEL_12:
        if (v18)
        {
          v25 = v20 + 1;
        }

        else
        {
          v25 = (a1 + 272);
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
            if (v27 <= v24)
            {
              break;
            }

            v18 = *v26;
            if (!*v26)
            {
              goto LABEL_23;
            }
          }

          if (v27 >= v24)
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
          v23 = *v29 == v17;
          v17 = v29;
        }

        while (!v23);
      }

      if (v29 == (a2 + 272))
      {
        break;
      }

      v18 = *v16;
      v19 = *(a1 + 264);
      v17 = v29;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 288, a2 + 288);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 328, *(a2 + 328), *(a2 + 336), (*(a2 + 336) - *(a2 + 328)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 352, a2 + 352);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 392, a2 + 392);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 432, a2 + 432);
  return a1;
}

void sub_228F59194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 392);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 352);
  v14 = *(v10 + 328);
  if (v14)
  {
    *(v10 + 336) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 288);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::destroy(*v12);
  v15 = *v11;
  if (*v11)
  {
    *(v10 + 200) = v15;
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = objc_alloc(MEMORY[0x277CBEAA8]);
  v5 = 40;
  if (v3 != -1.79769313e308)
  {
    v5 = 0;
  }

  v22 = [v4 initWithTimeIntervalSinceReferenceDate:*(a2 + v5)];
  if (*(a2 + 8) == 1.79769313e308)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 48)];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 8)];
  }

  v7 = v6;
  v8 = v22;
  v9 = *(a1 + 16);
  v10 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *(a1 + 16);
    if ([v11 shouldUseUnderlyingTypeForStatistics])
    {
      v12 = [v11 underlyingSampleType];

      v9 = v12;
    }
  }

  v13 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v22 endDate:v7];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *(a2 + 328);
      v17 = *(a2 + 336);
      while (v16 != v17)
      {
        v18 = *v16;
        v19 = objc_loadWeakRetained((a1 + 48));
        v20 = [v19 sourceForSourceID:v18];

        if (v20)
        {
          if (([v15 containsObject:v20] & 1) == 0)
          {
            [v15 addObject:v20];
          }
        }

        ++v16;
      }

      v21 = [v15 copy];
      v8 = v22;
      [v13 _setSources:v21];
    }
  }

  v24[0] = &unk_283BEFAD8;
  v24[3] = v24;
  v13;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](v25, v24);
  v26 = 0;
  operator new();
}

void sub_228F59D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (v38)
  {
  }

  if (v36)
  {
  }

  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 312);
  v2 = *(a1 + 328);
  if (v1 != (*(a1 + 336) - v2) >> 3)
  {
    *(a1 + 336) = v2;
    std::vector<long long>::reserve((a1 + 328), v1);
    for (i = *(a1 + 304); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 328, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 328];
    }
  }
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v56 = (a1 + 272);
    while (1)
    {
      v6 = *(a1 + 96);
      v7 = *(a1 + 104);
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4);
      if (v8 == 1)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_89;
      }

      v9 = a2;
      v10 = a2;
      v11 = v5;
      v12 = *(a1 + 96);
      if (v6 != v7)
      {
        do
        {
          v13 = *(v12 + 8);
          v14 = *(v12 + 16);
          if (v13 > v11 && v13 < v10)
          {
            v10 = *(v12 + 8);
          }

          if (v14 > v5)
          {
            v16 = *(v12 + 16);
          }

          else
          {
            v16 = v9;
          }

          if (v14 < v9)
          {
            v11 = v5;
            v9 = v16;
          }

          v12 += 48;
        }

        while (v12 != v7);
      }

      if (v9 >= v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = v9;
      }

      v18 = *(a1 + 16);
      if (v18 > 0.0)
      {
        v19 = v18 * floor(v17 / v18);
        v20 = v18 * floor((v18 + v5) / v18);
        if (v19 >= v20)
        {
          v17 = v19;
        }

        else
        {
          v17 = v20;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (v6 != v7)
      {
        if (v8 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v65.var0 = a1;
        v22 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, &v65, v23, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v58 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v58 = 0;
      }

      v57 = v6;
      if (v6 != v7)
      {
        v59 = 0;
        v29 = 0;
        v30 = v6;
        while (1)
        {
          var5 = 0;
          v63 = 0u;
          v64 = 0u;
          v62 = 0;
          v32 = *(v30 + 16);
          *&v61.var0 = *v30;
          *&v61.var2 = v32;
          v33 = *(v30 + 32);
          *&v61.var4 = v33;
          var1 = v61.var1;
          p_var4 = &v62;
          if ((v33 & 1) != 0 && v61.var1 > v17)
          {
            v36 = *(v30 + 16);
            v63 = *v30;
            v64 = v36;
            v62 = v33;
            var5 = v61.var5;
            p_var4 = &v61.var4;
          }

          *p_var4 = 0;
          if (v61.var4)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v30);
LABEL_74:
          v30 += 48;
          if (v30 == v7)
          {
            goto LABEL_75;
          }
        }

        for (i = *(a1 + 64); i != *(a1 + 72) && var1 >= *i; i += 2)
        {
          if (var1 < i[1])
          {
            LOBYTE(v38) = *(v30 + 42);
            LOBYTE(v39) = *(v30 + 41);
            v60 = *(v30 + 40);
            goto LABEL_72;
          }
        }

        v38 = *(v30 + 42);
        v39 = *(v30 + 41);
        v60 = *(v30 + 40);
        if (v29)
        {
          var3 = v61.var3;
          if (v59 == v61.var3 || *(a1 + 24) == 1)
          {
            HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v61, v38 ^ 1);
            LOBYTE(v38) = 1;
          }
        }

        else
        {
          HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v61, v38 ^ 1);
          LOBYTE(v38) = 1;
          var3 = v61.var3;
          v59 = v61.var3;
        }

        if (*(a1 + 25) != 1)
        {
          goto LABEL_71;
        }

        v41 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, var3);
        if (!v41)
        {
          goto LABEL_70;
        }

        v42 = [v58 objectForKeyedSubscript:v41];
        v43 = v42;
        if (v42)
        {
          if ([v42 longLongValue] != var3 && *(a1 + 24) != 1)
          {
LABEL_69:

LABEL_70:
LABEL_71:
            v29 = 1;
LABEL_72:
            if (v62)
            {
              *&v65.var0 = v63;
              *&v65.var2 = v64;
              v65.var4 = v62;
              v65.var5 = var5;
              LOBYTE(v66) = v60;
              BYTE1(v66) = v39 & 1;
              BYTE2(v66) = v38 & 1;
              std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v65);
            }

            goto LABEL_74;
          }
        }

        else
        {
          v44 = [MEMORY[0x277CCABB0] numberWithLongLong:var3];
          [v58 setObject:v44 forKeyedSubscript:v41];
        }

        v45 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, var3);
        v46 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v45);
        HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::addSample(v46, &v61, v39 ^ 1);
        LOBYTE(v39) = 1;
        goto LABEL_69;
      }

LABEL_75:
      *(a1 + 216) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 192), v17) + *(a1 + 216);
      v47 = *(a1 + 264);
      if (v47 != v56)
      {
        do
        {
          *(v47 + 17) = HKIntervalMask<double>::removeIntervalsBefore(v47 + 14, v17) + *(v47 + 17);
          v48 = v47[1];
          if (v48)
          {
            do
            {
              v49 = v48;
              v48 = *v48;
            }

            while (v48);
          }

          else
          {
            do
            {
              v49 = v47[2];
              v50 = *v49 == v47;
              v47 = v49;
            }

            while (!v50);
          }

          v47 = v49;
        }

        while (v49 != v56);
      }

      *(a1 + 56) = v17;

      if (v57)
      {
        operator delete(v57);
      }

LABEL_90:
      v53 = *(a1 + 56);
      if (v53 == v5)
      {
        v54 = [MEMORY[0x277CCA890] currentHandler];
        v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration, HDStatisticsTimeInterval>>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration, HDStatisticsTimeInterval>>]"}];
        [v54 handleFailureInFunction:v55 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v53 = *(a1 + 56);
      }

      v5 = v53;
      if (v53 >= a2)
      {
        return;
      }
    }

    v24 = *(v6 + 42);
    v25 = *(v6 + 41);
    v68 = 0;
    v67 = 0u;
    v66 = 0u;
    v26 = *(v6 + 16);
    *&v65.var0 = *v6;
    *&v65.var2 = v26;
    *&v65.var4 = *(v6 + 32);
    v27 = *(a1 + 64);
    v28 = *(a1 + 72);
    if (v27 != v28)
    {
      while (v65.var1 >= *v27)
      {
        if (v65.var1 < v27[1])
        {
          v65.var4 = 0;
          break;
        }

        v27 += 2;
        if (v27 == v28)
        {
          break;
        }
      }
    }

    if (v65.var4)
    {
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v65, v24 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v51 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, v65.var3);
        v52 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v51);
        HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::addSample(v52, &v65, v25 ^ 1);
      }
    }

    *(a1 + 104) = *(a1 + 96);
LABEL_89:
    *(a1 + 56) = a2;
    goto LABEL_90;
  }
}

__n128 *HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::addSample(__n128 *result, HDRawQuantitySample *a2, int a3)
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
    if (v7 || result[1].n128_u64[0])
    {
      return result;
    }

    result->n128_f64[1] = a2->var2 - a2->var1;
    v18 = 1;
    goto LABEL_25;
  }

  if (v6 == 1)
  {
    if (v7)
    {
      return result;
    }

    v8 = 1;
  }

  else
  {
    if (v7 == 2)
    {
      v9 = a2->var2 - a2->var1;
      v10 = result[1].n128_u64[0];
      if (v10)
      {
        v11 = v10 + 1;
        v9 = result->n128_f64[1] + (v9 - result->n128_f64[1]) / v11;
      }

      else
      {
        v11 = 1;
      }

      result->n128_f64[1] = v9;
      result[1].n128_u64[0] = v11;
      v19 = result + 4;
      v20 = 1;
      goto LABEL_28;
    }

    v8 = 2;
  }

  result->n128_u32[0] = v8;
  *(result + 8) = 0u;
  v12 = &result->n128_f64[1];
  v14 = &result[4].n128_i8[8];
  v13 = result[4].n128_u64[1];
  *(&v5[1] + 8) = 0u;
  *(&v5[2] + 8) = 0u;
  *(&v5[3] + 8) = 0u;
  if (!v13)
  {
    *v14 = 0uLL;
    *(&v5[5] + 8) = 0uLL;
LABEL_20:
    *(v5 + 24) = *(v5 + 104);
    *(v5 + 40) = *(v5 + 120);
    v5[3].n128_u16[4] = v5[8].n128_u16[4];
    goto LABEL_21;
  }

  v5[5].n128_u64[0] = v13;
  operator delete(v13);
  v15 = v5[3].n128_u8[8];
  *v14 = 0u;
  *(&v5[5] + 8) = 0u;
  if (!v15 || v5[2].n128_f64[0] <= v5[7].n128_f64[0])
  {
    goto LABEL_20;
  }

LABEL_21:
  v16 = v4->var2 - v4->var1;
  v17 = v5[1].n128_u64[0];
  if (v17)
  {
    v18 = v17 + 1;
    v16 = *v12 + (v16 - *v12) / v18;
  }

  else
  {
    v18 = 1;
  }

  v5->n128_f64[1] = v16;
LABEL_25:
  v5[1].n128_u64[0] = v18;
  v19 = v5 + 4;
  a2 = v4;
  v20 = a3;
LABEL_28:

  return HDStatisticsTimeInterval::addSample(v19, a2, v20);
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 352), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 392), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 392), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 432), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 432), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 264);
  v28 = (a2 + 272);
  if (v2 == (a2 + 272))
  {
    return;
  }

  v27 = a1 + 16;
  do
  {
    v4 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a2, v2[4]);
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
    v30 = v9.u32[0];
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

      if (v30 > 1)
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
    v21 = *(v2 + 5);
    v12[10] = v2[12];
    *(v12 + 4) = v21;
    *(v12 + 3) = v20;
    *(v12 + 2) = v19;
    v12[11] = v2[13];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 12, v2[14], v2[15], (v2[15] - v2[14]) >> 4);
    }

    v12[15] = v2[17];
    v22 = *(v2 + 9);
    v23 = *(v2 + 10);
    *(v12 + 80) = *(v2 + 88);
    *(v12 + 8) = v22;
    *(v12 + 9) = v23;

LABEL_25:
    v24 = v2[1];
    if (v24)
    {
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24);
    }

    else
    {
      do
      {
        v25 = v2[2];
        v26 = *v25 == v2;
        v2 = v25;
      }

      while (!v26);
    }

    v2 = v25;
  }

  while (v25 != v28);
}

void sub_228F5B0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](va);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::~__hash_table(v6);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF9B8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF9B8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 56;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsAverageSampleDuration const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEFA48;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsAverageSampleDuration const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEFA48;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsAverageSampleDuration const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsAverageSampleDuration const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsAverageSampleDuration const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsAverageSampleDuration const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 624) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  if (v9 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v9 end:*(a2 + 16)];
    v11 = (*(*a1 + 128))(a1, v10, a4);
  }

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 600) != *(v2 + 592))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, v2 + 120);
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, v2 + 120);
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, uint64_t *a2, int a3)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 32);
  v8 = *(a2 + 33);
  v36 = *(a2 + 1);
  *v35 = 0;
  v33 = 0u;
  v34 = 0u;
  if ((v7 & 1) != 0 && v6 >= *(a1 + 8))
  {
    *&v33 = v5;
    *(&v33 + 1) = v6;
    v34 = *(a2 + 1);
    v35[0] = v7;
    v35[1] = v8;
    v9 = &v25;
    v10 = v6;
  }

  else
  {
    v9 = v35;
    v10 = 0.0;
  }

  *v9 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  if ((v35[0] & 1) != 0 && ((v11 = *(a1 + 16), *(a1 + 36)) ? (v12 = v10 < v11) : (v12 = v10 <= v11), !v12))
  {
    v13 = v35;
    v26 = v33;
    v27 = v34;
    v28 = *v35;
  }

  else
  {
    v13 = &v28;
  }

  *v13 = 0;
  if (v35[0] == 1)
  {
    v24 = v10;
    v14 = *(&v34 + 1);
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 296), *(&v34 + 1));
    if (*(a1 + 112) == *(a1 + 104) && *(a1 + 144) <= 0)
    {
      v18.f64[1] = *(a1 + 16);
      v15 = v24;
      v18.f64[0] = v24;
      v19.f64[0] = *(a1 + 8);
      *&v19.f64[1] = v34;
      v20 = vcgtq_f64(v19, v18);
      v19.f64[0] = v24;
      *(a1 + 48) = vbslq_s8(v20, *(a1 + 8), v19);
    }

    else
    {
      v15 = v24;
      if (v24 < *(a1 + 48))
      {
        v16 = *(a1 + 8);
        if (v24 >= v16)
        {
          v16 = v24;
        }

        *(a1 + 48) = v16;
      }

      v17 = v34;
      if (*&v34 > *(a1 + 56))
      {
        if (*(a1 + 16) < *&v34)
        {
          v17 = *(a1 + 16);
        }

        *(a1 + 56) = v17;
      }
    }

    if (*(a1 + 32) == 1)
    {
      v21 = *(a1 + 64);
      if (v15 < v21)
      {
        v21 = v15;
      }

      *(a1 + 64) = v21;
    }

    if (a3 && v15 < *(a1 + 16))
    {
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 8, v15);
    }

    v29[0] = v33;
    v29[1] = v34;
    v30 = *v35;
    v31 = 0;
    v32 = 0;
    std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v29);
    if (!*(a1 + 264) || *(a1 + 240) <= v6)
    {
      *(a1 + 232) = v5;
      *(a1 + 240) = v6;
      *(a1 + 248) = v36;
      *(a1 + 264) = v7;
      *(a1 + 265) = v8;
      if (!*(a1 + 184) || *(a1 + 160) <= v6)
      {
        *(a1 + 152) = v5;
        *(a1 + 160) = v6;
        *(a1 + 168) = v36;
        *(a1 + 184) = v7;
        *(a1 + 185) = v8;
      }
    }

    if (*(a1 + 33) == 1)
    {
      v22 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1 + 8, v14);
      v23 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_statisticsForSource(a1 + 8, v22);
      if (!*(v23 + 136) || *(v23 + 14) <= v6)
      {
        *(v23 + 13) = v5;
        *(v23 + 14) = v6;
        *(v23 + 15) = v36;
        *(v23 + 136) = v7;
        *(v23 + 137) = v8;
        if (!*(v23 + 56) || *(v23 + 4) <= v6)
        {
          *(v23 + 3) = v5;
          *(v23 + 4) = v6;
          *(v23 + 5) = v36;
          *(v23 + 56) = v7;
          *(v23 + 57) = v8;
        }
      }
    }
  }

  if (v28 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 480, &v26);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 626) == 1)
  {
    *(a1 + 628) = 1;
  }

  else
  {
    *(a1 + 628) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[60], a1[61], 0xCCCCCCCCCCCCCCCDLL * ((a1[61] - a1[60]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F5C07C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 504), *(a1 + 40));
  *(v8 - 4) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  v9 = 0uLL;
  memset(v19, 0, sizeof(v19));
  v10 = *(a1 + 200);
  *(a1 + 128) = 0;
  *(a1 + 136) = *&v19[4];
  *(a1 + 152) = *&v19[20];
  *(a1 + 168) = *&v19[36];
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (v10)
  {
    *(a1 + 208) = v10;
    operator delete(v10);
    v9 = 0uLL;
  }

  *(a1 + 264) = 0;
  *(a1 + 232) = v9;
  *(a1 + 248) = v9;
  *(a1 + 200) = v9;
  *(a1 + 216) = v9;
  if (*(a1 + 288))
  {
    v11 = *(a1 + 272);
    v12 = *(a1 + 280);
    *(a1 + 272) = a1 + 280;
    *(v12 + 16) = 0;
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
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

        std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>>::destroy(v13);
  }

  objc_storeStrong(v8, *(a1 + 504));
  *(a1 + 488) = *(a1 + 480);
  *a1 = a2;
  v17 = *MEMORY[0x277D85DE8];
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 628) == 1)
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

    *(a1 + 628) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F5C33C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 624) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F5C78C(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40E5794905);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  if ((*(a1 + 56) & 1) == 0)
  {
    v7 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  if (v7 == 1)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v5, a3, a4);
  }

  else
  {
    return 1;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 624) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::archive(uint64_t a1, int *a2)
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
  HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>::archive(v6, (a2 + 2));
  statistics::Statistics::operator=(*(a1 + 128), v6);
  statistics::Statistics::~Statistics(v6);
  v5 = *a2;
  *(a1 + 204) |= 0x100u;
  *(a1 + 136) = v5;
  statistics::Statistics::makeMostRecentDatum(a1);
  v6[0] = &unk_283BEB0A8;
  v10 = 127;
  v7 = vextq_s8(*(a2 + 26), *(a2 + 26), 8uLL);
  v6[1] = *(a2 + 15);
  v6[2] = *(a2 + 16);
  v8 = 0;
  v9 = 0;
  statistics::RawQuantitySample::operator=(*v4, v6);
  PB::Base::~Base(v6);
}

void HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>::archive(uint64_t a1, int8x16_t *a2)
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
  HDStatisticsAverageSampleDuration::archive(a2, v5);
  statistics::Statistics::operator=(*(a1 + 128), v5);
  statistics::Statistics::~Statistics(v5);
  statistics::Statistics::makeAuxiliaryStatistics(a1);
  HDStatisticsTimeInterval::archive(&a2[3].u64[1], v5);
  statistics::Statistics::operator=(*v4, v5);
  statistics::Statistics::~Statistics(v5);
}

double HDStatisticsRelative<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::unarchive(uint64_t a1, void *a2)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 56) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 122) = 0u;
  v6 = a2[16];
  if (v6)
  {
    HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>::unarchive(v12, *(v6 + 8), *(v6 + 128));
    v7 = v14;
    *(v5 + 48) = v13;
    v8 = v12[1];
    *v5 = v12[0];
    *(v5 + 16) = v8;
    *(v5 + 32) = v12[2];
    *(a1 + 64) = v7;
    result = v17;
    v9 = v16;
    *(a1 + 72) = v15;
    *(a1 + 88) = v9;
    *(a1 + 96) = result;
  }

  *a1 = a2[17];
  v10 = a2[14];
  if (v10)
  {
    result = *(v10 + 8);
    v11 = *(v10 + 16);
    *(a1 + 104) = vextq_s8(*(v10 + 24), *(v10 + 24), 8uLL);
    *(a1 + 120) = result;
    *(a1 + 128) = v11;
    *(a1 + 136) = 1;
  }

  return result;
}

double HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>::unarchive(uint64_t a1, HDStatisticsTimeInterval *this, void *a3)
{
  *(a1 + 48) = 0;
  v4 = 0uLL;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  if (a3)
  {
    v5 = a3[3];
    v6 = a3[14];
    if (v6)
    {
      v4 = *(v6 + 24);
      v7 = *(v6 + 8);
      v8 = 1;
      v6 = *(v6 + 16);
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    *a1 = a3[12];
    *(a1 + 8) = v5;
    v4 = vextq_s8(v4, v4, 8uLL);
    *(a1 + 16) = v4;
    *(a1 + 32) = v7;
    *(a1 + 40) = v6;
    *(a1 + 48) = v8;
    *(a1 + 49) = 0;
  }

  if (this)
  {
    HDStatisticsTimeInterval::unarchive(this, &v11);
    *(a1 + 56) = v11;
    v4.i64[0] = v14;
    v9 = v13;
    *(a1 + 64) = v12;
    *(a1 + 80) = v9;
    *(a1 + 88) = v4.i64[0];
  }

  return *v4.i64;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEFB88;
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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEFB88;
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

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 576) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::configureMergeAnchor(uint64_t a1, void *a2)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 74, a2);
  v7 = a2;
  v4 = a1[74];
  v5 = a1[71];
  a1[71] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[71]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 576) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_mergeThroughTime(v3, v4);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

void sub_228F5D78C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 578) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 578) = 1;
  v61 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v60 = v6;
  if (*(a1 + 577))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 600);
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

  [v9 sortUsingComparator:&__block_literal_global_938];
  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = *(a1 + 600);
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

  v30 = [v62 lastObject];
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v49, v61);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, 0, v61))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, v55, 1, v51);
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

  if (*(a1 + 40) && *(a1 + 552) != *(a1 + 544))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
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
      v6 = v60;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 578) = 0;
LABEL_81:

  v58 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228F5DFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 578) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v7, a3);
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 576) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 576) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
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
  HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>::archive(&v40, (a1 + 240));
  statistics::Statistics::operator=(*(&v23 + 1), &v40);
  statistics::Statistics::~Statistics(&v40);
  v9 = *(a1 + 336);
  if (v9 != a1 + 344)
  {
    HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>::archive(&v40, (v9 + 40));
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

void sub_228F5E840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v31 = a2;
  *(a1 + 576) = [v31 decodeBoolForKey:@"needs_config"];
  v3 = v31;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v34.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *v35 = 0u;
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
  v34.n128_u64[0] = v66;
  if (v65)
  {
    v32 = v3;
    v40 = 0;
    v43 = 0uLL;
    v45 = 0;
    v44 = 0;
    memset(&v46[40], 0, 32);
    v49[1] = 0;
    v49[0] = 0;
    memset(v46, 0, 74);
    v47 = 0;
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
    v4 = *(v65 + 72);
    v38 = *(v65 + 64);
    LOWORD(v39) = *(v65 + 185);
    v41 = vextq_s8(*(v65 + 24), *(v65 + 24), 8uLL);
    v42 = v4;
    v5 = *(v65 + 80);
    v6 = *(v65 + 88);
    for (i = v65; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v75) = 1;
      BYTE8(v75) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v73 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v74 = v8;
      *(&v74 + 1) = v9;
      BYTE9(v75) = *(v7 + 41);
      BYTE10(v75) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v46, v73.i8);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>::unarchive(&v73, *(v10 + 8), *(v10 + 128));
      *&v46[12] = v73;
      *&v46[20] = v74;
      *&v46[28] = v75;
      *&v46[36] = v76;
      *&v46[40] = v77;
      if (*&v46[44])
      {
        *&v46[48] = *&v46[44];
        operator delete(*&v46[44]);
      }

      *&v46[44] = v78;
      *&v46[52] = v79;
      v79 = 0;
      v78 = 0uLL;
      v47 = v80;
    }

    v11 = i[17];
    for (j = i[18]; v11 != j; ++v11)
    {
      v13 = *v11;
      HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>::unarchive(&v73, *(*v11 + 8), *(*v11 + 128));
      v14 = *(v13 + 144);
      v15 = v49[0];
      if (!v49[0])
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

      v18 = v76;
      v20 = v74;
      v19 = v75;
      v21 = v16[13];
      *(v16 + 5) = v73;
      *(v16 + 7) = v20;
      *(v16 + 9) = v19;
      v16[11] = v18;
      v16[12] = v77;
      if (v21)
      {
        v16[14] = v21;
        operator delete(v21);
        v16[13] = 0;
        v16[14] = 0;
        v16[15] = 0;
      }

      *(v16 + 13) = v78;
      v16[15] = v79;
      v79 = 0;
      v78 = 0uLL;
      v16[16] = v80;
    }

    v22 = i[5];
    for (k = i[6]; v22 != k; v22 += 8)
    {
      v25 = *(*v22 + 8);
      v24 = *(*v22 + 16);
      if (v25 >= v24)
      {
        v26 = *(*v22 + 16);
      }

      else
      {
        v26 = *(*v22 + 8);
      }

      if (v24 < v25)
      {
        v24 = *(*v22 + 8);
      }

      HKIntervalMask<double>::_insertInterval(&v43, v26, v24);
    }

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::operator=(&v34.n128_i64[1], &v37);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v37);
    v3 = v32;
  }

  v27 = v67;
  for (m = v68; v27 != m; v27 += 8)
  {
    v29 = *(*v27 + 8);
    v30 = *(*v27 + 16);
    v37 = vextq_s8(*(*v27 + 24), *(*v27 + 24), 8uLL);
    v38 = v29;
    v39 = v30;
    LOWORD(v40) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](v35, v37.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v64);

  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v34);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v34.n128_i64[1]);
}

void sub_228F5EDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(v7 + 384);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a3);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v7 + 304);
  v9 = STACK[0x318];
  if (STACK[0x318])
  {
    STACK[0x320] = v9;
    operator delete(v9);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v7 + 240);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(STACK[0x2E0]);
  v10 = STACK[0x2B8];
  if (STACK[0x2B8])
  {
    STACK[0x2C0] = v10;
    operator delete(v10);
  }

  v11 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v11;
    operator delete(v11);
  }

  objc_destroyWeak((v7 + 88));
  v12 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v12;
    operator delete(v12);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x3B0]);
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 208) = 0;
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v17);
  *(a1 + 576) = 0;
  return HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v21);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  v12 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v12;
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  v13 = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 176) = v13;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 184, *(a2 + 184), *(a2 + 192), (*(a2 + 192) - *(a2 + 184)) >> 4);
  v14 = *(a2 + 208);
  *(a1 + 224) = 0;
  v15 = (a1 + 224);
  *(a1 + 208) = v14;
  *(a1 + 232) = 0;
  *(a1 + 216) = a1 + 224;
  v16 = *(a2 + 216);
  if (v16 != (a2 + 224))
  {
    v17 = 0;
    v18 = (a1 + 224);
    while (1)
    {
      v19 = (a1 + 224);
      if (v18 == v15)
      {
        goto LABEL_12;
      }

      v20 = v17;
      v21 = (a1 + 224);
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
          v24 = (a1 + 224);
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

      if (v28 == (a2 + 224))
      {
        break;
      }

      v17 = *v15;
      v18 = *(a1 + 216);
      v16 = v28;
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

void sub_228F5F598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v13 + 344);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 304);
  v15 = *(v13 + 280);
  if (v15)
  {
    *(v13 + 288) = v15;
    operator delete(v15);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 240);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::destroy(*v12);
  v16 = *a10;
  if (*a10)
  {
    *(v13 + 192) = v16;
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v22 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
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
      v12 = [v11 underlyingSampleType];

      v9 = v12;
    }
  }

  v13 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v22 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *(a2 + 280);
      v17 = *(a2 + 288);
      while (v16 != v17)
      {
        v18 = *v16;
        v19 = objc_loadWeakRetained((a1 + 48));
        v20 = [v19 sourceForSourceID:v18];

        if (v20)
        {
          if (([v15 containsObject:v20] & 1) == 0)
          {
            [v15 addObject:v20];
          }
        }

        ++v16;
      }

      v21 = [v15 copy];
      [v13 _setSources:v21];
    }
  }

  v23[0] = &unk_283BEFD78;
  v23[3] = v23;
  v13;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](v24, v23);
  v25 = 0;
  operator new();
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 264);
  v2 = *(a1 + 280);
  if (v1 != (*(a1 + 288) - v2) >> 3)
  {
    *(a1 + 288) = v2;
    std::vector<long long>::reserve((a1 + 280), v1);
    for (i = *(a1 + 256); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 280, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 280];
    }
  }
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v72 = (a1 + 224);
    while (1)
    {
      v6 = *(a1 + 96);
      v7 = *(a1 + 104);
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4);
      if (v8 == 1)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_104;
      }

      v9 = a2;
      v10 = a2;
      v11 = v5;
      v12 = *(a1 + 96);
      if (v6 != v7)
      {
        do
        {
          v13 = *(v12 + 8);
          v14 = *(v12 + 16);
          if (v13 > v11 && v13 < v10)
          {
            v10 = *(v12 + 8);
          }

          if (v14 > v5)
          {
            v16 = *(v12 + 16);
          }

          else
          {
            v16 = v9;
          }

          if (v14 < v9)
          {
            v11 = v5;
            v9 = v16;
          }

          v12 += 48;
        }

        while (v12 != v7);
      }

      if (v9 >= v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = v9;
      }

      v18 = *(a1 + 16);
      if (v18 > 0.0)
      {
        v19 = v18 * floor(v17 / v18);
        v20 = v18 * floor((v18 + v5) / v18);
        if (v19 >= v20)
        {
          v17 = v19;
        }

        else
        {
          v17 = v20;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (v6 != v7)
      {
        if (v8 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v81.var0 = a1;
        v22 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(v6, v7, &v81, v23, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v74 = 0;
      }

      v73 = v6;
      if (v6 != v7)
      {
        v75 = 0;
        v29 = 0;
        v30 = v6;
        while (1)
        {
          var5 = 0;
          v79 = 0u;
          v80 = 0u;
          v78 = 0;
          v32 = *(v30 + 16);
          *&v77.var0 = *v30;
          *&v77.var2 = v32;
          v33 = *(v30 + 32);
          *&v77.var4 = v33;
          var1 = v77.var1;
          p_var4 = &v78;
          if ((v33 & 1) != 0 && v77.var1 > v17)
          {
            v36 = *(v30 + 16);
            v79 = *v30;
            v80 = v36;
            v78 = v33;
            var5 = v77.var5;
            p_var4 = &v77.var4;
          }

          *p_var4 = 0;
          if (v77.var4)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v30);
LABEL_83:
          v30 += 48;
          if (v30 == v7)
          {
            goto LABEL_84;
          }
        }

        for (i = *(a1 + 64); i != *(a1 + 72) && var1 >= *i; i += 2)
        {
          if (var1 < i[1])
          {
            LOBYTE(v38) = *(v30 + 42);
            LOBYTE(v39) = *(v30 + 41);
            v76 = *(v30 + 40);
            goto LABEL_81;
          }
        }

        v38 = *(v30 + 42);
        v39 = *(v30 + 41);
        v76 = *(v30 + 40);
        if (v29)
        {
          var3 = v77.var3;
          if (v75 == v77.var3 || *(a1 + 24) == 1)
          {
            v41 = v77.var2 - var1;
            v42 = *(a1 + 128);
            if (v42)
            {
              v43 = v42 + 1;
              v41 = *(a1 + 120) + (v41 - *(a1 + 120)) / v43;
            }

            else
            {
              v43 = 1;
            }

            *(a1 + 120) = v41;
            *(a1 + 128) = v43;
            HDStatisticsTimeInterval::addSample((a1 + 176), &v77, v38 ^ 1);
            LOBYTE(v38) = 1;
          }
        }

        else
        {
          v44 = v77.var2 - var1;
          v45 = *(a1 + 128);
          if (v45)
          {
            v46 = v45 + 1;
            v44 = *(a1 + 120) + (v44 - *(a1 + 120)) / v46;
          }

          else
          {
            v46 = 1;
          }

          *(a1 + 120) = v44;
          *(a1 + 128) = v46;
          HDStatisticsTimeInterval::addSample((a1 + 176), &v77, v38 ^ 1);
          LOBYTE(v38) = 1;
          var3 = v77.var3;
          v75 = v77.var3;
        }

        if (*(a1 + 25) == 1)
        {
          v47 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, var3);
          if (v47)
          {
            v48 = [v74 objectForKeyedSubscript:v47];
            v49 = v48;
            if (v48)
            {
              if ([v48 longLongValue] == var3 || *(a1 + 24) == 1)
              {
                v50 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, var3);
                v51 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v50);
                goto LABEL_74;
              }
            }

            else
            {
              v52 = [MEMORY[0x277CCABB0] numberWithLongLong:var3];
              [v74 setObject:v52 forKeyedSubscript:v47];

              v53 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, var3);
              v51 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v53);
LABEL_74:
              v54 = v77.var2 - var1;
              v55 = v51[1];
              if (v55)
              {
                v56 = v55 + 1;
                v54 = *v51 + (v54 - *v51) / v56;
              }

              else
              {
                v56 = 1;
              }

              *v51 = v54;
              v51[1] = v56;
              HDStatisticsTimeInterval::addSample((v51 + 7), &v77, v39 ^ 1);
              LOBYTE(v39) = 1;
            }
          }
        }

        v29 = 1;
LABEL_81:
        if (v78)
        {
          *&v81.var0 = v79;
          *&v81.var2 = v80;
          v81.var4 = v78;
          v81.var5 = var5;
          LOBYTE(v82) = v76;
          BYTE1(v82) = v39 & 1;
          BYTE2(v82) = v38 & 1;
          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v81);
        }

        goto LABEL_83;
      }

LABEL_84:
      *(a1 + 208) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 184), v17) + *(a1 + 208);
      v57 = *(a1 + 216);
      if (v57 != v72)
      {
        do
        {
          *(v57 + 16) = HKIntervalMask<double>::removeIntervalsBefore(v57 + 13, v17) + *(v57 + 16);
          v58 = v57[1];
          if (v58)
          {
            do
            {
              v59 = v58;
              v58 = *v58;
            }

            while (v58);
          }

          else
          {
            do
            {
              v59 = v57[2];
              v60 = *v59 == v57;
              v57 = v59;
            }

            while (!v60);
          }

          v57 = v59;
        }

        while (v59 != v72);
      }

      *(a1 + 56) = v17;

      if (v73)
      {
        operator delete(v73);
      }

LABEL_105:
      v69 = *(a1 + 56);
      if (v69 == v5)
      {
        v70 = [MEMORY[0x277CCA890] currentHandler];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration, HDStatisticsTimeInterval>>::_mergeThroughTime(double) [Statistics = HDStatisticsCombined<HDStatisticsAverageSampleDuration, HDStatisticsTimeInterval>]"}];
        [v70 handleFailureInFunction:v71 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v69 = *(a1 + 56);
      }

      v5 = v69;
      if (v69 >= a2)
      {
        return;
      }
    }

    v24 = *(v6 + 42);
    v25 = *(v6 + 41);
    v84 = 0;
    v83 = 0u;
    v82 = 0u;
    v26 = *(v6 + 16);
    *&v81.var0 = *v6;
    *&v81.var2 = v26;
    *&v81.var4 = *(v6 + 32);
    v27 = *(a1 + 64);
    v28 = *(a1 + 72);
    if (v27 != v28)
    {
      while (v81.var1 >= *v27)
      {
        if (v81.var1 < v27[1])
        {
          v81.var4 = 0;
          break;
        }

        v27 += 2;
        if (v27 == v28)
        {
          break;
        }
      }
    }

    if (v81.var4)
    {
      v61 = v81.var2 - v81.var1;
      v62 = *(a1 + 128);
      if (v62)
      {
        v63 = v62 + 1;
        v64 = *(a1 + 120) + (v61 - *(a1 + 120)) / v63;
      }

      else
      {
        v64 = v81.var2 - v81.var1;
        v63 = 1;
      }

      *(a1 + 120) = v64;
      *(a1 + 128) = v63;
      HDStatisticsTimeInterval::addSample((a1 + 176), &v81, v24 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v65 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v81.var3);
        v66 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v65);
        v67 = v66[1];
        if (v67)
        {
          v68 = v67 + 1;
          v61 = *v66 + (v61 - *v66) / v68;
        }

        else
        {
          v68 = 1;
        }

        *v66 = v61;
        v66[1] = v68;
        HDStatisticsTimeInterval::addSample((v66 + 7), &v81, v25 ^ 1);
      }
    }

    *(a1 + 104) = *(a1 + 96);
LABEL_104:
    *(a1 + 56) = a2;
    goto LABEL_105;
  }
}

uint64_t *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 304), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 344), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 344), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 384), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 384), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 216);
  v26 = (a2 + 224);
  if (v2 == (a2 + 224))
  {
    return;
  }

  v25 = a1 + 16;
  do
  {
    v4 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a2, v2[4]);
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
    v28 = v9.u32[0];
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

      if (v28 > 1)
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
    v21 = *(v2 + 9);
    v12[9] = v2[11];
    *(v12 + 7) = v21;
    *(v12 + 5) = v20;
    *(v12 + 3) = v19;
    v12[10] = v2[12];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 11, v2[13], v2[14], (v2[14] - v2[13]) >> 4);
    }

    v12[14] = v2[16];

LABEL_25:
    v22 = v2[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      do
      {
        v23 = v2[2];
        v24 = *v23 == v2;
        v2 = v23;
      }

      while (!v24);
    }

    v2 = v23;
  }

  while (v23 != v26);
}

void sub_228F6133C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](va);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>>::~__hash_table(v6);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEFC58;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEFC58;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 56;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsAverageSampleDuration const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEFCE8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsAverageSampleDuration const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEFCE8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsAverageSampleDuration const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsAverageSampleDuration const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsAverageSampleDuration const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsAverageSampleDuration const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 576) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  if (v9 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v9 end:*(a2 + 16)];
    v11 = (*(*a1 + 128))(a1, v10, a4);
  }

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 552) != *(v2 + 544))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, v2 + 120);
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, v2 + 120);
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t *a2, int a3)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 32);
  v8 = *(a2 + 33);
  v36 = *(a2 + 1);
  *v35 = 0;
  v33 = 0u;
  v34 = 0u;
  if ((v7 & 1) != 0 && v6 >= *(a1 + 8))
  {
    *&v33 = v5;
    *(&v33 + 1) = v6;
    v34 = *(a2 + 1);
    v35[0] = v7;
    v35[1] = v8;
    v9 = &v25;
    v10 = v6;
  }

  else
  {
    v9 = v35;
    v10 = 0.0;
  }

  *v9 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  if ((v35[0] & 1) != 0 && ((v11 = *(a1 + 16), *(a1 + 36)) ? (v12 = v10 < v11) : (v12 = v10 <= v11), !v12))
  {
    v13 = v35;
    v26 = v33;
    v27 = v34;
    v28 = *v35;
  }

  else
  {
    v13 = &v28;
  }

  *v13 = 0;
  if (v35[0] == 1)
  {
    v24 = v10;
    v14 = *(&v34 + 1);
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 248), *(&v34 + 1));
    if (*(a1 + 112) == *(a1 + 104) && *(a1 + 136) <= 0)
    {
      v18.f64[1] = *(a1 + 16);
      v15 = v24;
      v18.f64[0] = v24;
      v19.f64[0] = *(a1 + 8);
      *&v19.f64[1] = v34;
      v20 = vcgtq_f64(v19, v18);
      v19.f64[0] = v24;
      *(a1 + 48) = vbslq_s8(v20, *(a1 + 8), v19);
    }

    else
    {
      v15 = v24;
      if (v24 < *(a1 + 48))
      {
        v16 = *(a1 + 8);
        if (v24 >= v16)
        {
          v16 = v24;
        }

        *(a1 + 48) = v16;
      }

      v17 = v34;
      if (*&v34 > *(a1 + 56))
      {
        if (*(a1 + 16) < *&v34)
        {
          v17 = *(a1 + 16);
        }

        *(a1 + 56) = v17;
      }
    }

    if (*(a1 + 32) == 1)
    {
      v21 = *(a1 + 64);
      if (v15 < v21)
      {
        v21 = v15;
      }

      *(a1 + 64) = v21;
    }

    if (a3 && v15 < *(a1 + 16))
    {
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 8, v15);
    }

    v29[0] = v33;
    v29[1] = v34;
    v30 = *v35;
    v31 = 0;
    v32 = 0;
    std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v29);
    if (!*(a1 + 176) || *(a1 + 152) <= v6)
    {
      *(a1 + 144) = v5;
      *(a1 + 152) = v6;
      *(a1 + 160) = v36;
      *(a1 + 176) = v7;
      *(a1 + 177) = v8;
    }

    if (*(a1 + 33) == 1)
    {
      v22 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1 + 8, v14);
      v23 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_statisticsForSource(a1 + 8, v22);
      if (!*(v23 + 48) || v23[3] <= v6)
      {
        v23[2] = v5;
        v23[3] = v6;
        *(v23 + 2) = v36;
        *(v23 + 48) = v7;
        *(v23 + 49) = v8;
      }
    }
  }

  if (v28 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 432, &v26);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 578) == 1)
  {
    *(a1 + 580) = 1;
  }

  else
  {
    *(a1 + 580) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[54], a1[55], 0xCCCCCCCCCCCCCCCDLL * ((a1[55] - a1[54]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F622B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 580) == 1)
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

    *(a1 + 580) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F623D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 576) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F62820(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C409A2B2ECELL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI33HDStatisticsAverageSampleDuration24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  if ((*(a1 + 56) & 1) == 0)
  {
    v7 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  if (v7 == 1)
  {
    return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsAverageSampleDuration,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v5, a3, a4);
  }

  else
  {
    return 1;
  }
}