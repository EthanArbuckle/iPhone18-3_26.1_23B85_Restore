@interface HDMCRecentBasalBodyTemperatureRangeQuery
+ (id)recentRangeForAnalysisWithProfile:(id)profile;
- (HDMCRecentBasalBodyTemperatureRangeQuery)initWithProfile:(id)profile sampleLimit:(int64_t)limit upperQuantileBound:(double)bound lowerQuantileBound:(double)quantileBound;
- (id)_basalBodyTemperatureDescendingEndDateQueryWithTransaction:(uint64_t)transaction limit:;
- (id)_bbtType;
- (id)rangeWithError:(id *)error;
- (uint64_t)enumerateValuesInTransaction:(uint64_t)transaction handler:(void *)handler error:(void *)error;
- (uint64_t)enumerateValuesWithHandler:(uint64_t)handler error:;
- (void)accumulateSortedValuesWithError:(void *)error@<X8>;
@end

@implementation HDMCRecentBasalBodyTemperatureRangeQuery

- (HDMCRecentBasalBodyTemperatureRangeQuery)initWithProfile:(id)profile sampleLimit:(int64_t)limit upperQuantileBound:(double)bound lowerQuantileBound:(double)quantileBound
{
  profileCopy = profile;
  v18.receiver = self;
  v18.super_class = HDMCRecentBasalBodyTemperatureRangeQuery;
  v12 = [(HDMCRecentBasalBodyTemperatureRangeQuery *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_profile, profileCopy);
    v13->_sampleLimit = limit;
    v13->_upperQuantileBound = bound;
    v13->_lowerQuantileBound = quantileBound;
    if (HKCompareDoubles() != -1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v13 file:@"HDMCRecentBasalBodyTemperatureRangeQuery.mm" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"HKCompareDoubles(upperQuantileBound, 1.0) == NSOrderedAscending"}];
    }

    if (HKCompareDoubles() == -1)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v13 file:@"HDMCRecentBasalBodyTemperatureRangeQuery.mm" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"HKCompareDoubles(lowerQuantileBound, 0.0) != NSOrderedAscending"}];
    }

    if (HKCompareDoubles() == 1)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:v13 file:@"HDMCRecentBasalBodyTemperatureRangeQuery.mm" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"HKCompareDoubles(lowerQuantileBound, upperQuantileBound) != NSOrderedDescending"}];
    }
  }

  return v13;
}

- (id)rangeWithError:(id *)error
{
  v21 = 0;
  [(HDMCRecentBasalBodyTemperatureRangeQuery *)self accumulateSortedValuesWithError:&__p];
  v5 = v21;
  v6 = v23 - __p;
  if (v23 != __p)
  {
    upperQuantileBound = self->_upperQuantileBound;
    lowerQuantileBound = self->_lowerQuantileBound;
    v9 = [HDMCRecentBasalBodyTemperatureRange alloc];
    v10 = (v6 >> 3);
    v11 = vcvtmd_s64_f64(lowerQuantileBound * v10);
    v12 = *(__p + vcvtmd_s64_f64(upperQuantileBound * v10));
    v13 = *(__p + vcvtmd_s64_f64(vcvtd_n_f64_s64(v6 >> 3, 1uLL)));
    v14 = *(__p + v11);
    _bbtType = [(HDMCRecentBasalBodyTemperatureRangeQuery *)self _bbtType];
    canonicalUnit = [_bbtType canonicalUnit];
    v17 = [(HDMCRecentBasalBodyTemperatureRange *)v9 _initWithUpperQuantileValue:canonicalUnit medianValue:v12 lowerQuantileValue:v13 unit:v14];
    goto LABEL_9;
  }

  v18 = [MEMORY[0x277CCA9B8] hk_error:11 description:@"Could not compute a range due to no values"];
  canonicalUnit = v18;
  if (!v18)
  {
    goto LABEL_7;
  }

  if (!error)
  {
    _HKLogDroppedError();
LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v19 = v18;
  v17 = 0;
  *error = canonicalUnit;
LABEL_8:
  _bbtType = canonicalUnit;
LABEL_9:

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  return v17;
}

- (void)accumulateSortedValuesWithError:(void *)error@<X8>
{
  if (self)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x4812000000;
    v19 = __Block_byref_object_copy__8;
    v20 = __Block_byref_object_dispose__8;
    v21 = &unk_22946575F;
    v23 = 0;
    v24 = 0;
    __p = 0;
    v14 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__HDMCRecentBasalBodyTemperatureRangeQuery_accumulateSortedValuesWithError___block_invoke;
    v15[3] = &unk_27865B048;
    v15[4] = &v16;
    v5 = [(HDMCRecentBasalBodyTemperatureRangeQuery *)self enumerateValuesWithHandler:v15 error:&v14];
    v6 = v14;
    v7 = v6;
    if (v5)
    {
      v8 = v17[6];
      v9 = v17[7];
      std::__sort<std::__less<double,double> &,double *>();
      v10 = v17;
      error[1] = 0;
      error[2] = 0;
      *error = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(error, v10[6], v10[7], (v10[7] - v10[6]) >> 3);
    }

    else
    {
      v11 = v6;
      v12 = v11;
      if (v11)
      {
        if (a2)
        {
          v13 = v11;
          *a2 = v12;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      *error = 0;
      error[1] = 0;
      error[2] = 0;
    }

    _Block_object_dispose(&v16, 8);
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *error = 0;
    error[1] = 0;
    error[2] = 0;
  }
}

uint64_t __76__HDMCRecentBasalBodyTemperatureRangeQuery_accumulateSortedValuesWithError___block_invoke(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = v2[7];
  v3 = v2[8];
  if (v4 >= v3)
  {
    v6 = v2[6];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>((v2 + 6), v12);
    }

    v13 = (v4 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = a2;
    v5 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = v2[6];
    v2[6] = v15;
    v2[7] = v5;
    v2[8] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v4 = a2;
    v5 = v4 + 1;
  }

  v2[7] = v5;
  return 1;
}

- (uint64_t)enumerateValuesWithHandler:(uint64_t)handler error:
{
  v5 = a2;
  if (self)
  {
    v6 = MEMORY[0x277D10810];
    WeakRetained = objc_loadWeakRetained((self + 8));
    database = [WeakRetained database];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__HDMCRecentBasalBodyTemperatureRangeQuery_enumerateValuesWithHandler_error___block_invoke;
    v11[3] = &unk_27865B070;
    v11[4] = self;
    v12 = v5;
    v9 = [v6 performReadTransactionWithHealthDatabase:database error:handler block:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)enumerateValuesInTransaction:(uint64_t)transaction handler:(void *)handler error:(void *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  errorCopy = error;
  if (transaction)
  {
    v7 = [(HDMCRecentBasalBodyTemperatureRangeQuery *)transaction _basalBodyTemperatureDescendingEndDateQueryWithTransaction:handlerCopy limit:*(transaction + 16)];
    v16[0] = *MEMORY[0x277D10498];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v15 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __87__HDMCRecentBasalBodyTemperatureRangeQuery_enumerateValuesInTransaction_handler_error___block_invoke;
    v13[3] = &unk_27865B098;
    v14 = errorCopy;
    v9 = [v7 enumerateProperties:v8 error:&v15 enumerationHandler:v13];
    v10 = v15;
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_basalBodyTemperatureDescendingEndDateQueryWithTransaction:(uint64_t)transaction limit:
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC958]];
    v7 = HDSampleEntityPredicateForDataType();

    v8 = objc_opt_class();
    v9 = [v5 databaseForEntityClass:v8];
    v10 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D104A8] entityClass:objc_opt_class() ascending:0];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

    v12 = [v8 queryWithDatabase:v9 predicate:v7 limit:transaction orderingTerms:v11 groupBy:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __87__HDMCRecentBasalBodyTemperatureRangeQuery_enumerateValuesInTransaction_handler_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x22AACBE80](a3, 0);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

+ (id)recentRangeForAnalysisWithProfile:(id)profile
{
  v19 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC2E8];
  v6 = *MEMORY[0x277CCC2E8];
  if (os_signpost_enabled(*MEMORY[0x277CCC2E8]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2293D1000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "recentRangeForAnalysis", "", buf, 2u);
  }

  v7 = [[self alloc] initWithProfile:profileCopy sampleLimit:90 upperQuantileBound:0.9 lowerQuantileBound:0.1];
  v17 = 0;
  v8 = [v7 rangeWithError:&v17];
  v9 = v17;
  v10 = v9;
  if (!v8 && ([v9 hk_isHealthKitErrorWithCode:11] & 1) == 0)
  {
    _HKInitializeLogging();
    v11 = *v5;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      [(HDMCRecentBasalBodyTemperatureRangeQuery *)v12 recentRangeForAnalysisWithProfile:v10, buf, v11];
    }
  }

  _HKInitializeLogging();
  v13 = *v5;
  if (os_signpost_enabled(*v5))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_2293D1000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "recentRangeForAnalysis", "", v16, 2u);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_bbtType
{
  if (self)
  {
    self = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC958]];
    v1 = vars8;
  }

  return self;
}

+ (void)recentRangeForAnalysisWithProfile:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_error_impl(&dword_2293D1000, a4, OS_LOG_TYPE_ERROR, "[%{public}@] Error querying recent BBT range: %{public}@", a3, 0x16u);
}

@end