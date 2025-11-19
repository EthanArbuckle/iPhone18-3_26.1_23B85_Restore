@interface HDStatisticsCollectionCalculatorDefaultDataSource
+ (uint64_t)_addValueForQuantitySample:(void *)a3 calculator:(uint64_t)a4 error:;
- (BOOL)addValuesForQuantitySamples:(id)a3 calculator:(id)a4 includeSeries:(BOOL)a5 error:(id *)a6;
- (BOOL)collectionCalculator:(id)a3 queryForInterval:(id)a4 error:(id *)a5 sampleHandler:(id)a6 mergeHandler:(id)a7;
- (HDProfile)profile;
- (id)initForProfile:(id)a3 categoryType:(id)a4 predicate:(id)a5 restrictedSourceEntities:(id)a6;
- (id)initForProfile:(id)a3 quantityType:(id)a4 predicate:(id)a5 restrictedSourceEntities:(id)a6;
- (uint64_t)_addValuesForQuantitySamples:(void *)a3 calculator:(char)a4 requiresSeriesValues:(void *)a5 transaction:(uint64_t)a6 error:;
- (void)_updateFullPredicate;
- (void)setPredicate:(id)a3;
- (void)setRestrictedSourceEntities:(id)a3;
@end

@implementation HDStatisticsCollectionCalculatorDefaultDataSource

- (id)initForProfile:(id)a3 quantityType:(id)a4 predicate:(id)a5 restrictedSourceEntities:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = HDStatisticsCollectionCalculatorDefaultDataSource;
  v14 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, v10);
    v16 = [v11 copy];
    v17 = *(v15 + 32);
    *(v15 + 32) = v16;

    v18 = [v12 copy];
    v19 = *(v15 + 40);
    *(v15 + 40) = v18;

    v20 = [v13 copy];
    v21 = *(v15 + 48);
    *(v15 + 48) = v20;

    *(v15 + 16) = 1;
    v22 = *(v15 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [*(v15 + 32) underlyingSampleType];
      v24 = [MEMORY[0x277CCD830] _quantityTypeWithCode:{objc_msgSend(v23, "code")}];
      *(v15 + 16) = v24 != 0;
    }

    [(HDStatisticsCollectionCalculatorDefaultDataSource *)v15 _updateFullPredicate];
  }

  return v15;
}

- (void)_updateFullPredicate
{
  if (a1)
  {
    v8 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v8 underlyingSampleType];

      v8 = v2;
    }

    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = HDSampleEntityPredicateForDataType(v8);
    [v3 addObject:v4];

    if ([*(a1 + 48) count])
    {
      v5 = HDDataEntityPredicateForSourceEntitySet(7, *(a1 + 48));
      [v3 addObject:v5];
    }

    if (*(a1 + 40))
    {
      [v3 addObject:?];
    }

    v6 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v3];
    v7 = *(a1 + 8);
    *(a1 + 8) = v6;
  }
}

- (id)initForProfile:(id)a3 categoryType:(id)a4 predicate:(id)a5 restrictedSourceEntities:(id)a6
{
  v10 = MEMORY[0x277CCDAB0];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 countUnit];
  v16 = [_HDStatisticsSyntheticQuantityType syntheticQuantityTypeWithUnderlyingSampleType:v13 aggregationStyle:1 canonicalUnit:v15];

  v17 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self initForProfile:v14 quantityType:v16 predicate:v12 restrictedSourceEntities:v11];
  return v17;
}

- (void)setRestrictedSourceEntities:(id)a3
{
  v4 = [a3 copy];
  restrictedSourceEntities = self->_restrictedSourceEntities;
  self->_restrictedSourceEntities = v4;

  [(HDStatisticsCollectionCalculatorDefaultDataSource *)self _updateFullPredicate];
}

- (void)setPredicate:(id)a3
{
  v4 = [a3 copy];
  predicate = self->_predicate;
  self->_predicate = v4;

  [(HDStatisticsCollectionCalculatorDefaultDataSource *)self _updateFullPredicate];
}

- (BOOL)collectionCalculator:(id)a3 queryForInterval:(id)a4 error:(id *)a5 sampleHandler:(id)a6 mergeHandler:(id)a7
{
  v53[3] = *MEMORY[0x277D85DE8];
  v37 = a3;
  v11 = a4;
  v38 = a6;
  v12 = a7;
  v13 = self->_fullPredicate;
  if (v11)
  {
    quantityType = self->_quantityType;
    v15 = [v11 startDate];
    v16 = [(HKQuantityType *)quantityType _earliestAllowedStartDateForSampleOverlappingDate:v15];

    v17 = [v11 endDate];
    v18 = HDSampleEntityPredicateForStartDate(3);

    v19 = [v11 startDate];
    v20 = HDSampleEntityPredicateForEndDate(6);

    v53[0] = self->_fullPredicate;
    v53[1] = v18;
    v53[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
    if (v16)
    {
      v22 = HDSampleEntityPredicateForStartDate(6);
      v23 = [v21 arrayByAddingObject:v22];

      v21 = v23;
    }

    v24 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v21];

    v13 = v24;
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = -1;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v26 = [WeakRetained database];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __124__HDStatisticsCollectionCalculatorDefaultDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke;
  v40[3] = &unk_27862EF70;
  v40[4] = self;
  v27 = v13;
  v41 = v27;
  v44 = v48;
  v45 = &v49;
  v46 = v47;
  v28 = v12;
  v42 = v28;
  v29 = v38;
  v43 = v29;
  v30 = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:v26 error:a5 block:v40];

  if (v30)
  {
    anchor = self->_anchor;
    if (!anchor || (v32 = v50[3], v32 > [(NSNumber *)anchor longLongValue]))
    {
      v33 = [MEMORY[0x277CCABB0] numberWithLongLong:v50[3]];
      v34 = self->_anchor;
      self->_anchor = v33;
    }
  }

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(&v49, 8);

  v35 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t __124__HDStatisticsCollectionCalculatorDefaultDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v65[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v6 = [WeakRetained database];
  v55 = 0;
  v7 = [(HDHealthEntity *)HDSampleEntity maxRowIDForPredicate:0 healthDatabase:v6 error:&v55];
  v8 = v55;

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
    if (a3)
    {
      v28 = v8;
      v25 = 0;
      *a3 = v8;
    }

    else
    {
      _HKLogDroppedError();
      v25 = 0;
    }

    goto LABEL_22;
  }

  v48 = a3;
  v10 = *(a1 + 32);
  if (!*(v10 + 64))
  {
    goto LABEL_9;
  }

  v11 = [v7 longLongValue];
  if (v11 > [*(*(a1 + 32) + 64) longLongValue])
  {
    v10 = *(a1 + 32);
LABEL_9:
    objc_storeStrong((v10 + 64), v7);
  }

  v49 = v7;
  v12 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(v13 + 32);
  v16 = *(v13 + 88);
  v17 = *(v13 + 16);
  v18 = *(v13 + 17);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __124__HDStatisticsCollectionCalculatorDefaultDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke_2;
  v50[3] = &unk_27862EF48;
  v50[4] = v13;
  v53 = *(a1 + 64);
  v54 = *(a1 + 80);
  v51 = *(a1 + 48);
  v52 = *(a1 + 56);
  v19 = v15;
  v20 = v16;
  v21 = v50;
  v22 = v14;
  v23 = v12;
  objc_opt_self();
  if (v17 == 1)
  {
    if (v18)
    {
      v24 = 5;
    }

    else
    {
      v24 = 1;
    }

    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __154__HDStatisticsCollectionCalculatorDefaultDataSource__enumerateWithProfile_quantityType_predicate_filter_isQuantityType_includeUnfrozenSeries_error_block___block_invoke;
    v59 = &unk_27862EF98;
    v60 = v20;
    v61 = v21;
    v25 = [HDQuantitySampleValueEnumerator orderedQuantityValuesBySeriesForPredicate:v22 profile:v23 options:v24 error:v48 handler:&v56];

    v26 = v60;
    v27 = v21;
    v7 = v49;
  }

  else
  {
    v26 = v23;
    v45 = v21;
    v43 = v21;
    v44 = v22;
    v47 = v19;
    v29 = v19;
    objc_opt_self();
    v65[0] = @"data_provenances.source_id";
    v65[1] = @"start_date";
    v65[2] = @"end_date";
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];
    v42 = [v30 indexOfObject:@"data_provenances.source_id"];
    v41 = [v30 indexOfObject:@"start_date"];
    v31 = [v30 indexOfObject:@"end_date"];
    v32 = [v29 dataObjectClass];

    v33 = [objc_msgSend(v32 "hd_dataEntityClass")];
    v34 = [v33 syntheticQuantityColumnName];
    v46 = v23;
    if (v34)
    {
      v35 = [v30 arrayByAddingObject:v34];

      v30 = v35;
    }

    v7 = v49;
    v36 = [v26 database];
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __120__HDStatisticsCollectionCalculatorDefaultDataSource__enumerateSampleTypeWithProfile_quantityType_predicate_error_block___block_invoke;
    v59 = &unk_27862EFC0;
    v62 = v41;
    v63 = v31;
    v64 = v42;
    v60 = v34;
    v61 = v43;
    v37 = v43;
    v38 = v34;
    v25 = [v33 enumerateProperties:v30 withPredicate:v44 healthDatabase:v36 error:v48 enumerationHandler:&v56];

    v19 = v47;
    v27 = v45;
    v23 = v46;
  }

LABEL_22:
  v39 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t __124__HDStatisticsCollectionCalculatorDefaultDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke_2(void *a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = a5.n128_u64[0];
  v13 = a3.n128_f64[0];
  v16 = a1[4];
  v17 = *(v16 + 72);
  if (v17 >= 1)
  {
    v18 = *(v16 + 80);
    if (v18)
    {
      v19 = *(a1[7] + 8);
      v20 = *(v19 + 24);
      if (v20 >= v17)
      {
        result = (*(v18 + 16))(v18, a10);
        *(*(a1[7] + 8) + 24) = 0;
        ++*(*(a1[7] + 8) + 24);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        *(v19 + 24) = v20 + 1;
      }
    }
  }

  v22 = *(a1[8] + 8);
  if (*(v22 + 24) < a2)
  {
    *(v22 + 24) = a2;
  }

  v23 = *(a1[9] + 8);
  if (*(v23 + 24) != a2)
  {
    if (v13 != a6)
    {
      (*(a1[5] + 16))(v13);
      v23 = *(a1[9] + 8);
    }

    *(v23 + 24) = a2;
  }

  v24 = *(a1[6] + 16);
  a3.n128_u64[0] = v12;
  a4.n128_f64[0] = a6;
  a5.n128_f64[0] = a7;

  return v24(a3, a4, a5);
}

uint64_t __154__HDStatisticsCollectionCalculatorDefaultDataSource__enumerateWithProfile_quantityType_predicate_filter_isQuantityType_includeUnfrozenSeries_error_block___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  if (![MEMORY[0x277CCDDB8] filter:*(a1 + 32) acceptsDataObjectWithStartTimestamp:a5 endTimestamp:a6 valueInCanonicalUnit:?])
  {
    return 1;
  }

  v17 = *(*(a1 + 40) + 16);
  v12.n128_f64[0] = a2;
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return v17(v12, v13, v14, v15, v16);
}

uint64_t __120__HDStatisticsCollectionCalculatorDefaultDataSource__enumerateSampleTypeWithProfile_quantityType_predicate_error_block___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x22AAC6C50](a4, a1[6]);
  v7 = MEMORY[0x22AAC6C50](a4, a1[7]);
  v8 = a1[8];
  HDSQLiteColumnAsInt64();
  if (a1[4])
  {
    HDSQLiteColumnWithNameAsDouble();
    v11.n128_u64[0] = v9.n128_u64[0];
  }

  else
  {
    v11.n128_u64[0] = 0;
  }

  v14 = *(a1[5] + 16);
  v9.n128_f64[0] = v6;
  v10.n128_f64[0] = v7;
  v12.n128_f64[0] = v6;
  v13.n128_f64[0] = v7;

  return v14(v9, v10, v11, v12, v13);
}

- (BOOL)addValuesForQuantitySamples:(id)a3 calculator:(id)a4 includeSeries:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if (!v7)
  {
    goto LABEL_4;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __112__HDStatisticsCollectionCalculatorDefaultDataSource_addValuesForQuantitySamples_calculator_includeSeries_error___block_invoke;
  v20[3] = &unk_27862EFE8;
  v20[4] = self;
  v12 = [v10 hk_firstObjectPassingTest:v20];

  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v14 = [WeakRetained database];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __112__HDStatisticsCollectionCalculatorDefaultDataSource_addValuesForQuantitySamples_calculator_includeSeries_error___block_invoke_2;
    v17[3] = &unk_278615D40;
    v17[4] = self;
    v18 = v10;
    v19 = v11;
    v15 = [(HDHealthEntity *)HDQuantitySampleEntity performReadTransactionWithHealthDatabase:v14 error:a6 block:v17];
  }

  else
  {
LABEL_4:
    v15 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self _addValuesForQuantitySamples:v10 calculator:v11 requiresSeriesValues:0 transaction:0 error:a6];
  }

  return v15;
}

BOOL __112__HDStatisticsCollectionCalculatorDefaultDataSource_addValuesForQuantitySamples_calculator_includeSeries_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 quantityType];
  if ([v4 isEqual:*(*(a1 + 32) + 32)])
  {
    v5 = [v3 count] > 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_addValuesForQuantitySamples:(void *)a3 calculator:(char)a4 requiresSeriesValues:(void *)a5 transaction:(uint64_t)a6 error:
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  if (a1)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __132__HDStatisticsCollectionCalculatorDefaultDataSource__addValuesForQuantitySamples_calculator_requiresSeriesValues_transaction_error___block_invoke;
    v16[3] = &unk_27862F010;
    v17 = v11;
    v18 = a1;
    v21 = a4;
    v19 = v12;
    v20 = v13;
    v14 = [v19 performAddSampleTransaction:v16 error:a6];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __132__HDStatisticsCollectionCalculatorDefaultDataSource__addValuesForQuantitySamples_calculator_requiresSeriesValues_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v50 count:16];
  v27 = 1;
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = *v30;
  while (2)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v30 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v29 + 1) + 8 * i);
      v8 = [v7 quantityType];
      v9 = [v8 isEqual:*(*(a1 + 40) + 32)];

      if (!v9)
      {
        continue;
      }

      v10 = *(a1 + 48);
      if (*(a1 + 64) != 1)
      {
        if (![HDStatisticsCollectionCalculatorDefaultDataSource _addValueForQuantitySample:v7 calculator:*(a1 + 48) error:a2])
        {
          goto LABEL_26;
        }

        continue;
      }

      v11 = *(a1 + 56);
      v12 = v7;
      v13 = v10;
      v14 = v11;
      v15 = objc_opt_self();
      if ([v12 count] == 1)
      {
        v16 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)v15 _addValueForQuantitySample:v12 calculator:v13 error:a2];

        goto LABEL_22;
      }

      v44 = 0;
      v45 = &v44;
      v46 = 0x3032000000;
      v47 = __Block_byref_object_copy__201;
      v48 = __Block_byref_object_dispose__201;
      v49 = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v43 = 1;
      v39[0] = 0;
      v39[1] = v39;
      v39[2] = 0x2020000000;
      [v12 _startTimestamp];
      v39[3] = v17;
      v18 = [v12 UUID];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __115__HDStatisticsCollectionCalculatorDefaultDataSource__addValueForQuantitySeriesSample_calculator_transaction_error___block_invoke;
      v33[3] = &unk_27862F038;
      v36 = v39;
      v37 = &v40;
      v19 = v13;
      v34 = v19;
      v20 = v12;
      v35 = v20;
      v38 = &v44;
      v21 = [HDQuantitySampleSeriesEntity enumerateDataWithIdentifier:v18 transaction:v14 error:a2 handler:v33];

      if (!v21)
      {
        goto LABEL_20;
      }

      if ((v41[3] & 1) == 0)
      {
        v22 = v45[5];
        v23 = v22;
        if (v22)
        {
          if (a2)
          {
            v24 = v22;
            *a2 = v23;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

LABEL_20:
        v16 = 0;
        goto LABEL_21;
      }

      v16 = 1;
LABEL_21:

      _Block_object_dispose(v39, 8);
      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v44, 8);

LABEL_22:
      if ((v16 & 1) == 0)
      {
LABEL_26:
        v27 = 0;
        goto LABEL_27;
      }
    }

    v4 = [v3 countByEnumeratingWithState:&v29 objects:v50 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

  v27 = 1;
LABEL_27:

  v25 = *MEMORY[0x277D85DE8];
  return v27;
}

+ (uint64_t)_addValueForQuantitySample:(void *)a3 calculator:(uint64_t)a4 error:
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = [v7 quantity];
  v9 = [v7 quantityType];
  v10 = [v9 canonicalUnit];
  [v8 doubleValueForUnit:v10];
  v12 = v11;

  v13 = [v7 startDate];
  [v13 timeIntervalSinceReferenceDate];
  v15 = v14;
  v16 = [v7 endDate];
  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = [v7 sourceRevision];

  v20 = [v19 source];
  v21 = [v20 _sourceID];
  v22 = [v6 addSampleValue:objc_msgSend(v21 startTime:"longLongValue") endTime:a4 sourceID:v12 error:{v15, v18}];

  return v22;
}

uint64_t __115__HDStatisticsCollectionCalculatorDefaultDataSource__addValueForQuantitySeriesSample_calculator_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasDuration])
  {
    [v3 timeInterval];
    v5 = v4;
  }

  else
  {
    v5 = *(*(*(a1 + 48) + 8) + 24);
  }

  v6 = [v3 hasDuration];
  [v3 timeInterval];
  v8 = v7;
  if (v6)
  {
    [v3 duration];
    v8 = v8 + v9;
  }

  *(*(*(a1 + 48) + 8) + 24) = v8;
  v10 = *(a1 + 32);
  [v3 value];
  v12 = v11;
  v13 = [*(a1 + 40) sourceRevision];
  v14 = [v13 source];
  v15 = [v14 _sourceID];
  v16 = [v15 longLongValue];
  v17 = *(*(a1 + 64) + 8);
  obj = *(v17 + 40);
  LOBYTE(v10) = [v10 addSampleValue:v16 startTime:&obj endTime:v12 sourceID:v5 error:v8];
  objc_storeStrong((v17 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v10;

  v18 = *(*(*(a1 + 56) + 8) + 24);
  return v18;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end