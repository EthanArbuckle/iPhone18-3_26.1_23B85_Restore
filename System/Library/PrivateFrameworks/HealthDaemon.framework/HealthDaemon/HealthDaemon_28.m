void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v7 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  v23 = a2;
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
      v17 = *(a2 + 368);
      v18 = *(v23 + 376);
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

  v24[0] = &unk_283BEF298;
  v24[3] = v24;
  v14;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](v25, v24);
  v26 = 0;
  operator new();
}

void sub_228F40874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](&a53);
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](&a49);

  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](&a45);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 352);
  v2 = *(a1 + 368);
  if (v1 != (*(a1 + 376) - v2) >> 3)
  {
    *(a1 + 376) = v2;
    std::vector<long long>::reserve((a1 + 368), v1);
    for (i = *(a1 + 344); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 368, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 368];
    }
  }
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v6 = (a1 + 312);
    while (1)
    {
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = 0xAAAAAAAAAAAAAAABLL * (v8 - v7);
      if (v9 == 1)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_97;
      }

      v10 = a2;
      v11 = a2;
      v12 = v5;
      v13 = *(a1 + 96);
      if (v7 != v8)
      {
        do
        {
          v14 = *(v13 + 8);
          v15 = *(v13 + 16);
          if (v14 > v12 && v14 < v11)
          {
            v11 = *(v13 + 8);
          }

          if (v15 > v5)
          {
            v17 = *(v13 + 16);
          }

          else
          {
            v17 = v10;
          }

          if (v15 < v10)
          {
            v12 = v5;
            v10 = v17;
          }

          v13 += 48;
        }

        while (v13 != v8);
      }

      if (v10 >= v11)
      {
        v18 = v11;
      }

      else
      {
        v18 = v10;
      }

      v19 = *(a1 + 16);
      if (v19 > 0.0)
      {
        v20 = v19 * floor(v18 / v19);
        v21 = v19 * floor((v19 + v5) / v19);
        if (v20 >= v21)
        {
          v18 = v20;
        }

        else
        {
          v18 = v21;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (v7 != v8)
      {
        if (v9 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(0xAAAAAAAAAAAAAAABLL * (v8 - v7));
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      v23 = __clz(v9);
      if (WeakRetained)
      {
        *&v76.var0 = a1;
        v24 = 126 - 2 * v23;
        if (v7 == v8)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_SampleRemainder*,false>(v7, v8, &v76, v25, 1);
      }

      else
      {
        v38 = 126 - 2 * v23;
        if (v7 == v8)
        {
          v25 = 0;
        }

        else
        {
          v25 = v38;
        }
      }

      std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v7, v8, v25, 1);
      if (*(a1 + 25) == 1)
      {
        v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v70 = 0;
      }

      if (v7 != v8)
      {
        v69 = 0;
        v39 = 0;
        for (i = v7; i != v8; i += 3)
        {
          v41 = i[1];
          *&v75.var0 = *i;
          *&v75.var2 = v41;
          *&v75.var4 = *(i + 4);
          if (v75.var4 && v75.var1 <= v18)
          {
            var2 = v75.var2;
            if (v75.var2 >= v18)
            {
              var0 = v75.var0;
              v75.var2 = v18;
              v43 = var2 > v18;
              v75.var4 = v75.var1 < v18;
              if (v75.var1 < v18)
              {
                var5 = v75.var5;
                var3 = v75.var3;
                v44 = var2 > v18;
                v45 = v18;
LABEL_58:
                HDStatisticsNoiseLevel::applyMaskToSample(&v75, (a1 + 64));
                v47 = *(i + 42);
                v74 = *(i + 41);
                v71 = *(i + 40);
                if (!v75.var4)
                {
                  goto LABEL_75;
                }

                if (v39)
                {
                  v48 = v75.var3;
                  if (v69 == v75.var3 || *(a1 + 24) == 1)
                  {
                    HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v75, v47 ^ 1);
                    LOBYTE(v47) = 1;
                  }
                }

                else
                {
                  HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v75, v47 ^ 1);
                  LOBYTE(v47) = 1;
                  v48 = v75.var3;
                  v69 = v75.var3;
                }

                if (*(a1 + 25) != 1)
                {
                  goto LABEL_74;
                }

                v49 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, v48);
                if (!v49)
                {
                  goto LABEL_73;
                }

                v50 = [v70 objectForKeyedSubscript:v49];
                v68 = v50;
                if (v50)
                {
                  if ([v50 longLongValue] != v48 && *(a1 + 24) != 1)
                  {
LABEL_72:

LABEL_73:
LABEL_74:
                    v39 = 1;
LABEL_75:
                    if (v44)
                    {
                      v76.var0 = var0;
                      v76.var1 = v45;
                      v76.var2 = var2;
                      v76.var3 = var3;
                      v76.var4 = v43;
                      v76.var5 = var5;
                      LOBYTE(v77) = v71;
                      BYTE1(v77) = v74;
                      BYTE2(v77) = v47;
                      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v76);
                    }

                    continue;
                  }
                }

                else
                {
                  v67 = [MEMORY[0x277CCABB0] numberWithLongLong:v48];
                  [v70 setObject:v67 forKeyedSubscript:v49];
                }

                v51 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, v48);
                v52 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v51);
                HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample(v52, &v75, v74 ^ 1);
                LOBYTE(v74) = 1;
                goto LABEL_72;
              }
            }

            else
            {
              v75.var4 = v75.var2 > v75.var1;
              if (v75.var2 > v75.var1)
              {
                v43 = 0;
                v44 = 0;
                var3 = 0;
                var5 = 0;
                var2 = 0.0;
                v45 = 0.0;
                var0 = 0.0;
                goto LABEL_58;
              }
            }
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 256) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 232), v18) + *(a1 + 256);
      v53 = *(a1 + 304);
      if (v53 != v6)
      {
        do
        {
          *(v53 + 22) = HKIntervalMask<double>::removeIntervalsBefore(v53 + 19, v18) + *(v53 + 22);
          v54 = v53[1];
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
              v55 = v53[2];
              v56 = *v55 == v53;
              v53 = v55;
            }

            while (!v56);
          }

          v53 = v55;
        }

        while (v55 != v6);
      }

      *(a1 + 56) = v18;

      if (v7)
      {
        operator delete(v7);
      }

LABEL_98:
      v64 = *(a1 + 56);
      if (v64 == v5)
      {
        v65 = [MEMORY[0x277CCA890] currentHandler];
        v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel, HDStatisticsTimeInterval>>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel, HDStatisticsTimeInterval>>]"}];
        [v65 handleFailureInFunction:v66 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v64 = *(a1 + 56);
      }

      v5 = v64;
      if (v64 >= a2)
      {
        return;
      }
    }

    v26 = *v7;
    v27 = *(v7 + 1);
    v28 = *(v7 + 2);
    v29 = *(v7 + 3);
    v30 = *(v7 + 32);
    v31 = 0.0;
    v32 = *(v7 + 33);
    if (v30)
    {
      if (v27 > a2)
      {
        v30 = 0;
        v33 = v28 > v27;
        v34 = *(v7 + 2);
        v35 = *(v7 + 33);
        v31 = *v7;
        v36 = *(v7 + 1);
LABEL_89:
        v37 = *(v7 + 3);
        goto LABEL_90;
      }

      if (v28 >= a2)
      {
        v30 = v27 < a2;
        v33 = v28 > a2;
        v34 = a2;
        v35 = *(v7 + 33);
        v31 = *v7;
        v36 = a2;
        goto LABEL_89;
      }

      v35 = 0;
      v37 = 0;
      v33 = 0;
      v30 = v28 > v27;
    }

    else
    {
      v35 = 0;
      v37 = 0;
      v33 = 0;
    }

    v34 = *(v7 + 2);
    v36 = 0.0;
    v28 = 0.0;
LABEL_90:
    v57 = *(v7 + 42);
    v58 = *(v7 + 41);
    v59 = *(v7 + 40);
    v76.var0 = *v7;
    v76.var1 = v27;
    v76.var2 = v34;
    v76.var3 = v29;
    v76.var4 = v30;
    v76.var5 = v32;
    *(&v76.var5 + 1) = *(v7 + 34);
    *(&v76.var5 + 5) = *(v7 + 19);
    *&v77 = v31;
    *(&v77 + 1) = v36;
    *&v78 = v28;
    *(&v78 + 1) = v37;
    LOBYTE(v79) = v33;
    HIBYTE(v79) = v35;
    HDStatisticsNoiseLevel::applyMaskToSample(&v76, (a1 + 64));
    if (v76.var4)
    {
      HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample((a1 + 120), &v76, v57 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v60 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(a1, v76.var3);
        v61 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_statisticsForSource(a1, v60);
        HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample(v61, &v76, v58 ^ 1);
      }

      v59 = 1;
      LOBYTE(v58) = 1;
      LOBYTE(v57) = 1;
    }

    if (v79 == 1)
    {
      *&v75.var4 = v79;
      v62 = v78;
      v63 = *(a1 + 96);
      *v63 = v77;
      *(v63 + 16) = v62;
      *(v63 + 32) = *&v75.var4;
      *(v63 + 40) = v59;
      *(v63 + 41) = v58;
      *(v63 + 42) = v57;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_97:
    *(a1 + 56) = a2;
    goto LABEL_98;
  }
}

__n128 *HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample(__n128 *result, HDRawQuantitySample *a2, int a3)
{
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
    if (v7 || result[2].n128_u64[1])
    {
      return result;
    }

    HDStatisticsNoiseLevel::addSample(&result->n128_i8[8], a2, a3);
    v8 = (v5 + 104);
    goto LABEL_20;
  }

  if (v6 == 1)
  {
    if (v7)
    {
      return result;
    }

    result->n128_u32[0] = 1;
    goto LABEL_14;
  }

  if (v7 != 2)
  {
    result->n128_u32[0] = 2;
LABEL_14:
    v11 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
    *(v5 + 8) = 0u;
    *(&v5[1] + 8) = 0u;
    *(&v5[2] + 8) = 0u;
    *(&v5[3] + 8) = 0u;
    *(&v5[4] + 2) = 0u;
    v12 = v5[5].n128_u64[1];
    v5[5].n128_u64[1] = v11;
    v13 = v11;

    v14 = v5[7].n128_u64[0];
    v5[6].n128_u16[0] = 257;
    v5[6].n128_u64[1] = 0;
    if (v14)
    {
      v5[7].n128_u64[1] = v14;
      operator delete(v14);
    }

    v5[7] = 0u;
    v5[8] = 0u;

    if (!v5[5].n128_u8[0] || v5[3].n128_f64[1] <= v5[9].n128_f64[1])
    {
      v15 = v5[10];
      v5[3] = v5[9];
      v5[4] = v15;
      v5[5].n128_u16[0] = v5[11].n128_u16[0];
    }

    HDStatisticsNoiseLevel::addSample(&v5->n128_i8[8], a2, a3);
    v8 = (v5 + 104);
LABEL_20:
    v9 = a2;
    v10 = a3;
    goto LABEL_21;
  }

  HDStatisticsNoiseLevel::addSample(&result->n128_i8[8], a2, 1);
  v8 = (v5 + 104);
  v9 = a2;
  v10 = 1;
LABEL_21:

  return HDStatisticsTimeInterval::addSample(v8, v9, v10);
}

void *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 312);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 312);
  v5 = (a1 + 312);
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
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 304, a2);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 304, v7);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 392), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a1, a2);
      v9[0] = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 432), v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v9[1] = v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 432), v9)[3] = a2;
        v6 = v9[0];
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9[0] = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 472), a2);
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
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 472), a2);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

void *std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
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

void sub_228F419CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::overallStatistics(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 120);
  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel((a1 + 8), (a2 + 128));
  *(a1 + 112) = 0;
  v4 = *(a2 + 232);
  *(a1 + 104) = *(a2 + 224);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 112, v4, *(a2 + 240), (*(a2 + 240) - v4) >> 4);
  *(a1 + 136) = *(a2 + 256);
  *(a1 + 176) = *(a2 + 296);
  result = *(a2 + 264);
  v6 = *(a2 + 280);
  *(a1 + 144) = result;
  *(a1 + 160) = v6;
  return result;
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 304);
  v27 = (a2 + 312);
  if (v2 == (a2 + 312))
  {
    return;
  }

  do
  {
    v4 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_bundleIdentifierForSourceID(a2, v2[4]);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_24;
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

    v14 = v7;
    v15 = v12[2];
    v16 = v5;
    v17 = v16;
    if (v15 != v16)
    {
      v18 = [v15 isEqualToString:v16];

      v7 = v14;
      if (v18)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

LABEL_21:
    *(v12 + 6) = *(v2 + 10);
    *(v12 + 2) = *(v2 + 3);
    v19 = *(v2 + 4);
    v20 = *(v2 + 5);
    v21 = *(v2 + 6);
    *(v12 + 90) = *(v2 + 106);
    *(v12 + 5) = v21;
    *(v12 + 4) = v20;
    *(v12 + 3) = v19;
    objc_storeStrong(v12 + 14, v2[16]);
    *(v12 + 60) = *(v2 + 68);
    v12[16] = v2[18];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 17, v2[19], v2[20], (v2[20] - v2[19]) >> 4);
    }

    v12[20] = v2[22];
    v22 = *(v2 + 23);
    v23 = *(v2 + 25);
    *(v12 + 100) = *(v2 + 108);
    *(v12 + 23) = v23;
    *(v12 + 21) = v22;

LABEL_24:
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

void sub_228F42040(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,void *>>>::operator()[abi:ne200100](1, v2);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 136);
    if (v3)
    {
      *(a2 + 144) = v3;
      operator delete(v3);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 17);
      if (v4)
      {
        *(v2 + 18) = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF178;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF178;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 96;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF208;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF208;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>> const&)::{lambda(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)#1}>,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 664) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  v10 = *(a1 + 40);
  if (v10)
  {
    if (*(a1 + 664))
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(a1);
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 640) != *(v2 + 632))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, v2 + 120);
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v2, v2 + 120);
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::addSample(uint64_t a1, double *a2, int a3)
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

        goto LABEL_39;
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
          goto LABEL_38;
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
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 336), v6);
      if (*(a1 + 112) == *(a1 + 104) && *(a1 + 168) <= 0)
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
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_mergeThroughTime(v9, v15);
      }

      v28[0] = v32;
      v28[1] = v33;
      v29 = v34;
      v30 = 0;
      v31 = 0;
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v28);
      if (!*(a1 + 304) || *(a1 + 280) <= v4)
      {
        *(a1 + 272) = v3;
        *(a1 + 280) = v4;
        *(a1 + 288) = v5;
        *(a1 + 296) = v6;
        *(a1 + 304) = v7;
        *(a1 + 305) = v8;
        if (!*(a1 + 208) || *(a1 + 184) <= v4)
        {
          *(a1 + 176) = v3;
          *(a1 + 184) = v4;
          *(a1 + 192) = v5;
          *(a1 + 200) = v6;
          *(a1 + 208) = v7;
          *(a1 + 209) = v8;
        }
      }

      if (*(a1 + 33) == 1)
      {
        v21 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_canonicalSourceIDForSourceID(v9, v6);
        v22 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_statisticsForSource(v9, v21);
        if (!*(v22 + 176) || v22[19] <= v4)
        {
          v22[18] = v3;
          v22[19] = v4;
          v22[20] = v5;
          *(v22 + 21) = v6;
          *(v22 + 176) = v7;
          *(v22 + 177) = v8;
          if (!*(v22 + 80) || v22[7] <= v4)
          {
            v22[6] = v3;
            v22[7] = v4;
            v22[8] = v5;
            *(v22 + 9) = v6;
            *(v22 + 80) = v7;
            *(v22 + 81) = v8;
            if (!v14)
            {
              return;
            }

LABEL_39:
            std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 520, &v25);
            return;
          }
        }
      }

LABEL_38:
      if (!v14)
      {
        return;
      }

      goto LABEL_39;
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 666) == 1)
  {
    *(a1 + 668) = 1;
  }

  else
  {
    *(a1 + 668) = 0;
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[65], a1[66], 0xCCCCCCCCCCCCCCCDLL * ((a1[66] - a1[65]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F43178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 544), *(a1 + 40));
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  v9 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 194) = 0u;
  v10 = *(a1 + 216);
  *(a1 + 216) = v9;
  v11 = v9;

  v12 = *(a1 + 240);
  *(a1 + 224) = 257;
  *(a1 + 232) = 0;
  if (v12)
  {
    *(a1 + 248) = v12;
    operator delete(v12);
  }

  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;

  if (*(a1 + 328))
  {
    v13 = *(a1 + 312);
    v14 = *(a1 + 320);
    *(a1 + 312) = a1 + 320;
    *(v14 + 16) = 0;
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
    if (v13[1])
    {
      v15 = v13[1];
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      v16 = v15[2];
      if (v16)
      {
        v17 = *v16;
        if (*v16 == v15)
        {
          *v16 = 0;
          while (1)
          {
            v19 = v16[1];
            if (!v19)
            {
              break;
            }

            do
            {
              v16 = v19;
              v19 = *v19;
            }

            while (v19);
          }
        }

        else
        {
          for (v16[1] = 0; v17; v17 = v16[1])
          {
            do
            {
              v16 = v17;
              v17 = *v17;
            }

            while (v17);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>>::destroy(v15);
        for (i = v16[2]; i; i = i[2])
        {
          v16 = i;
        }

        v15 = v16;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>>::destroy(v15);
  }

  objc_storeStrong(v8, *(a1 + 544));
  *(a1 + 528) = *(a1 + 520);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 668) == 1)
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

    *(a1 + 668) = 0;
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F43430(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

    *(a1 + 664) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F43880(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C4035D4FF1CLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 664) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::archive(uint64_t a1, int8x16_t *a2)
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
  HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::archive(v6, &a2->i64[1]);
  statistics::Statistics::operator=(*(a1 + 128), v6);
  statistics::Statistics::~Statistics(v6);
  v5 = a2->i32[0];
  *(a1 + 204) |= 0x100u;
  *(a1 + 136) = v5;
  statistics::Statistics::makeMostRecentDatum(a1);
  v6[0] = &unk_283BEB0A8;
  v10 = 127;
  v7 = vextq_s8(a2[9], a2[9], 8uLL);
  v6[1] = a2[10].i64[0];
  v6[2] = a2[10].i64[1];
  v8 = 0;
  v9 = 0;
  statistics::RawQuantitySample::operator=(*v4, v6);
  PB::Base::~Base(v6);
}

void HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::archive(uint64_t a1, uint64_t a2)
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
  HDStatisticsNoiseLevel::archive(a2, v5);
  statistics::Statistics::operator=(*(a1 + 128), v5);
  statistics::Statistics::~Statistics(v5);
  statistics::Statistics::makeAuxiliaryStatistics(a1);
  HDStatisticsTimeInterval::archive((a2 + 96), v5);
  statistics::Statistics::operator=(*v4, v5);
  statistics::Statistics::~Statistics(v5);
}

double HDStatisticsRelative<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::unarchive(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 66) = 0u;
  v5 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 88) = v5;
  *(a1 + 96) = 257;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 162) = 0u;
  v7 = a2[16];
  if (v7)
  {
    v8 = v5;
    HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::unarchive(v16, v7);
    v9 = v17[0];
    v4[2] = v16[2];
    v4[3] = v9;
    *(v4 + 58) = *(v17 + 10);
    v10 = v16[1];
    *v4 = v16[0];
    v4[1] = v10;
    *(a1 + 88) = v18;

    *(a1 + 96) = v19;
    *(a1 + 104) = v20;
    v11 = v18;
    v12 = v23;
    v13 = v22;
    *(a1 + 112) = v21;
    *(a1 + 128) = v13;
    v22 = 0;
    v21 = 0uLL;
    *(a1 + 136) = v12;
  }

  *a1 = a2[17];
  v14 = a2[14];
  if (v14)
  {
    result = *(v14 + 8);
    v15 = *(v14 + 16);
    *(a1 + 144) = vextq_s8(*(v14 + 24), *(v14 + 24), 8uLL);
    *(a1 + 160) = result;
    *(a1 + 168) = v15;
    *(a1 + 176) = 1;
  }

  return result;
}

double HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::unarchive(uint64_t a1, uint64_t a2)
{
  *(a1 + 58) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 80) = v5;
  *(a1 + 88) = 257;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  v7 = *(a2 + 128);
  if (v7)
  {
    HDStatisticsNoiseLevel::unarchive(v7, v4);
    v8 = v14[0];
    *(a1 + 32) = v13;
    *(a1 + 48) = v8;
    *(a1 + 58) = *(v14 + 10);
    v9 = *&v12[16];
    *a1 = *v12;
    *(a1 + 16) = v9;
    *(a1 + 80) = v15;

    *(a1 + 88) = v16;
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    HDStatisticsTimeInterval::unarchive(v10, v12);
    *(a1 + 96) = *v12;
    result = *&v13;
    v11 = *&v12[24];
    *(a1 + 104) = *&v12[8];
    *(a1 + 120) = v11;
    *(a1 + 128) = result;
  }

  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEF348;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 104) = 0;
  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 112) = 0;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 1;
  *(a1 + 618) = 0;
  *(a1 + 620) = 0;
  *(a1 + 624) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 664) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  return a1;
}

void sub_228F445C4(_Unwind_Exception *a1)
{
  v3 = v2;
  objc_destroyWeak(v3);

  v5 = *(v1 + 72);
  if (v5)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(v1);
  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEF348;
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

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 616) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::configureMergeAnchor(uint64_t a1, void *a2)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 632), a2);
  v7 = a2;
  v4 = *(a1 + 632);
  v5 = *(a1 + 608);
  *(a1 + 608) = v4;
  v6 = v4;

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setStatisticsConfiguration(a1 + 120, *(a1 + 608));
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 616) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(v3, v3[1]);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 618) == 1)
    {
      if (*(a1 + 617))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 616))
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

      if (*(a1 + 619) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 648, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
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

  [v9 sortUsingComparator:&__block_literal_global_874];
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v49, v61);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, 0, v61))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, v55, 1, v51);
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
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, (a1 + 120));
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
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

void sub_228F452E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 618) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v7, a3);
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 616) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 616) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
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
  HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::archive(&v40, a1 + 240);
  statistics::Statistics::operator=(*(&v23 + 1), &v40);
  statistics::Statistics::~Statistics(&v40);
  v9 = *(a1 + 376);
  if (v9 != a1 + 384)
  {
    HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::archive(&v40, v9 + 40);
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

void sub_228F45B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v34 = a2;
  *(k + 616) = [v34 decodeBoolForKey:@"needs_config"];
  v3 = v34;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(v39, 0, -1.79769313e308, 1.79769313e308);
  v40 = 0u;
  v41 = 0u;
  v80 = 0;
  PB::Reader::Reader(v79, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v80]);
  v72 = &unk_283BF1A08;
  v73 = 0;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v78 = 0;
  statistics::StatisticsEngine::readFrom(&v72, v79);
  v4 = v73;
  v38 = v74;
  if (v73)
  {
    v45 = 0;
    v48 = 0uLL;
    v50 = 0;
    v49 = 0;
    memset(v51, 0, sizeof(v51));
    v36 = v3;
    v52 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
    v53 = 257;
    memset(v54, 0, sizeof(v54));
    v57[1] = 0;
    v57[0] = 0;
    v55 = 0;
    v56 = v57;
    v58 = 0u;
    v59 = 0u;
    v60 = 1065353216;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    v65 = 1065353216;
    v66 = 0u;
    v67 = 0u;
    v68 = 1065353216;
    v69 = 0u;
    v70 = 0u;
    v71 = 1065353216;
    v42 = vextq_s8(*(v4 + 8), *(v4 + 8), 8uLL);
    v5 = *(v4 + 72);
    v43 = *(v4 + 64);
    LOWORD(v44) = *(v4 + 185);
    v46 = vextq_s8(*(v4 + 24), *(v4 + 24), 8uLL);
    v47 = v5;
    v37 = v4;
    v6 = *(v4 + 80);
    for (i = *(v4 + 88); v6 != i; ++v6)
    {
      v8 = *v6;
      LOWORD(v83) = 1;
      BYTE8(v83) = 0;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      v81 = vextq_s8(*(v8 + 24), *(v8 + 24), 8uLL);
      *&v82 = v9;
      *(&v82 + 1) = v10;
      BYTE9(v83) = *(v8 + 41);
      BYTE10(v83) = *(v8 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v51, v81.i8);
    }

    v11 = v37[13];
    if (v11)
    {
      HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::unarchive(&v81, v11);
      *&v51[40] = v82;
      *&v51[56] = v83;
      *&v51[72] = v84[0];
      *&v51[82] = *(v84 + 10);
      *&v51[24] = v81;
      objc_storeStrong(&v52, v85);
      v53 = v86;
      v54[0] = v87;
      if (v54[1])
      {
        v54[2] = v54[1];
        operator delete(v54[1]);
      }

      *&v54[1] = v88;
      v54[3] = v89;
      v89 = 0;
      v88 = 0uLL;
      v55 = v90;
    }

    v35 = k;
    v12 = v37[17];
    for (j = v37[18]; v12 != j; ++v12)
    {
      v14 = *v12;
      HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::unarchive(&v81, *v12);
      v15 = *(v14 + 144);
      v16 = v57[0];
      if (!v57[0])
      {
LABEL_16:
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
            goto LABEL_16;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v16 = v17[1];
        if (!v16)
        {
          goto LABEL_16;
        }
      }

      v19 = *(v84 + 10);
      v21 = v83;
      v20 = v84[0];
      v22 = v81;
      *(v17 + 7) = v82;
      *(v17 + 9) = v21;
      *(v17 + 11) = v20;
      *(v17 + 98) = v19;
      *(v17 + 5) = v22;
      objc_storeStrong(v17 + 15, v85);
      v23 = v17[18];
      *(v17 + 64) = v86;
      v17[17] = v87;
      if (v23)
      {
        v17[19] = v23;
        operator delete(v23);
        v17[18] = 0;
        v17[19] = 0;
        v17[20] = 0;
      }

      *(v17 + 9) = v88;
      v24 = v85;
      v17[20] = v89;
      v89 = 0;
      v88 = 0uLL;
      v17[21] = v90;
    }

    v3 = v36;
    v25 = v37[5];
    v26 = v37[6];
    for (k = v35; v25 != v26; v25 += 8)
    {
      v28 = *(*v25 + 8);
      v27 = *(*v25 + 16);
      if (v28 >= v27)
      {
        v29 = *(*v25 + 16);
      }

      else
      {
        v29 = *(*v25 + 8);
      }

      if (v27 < v28)
      {
        v27 = *(*v25 + 8);
      }

      HKIntervalMask<double>::_insertInterval(&v48, v29, v27);
    }

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::operator=(v39, &v42);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v42);
  }

  v30 = v75;
  for (m = v76; v30 != m; v30 += 8)
  {
    v32 = *(*v30 + 8);
    v33 = *(*v30 + 16);
    v42 = vextq_s8(*(*v30 + 24), *(*v30 + 24), 8uLL);
    v43 = v32;
    v44 = v33;
    LOWORD(v45) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&v40, v42.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v72);

  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::operator=((k + 112), &v38);
  if (v40)
  {
    *(&v40 + 1) = v40;
    operator delete(v40);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v39);
}

void sub_228F46168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
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
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(STACK[0x338]);
  HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::~HDStatisticsCombined(&STACK[0x2A8]);
  v10 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v10;
    operator delete(v10);
  }

  objc_destroyWeak(&STACK[0x288]);
  v11 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v11;
    operator delete(v11);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x400]);
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 248) = 0;
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

void sub_228F46364(_Unwind_Exception *a1)
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

uint64_t HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    *(a1 + 480) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(uint64_t a1)
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
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 264));
  v3 = *(a1 + 224);
  if (v3)
  {
    *(a1 + 232) = v3;
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

void std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,0>(a1 + 4);

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,0>(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

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

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setStatisticsConfiguration(v22, *(a1 + 632));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v17);
  *(a1 + 616) = 0;
  return HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v22);
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setStatisticsConfiguration(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 32), a2);
  v4 = a2;
  HDStatisticsNoiseLevel::configure((a1 + 120), v4);
}

void *HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 59), (a2 + 472));
  v4 = *(a2 + 496);
  *(a2 + 496) = 0;
  v5 = a1[62];
  a1[62] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v10;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(a1 + 224, *(a2 + 224), *(a2 + 232), (*(a2 + 232) - *(a2 + 224)) >> 4);
  *(a1 + 248) = *(a2 + 248);
  v11 = (a1 + 264);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = a1 + 264;
  v12 = *(a2 + 256);
  if (v12 != (a2 + 264))
  {
    do
    {
      v13 = *v11;
      v14 = (a1 + 264);
      if (*(a1 + 256) == v11)
      {
        goto LABEL_11;
      }

      v15 = *v11;
      v16 = (a1 + 264);
      if (v13)
      {
        do
        {
          v14 = v15;
          v15 = v15[1];
        }

        while (v15);
      }

      else
      {
        do
        {
          v14 = v16[2];
          v17 = *v14 == v16;
          v16 = v14;
        }

        while (v17);
      }

      v18 = v12[4];
      if (v14[4] < v18)
      {
LABEL_11:
        if (v13)
        {
          v19 = v14 + 1;
        }

        else
        {
          v19 = (a1 + 264);
        }

        if (!*v19)
        {
LABEL_22:
          operator new();
        }
      }

      else
      {
        if (!v13)
        {
          goto LABEL_22;
        }

        while (1)
        {
          while (1)
          {
            v20 = v13;
            v21 = v13[4];
            if (v21 <= v18)
            {
              break;
            }

            v13 = *v20;
            if (!*v20)
            {
              goto LABEL_22;
            }
          }

          if (v21 >= v18)
          {
            break;
          }

          v13 = v20[1];
          if (!v13)
          {
            goto LABEL_22;
          }
        }
      }

      v22 = v12[1];
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
          v23 = v12[2];
          v17 = *v23 == v12;
          v12 = v23;
        }

        while (!v17);
      }

      v12 = v23;
    }

    while (v23 != (a2 + 264));
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

void sub_228F46C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v11 + 384);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 344);
  v14 = *(v11 + 320);
  if (v14)
  {
    *(v11 + 328) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 280);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(*v12);
  HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>::~HDStatisticsCombined(v11 + 120);
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<long long const,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::operator=(uint64_t a1, uint64_t a2)
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
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 224, (a2 + 224));
  *(a1 + 248) = *(a2 + 248);
  v13 = a1 + 264;
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 264));
  *(a1 + 256) = *(a2 + 256);
  v14 = *(a2 + 264);
  v15 = *(a2 + 272);
  *(a1 + 264) = v14;
  *(a1 + 272) = v15;
  if (v15)
  {
    *(v14 + 16) = v13;
    *(a2 + 256) = a2 + 264;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
  }

  else
  {
    *(a1 + 256) = v13;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 280, (a2 + 280));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 320, (a2 + 320));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 344, (a2 + 344));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 384, (a2 + 384));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 424, (a2 + 424));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(uint64_t a1, double *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = objc_alloc(MEMORY[0x277CBEAA8]);
  v5 = 5;
  if (v3 != -1.79769313e308)
  {
    v5 = 0;
  }

  v6 = [v4 initWithTimeIntervalSinceReferenceDate:a2[v5]];
  v23 = a2;
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

  v13 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v6 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v22 = v6;
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *(v23 + 40);
      v17 = *(v23 + 41);
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
      v6 = v22;
      [v13 _setSources:v21];
    }
  }

  v25[0] = &unk_283BEF538;
  v25[3] = v25;
  v13;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](v26, v25);
  v27 = 0;
  operator new();
}

void sub_228F47A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a45);
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a41);

  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a37);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(uint64_t a1)
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

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v6 = (a1 + 264);
    while (1)
    {
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = 0xAAAAAAAAAAAAAAABLL * (v8 - v7);
      if (v9 == 1)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_97;
      }

      v10 = a2;
      v11 = a2;
      v12 = v5;
      v13 = *(a1 + 96);
      if (v7 != v8)
      {
        do
        {
          v14 = *(v13 + 8);
          v15 = *(v13 + 16);
          if (v14 > v12 && v14 < v11)
          {
            v11 = *(v13 + 8);
          }

          if (v15 > v5)
          {
            v17 = *(v13 + 16);
          }

          else
          {
            v17 = v10;
          }

          if (v15 < v10)
          {
            v12 = v5;
            v10 = v17;
          }

          v13 += 48;
        }

        while (v13 != v8);
      }

      if (v10 >= v11)
      {
        v18 = v11;
      }

      else
      {
        v18 = v10;
      }

      v19 = *(a1 + 16);
      if (v19 > 0.0)
      {
        v20 = v19 * floor(v18 / v19);
        v21 = v19 * floor((v19 + v5) / v19);
        if (v20 >= v21)
        {
          v18 = v20;
        }

        else
        {
          v18 = v21;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (v7 != v8)
      {
        if (v9 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(0xAAAAAAAAAAAAAAABLL * (v8 - v7));
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v78.var0 = a1;
        v23 = 126 - 2 * __clz(v9);
        if (v7 == v8)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsTemporallyWeightedDiscrete<HDStatisticsTemporallyWeightedDiscreteParameters>>::_SampleRemainder*,false>(v7, v8, &v78, v24, 1);
      }

      else
      {
        v37 = 126 - 2 * __clz(v9);
        if (v7 == v8)
        {
          v24 = 0;
        }

        else
        {
          v24 = v37;
        }
      }

      std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#2} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsTemporalBucketWeightedDiscrete<HDStatisticsTemporalBucketWeightedDiscreteParameters>,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v7, v8, v24, 1);
      if (*(a1 + 25) == 1)
      {
        v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v38 = 0;
      }

      if (v7 != v8)
      {
        v71 = 0;
        v39 = 0;
        for (i = v7; i != v8; i += 3)
        {
          v41 = i[1];
          *&v77.var0 = *i;
          *&v77.var2 = v41;
          *&v77.var4 = *(i + 4);
          if (v77.var4 && v77.var1 <= v18)
          {
            var2 = v77.var2;
            if (v77.var2 >= v18)
            {
              var0 = v77.var0;
              v77.var2 = v18;
              v43 = var2 > v18;
              v77.var4 = v77.var1 < v18;
              if (v77.var1 < v18)
              {
                var5 = v77.var5;
                var3 = v77.var3;
                v76 = var2 > v18;
                v44 = v18;
LABEL_58:
                HDStatisticsNoiseLevel::applyMaskToSample(&v77, (a1 + 64));
                v46 = *(i + 42);
                v75 = *(i + 41);
                v72 = *(i + 40);
                if (v77.var4)
                {
                  if (v39)
                  {
                    v47 = v77.var3;
                    if (v71 == v77.var3 || *(a1 + 24) == 1)
                    {
                      HDStatisticsNoiseLevel::addSample((a1 + 120), &v77, v46 ^ 1);
                      HDStatisticsTimeInterval::addSample((a1 + 216), &v77, v46 ^ 1);
                      LOBYTE(v46) = 1;
                    }
                  }

                  else
                  {
                    HDStatisticsNoiseLevel::addSample((a1 + 120), &v77, v46 ^ 1);
                    HDStatisticsTimeInterval::addSample((a1 + 216), &v77, v46 ^ 1);
                    LOBYTE(v46) = 1;
                    v47 = v77.var3;
                    v71 = v77.var3;
                  }

                  if (*(a1 + 25) == 1)
                  {
                    v48 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, v47);
                    if (v48)
                    {
                      v70 = v38;
                      v49 = [v38 objectForKeyedSubscript:v48];
                      if (v49)
                      {
                        if ([v49 longLongValue] == v47 || *(a1 + 24) == 1)
                        {
                          v50 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v47);
                          v51 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v50);
                          v52 = v75 ^ 1;
                          HDStatisticsNoiseLevel::addSample(v51, &v77, v75 ^ 1);
                          goto LABEL_71;
                        }
                      }

                      else
                      {
                        v53 = [MEMORY[0x277CCABB0] numberWithLongLong:{v47, 0}];
                        [v70 setObject:v53 forKeyedSubscript:v48];

                        v54 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v47);
                        v51 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v54);
                        v52 = v75 ^ 1;
                        HDStatisticsNoiseLevel::addSample(v51, &v77, v75 ^ 1);
LABEL_71:
                        HDStatisticsTimeInterval::addSample(v51 + 6, &v77, v52);
                        LOBYTE(v75) = 1;
                      }

                      v38 = v70;
                    }
                  }

                  v39 = 1;
                }

                if (v76)
                {
                  v78.var0 = var0;
                  v78.var1 = v44;
                  v78.var2 = var2;
                  v78.var3 = var3;
                  v78.var4 = v43;
                  v78.var5 = var5;
                  LOBYTE(v79) = v72;
                  BYTE1(v79) = v75;
                  BYTE2(v79) = v46;
                  std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, &v78);
                }

                continue;
              }
            }

            else
            {
              v77.var4 = v77.var2 > v77.var1;
              if (v77.var2 > v77.var1)
              {
                v43 = 0;
                v76 = 0;
                var3 = 0;
                var5 = 0;
                var2 = 0.0;
                v44 = 0.0;
                var0 = 0.0;
                goto LABEL_58;
              }
            }
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, i);
        }
      }

      *(a1 + 248) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 224), v18) + *(a1 + 248);
      v55 = *(a1 + 256);
      if (v55 != v6)
      {
        do
        {
          *(v55 + 21) = HKIntervalMask<double>::removeIntervalsBefore(v55 + 18, v18) + *(v55 + 21);
          v56 = v55[1];
          if (v56)
          {
            do
            {
              v57 = v56;
              v56 = *v56;
            }

            while (v56);
          }

          else
          {
            do
            {
              v57 = v55[2];
              v58 = *v57 == v55;
              v55 = v57;
            }

            while (!v58);
          }

          v55 = v57;
        }

        while (v57 != v6);
      }

      *(a1 + 56) = v18;

      if (v7)
      {
        operator delete(v7);
      }

LABEL_98:
      v66 = *(a1 + 56);
      if (v66 == v5)
      {
        v67 = [MEMORY[0x277CCA890] currentHandler];
        v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel, HDStatisticsTimeInterval>>::_mergeThroughTime(double) [Statistics = HDStatisticsCombined<HDStatisticsNoiseLevel, HDStatisticsTimeInterval>]"}];
        [v67 handleFailureInFunction:v68 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v66 = *(a1 + 56);
      }

      v5 = v66;
      if (v66 >= a2)
      {
        return;
      }
    }

    v25 = *v7;
    v26 = *(v7 + 1);
    v27 = *(v7 + 2);
    v28 = *(v7 + 3);
    v29 = *(v7 + 32);
    v30 = 0.0;
    v31 = *(v7 + 33);
    if (v29)
    {
      if (v26 > a2)
      {
        v29 = 0;
        v32 = v27 > v26;
        v33 = *(v7 + 2);
        v34 = *(v7 + 33);
        v30 = *v7;
        v35 = *(v7 + 1);
LABEL_89:
        v36 = *(v7 + 3);
        goto LABEL_90;
      }

      if (v27 >= a2)
      {
        v29 = v26 < a2;
        v32 = v27 > a2;
        v33 = a2;
        v34 = *(v7 + 33);
        v30 = *v7;
        v35 = a2;
        goto LABEL_89;
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

    v33 = *(v7 + 2);
    v35 = 0.0;
    v27 = 0.0;
LABEL_90:
    v59 = *(v7 + 42);
    v60 = *(v7 + 41);
    v61 = *(v7 + 40);
    v78.var0 = *v7;
    v78.var1 = v26;
    v78.var2 = v33;
    v78.var3 = v28;
    v78.var4 = v29;
    v78.var5 = v31;
    *(&v78.var5 + 1) = *(v7 + 34);
    *(&v78.var5 + 5) = *(v7 + 19);
    *&v79 = v30;
    *(&v79 + 1) = v35;
    *&v80 = v27;
    *(&v80 + 1) = v36;
    LOBYTE(v81) = v32;
    HIBYTE(v81) = v34;
    HDStatisticsNoiseLevel::applyMaskToSample(&v78, (a1 + 64));
    if (v78.var4)
    {
      HDStatisticsNoiseLevel::addSample((a1 + 120), &v78, v59 ^ 1);
      HDStatisticsTimeInterval::addSample((a1 + 216), &v78, v59 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v62 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v78.var3);
        v63 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v62);
        HDStatisticsNoiseLevel::addSample(v63, &v78, v60 ^ 1);
        HDStatisticsTimeInterval::addSample(v63 + 6, &v78, v60 ^ 1);
      }

      v61 = 1;
      LOBYTE(v60) = 1;
      LOBYTE(v59) = 1;
    }

    if (v81 == 1)
    {
      *&v77.var4 = v81;
      v64 = v80;
      v65 = *(a1 + 96);
      *v65 = v79;
      *(v65 + 16) = v64;
      *(v65 + 32) = *&v77.var4;
      *(v65 + 40) = v61;
      *(v65 + 41) = v60;
      *(v65 + 42) = v59;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_97:
    *(a1 + 56) = a2;
    goto LABEL_98;
  }
}

void *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v8 = a2;
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
    v9 = &v8;
    v6 = std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 256, a2);
    HDStatisticsNoiseLevel::configure((v6 + 5), *(a1 + 32));
    v9 = &v8;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 256, v8);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
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
      v6 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, a2);
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

id HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
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

void *std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
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

void sub_228F4899C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::overallStatistics(double *a1, uint64_t a2)
{
  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(a1, (a2 + 120));
  v4[13] = 0;
  v4 += 13;
  v5 = *(a2 + 224);
  *(v4 - 1) = *(a2 + 216);
  v4[1] = 0;
  v4[2] = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v4, v5, *(a2 + 232), (*(a2 + 232) - v5) >> 4);
  result = *(a2 + 248);
  a1[16] = result;
  return result;
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::statisticsByBundleIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v2 = *(a2 + 256);
  v25 = (a2 + 264);
  if (v2 == (a2 + 264))
  {
    return;
  }

  do
  {
    v4 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a2, v2[4]);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_24;
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
        goto LABEL_20;
      }

LABEL_19:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    v14 = v7;
    v15 = v12[2];
    v16 = v5;
    v17 = v16;
    if (v15 != v16)
    {
      v18 = [v15 isEqualToString:v16];

      v7 = v14;
      if (v18)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

LABEL_21:
    *(v12 + 3) = *(v2 + 5);
    v19 = *(v2 + 7);
    v20 = *(v2 + 9);
    v21 = *(v2 + 11);
    *(v12 + 82) = *(v2 + 98);
    *(v12 + 9) = v21;
    *(v12 + 7) = v20;
    *(v12 + 5) = v19;
    objc_storeStrong(v12 + 13, v2[15]);
    *(v12 + 56) = *(v2 + 64);
    v12[15] = v2[17];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 16, v2[18], v2[19], (v2[19] - v2[18]) >> 4);
    }

    v12[19] = v2[21];

LABEL_24:
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

  while (v23 != v25);
}

void sub_228F48FC0(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,void *>>>::operator()[abi:ne200100](1, v2);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 128);
    if (v3)
    {
      *(a2 + 136) = v3;
      operator delete(v3);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 16);
      if (v4)
      {
        *(v2 + 17) = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF418;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF418;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 96;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF4A8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BEF4A8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 616) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  v10 = *(a1 + 40);
  if (v10)
  {
    if (*(a1 + 616))
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_advanceToTime(uint64_t result, double a2)
{
  if (*(result + 128) <= a2)
  {
    v2 = result;
    if (*(v2 + 592) != *(v2 + 584))
    {
      [*(result + 40) dateIntervalAtIndex:*(result + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, (v2 + 120));
    }

    v5 = 0;
    v3 = *(result + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(v2 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(v2 + 120, *(v2 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v2, (v2 + 120));
  }

  return result;
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample(uint64_t a1, double *a2, int a3)
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
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 288), v6);
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
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(v9, v15);
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
        v21 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(v9, v6);
        v22 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsForSource(v9, v21);
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
          std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 472, &v25);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(uint64_t a1)
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

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[59], a1[60], 0xCCCCCCCCCCCCCCCDLL * ((a1[60] - a1[59]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F4A0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  objc_storeStrong((a1 + 496), *(a1 + 40));
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

  v11 = *(a1 + 232);
  *(a1 + 216) = 257;
  *(a1 + 224) = 0;
  if (v11)
  {
    *(a1 + 240) = v11;
    operator delete(v11);
  }

  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;

  if (*(a1 + 280))
  {
    v12 = *(a1 + 264);
    v13 = *(a1 + 272);
    *(a1 + 264) = a1 + 272;
    *(v13 + 16) = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    if (v12[1])
    {
      v14 = v12[1];
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = v14[2];
      if (v15)
      {
        v16 = *v15;
        if (*v15 == v14)
        {
          *v15 = 0;
          while (1)
          {
            v18 = v15[1];
            if (!v18)
            {
              break;
            }

            do
            {
              v15 = v18;
              v18 = *v18;
            }

            while (v18);
          }
        }

        else
        {
          for (v15[1] = 0; v16; v16 = v15[1])
          {
            do
            {
              v15 = v16;
              v16 = *v16;
            }

            while (v16);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(v14);
        for (i = v15[2]; i; i = i[2])
        {
          v15 = i;
        }

        v14 = v15;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>>>::destroy(v14);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::setStatisticsConfiguration(a1 + 8, *(a1 + 496));
  *(a1 + 480) = *(a1 + 472);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_didChangeBucket(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F4A34C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
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
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F4A79C(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40067036FCLL);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v15, (v15 + 120));
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 616) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI22HDStatisticsNoiseLevel24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsNoiseLevel,HDStatisticsTimeInterval>>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEF5E8;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 104) = 0;
  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 112) = 0;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
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

void sub_228F4B078(_Unwind_Exception *a1)
{
  v3 = v2;
  objc_destroyWeak(v3);

  v5 = *(v1 + 72);
  if (v5)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(v1);
  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BEF5E8;
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

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 624) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::configureMergeAnchor(uint64_t a1, void *a2)
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 80, a2);
  v7 = a2;
  v4 = a1[80];
  v5 = a1[77];
  a1[77] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[77]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
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

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 280) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 624))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(v4, v5);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(v4);
  }

  return v1;
}

void sub_228F4B4C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a1 + 626) == 1)
    {
      if (*(a1 + 625))
      {
        goto LABEL_6;
      }

      if (*(a1 + 40))
      {
        if (*(a1 + 624))
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

      if (*(a1 + 627) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 656, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_23;
  }

LABEL_6:
  v14 = 1;
LABEL_23:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 626) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 626) = 1;
  v68 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v67 = v6;
  if (*(a1 + 625))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 648);
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

  [v9 sortUsingComparator:&__block_literal_global_883];
  v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v10 = *(a1 + 648);
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

  v30 = [v69 lastObject];
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
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveInvalidateInterval(a1, v49, v68);

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

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveInvalidateInterval(a1, 0, v68))
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
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveAddSample(a1, v55, 1, v51);
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
    while (*(a1 + 600) != *(a1 + 592))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::advanceBucket((a1 + 112), v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_notifyForCurrentBucket(a1);
    }
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
      v6 = v67;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_notifyForCurrentBucket(a1);
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
  *(a1 + 626) = 0;
LABEL_81:

  v65 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_228F4BD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 626) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
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
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveInvalidateInterval(a1, v7, a3);
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 624) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 624) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
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
  HDStatisticsRelative<HDStatisticsNoiseLevel>::archive(&v40, (a1 + 240));
  statistics::Statistics::operator=(*(&v23 + 1), &v40);
  statistics::Statistics::~Statistics(&v40);
  v9 = *(a1 + 384);
  if (v9 != a1 + 392)
  {
    HDStatisticsRelative<HDStatisticsNoiseLevel>::archive(&v40, (v9 + 40));
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

void sub_228F4C5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::decodeInternalsWithDecoder(uint64_t k, void *a2)
{
  v34 = a2;
  *(k + 624) = [v34 decodeBoolForKey:@"needs_config"];
  v3 = v34;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(&v38.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *__p = 0u;
  v40 = 0u;
  v85 = 0;
  PB::Reader::Reader(v84, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v85]);
  v77 = &unk_283BF1A08;
  v78 = 0;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  v83 = 0;
  statistics::StatisticsEngine::readFrom(&v77, v84);
  v4 = v78;
  v38.n128_u64[0] = v79;
  if (v78)
  {
    v36 = v3;
    v44 = 0;
    v47 = 0uLL;
    v48 = 0;
    memset(v50, 0, sizeof(v50));
    v49 = 0;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    memset(v55, 0, 26);
    v51 = 0;
    v56 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
    v57 = 257;
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    v62[1] = 0;
    v62[0] = 0;
    v61 = v62;
    v63 = 0u;
    v64 = 0u;
    v65 = 1065353216;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0;
    v70 = 1065353216;
    v71 = 0u;
    v72 = 0u;
    v73 = 1065353216;
    v74 = 0u;
    v75 = 0u;
    v76 = 1065353216;
    v41 = vextq_s8(*(v4 + 8), *(v4 + 8), 8uLL);
    v5 = *(v4 + 72);
    v42 = *(v4 + 64);
    LOWORD(v43) = *(v4 + 185);
    v45 = vextq_s8(*(v4 + 24), *(v4 + 24), 8uLL);
    v46 = v5;
    v37 = v4;
    v6 = *(v4 + 80);
    for (i = *(v4 + 88); v6 != i; ++v6)
    {
      v8 = *v6;
      WORD4(v87) = 1;
      LOBYTE(v88) = 0;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      *v86 = vextq_s8(*(v8 + 24), *(v8 + 24), 8uLL);
      *&v86[16] = v9;
      *&v87 = v10;
      BYTE1(v88) = *(v8 + 41);
      BYTE2(v88) = *(v8 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v50, v86);
    }

    v35 = k;
    v11 = v37[13];
    if (v11)
    {
      HDStatisticsRelative<HDStatisticsNoiseLevel>::unarchive(v86, v11);
      v51 = *v86;
      v54 = v88;
      v55[0] = v89[0];
      *(v55 + 10) = *(v89 + 10);
      v52 = *&v86[8];
      v53 = v87;
      v12 = obj;
      objc_storeStrong(&v56, obj);
      v57 = v91;
      v58 = v92;
      v59 = v93;
      v60 = v94;
    }

    v14 = v37[17];
    for (j = v37[18]; v14 != j; ++v14)
    {
      v15 = *v14;
      HDStatisticsRelative<HDStatisticsNoiseLevel>::unarchive(v86, *v14);
      v16 = *(v15 + 144);
      v17 = v62[0];
      if (!v62[0])
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

      *(v18 + 10) = *v86;
      *(v18 + 3) = *&v86[8];
      v20 = *(v89 + 10);
      v21 = v89[0];
      v22 = v88;
      *(v18 + 4) = v87;
      *(v18 + 5) = v22;
      *(v18 + 6) = v21;
      *(v18 + 106) = v20;
      v23 = obj;
      objc_storeStrong(v18 + 16, obj);
      *(v18 + 68) = v91;
      v24 = v93;
      *(v18 + 9) = v92;
      *(v18 + 10) = v24;
      *(v18 + 88) = v94;
    }

    v25 = v37[5];
    v26 = v37[6];
    for (k = v35; v25 != v26; v25 += 8)
    {
      v28 = *(*v25 + 8);
      v27 = *(*v25 + 16);
      if (v28 >= v27)
      {
        v29 = *(*v25 + 16);
      }

      else
      {
        v29 = *(*v25 + 8);
      }

      if (v27 < v28)
      {
        v27 = *(*v25 + 8);
      }

      HKIntervalMask<double>::_insertInterval(&v47, v29, v27);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::operator=(&v38.n128_i64[1], &v41);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(&v41);
    v3 = v36;
  }

  v30 = v80;
  for (m = v81; v30 != m; v30 += 8)
  {
    v32 = *(*v30 + 8);
    v33 = *(*v30 + 16);
    v41 = vextq_s8(*(*v30 + 24), *(*v30 + 24), 8uLL);
    v42 = v32;
    v43 = v33;
    LOWORD(v44) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](__p, v41.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v77);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::operator=((k + 112), &v38);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(&v38.n128_i64[1]);
}

void sub_228F4CBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(&STACK[0x3E0]);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a3);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x390]);
  v9 = STACK[0x378];
  if (STACK[0x378])
  {
    STACK[0x380] = v9;
    operator delete(v9);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x350]);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(STACK[0x340]);

  v10 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v10;
    operator delete(v10);
  }

  objc_destroyWeak((v7 + 88));
  v11 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v11;
    operator delete(v11);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x410]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
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
  *(a1 + 96) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 208) = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 216) = 257;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 1065353216;
  *(a1 + 376) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 384) = 1065353216;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 1065353216;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 1065353216;
  return a1;
}

void sub_228F4CDA8(_Unwind_Exception *a1)
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

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 480);
  if (v2)
  {
    *(a1 + 488) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 432);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 392);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 352);
  v2 = *(a1 + 328);
  if (v2)
  {
    *(a1 + 336) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 288);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(*(a1 + 272));

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

void std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_configureForStartTime(uint64_t a1)
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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

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
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(v17);
  *(a1 + 624) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 60), a2 + 30);
  v4 = a2[31].n128_u64[1];
  a2[31].n128_u64[1] = 0;
  v5 = a1[63];
  a1[63] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
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
  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel((a1 + 128), (a2 + 128));
  v10 = *(a2 + 240);
  v11 = *(a2 + 256);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v10;
  v12 = (a1 + 272);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 256) = v11;
  *(a1 + 264) = a1 + 272;
  v13 = *(a2 + 264);
  if (v13 != (a2 + 272))
  {
    do
    {
      v14 = *v12;
      v15 = (a1 + 272);
      if (*(a1 + 264) == v12)
      {
        goto LABEL_11;
      }

      v16 = *v12;
      v17 = (a1 + 272);
      if (v14)
      {
        do
        {
          v15 = v16;
          v16 = v16[1];
        }

        while (v16);
      }

      else
      {
        do
        {
          v15 = v17[2];
          v18 = *v15 == v17;
          v17 = v15;
        }

        while (v18);
      }

      v19 = v13[4];
      if (v15[4] < v19)
      {
LABEL_11:
        if (v14)
        {
          v20 = v15 + 1;
        }

        else
        {
          v20 = (a1 + 272);
        }

        if (!*v20)
        {
LABEL_22:
          operator new();
        }
      }

      else
      {
        if (!v14)
        {
          goto LABEL_22;
        }

        while (1)
        {
          while (1)
          {
            v21 = v14;
            v22 = v14[4];
            if (v22 <= v19)
            {
              break;
            }

            v14 = *v21;
            if (!*v21)
            {
              goto LABEL_22;
            }
          }

          if (v22 >= v19)
          {
            break;
          }

          v14 = v21[1];
          if (!v14)
          {
            goto LABEL_22;
          }
        }
      }

      v23 = v13[1];
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
          v24 = v13[2];
          v18 = *v24 == v13;
          v13 = v24;
        }

        while (!v18);
      }

      v13 = v24;
    }

    while (v24 != (a2 + 272));
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

void sub_228F4D580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v11 + 392);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 352);
  v14 = *(v11 + 328);
  if (v14)
  {
    *(v11 + 336) = v14;
    operator delete(v14);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11 + 288);
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(*v12);

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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
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

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::operator=(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  v10 = *(a2 + 144);
  v11 = *(a2 + 160);
  v12 = *(a2 + 176);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 160) = v11;
  *(a1 + 176) = v12;
  *(a1 + 144) = v10;
  objc_storeStrong((a1 + 208), *(a2 + 208));
  *(a1 + 216) = *(a2 + 216);
  v13 = *(a2 + 224);
  v14 = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 224) = v13;
  *(a1 + 240) = v14;
  v15 = a1 + 272;
  std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(*(a1 + 272));
  *(a1 + 264) = *(a2 + 264);
  v16 = *(a2 + 272);
  v17 = *(a2 + 280);
  *(a1 + 272) = v16;
  *(a1 + 280) = v17;
  if (v17)
  {
    *(v16 + 16) = v15;
    *(a2 + 264) = a2 + 272;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
  }

  else
  {
    *(a1 + 264) = v15;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 288, (a2 + 288));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 328, (a2 + 328));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 352, (a2 + 352));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 392, (a2 + 392));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 432, (a2 + 432));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v108 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v85 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  v83 = a2;
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

  v13 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v85 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *(a2 + 328);
      v2 = *(v83 + 336);
      while (v16 != v2)
      {
        v17 = *v16;
        v18 = objc_loadWeakRetained((a1 + 48));
        v19 = [v18 sourceForSourceID:v17];

        if (v19)
        {
          if (([v15 containsObject:v19] & 1) == 0)
          {
            [v15 addObject:v19];
          }
        }

        ++v16;
      }

      v20 = [v15 copy];
      [v13 _setSources:v20];
    }
  }

  v106[0] = &unk_283BEF6B8;
  v107 = v106;
  v86 = v13;
  LODWORD(v92) = *(v83 + 120);
  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(v93, (v83 + 128));
  v21 = *(v83 + 240);
  v94 = *(v83 + 224);
  v95 = v21;
  v96 = *(v83 + 256);
  if (!v107)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v22 = (*(*v107 + 48))(v107, &v92);
  HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(&v97, v22);

  HDStatisticsNoiseLevel::finalizeSamples(&v97);
  v88 = *(a1 + 24);
  v23 = _HKStatisticsOptionBaselineRelativeQuantities();
  v24 = *(a1 + 16);
  if ((v23 & v88) != 0)
  {
    [v24 _unitForChangeInCanonicalUnit];
  }

  else
  {
    [v24 canonicalUnit];
  }
  v87 = ;
  if ((v88 & 2) != 0)
  {
    v25 = 0.0;
    if (v98 > 0.0 && v97 > 0.0)
    {
      v25 = log10(v97 / v98) * 10.0;
    }

    v26 = [MEMORY[0x277CCD7E8] quantityWithUnit:v87 doubleValue:v25];
    [v86 setAverageQuantity:v26];
  }

  if ((v88 & 4) != 0)
  {
    v27 = [MEMORY[0x277CCD7E8] quantityWithUnit:v87 doubleValue:v100];
    [v86 setMinimumQuantity:v27];
  }

  if ((v88 & 8) != 0)
  {
    v28 = [MEMORY[0x277CCD7E8] quantityWithUnit:v87 doubleValue:v99];
    [v86 setMaximumQuantity:v28];
  }

  if ((v88 & 0x20) != 0)
  {
    v29 = v103;
    v30 = v104;
    v31 = [MEMORY[0x277CCD7E8] quantityWithUnit:v87 doubleValue:v102];
    [v86 setMostRecentQuantity:v31];

    v32 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v29 end:v30];
    [v86 setMostRecentQuantityDateInterval:v32];
  }

  [v86 setDataCount:v101];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_100;
  }

  if ((v88 & 2) != 0)
  {
    v81 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v81 = 0;
  }

  if ((v88 & 4) != 0)
  {
    v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v79 = 0;
  }

  if ((v88 & 8) != 0)
  {
    v77 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v77 = 0;
  }

  if ((v88 & 0x20) != 0)
  {
    v78 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v80 = 0;
    v78 = 0;
  }

  v82 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v90 = 0u;
  v91 = 1065353216;
  v33 = *(v83 + 264);
  if (v33 == (v83 + 272))
  {
    goto LABEL_91;
  }

  do
  {
    v34 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_bundleIdentifierForSourceID(v83, v33[4]);
    v35 = v34;
    if (!v34)
    {
      goto LABEL_68;
    }

    v36 = [v34 hash];
    v37 = v36;
    v2 = __p[1];
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
    v13 = v45;
    if (v44 != v45)
    {
      v46 = [v44 isEqualToString:v45];

      if (v46)
      {
        goto LABEL_67;
      }

      goto LABEL_65;
    }

LABEL_67:
    *(v42 + 6) = *(v33 + 10);
    *(v42 + 2) = *(v33 + 3);
    v47 = *(v33 + 4);
    v48 = *(v33 + 5);
    v49 = *(v33 + 6);
    *(v42 + 90) = *(v33 + 106);
    *(v42 + 4) = v48;
    *(v42 + 5) = v49;
    *(v42 + 3) = v47;
    objc_storeStrong(v42 + 14, v33[16]);
    *(v42 + 60) = *(v33 + 68);
    v50 = *(v33 + 9);
    v51 = *(v33 + 10);
    *(v42 + 80) = *(v33 + 88);
    *(v42 + 8) = v50;
    *(v42 + 9) = v51;

LABEL_68:
    v52 = v33[1];
    if (v52)
    {
      do
      {
        v53 = v52;
        v52 = *v52;
      }

      while (v52);
    }

    else
    {
      do
      {
        v53 = v33[2];
        v54 = *v53 == v33;
        v33 = v53;
      }

      while (!v54);
    }

    v33 = v53;
  }

  while (v53 != (v83 + 272));
  for (i = v90; i; i = *i)
  {
    v56 = i[2];
    if (!v107)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v57 = (*(*v107 + 48))(v107, i + 3);
    HDStatisticsNoiseLevel::HDStatisticsNoiseLevel(&v92, v57);
    HDStatisticsNoiseLevel::finalizeSamples(&v92);
    if ((v88 & 2) != 0)
    {
      v59 = v93[0];
      v60 = 0.0;
      if (v93[0] > 0.0)
      {
        v58 = v92;
        if (v92 > 0.0)
        {
          v60 = log10(v92 / v93[0]) * 10.0;
        }
      }

      v61 = [MEMORY[0x277CCD7E8] quantityWithUnit:v87 doubleValue:{v60, v59, v58}];
      [v81 setObject:v61 forKeyedSubscript:v56];
    }

    if ((v88 & 4) != 0)
    {
      v62 = [MEMORY[0x277CCD7E8] quantityWithUnit:v87 doubleValue:v93[2]];
      [v79 setObject:v62 forKeyedSubscript:v56];
    }

    if ((v88 & 8) != 0)
    {
      v63 = [MEMORY[0x277CCD7E8] quantityWithUnit:v87 doubleValue:v93[1]];
      [v77 setObject:v63 forKeyedSubscript:v56];
    }

    if ((v88 & 0x20) != 0)
    {
      v64 = v93[5];
      v65 = v93[6];
      v66 = [MEMORY[0x277CCD7E8] quantityWithUnit:v87 doubleValue:v93[4]];
      [v78 setObject:v66 forKeyedSubscript:v56];

      v67 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v64 end:v65];
      [v80 setObject:v67 forKeyedSubscript:v56];
    }

    if (!v107)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{*((*(*v107 + 48))(v107, i + 3) + 32)}];
    [v82 setObject:v13 forKeyedSubscript:v56];
  }

LABEL_91:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::~__hash_table(__p);
  if ((v88 & 2) != 0)
  {
    [v86 setAverageQuantityBySource:v81];
  }

  if ((v88 & 4) != 0)
  {
    [v86 setMinimumQuantityBySource:v79];
  }

  if ((v88 & 8) != 0)
  {
    [v86 setMaximumQuantityBySource:v77];
  }

  if ((v88 & 0x20) != 0)
  {
    [v86 setMostRecentQuantityBySource:v78];
    [v86 setMostRecentQuantityDateIntervalBySource:v80];
  }

  [v86 setDataCountBySource:v82];

LABEL_100:
  std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsNoiseLevel> const&)>::~__value_func[abi:ne200100](v106);
  v68 = [*(a1 + 16) _unitForChangeInCanonicalUnit];
  v69 = [v86 averageQuantity];
  if (v69)
  {
    v13 = [v86 averageQuantity];
    if (([v13 isCompatibleWithUnit:v68] & 1) == 0)
    {

      goto LABEL_114;
    }
  }

  v70 = [v86 minimumQuantity];
  if (v70)
  {
    v2 = [v86 minimumQuantity];
    if (![v2 isCompatibleWithUnit:v68])
    {
      v71 = 1;
      goto LABEL_108;
    }
  }

  v72 = [v86 maximumQuantity];
  if (v72)
  {
    v73 = [v86 maximumQuantity];
    v74 = [v73 isCompatibleWithUnit:v68];

    v71 = v74 ^ 1;
    if (v70)
    {
      goto LABEL_108;
    }

LABEL_112:
    if (!v69)
    {
      goto LABEL_113;
    }

LABEL_109:

    if ((v71 & 1) == 0)
    {
      goto LABEL_115;
    }

LABEL_114:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Expected compatibility with %@", v68}];
    goto LABEL_115;
  }

  v71 = 0;
  if (!v70)
  {
    goto LABEL_112;
  }

LABEL_108:

  if (v69)
  {
    goto LABEL_109;
  }

LABEL_113:

  if (v71)
  {
    goto LABEL_114;
  }

LABEL_115:

  v75 = *MEMORY[0x277D85DE8];

  return v86;
}

void sub_228F4E66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsNoiseLevel> const&)>::~__value_func[abi:ne200100](v58 - 168);

  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(uint64_t a1)
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

void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(uint64_t a1, double a2)
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

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(a1);
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

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsCumulative,HDStatisticsTimeInterval>>>::_SampleRemainder*,false>(v6, v7, &v71, v24, 1);
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
                    HDStatisticsRelative<HDStatisticsNoiseLevel>::addSample((a1 + 120), &v70, v46 ^ 1);
                    v46 = 1;
                  }
                }

                else
                {
                  HDStatisticsRelative<HDStatisticsNoiseLevel>::addSample((a1 + 120), &v70, v46 ^ 1);
                  v46 = 1;
                  v48 = v70.var3;
                  v65 = v70.var3;
                }

                if (*(a1 + 25) != 1)
                {
                  goto LABEL_73;
                }

                v49 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_bundleIdentifierForSourceID(a1, v48);
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

                v51 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_canonicalSourceIDForSourceID(a1, v48);
                v52 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsForSource(a1, v51);
                HDStatisticsRelative<HDStatisticsNoiseLevel>::addSample(v52, &v70, v47 ^ 1);
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
        v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(double) [Statistics = HDStatisticsRelative<HDStatisticsNoiseLevel>]"];
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
      HDStatisticsRelative<HDStatisticsNoiseLevel>::addSample((a1 + 120), &v71, v53 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v56 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_canonicalSourceIDForSourceID(a1, v71.var3);
        v57 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsForSource(a1, v56);
        HDStatisticsRelative<HDStatisticsNoiseLevel>::addSample(v57, &v71, v54 ^ 1);
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

void HDStatisticsRelative<HDStatisticsNoiseLevel>::addSample(int *a1, const HDRawQuantitySample *a2, char a3)
{
  v4 = a2;
  if (a2->var0 == 1.79769313e308)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (a2->var0 != -1.79769313e308);
  }

  v7 = *a1;
  if (!v6)
  {
    if (v7 || *(a1 + 5))
    {
      return;
    }

    v8 = (a1 + 2);
    goto LABEL_18;
  }

  if (v6 == 1)
  {
    if (v7)
    {
      return;
    }

    *a1 = 1;
    goto LABEL_14;
  }

  if (v7 != 2)
  {
    *a1 = 2;
LABEL_14:
    v10 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
    *(a1 + 2) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 66) = 0u;
    v11 = *(a1 + 11);
    *(a1 + 11) = v10;
    v12 = v10;

    *(a1 + 48) = 257;
    if (!*(a1 + 80) || *(a1 + 7) <= *(a1 + 14))
    {
      v13 = *(a1 + 30);
      *(a1 + 3) = *(a1 + 26);
      *(a1 + 4) = v13;
      *(a1 + 40) = *(a1 + 68);
    }

    v8 = (a1 + 2);
LABEL_18:
    a2 = v4;
    v9 = a3;
    goto LABEL_19;
  }

  v8 = (a1 + 2);
  v9 = 1;
LABEL_19:

  HDStatisticsNoiseLevel::addSample(v8, a2, v9);
}

void *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(a1 + 272);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (a1 + 272);
  v5 = (a1 + 272);
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
    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 264, a2);
    v8 = &v7;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 264, v7);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
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
      v6 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_bundleIdentifierForSourceID(a1, a2);
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

id HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
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

void *std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
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

void sub_228F4F604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,void *>>>::operator()[abi:ne200100](char a1, id *a2)
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

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::~__hash_table(uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>> const&)::{lambda(HDStatisticsRelative<HDStatisticsNoiseLevel> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_addStatisticsFromFinishedBucket<HDStatisticsNoiseLevel>(HKStatistics *,HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>> const&)::{lambda(HDStatisticsRelative<HDStatisticsNoiseLevel> const&)#1}>,HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsNoiseLevel> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsNoiseLevel const& ()(HDStatisticsRelative<HDStatisticsNoiseLevel> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveAddSample(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 624) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    v8 = *(a2 + 8);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_configureForStartTime(a1);
  }

  v9 = *(a2 + 8);
  v10 = *(a1 + 40);
  if (v10)
  {
    if (*(a1 + 624))
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_advanceToTime(a1, v9);
    }

    HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::addSample(a1 + 112, a2, a3);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_notifyForCurrentBucket(a1);
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_advanceToTime(uint64_t a1, double a2)
{
  while (*(a1 + 128) <= a2)
  {
    v4 = *(a1 + 600);
    v5 = *(a1 + 592);
    if (v4 == v5)
    {
      v20 = 0;
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
      v6 = [v13 dateIntervalContainingDate:v14 index:&v20];

      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v15 = v20;
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 endDate];
      [v18 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::resetToBucket(a1 + 112, v15, v17, v19);
    }

    else
    {
      v6 = [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v7 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v8 = [v6 startDate];
      [v8 timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = [v6 endDate];
      [v11 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::advanceBucket((a1 + 112), v10, v12);
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_didChangeBucket(a1, v7);
    if (v4 != v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_notifyForCurrentBucket(a1);
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::addSample(uint64_t a1, double *a2, int a3)
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

        goto LABEL_39;
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
          goto LABEL_38;
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
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 296), v6);
      if (*(a1 + 112) == *(a1 + 104) && *(a1 + 168) <= 0)
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
        HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(v9, v15);
      }

      v28[0] = v32;
      v28[1] = v33;
      v29 = v34;
      v30 = 0;
      v31 = 0;
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 104, v28);
      if (!*(a1 + 264) || *(a1 + 240) <= v4)
      {
        *(a1 + 232) = v3;
        *(a1 + 240) = v4;
        *(a1 + 248) = v5;
        *(a1 + 256) = v6;
        *(a1 + 264) = v7;
        *(a1 + 265) = v8;
        if (!*(a1 + 208) || *(a1 + 184) <= v4)
        {
          *(a1 + 176) = v3;
          *(a1 + 184) = v4;
          *(a1 + 192) = v5;
          *(a1 + 200) = v6;
          *(a1 + 208) = v7;
          *(a1 + 209) = v8;
        }
      }

      if (*(a1 + 33) == 1)
      {
        v21 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_canonicalSourceIDForSourceID(v9, v6);
        v22 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsForSource(v9, v21);
        if (!*(v22 + 136) || v22[14] <= v4)
        {
          v22[13] = v3;
          v22[14] = v4;
          v22[15] = v5;
          *(v22 + 16) = v6;
          *(v22 + 136) = v7;
          *(v22 + 137) = v8;
          if (!*(v22 + 80) || v22[7] <= v4)
          {
            v22[6] = v3;
            v22[7] = v4;
            v22[8] = v5;
            *(v22 + 9) = v6;
            *(v22 + 80) = v7;
            *(v22 + 81) = v8;
            if (!v14)
            {
              return;
            }

LABEL_39:
            std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 480, &v25);
            return;
          }
        }
      }

LABEL_38:
      if (!v14)
      {
        return;
      }

      goto LABEL_39;
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

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_notifyForCurrentBucket(uint64_t a1)
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

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::advanceBucket(void *a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, a1[60], a1[61], 0xCCCCCCCCCCCCCCCDLL * ((a1[61] - a1[60]) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228F500EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1 + 40;
  objc_storeStrong((a1 + 504), *(a1 + 40));
  *(v8 - 32) = a3;
  *(v8 - 24) = a4;
  *(v8 + 24) = a3;
  *(v8 + 72) = *(v8 + 64);
  v9 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(v8 + 88) = 0;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  *(v8 + 154) = 0u;
  v10 = *(v8 + 176);
  *(v8 + 176) = v9;
  v11 = v9;

  *(v8 + 184) = 257;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0u;
  *(v8 + 224) = 0;

  if (*(v8 + 248))
  {
    v12 = *(a1 + 272);
    v13 = *(a1 + 280);
    *(a1 + 272) = a1 + 280;
    *(v13 + 16) = 0;
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
    if (v12[1])
    {
      v14 = v12[1];
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = v14[2];
      if (v15)
      {
        v16 = *v15;
        if (*v15 == v14)
        {
          *v15 = 0;
          while (1)
          {
            v18 = v15[1];
            if (!v18)
            {
              break;
            }

            do
            {
              v15 = v18;
              v18 = *v18;
            }

            while (v18);
          }
        }

        else
        {
          for (v15[1] = 0; v16; v16 = v15[1])
          {
            do
            {
              v15 = v16;
              v16 = *v16;
            }

            while (v16);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(v14);
        for (i = v15[2]; i; i = i[2])
        {
          v15 = i;
        }

        v14 = v15;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsRelative<HDStatisticsNoiseLevel>>>>::destroy(v14);
  }

  objc_storeStrong(v8, *(a1 + 504));
  *(a1 + 488) = *(a1 + 480);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_didChangeBucket(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228F50380(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
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
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
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
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
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

void sub_228F507D0(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40A217D420);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
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

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
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
  v30[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v30[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v32 = *(a1 + 64);
  v30[4] = v7;
  v30[5] = v10;
  v31 = *(a1 + 56);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
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
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_updateSourceOrder(v15 + 120);
          HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
          v20 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_statisticsFromFinishedBucket(v15, v15 + 120);
          v21 = [v19 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = [v19 endDate];
          [v24 timeIntervalSinceReferenceDate];
          HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsNoiseLevel>>::advanceBucket((v15 + 112), v23, v25);

          if (v20)
          {
            v26 = _Block_copy(*(v15 + 96));
            v27 = v26;
            if (v26)
            {
              (*(v26 + 2))(v26, v20);
            }
          }

          if (*(v15 + 628) == 1)
          {
            *(v15 + 628) = 0;
          }
        }
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
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
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveAddSample(*(a1 + 48), &v14, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 624) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI22HDStatisticsNoiseLevelEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7)
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

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsNoiseLevel>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsNoiseLevel>::archive(uint64_t a1, int *a2)
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
  HDStatisticsNoiseLevel::archive((a2 + 2), v6);
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

double HDStatisticsRelative<HDStatisticsNoiseLevel>::unarchive(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 66) = 0u;
  v6 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(a1 + 88) = v6;
  *(a1 + 96) = 257;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  v8 = a2[16];
  if (v8)
  {
    HDStatisticsNoiseLevel::unarchive(v8, v5);
    v4[2] = v13;
    v4[3] = *v14;
    *(v4 + 58) = *&v14[10];
    *v4 = v11;
    v4[1] = v12;
    *(a1 + 88) = v15;

    *(a1 + 96) = v16;
  }

  *a1 = a2[17];
  v9 = a2[14];
  if (v9)
  {
    result = *(v9 + 8);
    v10 = *(v9 + 16);
    *(a1 + 104) = vextq_s8(*(v9 + 24), *(v9 + 24), 8uLL);
    *(a1 + 120) = result;
    *(a1 + 128) = v10;
    *(a1 + 136) = 1;
  }

  return result;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsNoiseLevel>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BEF768;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 104) = 0;
  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 112) = 0;
  HDStatisticsBucket<HDStatisticsNoiseLevel>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
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

void sub_228F512F0(_Unwind_Exception *a1)
{
  v3 = v2;
  objc_destroyWeak(v3);

  v5 = *(v1 + 72);
  if (v5)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(v1);
  _Unwind_Resume(a1);
}