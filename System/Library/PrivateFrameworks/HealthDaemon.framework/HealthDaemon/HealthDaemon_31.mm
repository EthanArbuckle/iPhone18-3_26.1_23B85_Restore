uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 640) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::archive(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0;
  *(a1 + 160) = 0;
  *(a1 + 204) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_283BE6208;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  statistics::Statistics::makePrimaryStatistics(a1);
  HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::archive(&v3, (a2 + 8));
}

void sub_228F73ED4()
{
  statistics::Statistics::operator=(*(v0 + 128), v4);
  statistics::Statistics::~Statistics(v4);
  v3 = *v1;
  *(v0 + 204) |= 0x100u;
  *(v0 + 136) = v3;
  statistics::Statistics::makeMostRecentDatum(v0);
  v4[0] = &unk_283BEB0A8;
  v8 = 127;
  v5 = vextq_s8(*(v1 + 30), *(v1 + 30), 8uLL);
  v4[1] = *(v1 + 17);
  v4[2] = *(v1 + 18);
  v6 = 0;
  v7 = 0;
  statistics::RawQuantitySample::operator=(*v2, v4);
  PB::Base::~Base(v4);
}

void HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::archive(uint64_t a1, HDStatisticsPercentiles *a2)
{
  *a1 = &unk_283BE6208;
  *(a1 + 8) = 0;
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
  HDStatisticsPercentiles::archive(a2);
}

void sub_228F74004()
{
  statistics::Statistics::operator=(*(v0 + 128), v3);
  statistics::Statistics::~Statistics(v3);
  statistics::Statistics::makeAuxiliaryStatistics(v0);
  HDStatisticsTimeInterval::archive((v1 + 72), v3);
  statistics::Statistics::operator=(*v2, v3);
  statistics::Statistics::~Statistics(v3);
}

double HDStatisticsRelative<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::unarchive(uint64_t a1, void *a2)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 138) = 0u;
  v5 = a2[16];
  if (v5)
  {
    HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::unarchive(&v13, v5);
    v6 = v19;
    v7 = v15;
    v8 = v14;
    *(a1 + 8) = v13;
    *(a1 + 24) = v8;
    v14 = 0;
    v13 = 0uLL;
    *(a1 + 32) = v7;
    v9 = v17;
    *(a1 + 40) = v16;
    *(a1 + 56) = v9;
    *(a1 + 72) = v18;
    *(a1 + 80) = v6;
    result = v22;
    v10 = v21;
    *(a1 + 88) = v20;
    *(a1 + 104) = v10;
    *(a1 + 112) = result;
  }

  *a1 = a2[17];
  v11 = a2[14];
  if (v11)
  {
    result = *(v11 + 8);
    v12 = *(v11 + 16);
    *(a1 + 120) = vextq_s8(*(v11 + 24), *(v11 + 24), 8uLL);
    *(a1 + 136) = result;
    *(a1 + 144) = v12;
    *(a1 + 152) = 1;
  }

  return result;
}

double HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::unarchive(uint64_t a1, const statistics::Statistics *a2)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v4 = *(a2 + 16);
  if (v4)
  {
    HDStatisticsPercentiles::unarchive(v4, a2);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    HDStatisticsTimeInterval::unarchive(v5, &v7);
    *(a1 + 72) = v7;
    result = *&v10;
    v6 = v9;
    *(a1 + 80) = v8;
    *(a1 + 96) = v6;
    *(a1 + 104) = result;
  }

  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF03C8;
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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 1;
  *(a1 + 594) = 0;
  *(a1 + 596) = 0;
  *(a1 + 600) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF03C8;
  v2 = *(a1 + 624);
  if (v2)
  {
    *(a1 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 560);
  if (v3)
  {
    *(a1 + 568) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 592) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 600) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 608), a2);
  v7 = a2;
  v4 = *(a1 + 608);
  v5 = *(a1 + 584);
  *(a1 + 584) = v4;
  v6 = v4;

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setStatisticsConfiguration(a1 + 120, *(a1 + 584));
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *a2;
  v8 = a2[1];
  v9 = *(a1 + 224) == *(a1 + 216) && (*(a1 + 248) - *(a1 + 240)) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), v7, v8, (v8 - v7) >> 4);
  }

  if (v9)
  {
    return 1;
  }

  v11 = *(*a1 + 128);

  return v11(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 592) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_mergeThroughTime(v3, v4);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

void sub_228F74728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 594) == 1)
    {
      if (*(a1 + 593))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v15 = *(a2 + 16);
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 595) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 624, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 594) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 594) = 1;
  v61 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v60 = v6;
  if (*(a1 + 593))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 616);
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

  [v9 sortUsingComparator:&__block_literal_global_1002];
  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = *(a1 + 616);
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
  v27 = *(a1 + 616);
  *(a1 + 616) = 0;

  *(a1 + 593) = 0;
  if (v8)
  {
    v28 = *(a1 + 624);
    *(a1 + 640) = 0;
    *(a1 + 632) = 0;
    *(a1 + 624) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v62 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 624);
      v39 = *(a1 + 632);
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
            v39 = *(a1 + 632);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 632) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 624);
  v29 = *(a1 + 632);
  *(a1 + 640) = 0;
  *(a1 + 624) = 0;
  *(a1 + 632) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v49, v61);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, 0, v61))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, v55, 1, v51);
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

  if (*(a1 + 40) && *(a1 + 568) != *(a1 + 560))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }

  *(a1 + 594) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 596) == 1)
    {
      *(a1 + 596) = 0;
      v6 = v60;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 594) = 0;
LABEL_81:

  v58 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228F74F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 594) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 594))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 594) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 616);
    *(a1 + 616) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 593) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 593) & 1) == 0)
  {
    v8 = *(a1 + 616);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 616);
      *(a1 + 616) = v9;

      v8 = *(a1 + 616);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 592) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 592) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 592) forKey:@"needs_config"];
  v3;
  v28[0] = &unk_283BF1A08;
  v28[1] = 0;
  v29 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v29) = 1;
  v28[2] = v4;
  memset(&v28[3], 0, 24);
  statistics::StatisticsEngine::makeCurrentBucket(v28);
  v9 = &unk_283BE6258;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v27 = 511;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v25 = *(a1 + 144);
  v26 = *(a1 + 145);
  v24 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v10 = v5;
  v11 = v7;
  v7.i64[0] = *(a1 + 176);
  v15 = v6;
  v16 = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v30[0] = &unk_283BEB0A8;
    v35 = 127;
    v31 = vextq_s8(*v8, *v8, 8uLL);
    v30[1] = v8[1].i64[0];
    v30[2] = v8[1].i64[1];
    v34 = 0;
    v33 = v8[2].i8[9];
    v32 = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>();
  }

  statistics::StatisticsBucket::makeStatistics(&v9);
  HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::archive(v30, (a1 + 240));
}

void sub_228F757DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v31 = a2;
  *(k + 592) = [v31 decodeBoolForKey:@"needs_config"];
  v3 = v31;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v35.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *v36 = 0u;
  v37 = 0u;
  v73 = 0;
  PB::Reader::Reader(v72, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v73]);
  v65 = &unk_283BF1A08;
  v66 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v71 = 0;
  statistics::StatisticsEngine::readFrom(&v65, v72);
  v35.n128_u64[0] = v67;
  if (v66)
  {
    v33 = v3;
    v41 = 0;
    v44 = 0uLL;
    v46 = 0;
    v45 = 0;
    memset(&v47[6], 0, 32);
    v50[1] = 0;
    v50[0] = 0;
    memset(v47, 0, 90);
    v48 = 0;
    v49 = v50;
    v51 = 0u;
    v52 = 0u;
    v53 = 1065353216;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    v58 = 1065353216;
    v59 = 0u;
    v60 = 0u;
    v61 = 1065353216;
    v62 = 0u;
    v63 = 0u;
    v64 = 1065353216;
    v38 = vextq_s8(*(v66 + 8), *(v66 + 8), 8uLL);
    v4 = *(v66 + 72);
    v39 = *(v66 + 64);
    LOWORD(v40) = *(v66 + 185);
    v42 = vextq_s8(*(v66 + 24), *(v66 + 24), 8uLL);
    v43 = v4;
    v5 = *(v66 + 80);
    v6 = *(v66 + 88);
    for (i = v66; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v77) = 1;
      BYTE8(v77) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v74 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      v75 = v8;
      v76 = v9;
      BYTE9(v77) = *(v7 + 41);
      BYTE10(v77) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v47, v74.i8);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::unarchive(&v74, v10);
      if (*(&v47[1] + 1))
      {
        *&v47[2] = *(&v47[1] + 1);
        operator delete(*(&v47[1] + 1));
      }

      *(&v47[1] + 8) = v74;
      *&v47[3] = v76;
      *(&v47[3] + 8) = v77;
      *(&v47[2] + 1) = v75;
      v75 = 0;
      v74 = 0uLL;
      *(&v47[4] + 8) = v78;
      WORD4(v47[5]) = v79;
      *&v47[6] = v80;
      v11 = *(&v47[6] + 1);
      if (*(&v47[6] + 1))
      {
        *&v47[7] = *(&v47[6] + 1);
        operator delete(*(&v47[6] + 1));
        v11 = v74.i64[0];
      }

      *(&v47[6] + 8) = v81;
      *(&v47[7] + 1) = v82;
      v82 = 0;
      v81 = 0uLL;
      v48 = v83;
      if (v11)
      {
        v74.i64[1] = v11;
        operator delete(v11);
      }
    }

    v32 = k;
    v12 = i[17];
    for (j = i[18]; v12 != j; ++v12)
    {
      v14 = *v12;
      HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::unarchive(&v74, *v12);
      v15 = *(v14 + 18);
      v16 = v50[0];
      if (!v50[0])
      {
LABEL_18:
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
            goto LABEL_18;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v16 = v17[1];
        if (!v16)
        {
          goto LABEL_18;
        }
      }

      v19 = v17[5];
      if (v19)
      {
        v17[6] = v19;
        operator delete(v19);
        v17[5] = 0;
        v17[6] = 0;
        v17[7] = 0;
      }

      *(v17 + 5) = v74;
      v17[7] = v75;
      v17[8] = v76;
      v20 = v78;
      *(v17 + 9) = v77;
      v75 = 0;
      v74 = 0uLL;
      *(v17 + 11) = v20;
      *(v17 + 52) = v79;
      v17[14] = v80;
      v21 = v17[15];
      if (v21)
      {
        v17[16] = v21;
        operator delete(v21);
        v17[15] = 0;
        v17[16] = 0;
        v17[17] = 0;
        v21 = v74.i64[0];
      }

      *(v17 + 15) = v81;
      v17[17] = v82;
      v82 = 0;
      v81 = 0uLL;
      v17[18] = v83;
      if (v21)
      {
        v74.i64[1] = v21;
        operator delete(v21);
      }
    }

    v22 = i[5];
    v23 = i[6];
    for (k = v32; v22 != v23; v22 += 8)
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

      HKIntervalMask<double>::_insertInterval(&v44, v26, v24);
    }

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::operator=(&v35.n128_i64[1], &v38);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v38);
    v3 = v33;
  }

  v27 = v68;
  for (m = v69; v27 != m; v27 += 8)
  {
    v29 = *(*v27 + 8);
    v30 = *(*v27 + 16);
    v38 = vextq_s8(*(*v27 + 24), *(*v27 + 24), 8uLL);
    v39 = v29;
    v40 = v30;
    LOWORD(v41) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](v36, v38.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v65);

  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::operator=((k + 112), &v35);
  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v35.n128_i64[1]);
}

void sub_228F75DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(v7 + 400);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a3);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v7 + 320);
  v9 = STACK[0x338];
  if (STACK[0x338])
  {
    STACK[0x340] = v9;
    operator delete(v9);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v7 + 256);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(STACK[0x300]);
  HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::~HDStatisticsCombined(v7 + 120);
  v10 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v10;
    operator delete(v10);
  }

  objc_destroyWeak((v7 + 88));
  v11 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v11;
    operator delete(v11);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x3D0]);
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 1065353216;
  *(a1 + 344) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 1065353216;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2)
  {
    *(a1 + 456) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 400);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 360);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 320);
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 256);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 240));
  v3 = *(a1 + 200);
  if (v3)
  {
    *(a1 + 208) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 104) = v5;
    operator delete(v5);
  }

  objc_destroyWeak((a1 + 88));
  v6 = *(a1 + 64);
  if (v6)
  {
    *(a1 + 72) = v6;
    operator delete(v6);
  }

  return a1;
}

void std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,0>(a1 + 4);

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,0>(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

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

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setStatisticsConfiguration(v21, *(a1 + 608));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v27;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v17);
  *(a1 + 592) = 0;
  return HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v21);
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 32), a2);
  v4 = a2;
  HDStatisticsPercentiles::configure((a1 + 120), v4);
}

void *HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 56), a2 + 28);
  v4 = a2[29].n128_u64[1];
  a2[29].n128_u64[1] = 0;
  v5 = a1[59];
  a1[59] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 120, *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
  v10 = *(a2 + 144);
  v11 = *(a2 + 160);
  *(a1 + 170) = *(a2 + 170);
  *(a1 + 144) = v10;
  *(a1 + 160) = v11;
  v12 = *(a2 + 192);
  *(a1 + 200) = 0;
  *(a1 + 192) = v12;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 4);
  v13 = *(a2 + 224);
  *(a1 + 240) = 0;
  v14 = (a1 + 240);
  *(a1 + 224) = v13;
  *(a1 + 248) = 0;
  *(a1 + 232) = a1 + 240;
  v15 = *(a2 + 232);
  if (v15 != (a2 + 240))
  {
    do
    {
      v16 = *v14;
      v17 = (a1 + 240);
      if (*(a1 + 232) == v14)
      {
        goto LABEL_11;
      }

      v18 = *v14;
      v19 = (a1 + 240);
      if (v16)
      {
        do
        {
          v17 = v18;
          v18 = v18[1];
        }

        while (v18);
      }

      else
      {
        do
        {
          v17 = v19[2];
          v20 = *v17 == v19;
          v19 = v17;
        }

        while (v20);
      }

      v21 = v15[4];
      if (v17[4] < v21)
      {
LABEL_11:
        if (v16)
        {
          v22 = v17 + 1;
        }

        else
        {
          v22 = (a1 + 240);
        }

        if (!*v22)
        {
LABEL_22:
          operator new();
        }
      }

      else
      {
        if (!v16)
        {
          goto LABEL_22;
        }

        while (1)
        {
          while (1)
          {
            v23 = v16;
            v24 = v16[4];
            if (v24 <= v21)
            {
              break;
            }

            v16 = *v23;
            if (!*v23)
            {
              goto LABEL_22;
            }
          }

          if (v24 >= v21)
          {
            break;
          }

          v16 = v23[1];
          if (!v16)
          {
            goto LABEL_22;
          }
        }
      }

      v25 = v15[1];
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
          v26 = v15[2];
          v20 = *v26 == v15;
          v15 = v26;
        }

        while (!v20);
      }

      v15 = v26;
    }

    while (v26 != (a2 + 240));
  }

  std::unordered_set<long long>::unordered_set(a1 + 256, a2 + 256);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 296, *(a2 + 296), *(a2 + 304), (*(a2 + 304) - *(a2 + 296)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 320, a2 + 320);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 360, a2 + 360);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 400, a2 + 400);
  return a1;
}

void sub_228F7684C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v12 + 360);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v12 + 320);
  v14 = *(v12 + 296);
  if (v14)
  {
    *(v12 + 304) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v12 + 256);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(*v11);
  HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>::~HDStatisticsCombined(a9);
  v15 = *a10;
  if (*a10)
  {
    *(v12 + 104) = v15;
    operator delete(v15);
  }

  objc_destroyWeak((v12 + 88));
  v16 = *a11;
  if (*a11)
  {
    *(v12 + 72) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::operator=(uint64_t a1, uint64_t a2)
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
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 120, (a2 + 120));
  *(a1 + 144) = *(a2 + 144);
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  *(a1 + 192) = *(a2 + 192);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 200, (a2 + 200));
  v13 = a1 + 240;
  v12 = *(a1 + 240);
  *(a1 + 224) = *(a2 + 224);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(v12);
  *(a1 + 232) = *(a2 + 232);
  v15 = *(a2 + 240);
  v16 = *(a2 + 248);
  v14 = (a2 + 240);
  *(a1 + 240) = v15;
  *(a1 + 248) = v16;
  if (v16)
  {
    *(v15 + 16) = v13;
    *(a2 + 232) = v14;
    *v14 = 0;
    *(a2 + 248) = 0;
  }

  else
  {
    *(a1 + 232) = v13;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 256, (a2 + 256));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 296, (a2 + 296));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 320, (a2 + 320));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 360, (a2 + 360));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 400, (a2 + 400));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
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
      v17 = *(a2 + 296);
      v18 = *(a2 + 304);
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

  v23[0] = &unk_283BF05B8;
  v23[3] = v23;
  v14;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](v24, v23);
  v25 = 0;
  operator new();
}

void sub_228F7753C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  v40 = *(v38 - 200);
  if (v40)
  {
    *(v38 - 192) = v40;
    operator delete(v40);
  }

  std::__function::__value_func<HDStatisticsPercentiles const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a36);
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a32);

  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 280);
  v2 = *(a1 + 296);
  if (v1 != (*(a1 + 304) - v2) >> 3)
  {
    *(a1 + 304) = v2;
    std::vector<long long>::reserve((a1 + 296), v1);
    for (i = *(a1 + 272); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 296, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 296];
    }
  }
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v74 = (a1 + 240);
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
        goto LABEL_88;
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

      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v77.var0 = a1;
        v22 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(v6, v7, &v77, v23, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v75 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v75 = 0;
      }

      if (v6 != v7)
      {
        v50 = 0;
        v51 = 0;
        v52 = v6;
        while (1)
        {
          v53 = v52[1];
          *&v77.var0 = *v52;
          *&v77.var2 = v53;
          *&v77.var4 = *(v52 + 4);
          if (v77.var4 && v77.var1 <= v17)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v52);
LABEL_118:
          v52 += 3;
          if (v52 == v7)
          {
            goto LABEL_119;
          }
        }

        var2 = v77.var2;
        if (v77.var2 > v17)
        {
          var2 = v17;
        }

        v77.var2 = var2;
        for (i = *(a1 + 64); i != *(a1 + 72) && v77.var1 >= *i; i += 2)
        {
          if (v77.var1 < i[1])
          {
            goto LABEL_118;
          }
        }

        v56 = *(v52 + 42);
        v57 = *(v52 + 41);
        if (v51)
        {
          var3 = v77.var3;
          if (v50 == v77.var3 || *(a1 + 24) == 1)
          {
            HDStatisticsPercentiles::addSample((a1 + 120), &v77);
            HDStatisticsTimeInterval::addSample((a1 + 192), &v77, v56 ^ 1);
          }
        }

        else
        {
          HDStatisticsPercentiles::addSample((a1 + 120), &v77);
          HDStatisticsTimeInterval::addSample((a1 + 192), &v77, v56 ^ 1);
          var3 = v77.var3;
          v50 = v77.var3;
        }

        if (*(a1 + 25) == 1)
        {
          v59 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, var3);
          if (v59)
          {
            v60 = [v75 objectForKeyedSubscript:v59];
            v61 = v60;
            if (v60)
            {
              if ([v60 longLongValue] == var3 || *(a1 + 24) == 1)
              {
                v62 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, var3);
                v63 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v62);
                v64 = v57 ^ 1;
                HDStatisticsPercentiles::addSample(v63, &v77);
                goto LABEL_114;
              }
            }

            else
            {
              v65 = [MEMORY[0x277CCABB0] numberWithLongLong:var3];
              [v75 setObject:v65 forKeyedSubscript:v59];

              v66 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, var3);
              v63 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v66);
              v64 = v57 ^ 1;
              HDStatisticsPercentiles::addSample(v63, &v77);
LABEL_114:
              HDStatisticsTimeInterval::addSample((v63 + 9), &v77, v64);
            }
          }
        }

        v51 = 1;
        goto LABEL_118;
      }

LABEL_119:
      *(a1 + 224) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 200), v17) + *(a1 + 224);
      v67 = *(a1 + 232);
      if (v67 != v74)
      {
        do
        {
          *(v67 + 18) = HKIntervalMask<double>::removeIntervalsBefore(v67 + 15, v17) + *(v67 + 18);
          v68 = v67[1];
          if (v68)
          {
            do
            {
              v69 = v68;
              v68 = *v68;
            }

            while (v68);
          }

          else
          {
            do
            {
              v69 = v67[2];
              v70 = *v69 == v67;
              v67 = v69;
            }

            while (!v70);
          }

          v67 = v69;
        }

        while (v69 != v74);
      }

      *(a1 + 56) = v17;

      if (v6)
      {
        operator delete(v6);
      }

LABEL_128:
      v71 = *(a1 + 56);
      if (v71 == v5)
      {
        v72 = [MEMORY[0x277CCA890] currentHandler];
        v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles, HDStatisticsTimeInterval>>::_mergeThroughTime(double) [Statistics = HDStatisticsCombined<HDStatisticsPercentiles, HDStatisticsTimeInterval>]"}];
        [v72 handleFailureInFunction:v73 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v71 = *(a1 + 56);
      }

      v5 = v71;
      if (v71 >= a2)
      {
        return;
      }
    }

    v24 = *(v6 + 42);
    v25 = *(v6 + 41);
    v26 = *(v6 + 40);
    v28 = *v6;
    v27 = *(v6 + 1);
    v29 = *(v6 + 2);
    v30 = *(v6 + 3);
    v31 = *(v6 + 32);
    v32 = *(v6 + 33);
    if (v29 <= a2)
    {
      v33 = *(v6 + 2);
    }

    else
    {
      v33 = a2;
    }

    if (v27 < a2)
    {
      v34 = *(v6 + 32);
    }

    else
    {
      v34 = 0;
    }

    if (v27 < a2)
    {
      v35 = 0;
    }

    else
    {
      v35 = *(v6 + 33);
    }

    if (v27 < a2)
    {
      v36 = 0;
    }

    else
    {
      v33 = *(v6 + 2);
      v36 = *(v6 + 3);
    }

    if (v27 < a2)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = *(v6 + 2);
    }

    if (v27 < a2)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = *v6;
    }

    if (v27 < a2)
    {
      v39 = 0.0;
    }

    else
    {
      v39 = *(v6 + 1);
    }

    if (v27 < a2)
    {
      v40 = 0;
    }

    else
    {
      v40 = *(v6 + 32);
    }

    if (v6[2])
    {
      v29 = v33;
    }

    else
    {
      v34 = *(v6 + 32);
      v35 = 0;
      v36 = 0;
    }

    if (v6[2])
    {
      v41 = v37;
    }

    else
    {
      v41 = 0.0;
    }

    if (v6[2])
    {
      v42 = v38;
    }

    else
    {
      v42 = 0.0;
    }

    if (v6[2])
    {
      v43 = v39;
    }

    else
    {
      v43 = 0.0;
    }

    if (v6[2])
    {
      v44 = v40;
    }

    else
    {
      v44 = 0;
    }

    v77.var0 = *v6;
    v77.var1 = v27;
    v77.var2 = v29;
    v77.var3 = v30;
    v77.var4 = v34;
    v77.var5 = v32;
    *(&v77.var5 + 1) = *(v6 + 34);
    *(&v77.var5 + 5) = *(v6 + 19);
    *&v78 = v42;
    *(&v78 + 1) = v43;
    *&v79 = v41;
    *(&v79 + 1) = v36;
    LOBYTE(v80) = v44;
    HIBYTE(v80) = v35;
    for (j = *(a1 + 64); j != *(a1 + 72) && v27 >= *j; j += 2)
    {
      if (v27 < j[1])
      {
        goto LABEL_85;
      }
    }

    if (v34)
    {
      HDStatisticsPercentiles::addSample((a1 + 120), &v77);
      HDStatisticsTimeInterval::addSample((a1 + 192), &v77, v24 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v46 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v30);
        v47 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v46);
        HDStatisticsPercentiles::addSample(v47, &v77);
        HDStatisticsTimeInterval::addSample((v47 + 9), &v77, v25 ^ 1);
      }

      v26 = 1;
      LOBYTE(v25) = 1;
      LOBYTE(v24) = 1;
    }

LABEL_85:
    if (v44)
    {
      LOWORD(v76) = v80;
      v48 = v79;
      v49 = *(a1 + 96);
      *v49 = v78;
      *(v49 + 16) = v48;
      *(v49 + 32) = v76;
      *(v49 + 40) = v26;
      *(v49 + 41) = v25;
      *(v49 + 42) = v24;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_88:
    *(a1 + 56) = a2;
    goto LABEL_128;
  }
}

void *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v3 = (a1 + 240);
  v4 = *(a1 + 240);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = (a1 + 240);
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
    v7 = std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v3 - 1), a2);
    HDStatisticsPercentiles::configure((v7 + 5), *(a1 + 32));
    v10 = &v9;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6, v9);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 320), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 360), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 360), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 400), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 400), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void *std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
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

double HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::overallStatistics(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
  *(a1 + 80) = 0;
  v4 = *(a2 + 160);
  *(a1 + 24) = *(a2 + 144);
  *(a1 + 40) = v4;
  *(a1 + 50) = *(a2 + 170);
  v5 = *(a2 + 200);
  *(a1 + 72) = *(a2 + 192);
  v6 = *(a2 + 208);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 80, v5, v6, (v6 - v5) >> 4);
  result = *(a2 + 224);
  *(a1 + 104) = result;
  return result;
}

void sub_228F783C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 232);
  v27 = (a2 + 240);
  if (v2 == (a2 + 240))
  {
    return;
  }

  do
  {
    v4 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a2, v2[4]);
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
      goto LABEL_20;
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
LABEL_20:
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
        goto LABEL_20;
      }

LABEL_19:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_20;
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
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v5 = v15;
LABEL_21:
    if (v12 + 3 == v2 + 5)
    {
      v22 = *(v2 + 4);
      v23 = *(v2 + 5);
      *(v12 + 74) = *(v2 + 90);
      *(v12 + 3) = v22;
      *(v12 + 4) = v23;
      v12[12] = v2[14];
    }

    else
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v12 + 3, v2[5], v2[6], (v2[6] - v2[5]) >> 3);
      v19 = *(v2 + 4);
      v20 = *(v2 + 5);
      *(v12 + 74) = *(v2 + 90);
      *(v12 + 3) = v19;
      *(v12 + 4) = v20;
      v21 = v2[15];
      v12[12] = v2[14];
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 13, v21, v2[16], (v2[16] - v21) >> 4);
    }

    v12[16] = v2[18];

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

  while (v25 != v27);
}

void sub_228F7895C(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,void *>>>::operator()[abi:ne200100](1, v3);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 104);
    if (v3)
    {
      *(a2 + 112) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 24);
    if (v4)
    {
      *(a2 + 32) = v4;
      operator delete(v4);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 13);
      if (v4)
      {
        *(v2 + 14) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 3);
      if (v5)
      {
        *(v2 + 4) = v5;
        operator delete(v5);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0498;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0498;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 72;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsPercentiles const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0528;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsPercentiles const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BF0528;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsPercentiles const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsPercentiles const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsPercentiles,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsPercentiles const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsPercentiles const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 592) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  if (v9 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v9 end:*(a2 + 16)];
    v11 = (*(*a1 + 128))(a1, v10, a4);
  }

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 568) != *(v2 + 560))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, v2 + 120);
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, v2 + 120);
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t *a2, int a3)
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
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 264), v8);
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
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 8, v5);
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
        v34 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1 + 8, v8);
        v35 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsForSource(a1 + 8, v34);
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
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 448, &v36);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 594) == 1)
  {
    *(a1 + 596) = 1;
  }

  else
  {
    *(a1 + 596) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[56], a1[57], 0xCCCCCCCCCCCCCCCDLL * ((a1[57] - a1[56]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F79A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  objc_storeStrong((a1 + 472), *(a1 + 40));
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

  v9 = *(a1 + 208);
  *(a1 + 200) = 0;
  v10 = 0uLL;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  if (v9)
  {
    *(a1 + 216) = v9;
    operator delete(v9);
    v10 = 0uLL;
  }

  *(a1 + 208) = v10;
  *(a1 + 224) = v10;
  if (*(a1 + 256))
  {
    v11 = *(a1 + 248);
    v12 = *(a1 + 240);
    *(a1 + 240) = a1 + 248;
    *(v11 + 16) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
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

        std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>>>::destroy(v13);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::setStatisticsConfiguration(a1 + 8, *(a1 + 472));
  *(a1 + 456) = *(a1 + 448);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 596) == 1)
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

    *(a1 + 596) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F79CE4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 592) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F7A134(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C408D405208);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 592) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI23HDStatisticsPercentiles24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsPercentiles,HDStatisticsTimeInterval>>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF0668;
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 1;
  *(a1 + 602) = 0;
  *(a1 + 604) = 0;
  *(a1 + 608) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF0668;
  v2 = *(a1 + 632);
  if (v2)
  {
    *(a1 + 640) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 568);
  if (v3)
  {
    *(a1 + 576) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 600) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 608) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 77, a2);
  v7 = a2;
  v4 = a1[77];
  v5 = a1[74];
  a1[74] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[74]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *a2;
  v8 = a2[1];
  v9 = *(a1 + 224) == *(a1 + 216) && (*(a1 + 256) - *(a1 + 248)) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), v7, v8, (v8 - v7) >> 4);
  }

  if (v9)
  {
    return 1;
  }

  v11 = *(*a1 + 128);

  return v11(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 600))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_mergeThroughTime(v4, v4[1]);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::~HDStatisticsBucket(v4);
  }

  return v1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 602) == 1)
    {
      if (*(a1 + 601))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v15 = *(a2 + 16);
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 603) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 632, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 602) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 602) = 1;
  v68 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v67 = v6;
  if (*(a1 + 601))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 624);
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

  [v9 sortUsingComparator:&__block_literal_global_1011];
  v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v10 = *(a1 + 624);
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
  v27 = *(a1 + 624);
  *(a1 + 624) = 0;

  *(a1 + 601) = 0;
  if (v8)
  {
    v28 = *(a1 + 632);
    *(a1 + 648) = 0;
    *(a1 + 640) = 0;
    *(a1 + 632) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v69 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 632);
      v39 = *(a1 + 640);
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
            v39 = *(a1 + 640);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 640) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 632);
  v29 = *(a1 + 640);
  *(a1 + 648) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_primitiveInvalidateInterval(a1, v49, v68);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_primitiveInvalidateInterval(a1, 0, v68))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_primitiveAddSample(a1, v55, 1, v51);
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
    while (*(a1 + 576) != *(a1 + 568))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::advanceBucket((a1 + 112), v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_notifyForCurrentBucket(a1);
    }
  }

  *(a1 + 602) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 604) == 1)
    {
      *(a1 + 604) = 0;
      v6 = v67;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 602) = 0;
LABEL_81:

  v65 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228F7B66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 602) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 602))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 602) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 624);
    *(a1 + 624) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 601) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 601) & 1) == 0)
  {
    v8 = *(a1 + 624);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 624);
      *(a1 + 624) = v9;

      v8 = *(a1 + 624);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 600) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsPercentilesEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 600) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 600) forKey:@"needs_config"];
  v3;
  v28[0] = &unk_283BF1A08;
  v28[1] = 0;
  v29 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v29) = 1;
  v28[2] = v4;
  memset(&v28[3], 0, 24);
  statistics::StatisticsEngine::makeCurrentBucket(v28);
  v9 = &unk_283BE6258;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v27 = 511;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v25 = *(a1 + 144);
  v26 = *(a1 + 145);
  v24 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v10 = v5;
  v11 = v7;
  v7.i64[0] = *(a1 + 176);
  v15 = v6;
  v16 = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v30[0] = &unk_283BEB0A8;
    v35 = 127;
    v31 = vextq_s8(*v8, *v8, 8uLL);
    v30[1] = v8[1].i64[0];
    v30[2] = v8[1].i64[1];
    v34 = 0;
    v33 = v8[2].i8[9];
    v32 = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>();
  }

  statistics::StatisticsBucket::makeStatistics(&v9);
  HDStatisticsRelative<HDStatisticsPercentiles>::archive(v30, a1 + 240);
}

void sub_228F7BEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v31 = a2;
  *(a1 + 600) = [v31 decodeBoolForKey:@"needs_config"];
  v3 = v31;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::HDStatisticsBucket(v35, 0, -1.79769313e308, 1.79769313e308);
  v36 = 0u;
  v37 = 0u;
  v81 = 0;
  PB::Reader::Reader(v80, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v81]);
  v73 = &unk_283BF1A08;
  v74 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v79 = 0;
  statistics::StatisticsEngine::readFrom(&v73, v80);
  v34 = v75;
  if (v74)
  {
    v41 = 0;
    v44 = 0uLL;
    v45 = 0;
    memset(v47, 0, sizeof(v47));
    v46 = 0;
    __p = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    v58[1] = 0;
    v48 = 0;
    v58[0] = 0;
    v57 = v58;
    v59 = 0u;
    v60 = 0u;
    v61 = 1065353216;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0;
    v66 = 1065353216;
    v67 = 0u;
    v68 = 0u;
    v69 = 1065353216;
    v70 = 0u;
    v71 = 0u;
    v72 = 1065353216;
    v38 = vextq_s8(*(v74 + 8), *(v74 + 8), 8uLL);
    v4 = *(v74 + 72);
    v39 = *(v74 + 64);
    LOWORD(v40) = *(v74 + 185);
    v42 = vextq_s8(*(v74 + 24), *(v74 + 24), 8uLL);
    v43 = v4;
    v5 = *(v74 + 80);
    v6 = *(v74 + 88);
    v32 = v3;
    for (i = v74; v5 != v6; ++v5)
    {
      v7 = *v5;
      WORD4(v83) = 1;
      LOBYTE(v84) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      *v82 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v82[16] = v8;
      *&v83 = v9;
      BYTE1(v84) = *(v7 + 41);
      BYTE2(v84) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v47, v82);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsRelative<HDStatisticsPercentiles>::unarchive(v82, v10);
      v48 = *v82;
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      __p = *&v82[8];
      v50 = v83;
      *&v82[16] = 0;
      *&v83 = 0;
      *&v82[8] = 0;
      v51 = v84;
      v52 = v85;
      v53 = v86;
      v56 = v89;
      v55 = v88;
      v54 = v87;
    }

    v12 = i[17];
    for (j = i[18]; v12 != j; ++v12)
    {
      v13 = *v12;
      HDStatisticsRelative<HDStatisticsPercentiles>::unarchive(v82, *v12);
      v14 = *(v13 + 18);
      v15 = v58[0];
      if (!v58[0])
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

      v18 = v16[6];
      *(v16 + 10) = *v82;
      if (v18)
      {
        v16[7] = v18;
        operator delete(v18);
        v16[6] = 0;
        v16[7] = 0;
        v16[8] = 0;
      }

      *(v16 + 3) = *&v82[8];
      v16[8] = v83;
      *&v82[16] = 0;
      *&v83 = 0;
      *&v82[8] = 0;
      v16[9] = *(&v83 + 1);
      v19 = v85;
      *(v16 + 5) = v84;
      *(v16 + 6) = v19;
      *(v16 + 56) = v86;
      v20 = v87;
      v21 = v88;
      *(v16 + 76) = v89;
      *(v16 + 17) = v21;
      *(v16 + 15) = v20;
    }

    v3 = v32;
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

      HKIntervalMask<double>::_insertInterval(&v44, v26, v24);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::operator=(v35, &v38);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::~HDStatisticsBucket(&v38);
  }

  v27 = v76;
  for (m = v77; v27 != m; v27 += 8)
  {
    v29 = *(*v27 + 8);
    v30 = *(*v27 + 16);
    v38 = vextq_s8(*(*v27 + 24), *(*v27 + 24), 8uLL);
    v39 = v29;
    v40 = v30;
    LOWORD(v41) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&v36, v38.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v73);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::operator=((a1 + 112), &v34);
  if (v36)
  {
    *(&v36 + 1) = v36;
    operator delete(v36);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::~HDStatisticsBucket(v35);
}

void sub_228F7C450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a2);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(&STACK[0x390]);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x368]);
  v9 = STACK[0x350];
  if (STACK[0x350])
  {
    STACK[0x358] = v9;
    operator delete(v9);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a3);
  std::__tree<std::__value_type<long long,HDStatisticsTimeInterval>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsTimeInterval>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsTimeInterval>>>::destroy(STACK[0x318]);
  v10 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v10;
    operator delete(v10);
  }

  v11 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v11;
    operator delete(v11);
  }

  objc_destroyWeak(&STACK[0x278]);
  v12 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v12;
    operator delete(v12);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x3E0]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
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
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 1065353216;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 360) = 1065353216;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1065353216;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 456);
  if (v2)
  {
    *(a1 + 464) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 408);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 368);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 328);
  v2 = *(a1 + 304);
  if (v2)
  {
    *(a1 + 312) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 264);
  std::__tree<std::__value_type<long long,HDStatisticsTimeInterval>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsTimeInterval>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsTimeInterval>>>::destroy(*(a1 + 248));
  v3 = *(a1 + 128);
  if (v3)
  {
    *(a1 + 136) = v3;
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

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

  objc_storeStrong(&v27, *(a1 + 616));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v29;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::~HDStatisticsBucket(v17);
  *(a1 + 600) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::~HDStatisticsBucket(v22);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 57), (a2 + 456));
  v4 = *(a2 + 480);
  *(a2 + 480) = 0;
  v5 = a1[60];
  a1[60] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = 0;
  *(a1 + 120) = v10;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
  v11 = *(a2 + 152);
  v12 = *(a2 + 168);
  *(a1 + 178) = *(a2 + 178);
  *(a1 + 168) = v12;
  *(a1 + 152) = v11;
  v13 = *(a2 + 200);
  v14 = *(a2 + 216);
  v15 = *(a2 + 232);
  *(a1 + 248) = 0;
  v16 = (a1 + 248);
  *(a1 + 240) = a1 + 248;
  *(a1 + 232) = v15;
  *(a1 + 216) = v14;
  *(a1 + 200) = v13;
  *(a1 + 256) = 0;
  v17 = *(a2 + 240);
  if (v17 != (a2 + 248))
  {
    v18 = 0;
    v19 = (a1 + 248);
    while (1)
    {
      v20 = (a1 + 248);
      if (v19 == v16)
      {
        goto LABEL_12;
      }

      v21 = v18;
      v22 = (a1 + 248);
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
          v25 = (a1 + 248);
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

      if (v29 == (a2 + 248))
      {
        break;
      }

      v18 = *v16;
      v19 = *(a1 + 240);
      v17 = v29;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 264, a2 + 264);
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 304, *(a2 + 304), *(a2 + 312), (*(a2 + 312) - *(a2 + 304)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 328, a2 + 328);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 368, a2 + 368);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 408, a2 + 408);
  return a1;
}

void sub_228F7CDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v13 + 368);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 328);
  v15 = *(v13 + 304);
  if (v15)
  {
    *(v13 + 312) = v15;
    operator delete(v15);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 264);
  std::__tree<std::__value_type<long long,HDStatisticsTimeInterval>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsTimeInterval>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsTimeInterval>>>::destroy(*v12);
  v16 = *a10;
  if (*a10)
  {
    *(v13 + 136) = v16;
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

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::operator=(uint64_t a1, uint64_t a2)
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
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 128, (a2 + 128));
  v11 = a1 + 248;
  v10 = *(a1 + 248);
  *(a1 + 152) = *(a2 + 152);
  v12 = *(a2 + 160);
  v13 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v13;
  *(a1 + 160) = v12;
  v14 = *(a2 + 200);
  v15 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 200) = v14;
  *(a1 + 216) = v15;
  std::__tree<std::__value_type<long long,HDStatisticsTimeInterval>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsTimeInterval>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsTimeInterval>>>::destroy(v10);
  *(a1 + 240) = *(a2 + 240);
  v17 = *(a2 + 248);
  v18 = *(a2 + 256);
  v16 = (a2 + 248);
  *(a1 + 248) = v17;
  *(a1 + 256) = v18;
  if (v18)
  {
    *(v17 + 16) = v11;
    *(a2 + 240) = v16;
    *v16 = 0;
    *(a2 + 256) = 0;
  }

  else
  {
    *(a1 + 240) = v11;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 264, (a2 + 264));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 304, (a2 + 304));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 328, (a2 + 328));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 368, (a2 + 368));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 408, (a2 + 408));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v103 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v87 = a2;
  v88 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
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

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v88 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      WeakRetained = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = *(a2 + 304);
      v14 = *(a2 + 312);
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

  v101[0] = &unk_283BF0738;
  v102 = v101;
  v89 = v12;
  LODWORD(__p[0]) = *(v87 + 120);
  v92 = 0uLL;
  __p[1] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p[1], *(v87 + 128), *(v87 + 136), (*(v87 + 136) - *(v87 + 128)) >> 3);
  v19 = *(v87 + 168);
  v93 = *(v87 + 152);
  v94[0] = v19;
  *(v94 + 10) = *(v87 + 178);
  v20 = *(v87 + 216);
  v94[2] = *(v87 + 200);
  v94[3] = v20;
  v95 = *(v87 + 232);
  if (!v102)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v21 = (*(*v102 + 48))(v102, __p);
  v96 = 0;
  v97 = 0;
  v98 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v96, *v21, *(v21 + 8), (*(v21 + 8) - *v21) >> 3);
  v22 = *(v21 + 24);
  v23 = *(v21 + 40);
  *&v100[10] = *(v21 + 50);
  *v100 = v23;
  v99 = v22;
  if (__p[1])
  {
    *&v92 = __p[1];
    operator delete(__p[1]);
  }

  v24 = HDStatisticsPercentiles::calculatePercentileValue(&v96);
  v25 = MEMORY[0x277CCD7E8];
  v26 = [*(a1 + 16) canonicalUnit];
  v27 = [v25 quantityWithUnit:v26 doubleValue:v24];
  [v89 setPercentileQuantity:v27];

  [v89 setDataCount:(v97 - v96) >> 3];
  v28 = *(a1 + 24);
  v86 = v28;
  if ((v28 & 0x20) != 0)
  {
    v30 = *(&v99 + 1);
    v29 = *v100;
    v31 = *&v100[8];
    v32 = MEMORY[0x277CCD7E8];
    v33 = [*(a1 + 16) canonicalUnit];
    v27 = [v32 quantityWithUnit:v33 doubleValue:v30];
    [v89 setMostRecentQuantity:v27];

    v34 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v29 end:v31];
    [v89 setMostRecentQuantityDateInterval:v34];

    v28 = *(a1 + 24);
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_72;
  }

  v85 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v84 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ((v86 & 0x20) != 0)
  {
    v81 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v82 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v81 = 0;
    v82 = 0;
  }

  *__p = 0u;
  v92 = 0u;
  LODWORD(v93) = 1065353216;
  v27 = *(v87 + 240);
  if (v27 == v87 + 248)
  {
    goto LABEL_69;
  }

  v80 = &v92;
  do
  {
    v35 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_bundleIdentifierForSourceID(v87, *(v27 + 32));
    v36 = v35;
    if (!v35)
    {
      goto LABEL_53;
    }

    v37 = [v35 hash];
    v38 = v37;
    v39 = __p[1];
    if (!__p[1])
    {
      goto LABEL_49;
    }

    v40 = vcnt_s8(__p[1]);
    v40.i16[0] = vaddlv_u8(v40);
    v41 = v40.u32[0];
    if (v40.u32[0] > 1uLL)
    {
      v42 = v37;
      if (v37 >= __p[1])
      {
        v42 = v37 % __p[1];
      }
    }

    else
    {
      v42 = (__p[1] - 1) & v37;
    }

    v43 = *(__p[0] + v42);
    if (!v43 || (v44 = *v43) == 0)
    {
LABEL_49:
      operator new();
    }

    v83 = __p[1] - 1;
    while (1)
    {
      v45 = v44[1];
      if (v45 == v38)
      {
        break;
      }

      if (v41 > 1)
      {
        if (v45 >= v39)
        {
          v45 %= v39;
        }
      }

      else
      {
        v45 &= v83;
      }

      if (v45 != v42)
      {
        goto LABEL_49;
      }

LABEL_48:
      v44 = *v44;
      if (!v44)
      {
        goto LABEL_49;
      }
    }

    v46 = v44[2];
    v47 = v36;
    WeakRetained = v47;
    if (v46 != v47)
    {
      v48 = [v46 isEqualToString:v47];

      if (v48)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

LABEL_50:
    *(v44 + 6) = *(v27 + 40);
    if (v44 + 3 != (v27 + 40))
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v44 + 4, *(v27 + 48), *(v27 + 56), (*(v27 + 56) - *(v27 + 48)) >> 3);
    }

    v49 = *(v27 + 72);
    v50 = *(v27 + 88);
    *(v44 + 82) = *(v27 + 98);
    *(v44 + 9) = v50;
    *(v44 + 7) = v49;
    v51 = *(v27 + 120);
    v52 = *(v27 + 136);
    *(v44 + 68) = *(v27 + 152);
    *(v44 + 15) = v52;
    *(v44 + 13) = v51;

LABEL_53:
    v53 = *(v27 + 8);
    if (v53)
    {
      do
      {
        v54 = v53;
        v53 = *v53;
      }

      while (v53);
    }

    else
    {
      do
      {
        v54 = *(v27 + 16);
        v55 = *v54 == v27;
        v27 = v54;
      }

      while (!v55);
    }

    v27 = v54;
  }

  while (v54 != (v87 + 248));
  v56 = v92;
  if (v92)
  {
    v27 = 0x277CCA000uLL;
    do
    {
      v57 = v56[2];
      v58 = MEMORY[0x277CCD7E8];
      v59 = [*(a1 + 16) canonicalUnit];
      if (!v102)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v60 = (*(*v102 + 48))(v102, v56 + 3);
      WeakRetained = [v58 quantityWithUnit:v59 doubleValue:HDStatisticsPercentiles::calculatePercentileValue(v60)];
      [v85 setObject:WeakRetained forKeyedSubscript:v57];

      if (!v102)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v61 = MEMORY[0x277CCABB0];
      v62 = (*(*v102 + 48))(v102, v56 + 3);
      v63 = [v61 numberWithLongLong:(v62[1] - *v62) >> 3];
      [v84 setObject:v63 forKeyedSubscript:v57];

      if ((v86 & 0x20) != 0)
      {
        if (!v102)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v64 = (*(*v102 + 48))(v102, v56 + 3);
        v66 = v64[4];
        v65 = v64[5];
        v67 = v64[6];
        v68 = MEMORY[0x277CCD7E8];
        v69 = [*(a1 + 16) canonicalUnit];
        WeakRetained = [v68 quantityWithUnit:v69 doubleValue:v66];
        [v81 setObject:WeakRetained forKeyedSubscript:v57];

        v70 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v65 end:v67];
        [v82 setObject:v70 forKeyedSubscript:v57];
      }

      v56 = *v56;
    }

    while (v56);
  }

LABEL_69:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsTimeInterval>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsTimeInterval>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsTimeInterval>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsTimeInterval>>>::~__hash_table(__p);
  [v89 setPercentileQuantityBySource:v85];
  [v89 setDataCountBySource:v84];
  if ((v86 & 0x20) != 0)
  {
    [v89 setMostRecentQuantityBySource:v81];
    [v89 setMostRecentQuantityDateIntervalBySource:v82];
  }

LABEL_72:
  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  std::__function::__value_func<HDStatisticsPercentiles const& ()(HDStatisticsRelative<HDStatisticsPercentiles> const&)>::~__value_func[abi:ne200100](v101);
  v71 = [*(a1 + 16) _unitForChangeInCanonicalUnit];
  v72 = [v89 averageQuantity];
  if (v72)
  {
    v27 = [v89 averageQuantity];
    if (([v27 isCompatibleWithUnit:v71] & 1) == 0)
    {

      goto LABEL_88;
    }
  }

  v73 = [v89 minimumQuantity];
  if (v73)
  {
    WeakRetained = [v89 minimumQuantity];
    if (![WeakRetained isCompatibleWithUnit:v71])
    {
      v74 = 1;
      goto LABEL_82;
    }
  }

  v75 = [v89 maximumQuantity];
  if (v75)
  {
    v76 = [v89 maximumQuantity];
    v77 = [v76 isCompatibleWithUnit:v71];

    v74 = v77 ^ 1;
    if (v73)
    {
      goto LABEL_82;
    }

LABEL_86:
    if (!v72)
    {
      goto LABEL_87;
    }

LABEL_83:

    if ((v74 & 1) == 0)
    {
      goto LABEL_89;
    }

LABEL_88:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Expected compatibility with %@", v71, v80}];
    goto LABEL_89;
  }

  v74 = 0;
  if (!v73)
  {
    goto LABEL_86;
  }

LABEL_82:

  if (v72)
  {
    goto LABEL_83;
  }

LABEL_87:

  if (v74)
  {
    goto LABEL_88;
  }

LABEL_89:

  v78 = *MEMORY[0x277D85DE8];

  return v89;
}

void sub_228F7DD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<HDStatisticsPercentiles const& ()(HDStatisticsRelative<HDStatisticsPercentiles> const&)>::~__value_func[abi:ne200100](v37 - 168);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 288);
  v2 = *(a1 + 304);
  if (v1 != (*(a1 + 312) - v2) >> 3)
  {
    *(a1 + 312) = v2;
    std::vector<long long>::reserve((a1 + 304), v1);
    for (i = *(a1 + 280); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 304, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 304];
    }
  }
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_mergeThroughTime(uint64_t a1, double a2)
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
        goto LABEL_87;
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

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v70.var0 = a1;
        v22 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::_SampleRemainder*,false>(v6, v7, &v70, v23, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v68 = 0;
      }

      if (v6 != v7)
      {
        v50 = 0;
        v51 = 0;
        v52 = v6;
        while (1)
        {
          v53 = v52[1];
          *&v70.var0 = *v52;
          *&v70.var2 = v53;
          *&v70.var4 = *(v52 + 4);
          if (v70.var4 && v70.var1 <= v17)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v52);
LABEL_117:
          v52 += 3;
          if (v52 == v7)
          {
            goto LABEL_118;
          }
        }

        var2 = v70.var2;
        if (v70.var2 > v17)
        {
          var2 = v17;
        }

        v70.var2 = var2;
        for (i = *(a1 + 64); i != *(a1 + 72) && v70.var1 >= *i; i += 2)
        {
          if (v70.var1 < i[1])
          {
            goto LABEL_117;
          }
        }

        v56 = *(v52 + 42);
        v57 = *(v52 + 41);
        if (v51)
        {
          var3 = v70.var3;
          if (v50 == v70.var3 || *(a1 + 24) == 1)
          {
            HDStatisticsRelative<HDStatisticsPercentiles>::addSample((a1 + 120), &v70);
          }
        }

        else
        {
          HDStatisticsRelative<HDStatisticsPercentiles>::addSample((a1 + 120), &v70);
          var3 = v70.var3;
          v50 = v70.var3;
        }

        if (*(a1 + 25) != 1)
        {
          goto LABEL_116;
        }

        v59 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_bundleIdentifierForSourceID(a1, var3);
        if (!v59)
        {
          goto LABEL_115;
        }

        v60 = [v68 objectForKeyedSubscript:v59];
        v61 = v60;
        if (v60)
        {
          if ([v60 longLongValue] != var3 && *(a1 + 24) != 1)
          {
LABEL_114:

LABEL_115:
LABEL_116:
            v51 = 1;
            goto LABEL_117;
          }
        }

        else
        {
          v62 = [MEMORY[0x277CCABB0] numberWithLongLong:var3];
          [v68 setObject:v62 forKeyedSubscript:v59];
        }

        v63 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_canonicalSourceIDForSourceID(a1, var3);
        v64 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_statisticsForSource(a1, v63);
        HDStatisticsRelative<HDStatisticsPercentiles>::addSample(v64, &v70);
        goto LABEL_114;
      }

LABEL_118:
      *(a1 + 56) = v17;

      if (v6)
      {
        operator delete(v6);
      }

LABEL_120:
      v65 = *(a1 + 56);
      if (v65 == v5)
      {
        v66 = [MEMORY[0x277CCA890] currentHandler];
        v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsPercentiles>]"];
        [v66 handleFailureInFunction:v67 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v65 = *(a1 + 56);
      }

      v5 = v65;
      if (v65 >= a2)
      {
        return;
      }
    }

    v24 = *(v6 + 42);
    v25 = *(v6 + 41);
    v26 = *(v6 + 40);
    v28 = *v6;
    v27 = *(v6 + 1);
    v29 = *(v6 + 2);
    v30 = *(v6 + 3);
    v31 = *(v6 + 32);
    v32 = *(v6 + 33);
    if (v29 <= a2)
    {
      v33 = *(v6 + 2);
    }

    else
    {
      v33 = a2;
    }

    if (v27 < a2)
    {
      v34 = *(v6 + 32);
    }

    else
    {
      v34 = 0;
    }

    if (v27 < a2)
    {
      v35 = 0;
    }

    else
    {
      v35 = *(v6 + 33);
    }

    if (v27 < a2)
    {
      v36 = 0;
    }

    else
    {
      v33 = *(v6 + 2);
      v36 = *(v6 + 3);
    }

    if (v27 < a2)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = *(v6 + 2);
    }

    if (v27 < a2)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = *v6;
    }

    if (v27 < a2)
    {
      v39 = 0.0;
    }

    else
    {
      v39 = *(v6 + 1);
    }

    if (v27 < a2)
    {
      v40 = 0;
    }

    else
    {
      v40 = *(v6 + 32);
    }

    if (v6[2])
    {
      v29 = v33;
    }

    else
    {
      v34 = *(v6 + 32);
      v35 = 0;
      v36 = 0;
    }

    if (v6[2])
    {
      v41 = v37;
    }

    else
    {
      v41 = 0.0;
    }

    if (v6[2])
    {
      v42 = v38;
    }

    else
    {
      v42 = 0.0;
    }

    if (v6[2])
    {
      v43 = v39;
    }

    else
    {
      v43 = 0.0;
    }

    if (v6[2])
    {
      v44 = v40;
    }

    else
    {
      v44 = 0;
    }

    v70.var0 = *v6;
    v70.var1 = v27;
    v70.var2 = v29;
    v70.var3 = v30;
    v70.var4 = v34;
    v70.var5 = v32;
    *(&v70.var5 + 1) = *(v6 + 34);
    *(&v70.var5 + 5) = *(v6 + 19);
    *&v71 = v42;
    *(&v71 + 1) = v43;
    *&v72 = v41;
    *(&v72 + 1) = v36;
    LOBYTE(v73) = v44;
    HIBYTE(v73) = v35;
    for (j = *(a1 + 64); j != *(a1 + 72) && v27 >= *j; j += 2)
    {
      if (v27 < j[1])
      {
        goto LABEL_84;
      }
    }

    if (v34)
    {
      HDStatisticsRelative<HDStatisticsPercentiles>::addSample((a1 + 120), &v70);
      if (*(a1 + 25) == 1)
      {
        v46 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_canonicalSourceIDForSourceID(a1, v30);
        v47 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_statisticsForSource(a1, v46);
        HDStatisticsRelative<HDStatisticsPercentiles>::addSample(v47, &v70);
      }

      v26 = 1;
      v25 = 1;
      v24 = 1;
    }

LABEL_84:
    if (v44)
    {
      LOWORD(v69) = v73;
      v48 = v72;
      v49 = *(a1 + 96);
      *v49 = v71;
      *(v49 + 16) = v48;
      *(v49 + 32) = v69;
      *(v49 + 40) = v26;
      *(v49 + 41) = v25;
      *(v49 + 42) = v24;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_87:
    *(a1 + 56) = a2;
    goto LABEL_120;
  }
}

void HDStatisticsRelative<HDStatisticsPercentiles>::addSample(HDStatisticsPercentiles *this, HDRawQuantitySample *a2)
{
  v2 = a2;
  if (a2->var0 == 1.79769313e308)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (a2->var0 != -1.79769313e308);
  }

  v5 = *this;
  if (!v4)
  {
    if (v5 || *(this + 2) != *(this + 1))
    {
      return;
    }

    v7 = (this + 8);
    goto LABEL_17;
  }

  if (v4 == 1)
  {
    if (v5)
    {
      return;
    }

    v6 = 1;
    goto LABEL_14;
  }

  if (v5 != 2)
  {
    v6 = 2;
LABEL_14:
    *this = v6;
    v9 = (this + 8);
    v8 = *(this + 1);
    if (v8)
    {
      *(this + 2) = v8;
      operator delete(v8);
    }

    *v9 = 0u;
    *(this + 24) = 0u;
    v10 = *(this + 6);
    *(this + 40) = *(this + 5);
    *(this + 56) = v10;
    *(this + 36) = *(this + 56);
    v7 = (this + 8);
LABEL_17:
    a2 = v2;
    goto LABEL_18;
  }

  v7 = (this + 8);
LABEL_18:

  HDStatisticsPercentiles::addSample(v7, a2);
}

void *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v4 = *(a1 + 248);
  v2 = (a1 + 248);
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
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsPercentiles>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsPercentiles>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsPercentiles>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v2 - 1), a2);
    v9 = &v8;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsPercentiles>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsPercentiles>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsPercentiles>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6, v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 328), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 368), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 368), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 408), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 408), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void *std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsPercentiles>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsPercentiles>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsPercentiles>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>> const&)::{lambda(HDStatisticsRelative<HDStatisticsPercentiles> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_addStatisticsFromFinishedBucket<HDStatisticsPercentiles>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>> const&)::{lambda(HDStatisticsRelative<HDStatisticsPercentiles> const&)#1}>,HDStatisticsPercentiles const& ()(HDStatisticsRelative<HDStatisticsPercentiles> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsPercentiles const& ()(HDStatisticsRelative<HDStatisticsPercentiles> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 600) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  if (v9 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && a3)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v9 end:*(a2 + 16)];
    v11 = (*(*a1 + 128))(a1, v10, a4);
  }

  return v11;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_advanceToTime(uint64_t a1, double a2)
{
  while (*(a1 + 128) <= a2)
  {
    v4 = *(a1 + 576);
    v5 = *(a1 + 568);
    if (v4 == v5)
    {
      v20 = 0;
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
      v6 = [v13 dateIntervalContainingDate:v14 index:&v20];

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::advanceBucket((a1 + 112), v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::addSample(uint64_t a1, uint64_t *a2, int a3)
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
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 272), v8);
      v14 = *(a1 + 112);
      if (v14 == *(a1 + 104) && (*(a1 + 144) - *(a1 + 136)) <= 0)
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
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_mergeThroughTime(a1 + 8, v5);
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
      if (!*(a1 + 240) || *(a1 + 216) <= v5)
      {
        *(a1 + 208) = v6;
        *(a1 + 216) = v5;
        *(a1 + 224) = v7;
        *(a1 + 232) = v8;
        *(a1 + 240) = v4;
        *(a1 + 241) = v9;
        if (!*(a1 + 200) || *(a1 + 176) <= v5)
        {
          *(a1 + 168) = v6;
          *(a1 + 176) = v5;
          *(a1 + 184) = v7;
          *(a1 + 192) = v8;
          *(a1 + 200) = v4;
          *(a1 + 201) = v9;
        }
      }

      if (*(a1 + 33) == 1)
      {
        v34 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_canonicalSourceIDForSourceID(a1 + 8, v8);
        v35 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_statisticsForSource(a1 + 8, v34);
        if (!*(v35 + 112) || v35[11] <= v5)
        {
          *(v35 + 10) = v6;
          v35[11] = v5;
          v35[12] = v7;
          *(v35 + 13) = v8;
          *(v35 + 112) = v4;
          *(v35 + 113) = v9;
          if (!*(v35 + 72) || v35[6] <= v5)
          {
            *(v35 + 5) = v6;
            v35[6] = v5;
            v35[7] = v7;
            *(v35 + 8) = v8;
            *(v35 + 72) = v4;
            *(v35 + 73) = v9;
          }
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
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 456, &v36);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 602) == 1)
  {
    *(a1 + 604) = 1;
  }

  else
  {
    *(a1 + 604) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[57], a1[58], 0xCCCCCCCCCCCCCCCDLL * ((a1[58] - a1[57]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F7F518(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 480), *(a1 + 40));
  v9 = *(a1 + 136);
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  *(a1 + 128) = 0;
  if (v9)
  {
    *(a1 + 144) = v9;
    operator delete(v9);
  }

  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  if (*(a1 + 264))
  {
    v10 = *(a1 + 248);
    v11 = *(a1 + 256);
    *(a1 + 248) = a1 + 256;
    *(v11 + 16) = 0;
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    if (v10[1])
    {
      v12 = v10[1];
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      v13 = v12[2];
      if (v13)
      {
        v14 = *v13;
        if (*v13 == v12)
        {
          *v13 = 0;
          while (1)
          {
            v16 = v13[1];
            if (!v16)
            {
              break;
            }

            do
            {
              v13 = v16;
              v16 = *v16;
            }

            while (v16);
          }
        }

        else
        {
          for (v13[1] = 0; v14; v14 = v13[1])
          {
            do
            {
              v13 = v14;
              v14 = *v14;
            }

            while (v14);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsTimeInterval>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsTimeInterval>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsTimeInterval>>>::destroy(v12);
        for (i = v13[2]; i; i = i[2])
        {
          v13 = i;
        }

        v12 = v13;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsTimeInterval>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsTimeInterval>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsTimeInterval>>>::destroy(v12);
  }

  objc_storeStrong(v8, *(a1 + 480));
  *(a1 + 464) = *(a1 + 456);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 604) == 1)
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

    *(a1 + 604) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsPercentilesEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F7F774(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 600) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsPercentilesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsPercentilesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F7FBC4(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C4041CDDEDFLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsPercentilesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsPercentilesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsPercentilesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsPercentilesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_statisticsFromFinishedBucket(v15, v15 + 120);
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsPercentiles>>::advanceBucket((v15 + 112), v23, v25);

          if (v20)
          {
            v26 = _Block_copy(*(v15 + 96));
            v27 = v26;
            if (v26)
            {
              (*(v26 + 2))(v26, v20);
            }
          }

          if (*(v15 + 604) == 1)
          {
            *(v15 + 604) = 0;
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsPercentilesEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 600) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsPercentiles>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsPercentilesEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsPercentilesEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsPercentilesEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI23HDStatisticsPercentilesEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsPercentiles>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsPercentiles>::archive(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0;
  *(a1 + 160) = 0;
  *(a1 + 204) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_283BE6208;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  statistics::Statistics::makePrimaryStatistics(a1);
  HDStatisticsPercentiles::archive((a2 + 8));
}

void sub_228F80420()
{
  statistics::Statistics::operator=(*(v0 + 128), v4);
  statistics::Statistics::~Statistics(v4);
  v3 = v1->i32[0];
  *(v0 + 204) |= 0x100u;
  *(v0 + 136) = v3;
  statistics::Statistics::makeMostRecentDatum(v0);
  v4[0] = &unk_283BEB0A8;
  v8 = 127;
  v5 = vextq_s8(v1[5], v1[5], 8uLL);
  v4[1] = v1[6].i64[0];
  v4[2] = v1[6].i64[1];
  v6 = 0;
  v7 = 0;
  statistics::RawQuantitySample::operator=(*v2, v4);
  PB::Base::~Base(v4);
}

double HDStatisticsRelative<HDStatisticsPercentiles>::unarchive(uint64_t a1, const statistics::Statistics *a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  v4 = *(a2 + 16);
  if (v4)
  {
    HDStatisticsPercentiles::unarchive(v4, a2);
  }

  *a1 = *(a2 + 17);
  v5 = *(a2 + 14);
  if (v5)
  {
    result = *(v5 + 8);
    v6 = *(v5 + 16);
    *(a1 + 80) = vextq_s8(*(v5 + 24), *(v5 + 24), 8uLL);
    *(a1 + 96) = result;
    *(a1 + 104) = v6;
    *(a1 + 112) = 1;
  }

  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BF07E8;
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
  HDStatisticsBucket<HDStatisticsPercentiles>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 1;
  *(a1 + 554) = 0;
  *(a1 + 556) = 0;
  *(a1 + 560) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BF07E8;
  v2 = *(a1 + 584);
  if (v2)
  {
    *(a1 + 592) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 520);
  if (v3)
  {
    *(a1 + 528) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsPercentiles>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 552) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 560) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 568), a2);
  v7 = a2;
  v4 = *(a1 + 568);
  v5 = *(a1 + 544);
  *(a1 + 544) = v4;
  v6 = v4;

  HDStatisticsBucket<HDStatisticsPercentiles>::setStatisticsConfiguration(a1 + 120, *(a1 + 544));
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *a2;
  v8 = a2[1];
  v9 = *(a1 + 224) == *(a1 + 216) && (*(a1 + 248) - *(a1 + 240)) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), v7, v8, (v8 - v7) >> 4);
  }

  if (v9)
  {
    return 1;
  }

  v11 = *(*a1 + 128);

  return v11(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 552))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsPercentiles>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsPercentiles>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsPercentiles>::_mergeThroughTime(v4, v4[1]);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsPercentiles>::~HDStatisticsBucket(v4);
  }

  return v1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 554) == 1)
    {
      if (*(a1 + 553))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v15 = *(a2 + 16);
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 555) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 584, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 554) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 554) = 1;
  v68 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v67 = v6;
  if (*(a1 + 553))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 576);
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

  [v9 sortUsingComparator:&__block_literal_global_1020];
  v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v10 = *(a1 + 576);
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
  v27 = *(a1 + 576);
  *(a1 + 576) = 0;

  *(a1 + 553) = 0;
  if (v8)
  {
    v28 = *(a1 + 584);
    *(a1 + 600) = 0;
    *(a1 + 592) = 0;
    *(a1 + 584) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v69 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsDiscrete>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 584);
      v39 = *(a1 + 592);
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
            v39 = *(a1 + 592);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 592) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 584);
  v29 = *(a1 + 592);
  *(a1 + 600) = 0;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_primitiveInvalidateInterval(a1, v49, v68);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_primitiveInvalidateInterval(a1, 0, v68))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_primitiveAddSample(a1, v55, 1, v51);
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
    while (*(a1 + 528) != *(a1 + 520))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsPercentiles>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsPercentiles>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsPercentiles>::advanceBucket((a1 + 112), v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_notifyForCurrentBucket(a1);
    }
  }

  *(a1 + 554) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 556) == 1)
    {
      *(a1 + 556) = 0;
      v6 = v67;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_notifyForCurrentBucket(a1);
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
  *(a1 + 554) = 0;
LABEL_81:

  v65 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228F81300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 554) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    if (*(a1 + 554))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 554) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 576);
    *(a1 + 576) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 553) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 553) & 1) == 0)
  {
    v8 = *(a1 + 576);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 576);
      *(a1 + 576) = v9;

      v8 = *(a1 + 576);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 552) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI23HDStatisticsPercentilesE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 552) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 552) forKey:@"needs_config"];
  v3;
  v28[0] = &unk_283BF1A08;
  v28[1] = 0;
  v29 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v29) = 1;
  v28[2] = v4;
  memset(&v28[3], 0, 24);
  statistics::StatisticsEngine::makeCurrentBucket(v28);
  v9 = &unk_283BE6258;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v27 = 511;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v25 = *(a1 + 144);
  v26 = *(a1 + 145);
  v24 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v10 = v5;
  v11 = v7;
  v7.i64[0] = *(a1 + 176);
  v15 = v6;
  v16 = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v30 = &unk_283BEB0A8;
    v37 = 127;
    v33 = vextq_s8(*v8, *v8, 8uLL);
    v31 = v8[1].i64[0];
    v32 = v8[1].i64[1];
    v36 = 0;
    v35 = v8[2].i8[9];
    v34 = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>();
  }

  statistics::StatisticsBucket::makeStatistics(&v9);
  HDStatisticsPercentiles::archive((a1 + 240));
}

void sub_228F81B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v22 = a2;
  *(a1 + 552) = [v22 decodeBoolForKey:@"needs_config"];
  v3 = v22;
  HDStatisticsBucket<HDStatisticsPercentiles>::HDStatisticsBucket(v26, 0, -1.79769313e308, 1.79769313e308);
  __p = 0u;
  v28 = 0u;
  v67 = 0;
  PB::Reader::Reader(v66, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v67]);
  v59 = &unk_283BF1A08;
  v60 = 0;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v65 = 0;
  statistics::StatisticsEngine::readFrom(&v59, v66);
  v25 = v61;
  if (v60)
  {
    v32 = 0;
    v35 = 0uLL;
    v36 = 0;
    v44[1] = 0;
    v44[0] = 0;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    memset(v42, 0, sizeof(v42));
    v37 = 0;
    v43 = v44;
    v45 = 0u;
    v46 = 0u;
    v47 = 1065353216;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0;
    v52 = 1065353216;
    v53 = 0u;
    v54 = 0u;
    v55 = 1065353216;
    v56 = 0u;
    v57 = 0u;
    v58 = 1065353216;
    v29 = vextq_s8(*(v60 + 8), *(v60 + 8), 8uLL);
    v5 = *(v60 + 72);
    v30 = *(v60 + 64);
    LOWORD(v31) = *(v60 + 185);
    v33 = vextq_s8(*(v60 + 24), *(v60 + 24), 8uLL);
    v34 = v5;
    v6 = *(v60 + 80);
    v7 = *(v60 + 88);
    v23 = v3;
    for (i = v60; v6 != v7; ++v6)
    {
      v8 = *v6;
      v71 = 1;
      v72 = 0;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      v68 = vextq_s8(*(v8 + 24), *(v8 + 24), 8uLL);
      v69 = v9;
      v70 = v10;
      v73 = *(v8 + 41);
      v74 = *(v8 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](&v38, v68.i8);
    }

    v11 = i[13];
    if (v11)
    {
      HDStatisticsPercentiles::unarchive(v11, v4);
    }

    v12 = i[17];
    if (v12 != i[18])
    {
      HDStatisticsPercentiles::unarchive(*v12, v4);
    }

    v3 = v23;
    v13 = i[5];
    for (j = i[6]; v13 != j; v13 += 8)
    {
      v16 = *(*v13 + 8);
      v15 = *(*v13 + 16);
      if (v16 >= v15)
      {
        v17 = *(*v13 + 16);
      }

      else
      {
        v17 = *(*v13 + 8);
      }

      if (v15 < v16)
      {
        v15 = *(*v13 + 8);
      }

      HKIntervalMask<double>::_insertInterval(&v35, v17, v15);
    }

    HDStatisticsBucket<HDStatisticsPercentiles>::operator=(v26, &v29);
    HDStatisticsBucket<HDStatisticsPercentiles>::~HDStatisticsBucket(&v29);
  }

  v18 = v62;
  for (k = v63; v18 != k; v18 += 8)
  {
    v20 = *(*v18 + 8);
    v21 = *(*v18 + 16);
    v29 = vextq_s8(*(*v18 + 24), *(*v18 + 24), 8uLL);
    v30 = v20;
    v31 = v21;
    LOWORD(v32) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&__p, v29.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v59);

  HDStatisticsCollectionEngine<HDStatisticsPercentiles>::operator=((a1 + 112), &v25);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsPercentiles>::~HDStatisticsBucket(v26);
}

void sub_228F8205C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a2);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(&STACK[0x320]);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x2F8]);
  v7 = STACK[0x2E0];
  if (STACK[0x2E0])
  {
    STACK[0x2E8] = v7;
    operator delete(v7);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x2B8]);
  std::__tree<std::__value_type<long long,HDStatisticsPercentiles>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPercentiles>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPercentiles>>>::destroy(STACK[0x2A8]);
  v8 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v8;
    operator delete(v8);
  }

  v9 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v9;
    operator delete(v9);
  }

  objc_destroyWeak(&STACK[0x238]);
  v10 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v10;
    operator delete(v10);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x370]);
  HDStatisticsCollectionEngine<HDStatisticsPercentiles>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsPercentiles>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 208) = 0;
  *(a1 + 200) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 192) = a1 + 200;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 1065353216;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsPercentiles>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 408);
  if (v2)
  {
    *(a1 + 416) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsPercentiles>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsPercentiles>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 360);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 320);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 280);
  v2 = *(a1 + 256);
  if (v2)
  {
    *(a1 + 264) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 216);
  std::__tree<std::__value_type<long long,HDStatisticsPercentiles>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPercentiles>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPercentiles>>>::destroy(*(a1 + 200));
  v3 = *(a1 + 120);
  if (v3)
  {
    *(a1 + 128) = v3;
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

void std::__tree<std::__value_type<long long,HDStatisticsPercentiles>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPercentiles>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPercentiles>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsPercentiles>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPercentiles>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPercentiles>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsPercentiles>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPercentiles>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPercentiles>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsPercentiles>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v24 = 1;
  }

  v23 = *(a1 + 56);
  v25 = *(a1 + 24) & 1;
  if (v27 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v27, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  HDStatisticsBucket<HDStatisticsPercentiles>::setStatisticsConfiguration(v22, *(a1 + 568));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsPercentiles>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsPercentiles>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsPercentiles>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsPercentiles>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsPercentiles>::~HDStatisticsBucket(v17);
  *(a1 + 552) = 0;
  return HDStatisticsBucket<HDStatisticsPercentiles>::~HDStatisticsBucket(v22);
}

void HDStatisticsBucket<HDStatisticsPercentiles>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 32), a2);
  v4 = a2;
  HDStatisticsPercentiles::configure((a1 + 120), v4);
}

void *HDStatisticsCollectionEngine<HDStatisticsPercentiles>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsPercentiles>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 51), (a2 + 408));
  v4 = *(a2 + 432);
  *(a2 + 432) = 0;
  v5 = a1[54];
  a1[54] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsPercentiles>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 120, *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
  v10 = *(a2 + 144);
  v11 = *(a2 + 160);
  v12 = *(a2 + 170);
  *(a1 + 200) = 0;
  v13 = (a1 + 200);
  *(a1 + 192) = a1 + 200;
  *(a1 + 170) = v12;
  *(a1 + 144) = v10;
  *(a1 + 160) = v11;
  *(a1 + 208) = 0;
  v14 = *(a2 + 192);
  if (v14 != (a2 + 200))
  {
    v15 = 0;
    v16 = (a1 + 200);
    while (1)
    {
      v17 = (a1 + 200);
      if (v16 == v13)
      {
        goto LABEL_12;
      }

      v18 = v15;
      v19 = (a1 + 200);
      if (v15)
      {
        do
        {
          v17 = v18;
          v18 = v18[1];
        }

        while (v18);
      }

      else
      {
        do
        {
          v17 = v19[2];
          v20 = *v17 == v19;
          v19 = v17;
        }

        while (v20);
      }

      v21 = v14[4];
      if (v17[4] < v21)
      {
LABEL_12:
        if (v15)
        {
          v22 = v17 + 1;
        }

        else
        {
          v22 = (a1 + 200);
        }

        if (!*v22)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v23 = v15;
            v24 = v15[4];
            if (v24 <= v21)
            {
              break;
            }

            v15 = *v23;
            if (!*v23)
            {
              goto LABEL_23;
            }
          }

          if (v24 >= v21)
          {
            break;
          }

          v15 = v23[1];
          if (!v15)
          {
            goto LABEL_23;
          }
        }
      }

      v25 = v14[1];
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
          v26 = v14[2];
          v20 = *v26 == v14;
          v14 = v26;
        }

        while (!v20);
      }

      if (v26 == (a2 + 200))
      {
        break;
      }

      v15 = *v13;
      v16 = *(a1 + 192);
      v14 = v26;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 216, a2 + 216);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 256, *(a2 + 256), *(a2 + 264), (*(a2 + 264) - *(a2 + 256)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 280, a2 + 280);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 320, a2 + 320);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 360, a2 + 360);
  return a1;
}

void sub_228F82A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v13 + 320);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 280);
  v15 = *(v13 + 256);
  if (v15)
  {
    *(v13 + 264) = v15;
    operator delete(v15);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 216);
  std::__tree<std::__value_type<long long,HDStatisticsPercentiles>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPercentiles>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPercentiles>>>::destroy(*v12);
  v16 = *a10;
  if (*a10)
  {
    *(v13 + 128) = v16;
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

uint64_t HDStatisticsBucket<HDStatisticsPercentiles>::operator=(uint64_t a1, uint64_t a2)
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
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 120, (a2 + 120));
  v11 = a1 + 200;
  v10 = *(a1 + 200);
  *(a1 + 144) = *(a2 + 144);
  v12 = *(a2 + 152);
  v13 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 152) = v12;
  *(a1 + 168) = v13;
  std::__tree<std::__value_type<long long,HDStatisticsPercentiles>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsPercentiles>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsPercentiles>>>::destroy(v10);
  *(a1 + 192) = *(a2 + 192);
  v15 = *(a2 + 200);
  v16 = *(a2 + 208);
  v14 = (a2 + 200);
  *(a1 + 200) = v15;
  *(a1 + 208) = v16;
  if (v16)
  {
    *(v15 + 16) = v11;
    *(a2 + 192) = v14;
    *v14 = 0;
    *(a2 + 208) = 0;
  }

  else
  {
    *(a1 + 192) = v11;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 216, (a2 + 216));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 256, (a2 + 256));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 280, (a2 + 280));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 320, (a2 + 320));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 360, (a2 + 360));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsPercentiles>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v96 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = objc_alloc(MEMORY[0x277CBEAA8]);
  v5 = 40;
  if (v3 != -1.79769313e308)
  {
    v5 = 0;
  }

  v82 = [v4 initWithTimeIntervalSinceReferenceDate:*(a2 + v5)];
  v84 = a2;
  if (*(a2 + 8) == 1.79769313e308)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 48)];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 8)];
  }

  v7 = v6;
  v8 = *(a1 + 16);
  v9 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *(a1 + 16);
    if ([v10 shouldUseUnderlyingTypeForStatistics])
    {
      v11 = [v10 underlyingSampleType];

      v8 = v11;
    }
  }

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v8 startDate:v82 endDate:v7];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = *(a2 + 256);
      v16 = *(a2 + 264);
      while (v15 != v16)
      {
        v17 = *v15;
        v18 = objc_loadWeakRetained((a1 + 48));
        v19 = [v18 sourceForSourceID:v17];

        if (v19)
        {
          if (([v14 containsObject:v19] & 1) == 0)
          {
            [v14 addObject:v19];
          }
        }

        ++v15;
      }

      v20 = [v14 copy];
      [v12 _setSources:v20];
    }
  }

  v94[0] = &unk_283BF08B8;
  v95 = v94;
  v83 = v12;
  __p[0] = 0;
  __p[1] = 0;
  *v87 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(__p, *(v84 + 120), *(v84 + 128), (*(v84 + 128) - *(v84 + 120)) >> 3);
  v21 = *(v84 + 160);
  *&v87[8] = *(v84 + 144);
  v88[0] = v21;
  *(v88 + 10) = *(v84 + 170);
  if (!v95)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v22 = (*(*v95 + 48))(v95, __p);
  v89 = 0;
  v90 = 0;
  v91 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v89, *v22, *(v22 + 8), (*(v22 + 8) - *v22) >> 3);
  v23 = *(v22 + 24);
  v24 = *(v22 + 40);
  *(v93 + 10) = *(v22 + 50);
  v93[0] = v24;
  v92 = v23;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v25 = HDStatisticsPercentiles::calculatePercentileValue(&v89);
  v26 = MEMORY[0x277CCD7E8];
  v27 = [*(a1 + 16) canonicalUnit];
  v28 = [v26 quantityWithUnit:v27 doubleValue:v25];
  [v83 setPercentileQuantity:v28];

  [v83 setDataCount:(v90 - v89) >> 3];
  v29 = *(a1 + 24);
  v81 = v29;
  if ((v29 & 0x20) != 0)
  {
    v30 = *(&v92 + 1);
    v31 = v93[0];
    v32 = MEMORY[0x277CCD7E8];
    v33 = [*(a1 + 16) canonicalUnit];
    v34 = [v32 quantityWithUnit:v33 doubleValue:v30];
    [v83 setMostRecentQuantity:v34];

    v35 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v31 end:?];
    [v83 setMostRecentQuantityDateInterval:v35];

    v29 = *(a1 + 24);
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_70;
  }

  v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ((v81 & 0x20) != 0)
  {
    v76 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v77 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  *__p = 0u;
  *v87 = 0u;
  *&v87[16] = 1065353216;
  v36 = *(v84 + 192);
  if (v36 == (v84 + 200))
  {
    goto LABEL_67;
  }

  do
  {
    v37 = HDStatisticsBucket<HDStatisticsPercentiles>::_bundleIdentifierForSourceID(v84, v36[4]);
    v38 = v37;
    if (!v37)
    {
      goto LABEL_52;
    }

    v39 = [v37 hash];
    v40 = v39;
    v41 = __p[1];
    if (!__p[1])
    {
      goto LABEL_48;
    }

    v42 = vcnt_s8(__p[1]);
    v42.i16[0] = vaddlv_u8(v42);
    v43 = v42.u32[0];
    if (v42.u32[0] > 1uLL)
    {
      v44 = v39;
      if (v39 >= __p[1])
      {
        v44 = v39 % __p[1];
      }
    }

    else
    {
      v44 = (__p[1] - 1) & v39;
    }

    v45 = *(__p[0] + v44);
    if (!v45 || (v46 = *v45) == 0)
    {
LABEL_48:
      operator new();
    }

    v78 = __p[1] - 1;
    while (1)
    {
      v47 = v46[1];
      if (v47 == v40)
      {
        break;
      }

      if (v43 > 1)
      {
        if (v47 >= v41)
        {
          v47 %= v41;
        }
      }

      else
      {
        v47 &= v78;
      }

      if (v47 != v44)
      {
        goto LABEL_48;
      }

LABEL_47:
      v46 = *v46;
      if (!v46)
      {
        goto LABEL_48;
      }
    }

    v48 = v46[2];
    v49 = v38;
    v50 = v49;
    if (v48 != v49)
    {
      v51 = [v48 isEqualToString:v49];

      if (v51)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

LABEL_49:
    if (v46 + 3 != v36 + 5)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v46 + 3, v36[5], v36[6], (v36[6] - v36[5]) >> 3);
    }

    v52 = *(v36 + 4);
    v53 = *(v36 + 5);
    *(v46 + 74) = *(v36 + 90);
    *(v46 + 3) = v52;
    *(v46 + 4) = v53;

LABEL_52:
    v54 = v36[1];
    if (v54)
    {
      do
      {
        v55 = v54;
        v54 = *v54;
      }

      while (v54);
    }

    else
    {
      do
      {
        v55 = v36[2];
        v56 = *v55 == v36;
        v36 = v55;
      }

      while (!v56);
    }

    v36 = v55;
  }

  while (v55 != (v84 + 200));
  v57 = *v87;
  if (*v87)
  {
    do
    {
      v58 = v57[2];
      v59 = MEMORY[0x277CCD7E8];
      v60 = [*(a1 + 16) canonicalUnit];
      if (!v95)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v61 = (*(*v95 + 48))(v95, v57 + 3);
      v62 = [v59 quantityWithUnit:v60 doubleValue:HDStatisticsPercentiles::calculatePercentileValue(v61)];
      [v80 setObject:v62 forKeyedSubscript:v58];

      if (!v95)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v63 = MEMORY[0x277CCABB0];
      v64 = (*(*v95 + 48))(v95, v57 + 3);
      v65 = [v63 numberWithLongLong:(v64[1] - *v64) >> 3];
      [v79 setObject:v65 forKeyedSubscript:v58];

      if ((v81 & 0x20) != 0)
      {
        if (!v95)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v66 = (*(*v95 + 48))(v95, v57 + 3);
        v68 = v66[4];
        v67 = v66[5];
        v69 = v66[6];
        v70 = MEMORY[0x277CCD7E8];
        v71 = [*(a1 + 16) canonicalUnit];
        v72 = [v70 quantityWithUnit:v71 doubleValue:v68];
        [v76 setObject:v72 forKeyedSubscript:v58];

        v73 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v67 end:v69];
        [v77 setObject:v73 forKeyedSubscript:v58];
      }

      v57 = *v57;
    }

    while (v57);
  }

LABEL_67:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsPercentiles>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsPercentiles>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsPercentiles>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsPercentiles>>>::~__hash_table(__p);
  [v83 setPercentileQuantityBySource:v80];
  [v83 setDataCountBySource:v79];
  if ((v81 & 0x20) != 0)
  {
    [v83 setMostRecentQuantityBySource:v76];
    [v83 setMostRecentQuantityDateIntervalBySource:v77];
  }

LABEL_70:
  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  std::__function::__value_func<HDStatisticsPercentiles const& ()(HDStatisticsPercentiles const&)>::~__value_func[abi:ne200100](v94);
  v74 = *MEMORY[0x277D85DE8];

  return v83;
}

void sub_228F83828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<HDStatisticsPercentiles const& ()(HDStatisticsPercentiles const&)>::~__value_func[abi:ne200100](v32 - 160);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsPercentiles>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 240);
  v2 = *(a1 + 256);
  if (v1 != (*(a1 + 264) - v2) >> 3)
  {
    *(a1 + 264) = v2;
    std::vector<long long>::reserve((a1 + 256), v1);
    for (i = *(a1 + 232); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 256, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 256];
    }
  }
}

void HDStatisticsBucket<HDStatisticsPercentiles>::_mergeThroughTime(uint64_t a1, double a2)
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
        goto LABEL_87;
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

      HDStatisticsBucket<HDStatisticsPercentiles>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v70.var0 = a1;
        v22 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsDiscrete>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsDiscrete>::_SampleRemainder*,false>(v6, v7, &v70, v23, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v68 = 0;
      }

      if (v6 != v7)
      {
        v50 = 0;
        v51 = 0;
        v52 = v6;
        while (1)
        {
          v53 = v52[1];
          *&v70.var0 = *v52;
          *&v70.var2 = v53;
          *&v70.var4 = *(v52 + 4);
          if (v70.var4 && v70.var1 <= v17)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v52);
LABEL_117:
          v52 += 3;
          if (v52 == v7)
          {
            goto LABEL_118;
          }
        }

        var2 = v70.var2;
        if (v70.var2 > v17)
        {
          var2 = v17;
        }

        v70.var2 = var2;
        for (i = *(a1 + 64); i != *(a1 + 72) && v70.var1 >= *i; i += 2)
        {
          if (v70.var1 < i[1])
          {
            goto LABEL_117;
          }
        }

        v56 = *(v52 + 42);
        v57 = *(v52 + 41);
        if (v51)
        {
          var3 = v70.var3;
          if (v50 == v70.var3 || *(a1 + 24) == 1)
          {
            HDStatisticsPercentiles::addSample((a1 + 120), &v70);
          }
        }

        else
        {
          HDStatisticsPercentiles::addSample((a1 + 120), &v70);
          var3 = v70.var3;
          v50 = v70.var3;
        }

        if (*(a1 + 25) != 1)
        {
          goto LABEL_116;
        }

        v59 = HDStatisticsBucket<HDStatisticsPercentiles>::_bundleIdentifierForSourceID(a1, var3);
        if (!v59)
        {
          goto LABEL_115;
        }

        v60 = [v68 objectForKeyedSubscript:v59];
        v61 = v60;
        if (v60)
        {
          if ([v60 longLongValue] != var3 && *(a1 + 24) != 1)
          {
LABEL_114:

LABEL_115:
LABEL_116:
            v51 = 1;
            goto LABEL_117;
          }
        }

        else
        {
          v62 = [MEMORY[0x277CCABB0] numberWithLongLong:var3];
          [v68 setObject:v62 forKeyedSubscript:v59];
        }

        v63 = HDStatisticsBucket<HDStatisticsPercentiles>::_canonicalSourceIDForSourceID(a1, var3);
        v64 = HDStatisticsBucket<HDStatisticsPercentiles>::_statisticsForSource(a1, v63);
        HDStatisticsPercentiles::addSample(v64, &v70);
        goto LABEL_114;
      }

LABEL_118:
      *(a1 + 56) = v17;

      if (v6)
      {
        operator delete(v6);
      }

LABEL_120:
      v65 = *(a1 + 56);
      if (v65 == v5)
      {
        v66 = [MEMORY[0x277CCA890] currentHandler];
        v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsPercentiles>::_mergeThroughTime(double) [Statistics = HDStatisticsPercentiles]"];
        [v66 handleFailureInFunction:v67 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v65 = *(a1 + 56);
      }

      v5 = v65;
      if (v65 >= a2)
      {
        return;
      }
    }

    v24 = *(v6 + 42);
    v25 = *(v6 + 41);
    v26 = *(v6 + 40);
    v28 = *v6;
    v27 = *(v6 + 1);
    v29 = *(v6 + 2);
    v30 = *(v6 + 3);
    v31 = *(v6 + 32);
    v32 = *(v6 + 33);
    if (v29 <= a2)
    {
      v33 = *(v6 + 2);
    }

    else
    {
      v33 = a2;
    }

    if (v27 < a2)
    {
      v34 = *(v6 + 32);
    }

    else
    {
      v34 = 0;
    }

    if (v27 < a2)
    {
      v35 = 0;
    }

    else
    {
      v35 = *(v6 + 33);
    }

    if (v27 < a2)
    {
      v36 = 0;
    }

    else
    {
      v33 = *(v6 + 2);
      v36 = *(v6 + 3);
    }

    if (v27 < a2)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = *(v6 + 2);
    }

    if (v27 < a2)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = *v6;
    }

    if (v27 < a2)
    {
      v39 = 0.0;
    }

    else
    {
      v39 = *(v6 + 1);
    }

    if (v27 < a2)
    {
      v40 = 0;
    }

    else
    {
      v40 = *(v6 + 32);
    }

    if (v6[2])
    {
      v29 = v33;
    }

    else
    {
      v34 = *(v6 + 32);
      v35 = 0;
      v36 = 0;
    }

    if (v6[2])
    {
      v41 = v37;
    }

    else
    {
      v41 = 0.0;
    }

    if (v6[2])
    {
      v42 = v38;
    }

    else
    {
      v42 = 0.0;
    }

    if (v6[2])
    {
      v43 = v39;
    }

    else
    {
      v43 = 0.0;
    }

    if (v6[2])
    {
      v44 = v40;
    }

    else
    {
      v44 = 0;
    }

    v70.var0 = *v6;
    v70.var1 = v27;
    v70.var2 = v29;
    v70.var3 = v30;
    v70.var4 = v34;
    v70.var5 = v32;
    *(&v70.var5 + 1) = *(v6 + 34);
    *(&v70.var5 + 5) = *(v6 + 19);
    *&v71 = v42;
    *(&v71 + 1) = v43;
    *&v72 = v41;
    *(&v72 + 1) = v36;
    LOBYTE(v73) = v44;
    HIBYTE(v73) = v35;
    for (j = *(a1 + 64); j != *(a1 + 72) && v27 >= *j; j += 2)
    {
      if (v27 < j[1])
      {
        goto LABEL_84;
      }
    }

    if (v34)
    {
      HDStatisticsPercentiles::addSample((a1 + 120), &v70);
      if (*(a1 + 25) == 1)
      {
        v46 = HDStatisticsBucket<HDStatisticsPercentiles>::_canonicalSourceIDForSourceID(a1, v30);
        v47 = HDStatisticsBucket<HDStatisticsPercentiles>::_statisticsForSource(a1, v46);
        HDStatisticsPercentiles::addSample(v47, &v70);
      }

      v26 = 1;
      v25 = 1;
      v24 = 1;
    }

LABEL_84:
    if (v44)
    {
      LOWORD(v69) = v73;
      v48 = v72;
      v49 = *(a1 + 96);
      *v49 = v71;
      *(v49 + 16) = v48;
      *(v49 + 32) = v69;
      *(v49 + 40) = v26;
      *(v49 + 41) = v25;
      *(v49 + 42) = v24;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_87:
    *(a1 + 56) = a2;
    goto LABEL_120;
  }
}