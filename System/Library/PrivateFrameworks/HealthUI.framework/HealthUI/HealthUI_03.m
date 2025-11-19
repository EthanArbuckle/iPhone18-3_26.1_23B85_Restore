HKHandwashingEventDataSource *HKInteractiveChartDataSourceForHandwashingEvent(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[HKHandwashingEventDataSource alloc] initWithDisplayType:v4 healthStore:v3];

  return v5;
}

HKInsulinDataSource *HKInteractiveChartDataSourceForInsulinDelivery(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [(HKHealthQueryChartCacheDataSource *)[HKInsulinDataSource alloc] initWithDisplayType:v4 healthStore:v3];

  [(HKInsulinDataSource *)v5 setUserInfoCreationBlock:&__block_literal_global_357];

  return v5;
}

HKInteractiveChartInsulinData *__HKInteractiveChartDataSourceForInsulinDelivery_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_alloc_init(HKInteractiveChartInsulinData);
  [v5 doubleValue];
  v8 = v7;

  [(HKInteractiveChartInsulinData *)v6 setBasalValue:v8];
  [v4 doubleValue];
  v10 = v9;

  [(HKInteractiveChartInsulinData *)v6 setTotalValue:v10];

  return v6;
}

HKLevelCategoryDataSource *HKInteractiveChartDataSourceForMenstruation(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 chartingRules];
  v8 = [v7 chartStyleForTimeScope:a2];

  if (v8 == 8)
  {
    v9 = [(HKHealthQueryChartCacheDataSource *)[HKLevelCategoryDataSource alloc] initWithDisplayType:v5 healthStore:v6];
    v11 = [v5 hk_valueOrderForStackedCharts];
    [(HKLevelCategoryDataSource *)v9 setValueOrder:v11];

    v12 = [v5 objectType];
    [(HKLevelCategoryDataSource *)v9 setSampleType:v12];

    [(HKLevelCategoryDataSource *)v9 setPointStyleBlock:&__block_literal_global_365];
    [(HKLevelCategoryDataSource *)v9 setUserInfoCreationBlock:&__block_literal_global_367_0];
  }

  else if (v8 == 7)
  {
    v9 = [(HKHealthQueryChartCacheDataSource *)[HKHorizontalSingleLineDataSourceMenstruation alloc] initWithDisplayType:v5 healthStore:v6];
    [(HKLevelCategoryDataSource *)v9 setUserInfoCreationBlock:&__block_literal_global_361];
    v10 = [v5 objectType];
    [(HKLevelCategoryDataSource *)v9 setSampleType:v10];
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"HKHealthQueryChartCacheDataSource * _Nonnull HKInteractiveChartDataSourceForMenstruation(HKDisplayType * _Nonnull __strong, HKTimeScope, HKHealthStore * _Nonnull __strong, HKUnitPreferenceController * _Nonnull __strong)"}];
    [v13 handleFailureInFunction:v14 file:@"HKDisplayType+DataSources.m" lineNumber:590 description:{@"Unsupported chart sylte for menstruation; expected single centered line or level category value but got %ld", v8}];

    v9 = 0;
  }

  return v9;
}

HKInteractiveChartMenstruationData *__HKInteractiveChartDataSourceForMenstruation_block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v7 = a3;
  v8 = objc_alloc_init(HKInteractiveChartMenstruationData);
  [(HKInteractiveChartMenstruationData *)v8 setValue:a2];
  [(HKInteractiveChartMenstruationData *)v8 setDate:v7];

  [(HKInteractiveChartMenstruationData *)v8 setStartOfCycle:a5 & 1];

  return v8;
}

uint64_t __HKInteractiveChartDataSourceForMenstruation_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 metadata];
  v4 = [v3 valueForKey:*MEMORY[0x1E696BB28]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * ([v2 value] == 5);
  }

  return v6;
}

HKInteractiveChartMenstruationData *__HKInteractiveChartDataSourceForMenstruation_block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v7 = a3;
  v8 = objc_alloc_init(HKInteractiveChartMenstruationData);
  [(HKInteractiveChartMenstruationData *)v8 setValue:a2];
  [(HKInteractiveChartMenstruationData *)v8 setDate:v7];

  [(HKInteractiveChartMenstruationData *)v8 setStartOfCycle:a5 & 1];

  return v8;
}

HKScoredAssessmentDataSource *HKInteractiveChartDataSourceForScoredAssessment(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [(HKHealthQueryChartCacheDataSource *)[HKScoredAssessmentDataSource alloc] initWithDisplayType:v4 healthStore:v3];

  v6 = [v4 objectType];
  [(HKLevelCategoryDataSource *)v5 setSampleType:v6];

  v7 = [v4 hk_valueOrderForStackedCharts];

  [(HKLevelCategoryDataSource *)v5 setValueOrder:v7];
  [(HKLevelCategoryDataSource *)v5 setUserInfoCreationBlock:&__block_literal_global_374];

  return v5;
}

HKInteractiveChartCategoryValueData *__HKInteractiveChartDataSourceForScoredAssessment_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HKInteractiveChartCategoryValueData);
  [(HKInteractiveChartCategoryValueData *)v8 setValue:a2];
  [(HKInteractiveChartCategoryValueData *)v8 setStartDate:v7];

  [(HKInteractiveChartCategoryValueData *)v8 setEndDate:v6];

  return v8;
}

HKSleepScoreChartDataSource *HKInteractiveChartDataSourceForSleepScore(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[HKSleepScoreChartDataSource alloc] initWithDisplayType:v4 healthStore:v3];

  return v5;
}

id HKInteractiveChartDataSourceForSleepingWristTemperature(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a3;
  v10 = _HKStatisticsOptionBaselineRelativeQuantities();
  v11 = off_1E81B2E10;
  if (a2 != 6)
  {
    v11 = off_1E81B2D40;
  }

  v12 = [objc_alloc(*v11) initWithUnitController:v8 options:v10 | 0xE displayType:v7 healthStore:v9];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __HKInteractiveChartDataSourceForSleepingWristTemperature_block_invoke;
  v16[3] = &unk_1E81B6288;
  v17 = v8;
  v18 = v7;
  v13 = v7;
  v14 = v8;
  [v12 setUserInfoCreationBlock:v16];

  return v12;
}

HKInteractiveChartBaselineRelativeData *__HKInteractiveChartDataSourceForSleepingWristTemperature_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 unitForChartingDisplayType:v3];
  v6 = objc_alloc_init(HKInteractiveChartBaselineRelativeData);
  v7 = [v4 averageQuantity];
  [v7 doubleValueForUnit:v5];
  [(HKInteractiveChartSinglePointData *)v6 setValue:?];

  [(HKInteractiveChartSinglePointData *)v6 setUnit:v5];
  v8 = [v4 baselineRelativeValueState];
  [(HKInteractiveChartBaselineRelativeData *)v6 setRelativeValueState:v8];

  -[HKInteractiveChartSinglePointData setRecordCount:](v6, "setRecordCount:", [v4 recordCount]);
  v9 = [v4 statisticsInterval];

  [(HKInteractiveChartSinglePointData *)v6 setStatisticsInterval:v9];

  return v6;
}

HKStateOfMindChartDataSource *HKInteractiveChartDataSourceForStateOfMind(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[HKStateOfMindChartDataSource alloc] initWithDisplayType:v4 healthStore:v3 overlayPredicate:0];

  return v5;
}

HKHorizontalTimePeriodDataSource *HKInteractiveChartDataSourceForWorkouts(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [(HKHealthQueryChartCacheDataSource *)[HKHorizontalTimePeriodDataSource alloc] initWithDisplayType:v4 healthStore:v3];

  v6 = [MEMORY[0x1E696C2E0] workoutType];
  [(HKHorizontalTimePeriodDataSource *)v5 setSampleType:v6];

  [(HKHorizontalTimePeriodDataSource *)v5 setUserInfoCreationBlock:&__block_literal_global_380];

  return v5;
}

HKInteractiveChartTimePeriodData *__HKInteractiveChartDataSourceForWorkouts_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HKInteractiveChartTimePeriodData);
  [v5 timeIntervalSinceDate:v6];
  [(HKInteractiveChartTimePeriodData *)v7 setTimePeriod:?];
  [(HKInteractiveChartTimePeriodData *)v7 setStartDate:v6];

  [(HKInteractiveChartTimePeriodData *)v7 setEndDate:v5];
  [(HKInteractiveChartTimePeriodData *)v7 setRecordCount:1];

  return v7;
}

id HKPreprocessingHandlerForUnderwaterDepth(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __HKPreprocessingHandlerForUnderwaterDepth_block_invoke;
  v9[3] = &unk_1E81B9800;
  v10 = v3;
  v11 = v4;
  v5 = v4;
  v6 = v3;
  v7 = _Block_copy(v9);

  return v7;
}

void __HKPreprocessingHandlerForUnderwaterDepth_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __HKPreprocessingHandlerForUnderwaterDepth_block_invoke_2;
    v16[3] = &unk_1E81B9788;
    v17 = v7;
    v8 = v7;
    [v5 enumerateObjectsUsingBlock:v16];
    v9 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v8];
    v10 = objc_alloc(MEMORY[0x1E696C3C8]);
    v11 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __HKPreprocessingHandlerForUnderwaterDepth_block_invoke_3;
    v13[3] = &unk_1E81B6D10;
    v14 = v5;
    v15 = v6;
    v12 = [v10 initWithSampleType:v11 predicate:v9 limit:0 sortDescriptors:0 resultsHandler:v13];
    [*(a1 + 40) executeQuery:v12];
  }

  else
  {
    (*(v6 + 2))(v6, v5);
  }
}

void __HKPreprocessingHandlerForUnderwaterDepth_block_invoke_2(uint64_t a1, void *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696C378];
  v4 = a2;
  v5 = [v4 startDate];
  v6 = [v4 endDate];
  v7 = [v3 predicateForSamplesWithStartDate:v5 endDate:v6 options:0];

  v8 = MEMORY[0x1E696C378];
  v9 = [v4 maxQuantity];

  v10 = [v8 predicateForQuantitySamplesWithOperatorType:4 quantity:v9];

  v11 = MEMORY[0x1E696AB28];
  v14[0] = v7;
  v14[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];

  [*(a1 + 32) addObject:v13];
}

void __HKPreprocessingHandlerForUnderwaterDepth_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __HKPreprocessingHandlerForUnderwaterDepth_block_invoke_4;
  v8[3] = &unk_1E81B97D8;
  v9 = v4;
  v6 = v4;
  v7 = [v5 hk_map:v8];
  (*(*(a1 + 40) + 16))();
}

id __HKPreprocessingHandlerForUnderwaterDepth_block_invoke_4(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v4 = *(a1 + 32);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __HKPreprocessingHandlerForUnderwaterDepth_block_invoke_5;
  v11 = &unk_1E81B97B0;
  v5 = v3;
  v12 = v5;
  v13 = &v15;
  v14 = &v19;
  [v4 enumerateObjectsUsingBlock:&v8];
  if (*(v20 + 24) == 1 && (v16[3] & 1) == 0)
  {
    v23 = *MEMORY[0x1E696BB40];
    v24[0] = &unk_1F4383EB0;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:{1, v8, v9, v10, v11}];
    [v5 setMetadata:v6];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v5;
}

void __HKPreprocessingHandlerForUnderwaterDepth_block_invoke_5(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 startDate];
  v4 = [*(a1 + 32) endDate];
  if (([v3 hk_isAfterDate:v4] & 1) == 0)
  {
    v5 = [v12 endDate];
    v6 = [*(a1 + 32) startDate];
    v7 = [v5 hk_isBeforeDate:v6];

    v8 = v12;
    if (v7)
    {
      goto LABEL_9;
    }

    v3 = [v12 metadata];
    v9 = [v3 objectForKey:*MEMORY[0x1E696BB40]];
    v4 = v9;
    if (v9 && ([v9 doubleValue], v10 == 1.0))
    {
      v11 = 48;
    }

    else
    {
      v11 = 40;
    }

    *(*(*(a1 + v11) + 8) + 24) = 1;
  }

  v8 = v12;
LABEL_9:
}

void sub_1C3B20FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose((v71 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_9(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x18u);
}

uint64_t HKCodableLevelViewDataConfigurationBucketReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(HKCodableClosedRange);
        objc_storeStrong((a1 + 8), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableClosedRangeReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_34;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_34:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3B30D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _shouldShowMapRoute(void *a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = [v3 workout];
  v7 = [v4 workoutConfiguration];
  v8 = [v7 activityType];
  if (!v8)
  {
    v8 = [v6 workoutActivityType];
  }

  [v4 duration];
  v10 = v9;
  if (v9 == 0.0)
  {
    [v6 duration];
    v10 = v11;
  }

  v12 = 0.7;
  if (v8 != 46)
  {
    v12 = 0.5;
  }

  v13 = v12 * v10;
  v14 = vcvtmd_s64_f64(v12 * v10 / 5.0);
  if (v5 < v14)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v48 = v5;
      *&v48[4] = 1024;
      *&v48[6] = v14;
      v16 = "[routes] Disable route. Total active locations (%d) < minimum number of points (%d)";
      v17 = v15;
      v18 = 14;
LABEL_32:
      _os_log_impl(&dword_1C3942000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v39 = v5;
  v40 = v6;
  v41 = v4;
  v42 = v3;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = [v3 inOrderLocationArrays];
  v20 = [v19 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v44;
    v23 = 0.0;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v43 + 1) + 8 * i);
        v26 = [v25 firstObject];
        if ([v25 count] < 2)
        {
          v28 = v26;
        }

        else
        {
          v27 = 1;
          do
          {
            v28 = [v25 objectAtIndexedSubscript:v27];
            v29 = [v28 timestamp];
            [v29 timeIntervalSinceReferenceDate];
            v31 = v30;
            v32 = [v26 timestamp];
            [v32 timeIntervalSinceReferenceDate];
            v34 = v31 - v33;

            if (v34 > 5.0)
            {
              v23 = v23 + v34;
            }

            ++v27;
            v26 = v28;
          }

          while (v27 < [v25 count]);
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v21);
  }

  else
  {
    v23 = 0.0;
  }

  _HKInitializeLogging();
  v35 = *MEMORY[0x1E696B9A8];
  v36 = os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT);
  if (v23 >= v13)
  {
    v4 = v41;
    v3 = v42;
    v6 = v40;
    if (v36)
    {
      *buf = 134217984;
      *v48 = v23 / v10;
      v16 = "[routes] Disable route. Time without GPS is %.2f of workout";
      v17 = v35;
      v18 = 12;
      goto LABEL_32;
    }

LABEL_33:
    v37 = 0;
    goto LABEL_34;
  }

  v4 = v41;
  v3 = v42;
  v6 = v40;
  if (v36)
  {
    *buf = 138412546;
    *v48 = v41;
    *&v48[8] = 1024;
    v49 = v39;
    _os_log_impl(&dword_1C3942000, v35, OS_LOG_TYPE_DEFAULT, "[routes] Showing route for workout activity %@. Total active locations (%d)", buf, 0x12u);
  }

  v37 = 1;
LABEL_34:

  return v37;
}

void sub_1C3B31660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3B31AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3B322F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3B325B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HKHealthPrivacyServiceRemoteObjectPickerViewControllerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F44795D8];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_setPromptSession_presentationRequests_ argumentIndex:1 ofReply:0];

  return v0;
}

uint64_t HKCodableQuantityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = PBReaderReadString();
        v16 = *(a1 + 16);
        *(a1 + 16) = v15;
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v20 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

HKDisplayType *HKDisplayTypeIdentifierAppleSleepScoreMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [HKValueRange valueRangeWithMinValue:&unk_1F4384A10 maxValue:&unk_1F4384A90];
  v2 = [HKValueRange valueRangeWithMinValue:&unk_1F4384A10 maxValue:&unk_1F4384A90];
  v3 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:v1 axisBoundsOverrides:0 noDataAxisBounds:v2];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v3];

  LODWORD(v14) = 65537;
  v4 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v14 canBecomeFavorite:? hidden:?];
  v5 = [HKDisplayTypePresentation alloc];
  v6 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v15) = 0;
  v7 = MEMORY[0x1E695E0F8];
  v8 = [(HKDisplayTypePresentation *)v5 initWithDefaultConfiguration:v6 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v15 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v9 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"APPLE_SLEEP_SCORE" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-SleepDetails" localizedKeySuffix:0 unitNameKeyOverrides:v7];
  v10 = [HKDisplayType alloc];
  v11 = [MEMORY[0x1E696C2E0] dataTypeWithCode:341];
  v12 = [(HKDisplayType *)v10 initWithDisplayTypeIdentifier:341 categoryIdentifier:5 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v11 behavior:v4 presentation:v8 localization:v9 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v12;
}

HKDisplayType *HKDisplayTypeIdentifierHeartbeatSeriesMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"TACHOGRAM" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:119];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:119 categoryIdentifier:11 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierLocationSeriesMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"WORKOUT_ROUTE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:102];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:102 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

void OUTLINED_FUNCTION_2_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

id _enumeratorForCurrentLocale(void *a1)
{
  v1 = MEMORY[0x1E69DD250];
  v2 = a1;
  if ([v1 userInterfaceLayoutDirectionForSemanticContentAttribute:0] == 1)
  {
    [v2 reverseObjectEnumerator];
  }

  else
  {
    [v2 objectEnumerator];
  }
  v3 = ;

  return v3;
}

id HKUIDefaultBirthdate()
{
  v0 = [MEMORY[0x1E695DEE8] currentCalendar];
  v1 = [MEMORY[0x1E695DF00] date];
  v2 = [v0 startOfDayForDate:v1];

  v3 = [v0 dateByAddingUnit:4 value:-35 toDate:v2 options:0];

  return v3;
}

id HKUIDefaultBirthdateComponents()
{
  v0 = HKUIDefaultBirthdate();
  v1 = [MEMORY[0x1E695DEE8] hk_canonicalDateOfBirthDateComponentsWithDate:v0];

  return v1;
}

double HKHealthUIBuddyDirectionalEdgeInsets()
{
  if (([MEMORY[0x1E69DCEB0] hk_currentDeviceHas4InchScreen] & 1) == 0 && _UISolariumEnabled())
  {
    v0 = [MEMORY[0x1E696C608] sharedBehavior];
    [v0 isiPad];
  }

  return 0.0;
}

uint64_t HKUICalendarLocaleIsRightToLeft()
{
  if (HKUICalendarLocaleIsRightToLeft_onceToken != -1)
  {
    HKUICalendarLocaleIsRightToLeft_cold_1();
  }

  return HKUICalendarLocaleIsRightToLeft___calLocaleIsRTL;
}

void __HKUICalendarLocaleIsRightToLeft_block_invoke()
{
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  HKUICalendarLocaleIsRightToLeft___calLocaleIsRTL = [v0 _calendarDirection] != 0;
}

id HKUIJoinStringsForLocale(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = _enumeratorForCurrentLocale(v1);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 appendString:{*(*(&v9 + 1) + 8 * i), v9}];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v2;
}

id HKUIJoinAttributedStringsForLocale(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 appendAttributedString:{*(*(&v9 + 1) + 8 * i), v9}];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v2;
}

id HKUIJoinAttributedStringsForLocaleWithSeparator(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v3 count])
  {
    v6 = 0;
    do
    {
      if (v6)
      {
        v7 = [v3 objectAtIndexedSubscript:v6 - 1];
        v8 = [v7 length] - 1;

        v9 = [v3 objectAtIndexedSubscript:v6 - 1];
        v10 = [v9 attributesAtIndex:v8 effectiveRange:0];

        v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v10];
        [v5 addObject:v11];
      }

      v12 = [v3 objectAtIndexedSubscript:v6];
      [v5 addObject:v12];

      ++v6;
    }

    while (v6 < [v3 count]);
  }

  v13 = HKUIJoinAttributedStringsForLocale(v5);

  return v13;
}

double HKUIHalfPixel()
{
  result = *&HKUIHalfPixel___halfPixel;
  if (*&HKUIHalfPixel___halfPixel == 2.22507386e-308)
  {
    result = HKUIOnePixel() * 0.5;
    HKUIHalfPixel___halfPixel = *&result;
  }

  return result;
}

double HKUIFloorToScreenScale(double a1)
{
  v2 = *&HKUIFloorToScreenScale___mainscreenScale;
  if (*&HKUIFloorToScreenScale___mainscreenScale == 2.22507386e-308)
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 scale];
    HKUIFloorToScreenScale___mainscreenScale = v4;

    v2 = *&HKUIFloorToScreenScale___mainscreenScale;
  }

  return floor(v2 * a1) / v2;
}

double HKUIFloorCGPointToScreenScale(double a1, double a2)
{
  v3 = HKUIFloorToScreenScale(a1);
  HKUIFloorToScreenScale(a2);
  return v3;
}

double HKUICeilToScreenScale(double a1)
{
  v2 = *&HKUICeilToScreenScale___mainscreenScale;
  if (*&HKUICeilToScreenScale___mainscreenScale == 2.22507386e-308)
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 scale];
    HKUICeilToScreenScale___mainscreenScale = v4;

    v2 = *&HKUICeilToScreenScale___mainscreenScale;
  }

  return ceil(v2 * a1) / v2;
}

double HKUIRoundToScreenScale(double a1)
{
  v2 = *&HKUIRoundToScreenScale___mainscreenScale;
  if (*&HKUIRoundToScreenScale___mainscreenScale == 2.22507386e-308)
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 scale];
    HKUIRoundToScreenScale___mainscreenScale = v4;

    v2 = *&HKUIRoundToScreenScale___mainscreenScale;
  }

  return floor(a1 * v2 + 0.5) / v2;
}

double HKUICeilRectToScreenScale(double a1, double a2, double a3, double a4)
{
  v7 = HKUICeilToScreenScale(a1);
  HKUICeilToScreenScale(a2);
  HKUICeilToScreenScale(a3);
  HKUICeilToScreenScale(a4);
  return v7;
}

uint64_t HKUIRectIntegralToScreenScale(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = a4.n128_u64[0];
  v6 = a3.n128_u64[0];
  v7 = a2.n128_u64[0];
  v8 = a1.n128_u64[0];
  a5.n128_u64[0] = HKUIRectIntegralToScreenScale___mainscreenScale;
  if (*&HKUIRectIntegralToScreenScale___mainscreenScale == 2.22507386e-308)
  {
    v9 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v9 scale];
    HKUIRectIntegralToScreenScale___mainscreenScale = v10;

    a5.n128_u64[0] = HKUIRectIntegralToScreenScale___mainscreenScale;
  }

  a1.n128_u64[0] = v8;
  a2.n128_u64[0] = v7;
  a3.n128_u64[0] = v6;
  a4.n128_u64[0] = v5;

  return MEMORY[0x1EEE4E050](a1, a2, a3, a4, a5);
}

uint64_t HKUIMidDate(void *a1, void *a2)
{
  v3 = a2;
  [a1 timeIntervalSinceReferenceDate];
  v5 = v4;
  [v3 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = MEMORY[0x1E695DF00];

  return [v8 dateWithTimeIntervalSinceReferenceDate:(v5 + v7) * 0.5];
}

id HKUIPredicateMatchingPredicates(void *a1, void *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = MEMORY[0x1E696AB28];
    v11[0] = v3;
    v11[1] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v8 = [v6 andPredicateWithSubpredicates:v7];
  }

  else
  {
    if (v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = v4;
    }

    v8 = v9;
  }

  return v8;
}

double HKUIRoundedDivide(double a1, double a2, double a3)
{
  result = a1 / a2;
  v4 = round(result);
  if (vabdd_f64(result, v4) <= a3)
  {
    return v4;
  }

  return result;
}

uint64_t HKUIObjectsAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqual:v4];
    }
  }

  return v6;
}

id HKUIObjectMax(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = v4;
    if (v4)
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    v6 = v3;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  v7 = 0;
  if (v3 && v4)
  {
    if ([v3 compare:v4] == 1)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

LABEL_10:
    v7 = v6;
  }

  return v7;
}

id HKUIObjectMin(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = v4;
    if (v4)
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    v6 = v3;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  v7 = 0;
  if (v3 && v4)
  {
    if ([v3 compare:v4] == -1)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

LABEL_10:
    v7 = v6;
  }

  return v7;
}

id HKUIArrayLargestValue(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (!v4 || [*(*(&v10 + 1) + 8 * i) compare:v4] == 1)
        {
          v8 = v7;

          v4 = v8;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id HKUIArraySmallestValue(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (!v4 || [*(*(&v10 + 1) + 8 * i) compare:v4] == -1)
        {
          v8 = v7;

          v4 = v8;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL HKUIApplicationIsUsingAccessibilityContentSizeCategory()
{
  v0 = [MEMORY[0x1E69DC8C0] system];
  v1 = [v0 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v1);

  return IsAccessibilityCategory;
}

BOOL HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E69DC8C0] system];
  v3 = [v2 preferredContentSizeCategory];

  if (v3)
  {
    v4 = UIContentSizeCategoryCompareToCategory(v3, v1) == NSOrderedDescending;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL HKUIApplicationContentSizeCategoryIsSmallerThanSizeCategory(void *a1)
{
  v1 = MEMORY[0x1E69DC8C0];
  v2 = a1;
  v3 = [v1 system];
  v4 = [v3 preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(v4, v2);

  return v5 == NSOrderedAscending;
}

NSString *HKUIContentSizeCategoryMin(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = UIContentSizeCategoryCompareToCategory(v4, v5);
  if (v6 >= 2)
  {
    v7 = v4;
    if (v6 != NSOrderedAscending)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = v5;
  }

  v2 = v7;
LABEL_5:

  return v2;
}

void *HKUIContentSizeCategoryMax(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = HKUIContentSizeCategoryMin(v4, v3);
  if ([v5 isEqualToString:v4])
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

id HKUIContentSizeCategoryBounded(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = HKUIContentSizeCategoryMax(a1, a2);
  v7 = HKUIContentSizeCategoryMin(v6, v5);

  return v7;
}

id HKUIDefaultGregorianBirthday()
{
  v0 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  v1 = [MEMORY[0x1E695DF00] date];
  v2 = [v0 startOfDayForDate:v1];

  v3 = [v0 hk_dateOfBirthDateComponentsWithDate:v2];
  [v3 setYear:{objc_msgSend(v3, "year") - 35}];

  return v3;
}

id HKUIDefaultPregnancyDueDate()
{
  v0 = [MEMORY[0x1E695DEE8] currentCalendar];
  v1 = [MEMORY[0x1E695DF00] date];
  v2 = [v0 startOfDayForDate:v1];

  v3 = [v0 dateByAddingUnit:0x2000 value:5 toDate:v2 options:0];

  return v3;
}

id HKAttributedString(void *a1)
{
  v1 = MEMORY[0x1E696AAB0];
  v2 = a1;
  v3 = [[v1 alloc] initWithString:v2];

  return v3;
}

id HKStringForHKTimeScope(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2)
  {
    if (a1 > 3)
    {
      if (a1 > 5)
      {
        if (a1 == 6)
        {
          v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v6 = v5;
          v7 = @"SHORT_DAY";
        }

        else
        {
          if (a1 != 7)
          {
            goto LABEL_41;
          }

          v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v6 = v5;
          v7 = @"SHORT_HOUR";
        }
      }

      else if (a1 == 4)
      {
        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v6 = v5;
        v7 = @"SHORT_MONTH";
      }

      else
      {
        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v6 = v5;
        v7 = @"SHORT_WEEK";
      }
    }

    else
    {
      if (a1 <= 1)
      {
        if (a1)
        {
          if (a1 != 1)
          {
            goto LABEL_41;
          }

          v3 = @"SHORT_FIVE_YEARS_%@";
LABEL_12:
          v4 = 5;
LABEL_33:
          v2 = _NumericalLocalizedTimeScope(v3, v4);
          goto LABEL_41;
        }

        v3 = @"SHORT_TEN_YEARS_%@";
        goto LABEL_32;
      }

      if (a1 != 2)
      {
        v3 = @"SHORT_SIX_MONTHS_%@";
LABEL_23:
        v4 = 6;
        goto LABEL_33;
      }

      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v5;
      v7 = @"SHORT_YEAR";
    }
  }

  else if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v6 = v5;
        v7 = @"DAY";
      }

      else
      {
        if (a1 != 7)
        {
          goto LABEL_41;
        }

        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v6 = v5;
        v7 = @"HOUR";
      }
    }

    else if (a1 == 4)
    {
      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v5;
      v7 = @"MONTH";
    }

    else
    {
      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v5;
      v7 = @"WEEK";
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 != 1)
        {
          goto LABEL_41;
        }

        v3 = @"FIVE_YEARS_%@";
        goto LABEL_12;
      }

      v3 = @"TEN_YEARS_%@";
LABEL_32:
      v4 = 10;
      goto LABEL_33;
    }

    if (a1 != 2)
    {
      v3 = @"SIX_MONTHS_%@";
      goto LABEL_23;
    }

    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = v5;
    v7 = @"YEAR";
  }

  v2 = [v5 localizedStringForKey:v7 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

LABEL_41:

  return v2;
}

id _NumericalLocalizedTimeScope(void *a1, uint64_t a2)
{
  v3 = _NumericalLocalizedTimeScope_onceToken;
  v4 = a1;
  if (v3 != -1)
  {
    _NumericalLocalizedTimeScope_cold_1();
  }

  v5 = _NumericalLocalizedTimeScope_numericalTimeScopeFormatter;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v7 = [v5 stringFromNumber:v6];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v11 = [v8 stringWithFormat:v10, v7];

  return v11;
}

id HKUIDynamicColorWithColors(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E69DC888];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __HKUIDynamicColorWithColors_block_invoke;
  v10[3] = &unk_1E81B9DB8;
  v11 = v4;
  v12 = v3;
  v6 = v3;
  v7 = v4;
  v8 = [v5 colorWithDynamicProvider:v10];

  return v8;
}

id __HKUIDynamicColorWithColors_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == 2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

id HKUILocalizedString(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v4;
}

id HKHealthRecordsLocalizedStringForIsApplication(void *a1, int a2)
{
  v3 = @"HealthUI-Localizable-CHR-API-LimeAlmanac";
  if (a2)
  {
    v3 = @"HealthUI-Localizable-CHR-API";
  }

  v4 = v3;
  v5 = a1;
  v6 = HKHealthUIFrameworkBundle();
  v7 = [v6 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:v4];

  return v7;
}

id HKHealthRecordsAPILocalizedStringWithSource(void *a1, void *a2)
{
  v3 = a1;
  v4 = HKHealthRecordsLocalizedStringForIsApplication(v3, [a2 _isResearchStudy] ^ 1);

  return v4;
}

id HKUIAFibBurdenLocalizedString(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];

  return v4;
}

void sub_1C3B3F5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 240), 8);
  _Block_object_dispose((v37 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HKCodableChartSampleTypeCountDataQueryDataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableSampleTypeCountData);
        [a1 addTimePeriodToCount:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableSampleTypeCountDataReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableChartSharableModelReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 88) |= 2u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v33 & 0x7F) << v24;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_67;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v26;
            }

LABEL_67:
            v30 = 16;
            goto LABEL_72;
          }

          if (v13 == 7)
          {
            v21 = objc_alloc_init(HKCodableChartDataSourceQueryData);
            v23 = 72;
            goto LABEL_59;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v21 = objc_alloc_init(HKCodableDateInterval);
              v22 = 80;
              goto LABEL_55;
            case 9:
              v21 = objc_alloc_init(HKCodableChartDataSourceQueryData);
              v23 = 24;
LABEL_59:
              objc_storeStrong((a1 + v23), v21);
              v33 = 0;
              v34 = 0;
              if (!PBReaderPlaceMark() || !HKCodableChartDataSourceQueryDataReadFrom(v21, a2))
              {
LABEL_75:

                return 0;
              }

              goto LABEL_61;
            case 0xA:
              v21 = objc_alloc_init(HKCodableDateInterval);
              v22 = 32;
              goto LABEL_55;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(HKCodableChartDataSourceQueryData);
          v23 = 40;
          goto LABEL_59;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(HKCodableDateInterval);
          v22 = 48;
          goto LABEL_55;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(HKCodableChartDataSourceQueryData);
            v23 = 56;
            goto LABEL_59;
          case 4:
            v21 = objc_alloc_init(HKCodableDateInterval);
            v22 = 64;
LABEL_55:
            objc_storeStrong((a1 + v22), v21);
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !HKCodableDateIntervalReadFrom(v21, a2))
            {
              goto LABEL_75;
            }

LABEL_61:
            PBReaderRecallMark();

            goto LABEL_73;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 88) |= 1u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v33 & 0x7F) << v14;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_71;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_71:
            v30 = 8;
LABEL_72:
            *(a1 + v30) = v20;
            goto LABEL_73;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_73:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableHealthRecordsEduSectionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 56) |= 1u;
        while (1)
        {
          v27 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v27 & 0x7F) << v15;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_50:
        *(a1 + 8) = v21;
        goto LABEL_45;
      }

      if (v13 != 2)
      {
        if (v13 != 3)
        {
          goto LABEL_39;
        }

        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addSectionLocaleIdentifiers:v14];
        }

LABEL_44:

        goto LABEL_45;
      }

      v23 = PBReaderReadString();
      v24 = *(a1 + 40);
      *(a1 + 40) = v23;

LABEL_45:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addSectionValidRegionCodes:v14];
        }

        break;
      case 5:
        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addSectionAttributions:v14];
        }

        break;
      case 6:
        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addSectionCitations:v14];
        }

        break;
      default:
LABEL_39:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_45;
    }

    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3B47950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HKGenerateDateRangeForCharts(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (a2 <= 3)
  {
    if (a2 == 2)
    {
      v9 = [v7 startOfRollingYear:v8];

      v10 = [v7 endOfRollingYear:v8];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (a2 != 4)
  {
    if (a2 != 5)
    {
      v9 = [v7 startOfRollingDay:v8];

      v10 = [v7 endOfRollingDay:v8];
      goto LABEL_9;
    }

LABEL_7:
    v9 = [v7 startOfRollingWeek:v8];

    v10 = [v7 endOfRollingWeek:v8];
    goto LABEL_9;
  }

  v9 = [v7 startOfRollingMonth:v8];

  v10 = [v7 endOfRollingMonth:v8];
LABEL_9:
  v11 = v10;

  v12 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v11];

  return v12;
}

void sub_1C3B49ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3B4B48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3B4C6AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t HKCodableSummaryAFibBurdenValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableAFibBurdenValue);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !HKCodableAFibBurdenValueReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(HKCodableDayIndexRange);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !HKCodableDayIndexRangeReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3B4F2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKCodableSampleTypeCountDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v31) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v31 & 0x7F) << v18;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_40:
        *(a1 + 8) = v24;
      }

      else
      {
        if (v13 == 2)
        {
          *(a1 + 32) |= 2u;
          v31 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v27 = v31;
          v28 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_46;
          }

          *(a1 + 32) |= 4u;
          v31 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v31 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v27 = v31;
          v28 = 24;
        }

        *(a1 + v28) = v27;
      }

LABEL_46:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableMenstrualCyclesProjectionHighlightTileViewModelReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v31) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v31 & 0x7F) << v22;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_55;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v24;
          }

LABEL_55:
          v28 = 8;
          goto LABEL_56;
        }

        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            LOBYTE(v31) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v31 & 0x7F) << v15;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_51;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_51:
          v28 = 16;
LABEL_56:
          *(a1 + v28) = v21;
          goto LABEL_57;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(HKCodableMenstrualCyclesProjection);
          objc_storeStrong((a1 + 24), v14);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !HKCodableMenstrualCyclesProjectionReadFrom(v14, a2))
          {
LABEL_59:

            return 0;
          }

          goto LABEL_38;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(HKCodableMenstrualCyclesProjectionKind);
          objc_storeStrong((a1 + 32), v14);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !HKCodableMenstrualCyclesProjectionKindReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

LABEL_38:
          PBReaderRecallMark();

          goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3B6302C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1C3B639E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

uint64_t HKCodableChartInsulinValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v25[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25[0] & 0x7F) << v5;
        if ((v25[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v18 = objc_alloc_init(HKCodableQuantity);
        objc_storeStrong((a1 + 24), v18);
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v18, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 2)
        {
          *(a1 + 32) |= 1u;
          v25[0] = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v25 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v20 = v25[0];
          v21 = 8;
          goto LABEL_35;
        }

        if (v13 == 1)
        {
          *(a1 + 32) |= 2u;
          v25[0] = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v25 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v20 = v25[0];
          v21 = 16;
LABEL_35:
          *(a1 + v21) = v20;
          goto LABEL_36;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_36:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableSummaryGAD7AssessmentValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v35 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v35 & 0x7F) << v23;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_50:
        v30 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            *(a1 + 32) |= 1u;
            v33 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v33;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_54;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v36 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v36 & 0x7F) << v16;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_46:
        v30 = 24;
      }

      *(a1 + v30) = v22;
LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableNotificationDataSourceQueryDataReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43[0] & 0x7F) << v5;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          a1[48] |= 4u;
          while (1)
          {
            LOBYTE(v43[0]) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v43[0] & 0x7F) << v28;
            if ((v43[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v30;
          }

LABEL_67:
          v40 = 24;
          goto LABEL_80;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          a1[48] |= 8u;
          while (1)
          {
            LOBYTE(v43[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v43[0] & 0x7F) << v14;
            if ((v43[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_75:
          v40 = 32;
LABEL_80:
          *&a1[v40] = v20;
          goto LABEL_81;
        }

        goto LABEL_62;
      }

      v27 = objc_alloc_init(HKCodableNotificationSample);
      [a1 addSamples:v27];
      v43[0] = 0;
      v43[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableNotificationSampleReadFrom(v27, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_81:
      v41 = [a2 position];
      if (v41 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      a1[48] |= 2u;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v37 = [a2 position] + 1;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v36 |= (v43[0] & 0x7F) << v34;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v11 = v35++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_71;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v36;
      }

LABEL_71:
      v40 = 16;
      goto LABEL_80;
    }

    if (v13 == 2)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      a1[48] |= 1u;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v43[0] & 0x7F) << v21;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_79;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v23;
      }

LABEL_79:
      v40 = 8;
      goto LABEL_80;
    }

LABEL_62:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_81;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3B70F48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t HKCodableSummaryVisualizationPointReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v25[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25[0] & 0x7F) << v5;
        if ((v25[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        *(a1 + 32) |= 1u;
        v25[0] = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v25 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v20 = v25[0];
        v21 = 8;
LABEL_35:
        *(a1 + v21) = v20;
        goto LABEL_36;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(HKCodableDateInterval);
        objc_storeStrong((a1 + 24), v14);
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableDateIntervalReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v23 = [a2 position];
      if (v23 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 32) |= 2u;
    v25[0] = 0;
    v17 = [a2 position] + 8;
    if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
    {
      v22 = [a2 data];
      [v22 getBytes:v25 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v20 = v25[0];
    v21 = 16;
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

id _DisplayTypeForActivityValue(unint64_t a1, void *a2)
{
  v3 = _RepresentativeDisplayTypeIdentifierForActivityValue(a1);
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  v6 = [v4 numberWithInteger:v3];
  v7 = [v5 displayTypeWithIdentifier:v6];

  return v7;
}

uint64_t _RepresentativeDisplayTypeIdentifierForActivityValue(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_1C3D5D988[a1];
  }
}

void sub_1C3B79AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3B7BF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C3B7D1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3B7D600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKCodableQuantityValueWithRangeReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v20) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v16 = objc_alloc_init(HKCodableQuantity);
            v17 = 32;
            goto LABEL_35;
          case 5:
            v16 = objc_alloc_init(HKCodableQuantity);
            v17 = 24;
LABEL_35:
            objc_storeStrong(&a1[v17], v16);
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v16, a2))
            {
              goto LABEL_41;
            }

LABEL_37:
            PBReaderRecallMark();
            goto LABEL_38;
          case 6:
            v14 = PBReaderReadString();
            v15 = 48;
LABEL_26:
            v16 = *&a1[v15];
            *&a1[v15] = v14;
LABEL_38:

            goto LABEL_39;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v16 = objc_alloc_init(HKCodableHealthRecordsCode);
            [a1 addCode:v16];
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !HKCodableHealthRecordsCodeReadFrom(v16, a2))
            {
LABEL_41:

              return 0;
            }

            goto LABEL_37;
          case 2:
            v16 = objc_alloc_init(HKCodableQuantity);
            v17 = 16;
            goto LABEL_35;
          case 3:
            v14 = PBReaderReadString();
            v15 = 40;
            goto LABEL_26;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _HKBloodPressureOverlayClassificationUsesMinMax()
{
  v0 = [MEMORY[0x1E696C608] sharedBehavior];
  v1 = [v0 isAppleInternalInstall];

  if (v1)
  {
    v2 = objc_alloc(MEMORY[0x1E695E000]);
    v3 = [v2 initWithSuiteName:*MEMORY[0x1E696C858]];
    if ([v3 hk_keyExists:@"HKBloodPressureOverlayClassificationUsesMinMax"])
    {
      v1 = [v3 BOOLForKey:@"HKBloodPressureOverlayClassificationUsesMinMax"];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

void sub_1C3B7FD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3B808B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3B817C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3B820DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HKCodableSummaryActivityRingsValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v55[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v55[0] & 0x7F) << v5;
      if ((v55[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        *(a1 + 124) |= 8u;
        v55[0] = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v51 = [a2 data];
          [v51 getBytes:v55 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v47 = v55[0];
        v48 = 32;
        goto LABEL_92;
      case 2u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 124) |= 1u;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v55[0] & 0x7F) << v30;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_78;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

LABEL_78:
        *(a1 + 8) = v36;
        goto LABEL_93;
      case 3u:
        v24 = objc_alloc_init(HKCodableQuantity);
        v25 = 56;
        goto LABEL_68;
      case 4u:
        v24 = objc_alloc_init(HKCodableQuantity);
        v25 = 64;
        goto LABEL_68;
      case 5u:
        v24 = objc_alloc_init(HKCodableQuantity);
        v25 = 88;
        goto LABEL_68;
      case 6u:
        v24 = objc_alloc_init(HKCodableQuantity);
        v25 = 96;
        goto LABEL_68;
      case 7u:
        v24 = objc_alloc_init(HKCodableQuantity);
        v25 = 72;
        goto LABEL_68;
      case 8u:
        v24 = objc_alloc_init(HKCodableQuantity);
        v25 = 80;
        goto LABEL_68;
      case 9u:
        v24 = objc_alloc_init(HKCodableQuantity);
        v25 = 104;
        goto LABEL_68;
      case 0xAu:
        v24 = objc_alloc_init(HKCodableQuantity);
        v25 = 112;
LABEL_68:
        objc_storeStrong((a1 + v25), v24);
        v55[0] = 0;
        v55[1] = 0;
        if (PBReaderPlaceMark() && HKCodableQuantityReadFrom(v24, a2))
        {
          PBReaderRecallMark();

LABEL_93:
          v53 = [a2 position];
          if (v53 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 0xBu:
        *(a1 + 124) |= 0x20u;
        v55[0] = 0;
        v43 = [a2 position] + 8;
        if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
        {
          v52 = [a2 data];
          [v52 getBytes:v55 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v47 = v55[0];
        v48 = 48;
        goto LABEL_92;
      case 0xCu:
        *(a1 + 124) |= 0x10u;
        v55[0] = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v46 = [a2 data];
          [v46 getBytes:v55 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v47 = v55[0];
        v48 = 40;
        goto LABEL_92;
      case 0xDu:
        *(a1 + 124) |= 4u;
        v55[0] = 0;
        v26 = [a2 position] + 8;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
        {
          v49 = [a2 data];
          [v49 getBytes:v55 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v47 = v55[0];
        v48 = 24;
        goto LABEL_92;
      case 0xEu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 124) |= 0x40u;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v55[0] & 0x7F) << v37;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_80;
          }
        }

        v21 = (v39 != 0) & ~[a2 hasError];
LABEL_80:
        v45 = 120;
        goto LABEL_81;
      case 0xFu:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 124) |= 0x80u;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v55[0] & 0x7F) << v15;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_74;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_74:
        v45 = 121;
LABEL_81:
        *(a1 + v45) = v21;
        goto LABEL_93;
      case 0x10u:
        *(a1 + 124) |= 2u;
        v55[0] = 0;
        v28 = [a2 position] + 8;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
        {
          v50 = [a2 data];
          [v50 getBytes:v55 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v47 = v55[0];
        v48 = 16;
LABEL_92:
        *(a1 + v48) = v47;
        goto LABEL_93;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_93;
    }
  }
}

uint64_t HKCodableAudiogramSensitivityPointClampingRangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(HKCodableQuantity);
        v14 = 16;
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(HKCodableQuantity);
        v14 = 8;
      }

      objc_storeStrong((a1 + v14), v13);
      v17[0] = 0;
      v17[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3B88B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3B9085C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose((v71 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3B92348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3B930B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3B936A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3B93ED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t HKSleepSomnogramStageForSleepAnalysis(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_1C3D5DAB8[a1];
  }
}

uint64_t HKSleepSomnogramConnectionOrientationForBars(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    [v5 top];
    v8 = v7;
    [v6 top];
    if (v8 <= v9)
    {
      [v5 top];
      v11 = v10;
      [v6 top];
      if (v11 >= v12)
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

LABEL_10:
    [v6 right];
    v24 = v23;
    [v5 right];
    v19 = v24 < v25;
    goto LABEL_12;
  }

  [v5 bottom];
  v14 = v13;
  [v6 bottom];
  if (v14 <= v15)
  {
    [v5 bottom];
    v21 = v20;
    [v6 bottom];
    if (v21 >= v22)
    {
LABEL_11:
      v19 = 4;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_6:
  [v6 right];
  v17 = v16;
  [v5 right];
  if (v17 >= v18)
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

LABEL_12:

  return v19;
}

double HKCollectionViewLayoutDefaultInterRowSpacingForWidthDesignation(uint64_t a1)
{
  result = 10.0;
  if ((a1 - 3) <= 3)
  {
    return dbl_1C3D5DAE8[a1 - 3];
  }

  return result;
}

void sub_1C3B9C2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3B9C528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3B9E9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL HKIndexForOverlaySleepRoomSegment(_BOOL8 result)
{
  if (result != 2)
  {
    return result != 1;
  }

  return result;
}

void sub_1C3BA466C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t HKCodableDateComponentsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v104 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v104 & 0x7F) << v5;
        if ((v104 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 136) |= 2u;
          while (1)
          {
            v118 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v118 & 0x7F) << v13;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_180:
              v102 = 16;
              goto LABEL_205;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_180;
        case 2u:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 136) |= 0x1000u;
          while (1)
          {
            v117 = 0;
            v68 = [a2 position] + 1;
            if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
            {
              v70 = [a2 data];
              [v70 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v67 |= (v117 & 0x7F) << v65;
            if ((v117 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v11 = v66++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_184;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v67;
          }

LABEL_184:
          v102 = 104;
          goto LABEL_205;
        case 3u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 136) |= 0x10u;
          while (1)
          {
            v116 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v116 & 0x7F) << v46;
            if ((v116 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_168;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v48;
          }

LABEL_168:
          v102 = 40;
          goto LABEL_205;
        case 4u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 136) |= 1u;
          while (1)
          {
            v115 = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v115 & 0x7F) << v53;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v11 = v54++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_172;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v55;
          }

LABEL_172:
          v102 = 8;
          goto LABEL_205;
        case 5u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 136) |= 4u;
          while (1)
          {
            v114 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v114 & 0x7F) << v28;
            if ((v114 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_156;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v30;
          }

LABEL_156:
          v102 = 24;
          goto LABEL_205;
        case 6u:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 136) |= 8u;
          while (1)
          {
            v113 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v113 & 0x7F) << v71;
            if ((v113 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v11 = v72++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_188;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v73;
          }

LABEL_188:
          v102 = 32;
          goto LABEL_205;
        case 7u:
          v83 = 0;
          v84 = 0;
          v85 = 0;
          *(a1 + 136) |= 0x80u;
          while (1)
          {
            v112 = 0;
            v86 = [a2 position] + 1;
            if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
            {
              v88 = [a2 data];
              [v88 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v85 |= (v112 & 0x7F) << v83;
            if ((v112 & 0x80) == 0)
            {
              break;
            }

            v83 += 7;
            v11 = v84++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_196;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v85;
          }

LABEL_196:
          v102 = 64;
          goto LABEL_205;
        case 8u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 136) |= 0x400u;
          while (1)
          {
            v111 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v111 & 0x7F) << v59;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v11 = v60++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_176;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v61;
          }

LABEL_176:
          v102 = 88;
          goto LABEL_205;
        case 9u:
          v95 = 0;
          v96 = 0;
          v97 = 0;
          *(a1 + 136) |= 0x800u;
          while (1)
          {
            v110 = 0;
            v98 = [a2 position] + 1;
            if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
            {
              v100 = [a2 data];
              [v100 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v97 |= (v110 & 0x7F) << v95;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v95 += 7;
            v11 = v96++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_204;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v97;
          }

LABEL_204:
          v102 = 96;
          goto LABEL_205;
        case 0xAu:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 136) |= 0x40u;
          while (1)
          {
            v109 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v109 & 0x7F) << v40;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_164;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v42;
          }

LABEL_164:
          v102 = 56;
          goto LABEL_205;
        case 0xBu:
          v89 = 0;
          v90 = 0;
          v91 = 0;
          *(a1 + 136) |= 0x100u;
          while (1)
          {
            v108 = 0;
            v92 = [a2 position] + 1;
            if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
            {
              v94 = [a2 data];
              [v94 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v91 |= (v108 & 0x7F) << v89;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v89 += 7;
            v11 = v90++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_200;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v91;
          }

LABEL_200:
          v102 = 72;
          goto LABEL_205;
        case 0xCu:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 136) |= 0x200u;
          while (1)
          {
            v107 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v107 & 0x7F) << v22;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_152;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v24;
          }

LABEL_152:
          v102 = 80;
          goto LABEL_205;
        case 0xDu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 136) |= 0x2000u;
          while (1)
          {
            v106 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v106 & 0x7F) << v34;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_160;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v36;
          }

LABEL_160:
          v102 = 112;
          goto LABEL_205;
        case 0xEu:
          v77 = 0;
          v78 = 0;
          v79 = 0;
          *(a1 + 136) |= 0x20u;
          break;
        case 0xFu:
          v20 = PBReaderReadString();
          v21 = 120;
          goto LABEL_74;
        case 0x10u:
          v20 = PBReaderReadString();
          v21 = 128;
LABEL_74:
          v52 = *(a1 + v21);
          *(a1 + v21) = v20;

          goto LABEL_206;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_206;
      }

      while (1)
      {
        v105 = 0;
        v80 = [a2 position] + 1;
        if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
        {
          v82 = [a2 data];
          [v82 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v79 |= (v105 & 0x7F) << v77;
        if ((v105 & 0x80) == 0)
        {
          break;
        }

        v77 += 7;
        v11 = v78++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_192;
        }
      }

      v19 = [a2 hasError] ? 0 : v79;
LABEL_192:
      v102 = 48;
LABEL_205:
      *(a1 + v102) = v19;
LABEL_206:
      v103 = [a2 position];
    }

    while (v103 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3BAB524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNContactPickerViewControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContactsUILibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E81BACF8;
    v5 = 0;
    ContactsUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!ContactsUILibraryCore_frameworkLibrary_0)
  {
    __getCNContactPickerViewControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CNContactPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNContactPickerViewControllerClass_block_invoke_cold_1();
  }

  getCNContactPickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1C3BAC71C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1C3BAD528(void *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak(&STACK[0x450]);
  _Block_object_dispose(&STACK[0x458], 8);
  _Block_object_dispose(&STACK[0x478], 8);
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1C3BAD50CLL);
}

void *HKCircularBufferCreate(uint64_t a1, uint64_t a2)
{
  if (a1 < 1 || (a2 - 1024) <= 0xFFFFFFFFFFFFFC00)
  {
    HKCircularBufferCreate_cold_1();
  }

  if (a1 >= 1000)
  {
    v4 = 1000;
  }

  else
  {
    v4 = a1;
  }

  v5 = malloc_type_malloc(0x28uLL, 0x108004003DAF236uLL);
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  v5[4] = a2;
  *v5 = malloc_type_malloc(v4 * a2, 0xA8445E5AuLL);
  return v5;
}

void HKCircularBufferRelease(void **a1)
{
  if (!a1)
  {
    HKCircularBufferRelease_cold_1();
  }

  free(*a1);

  free(a1);
}

BOOL HKCircularBufferIsEmpty(uint64_t a1)
{
  if (!a1)
  {
    HKCircularBufferIsEmpty_cold_1();
  }

  return *(a1 + 16) == 0;
}

uint64_t HKCircularBufferCount(uint64_t a1)
{
  if (!a1)
  {
    HKCircularBufferCount_cold_1();
  }

  return *(a1 + 16);
}

void HKCircularBufferClean(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    HKCircularBufferClean_cold_1();
  }

  v6 = 0;
  v11 = 0;
  do
  {
    v7 = v6;
    if (!HKCircularBufferIteratorHasNext(a1, v11))
    {
      break;
    }

    v8 = HKCircularBufferIteratorNext(a1, &v11);
    v9 = a2(v8, a3);
    v6 = v7 - 1;
  }

  while ((v9 & 1) != 0);
  if (a1)
  {
    if (!v7)
    {
      return;
    }
  }

  else
  {
    HKCircularBufferClean_cold_2();
    if (!v7)
    {
      return;
    }
  }

  v10 = (a1[2] + v7) & ~((a1[2] + v7) >> 63);
  a1[1] = (a1[1] - v7) % a1[3];
  a1[2] = v10;
}

BOOL HKCircularBufferIteratorHasNext(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    HKCircularBufferIteratorHasNext_cold_1();
  }

  return *(a1 + 16) > a2;
}

uint64_t HKCircularBufferIteratorNext(uint64_t *a1, void *a2)
{
  if (!a1)
  {
    HKCircularBufferIteratorNext_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    HKCircularBufferIteratorNext_cold_2();
    goto LABEL_3;
  }

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = *a1;
  v5 = *a2 + a1[1];
  v6 = a1[3];
  ++*a2;
  return v4 + a1[4] * (v5 % v6);
}

void *HKCircularBufferAddItem(uint64_t *a1, void *__src)
{
  if (!a1)
  {
    HKCircularBufferAddItem_cold_1();
  }

  v4 = a1[2];
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v8 = (v4 + v6) % v5;
  if (v4 >= v5)
  {
    v9 = v6 + 1;
  }

  else
  {
    ++v4;
    v9 = a1[1];
  }

  a1[1] = v9;
  a1[2] = v4;
  v10 = a1[4];

  return memcpy((v7 + v10 * v8), __src, v10);
}

uint64_t HKCodableAudiogramSensitivityPointReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 6)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableQuantity);
        objc_storeStrong(a1 + 1, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(HKCodableAudiogramSensitivityTest);
    [a1 addTests:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !HKCodableAudiogramSensitivityTestReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableHealthRecordsEduContentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableHealthRecordsEduSection);
        [a1 addSections:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableHealthRecordsEduSectionReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableHealthChartsSeriesDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v22 = PBReaderReadString();
        v23 = *(a1 + 24);
        *(a1 + 24) = v22;
      }

      else if (v13 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v26[0] & 0x7F) << v15;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_38:
        *(a1 + 8) = v21;
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(HKCodableHealthChartsSeriesPoint);
        [a1 addPoints:v14];
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableHealthChartsSeriesPointReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableHealthChartsSeriesPointReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          *(a1 + 40) |= 2u;
          v25 = 0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v20 = v25;
          v21 = 16;
          goto LABEL_40;
        }

        if (v13 == 4)
        {
          *(a1 + 40) |= 1u;
          v25 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v20 = v25;
          v21 = 8;
LABEL_40:
          *(a1 + v21) = v20;
          goto LABEL_41;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(HKCodableDateInterval);
          objc_storeStrong((a1 + 24), v14);
          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark() || !HKCodableDateIntervalReadFrom(v14, a2))
          {
LABEL_43:

            return 0;
          }

          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(HKCodableClosedRange);
          objc_storeStrong((a1 + 32), v14);
          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark() || !HKCodableClosedRangeReadFrom(v14, a2))
          {
            goto LABEL_43;
          }

LABEL_32:
          PBReaderRecallMark();

          goto LABEL_41;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableHealthChartsSeriesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(HKCodableHealthChartsSeriesData);
        objc_storeStrong((a1 + 8), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableHealthChartsSeriesDataReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableAFibBurdenValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v24 & 0x7F) << v15;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_38;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_38:
        *(a1 + 24) = v21;
        goto LABEL_39;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(HKCodableQuantity);
        objc_storeStrong((a1 + 16), v14);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v14, a2))
        {
          goto LABEL_41;
        }

LABEL_25:
        PBReaderRecallMark();

        goto LABEL_39;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HKCodableDayIndexRange);
    objc_storeStrong((a1 + 8), v14);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !HKCodableDayIndexRangeReadFrom(v14, a2))
    {
LABEL_41:

      return 0;
    }

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableHealthRecordsSharableViewModelReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v47) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v21 = objc_alloc_init(HKCodableHealthRecordsIndividualRecord);
            objc_storeStrong((a1 + 56), v21);
            goto LABEL_54;
          }

          if (v13 == 7)
          {
            v21 = objc_alloc_init(HKCodableHealthRecordsIndividualRecord);
            [a1 addAllRecords:v21];
LABEL_54:
            v47 = 0;
            v48 = 0;
            if (!PBReaderPlaceMark() || !HKCodableHealthRecordsIndividualRecordReadFrom(v21, a2))
            {
LABEL_99:

              return 0;
            }

            goto LABEL_70;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v32 = 0;
              v33 = 0;
              v34 = 0;
              *(a1 + 84) |= 2u;
              while (1)
              {
                LOBYTE(v47) = 0;
                v35 = [a2 position] + 1;
                if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
                {
                  v37 = [a2 data];
                  [v37 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v34 |= (v47 & 0x7F) << v32;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                v11 = v33++ >= 9;
                if (v11)
                {
                  v28 = 0;
                  goto LABEL_89;
                }
              }

              if ([a2 hasError])
              {
                v28 = 0;
              }

              else
              {
                v28 = v34;
              }

LABEL_89:
              v44 = 16;
              goto LABEL_96;
            case 9:
              v38 = 0;
              v39 = 0;
              v40 = 0;
              *(a1 + 84) |= 4u;
              while (1)
              {
                LOBYTE(v47) = 0;
                v41 = [a2 position] + 1;
                if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
                {
                  v43 = [a2 data];
                  [v43 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v40 |= (v47 & 0x7F) << v38;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                v11 = v39++ >= 9;
                if (v11)
                {
                  v28 = 0;
                  goto LABEL_95;
                }
              }

              if ([a2 hasError])
              {
                v28 = 0;
              }

              else
              {
                v28 = v40;
              }

LABEL_95:
              v44 = 24;
              goto LABEL_96;
            case 0xA:
              v21 = objc_alloc_init(HKCodableHealthRecordsLocalizedEducationContent);
              objc_storeStrong((a1 + 64), v21);
              v47 = 0;
              v48 = 0;
              if (!PBReaderPlaceMark() || !HKCodableHealthRecordsLocalizedEducationContentReadFrom(v21, a2))
              {
                goto LABEL_99;
              }

              goto LABEL_70;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v29 = PBReaderReadString();
          v30 = 40;
LABEL_58:
          v31 = *(a1 + v30);
          *(a1 + v30) = v29;

          goto LABEL_97;
        }

        if (v13 == 2)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 84) |= 1u;
          while (1)
          {
            LOBYTE(v47) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v47 & 0x7F) << v22;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_85;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_85:
          v44 = 8;
LABEL_96:
          *(a1 + v44) = v28;
          goto LABEL_97;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v29 = PBReaderReadString();
            v30 = 72;
            goto LABEL_58;
          case 4:
            v21 = objc_alloc_init(HKCodableHealthRecordsEduContent);
            objc_storeStrong((a1 + 48), v21);
            v47 = 0;
            v48 = 0;
            if (!PBReaderPlaceMark() || !HKCodableHealthRecordsEduContentReadFrom(v21, a2))
            {
              goto LABEL_99;
            }

LABEL_70:
            PBReaderRecallMark();

            goto LABEL_97;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 84) |= 8u;
            while (1)
            {
              LOBYTE(v47) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v47 & 0x7F) << v14;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_91;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_91:
            *(a1 + 80) = v20;
            goto LABEL_97;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_97:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableAudiogramSensitivityTestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(HKCodableQuantity);
          objc_storeStrong((a1 + 32), v14);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v14, a2))
          {
LABEL_71:

            return 0;
          }

          goto LABEL_55;
        }

        if (v13 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            LOBYTE(v38) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v38 & 0x7F) << v15;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_67:
          v35 = 16;
          goto LABEL_68;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 44) |= 4u;
            while (1)
            {
              LOBYTE(v38) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v38 & 0x7F) << v22;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                LOBYTE(v28) = 0;
                goto LABEL_59;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_59:
            *(a1 + 40) = v28;
            goto LABEL_69;
          case 4:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v38) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v38 & 0x7F) << v29;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_63;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v31;
            }

LABEL_63:
            v35 = 8;
LABEL_68:
            *(a1 + v35) = v21;
            goto LABEL_69;
          case 5:
            v14 = objc_alloc_init(HKCodableAudiogramSensitivityPointClampingRange);
            objc_storeStrong((a1 + 24), v14);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !HKCodableAudiogramSensitivityPointClampingRangeReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

LABEL_55:
            PBReaderRecallMark();

            goto LABEL_69;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_69:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableSampleDataSourceQueryDataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableSampleChartData);
        [a1 addSamples:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableSampleChartDataReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3BBAC04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id HKUnitPreferenceControllerAvailableUnitsForDisplayType(void *a1)
{
  v1 = MEMORY[0x1E695DFA8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 displayTypeIdentifier];

  switch(v4)
  {
    case 0:
    case 7:
    case 12:
    case 13:
    case 57:
    case 60:
    case 89:
    case 101:
    case 111:
    case 140:
    case 145:
    case 147:
    case 156:
    case 178:
LABEL_5:
      v5 = MEMORY[0x1E696C510];
      v6 = @"count";
      goto LABEL_38;
    case 1:
    case 14:
    case 18:
    case 19:
    case 182:
    case 194:
LABEL_9:
      v5 = MEMORY[0x1E696C510];
      v6 = @"%";
      goto LABEL_38;
    case 2:
      v28 = [MEMORY[0x1E696C510] unitFromString:@"ft"];
      [v3 addObject:v28];

      v29 = MEMORY[0x1E696C510];
      v30 = @"cm";
LABEL_33:
      v32 = [v29 unitFromString:v30];
      [v3 addObject:v32];

      v5 = MEMORY[0x1E696C510];
      goto LABEL_34;
    case 3:
    case 4:
      v16 = [MEMORY[0x1E696C510] unitFromString:@"lb"];
      [v3 addObject:v16];

      v17 = [MEMORY[0x1E696C510] unitFromString:@"kg"];
      [v3 addObject:v17];

      v5 = MEMORY[0x1E696C510];
      v6 = @"st";
      goto LABEL_38;
    case 5:
    case 61:
    case 118:
    case 137:
      v5 = MEMORY[0x1E696C510];
      v6 = @"count/min";
      goto LABEL_38;
    case 6:
    case 11:
    case 16:
    case 17:
    case 59:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 74:
    case 76:
    case 77:
    case 79:
    case 81:
    case 82:
    case 84:
    case 85:
    case 86:
    case 88:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 112:
    case 115:
    case 116:
    case 117:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 141:
    case 142:
    case 143:
    case 144:
    case 146:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 174:
    case 175:
    case 176:
    case 177:
    case 180:
    case 181:
    case 184:
    case 185:
    case 186:
    case 190:
    case 191:
    case 192:
    case 193:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
      break;
    case 8:
    case 83:
    case 113:
    case 138:
LABEL_8:
      v10 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
      [v3 addObject:v10];

      v5 = MEMORY[0x1E696C510];
      v6 = @"km";
      goto LABEL_38;
    case 9:
    case 10:
    case 29:
      v12 = [MEMORY[0x1E696C510] unitFromString:@"kcal"];
      [v3 addObject:v12];

      v13 = [MEMORY[0x1E696C510] unitFromString:@"Cal"];
      [v3 addObject:v13];

      v5 = MEMORY[0x1E696C510];
      v6 = @"kJ";
      goto LABEL_38;
    case 15:
      v31 = [MEMORY[0x1E696C510] unitFromString:@"mg/dL"];
      [v3 addObject:v31];

      v19 = _HKBloodGlucoseMillimolesPerLiterUnit();
      goto LABEL_39;
    case 20:
    case 21:
    case 22:
    case 23:
    case 26:
    case 27:
    case 28:
    case 30:
      v5 = MEMORY[0x1E696C510];
      v6 = @"g";
      goto LABEL_38;
    case 24:
    case 25:
    case 32:
    case 34:
    case 36:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 45:
    case 46:
    case 48:
    case 49:
    case 51:
    case 52:
    case 55:
    case 56:
    case 78:
      v5 = MEMORY[0x1E696C510];
      v6 = @"mg";
      goto LABEL_38;
    case 31:
    case 33:
    case 35:
    case 37:
    case 43:
    case 44:
    case 47:
    case 50:
    case 53:
    case 54:
      v5 = MEMORY[0x1E696C510];
      v6 = @"mcg";
      goto LABEL_38;
    case 58:
      v5 = MEMORY[0x1E696C510];
      v6 = @"mcS";
      goto LABEL_38;
    case 62:
    case 90:
LABEL_11:
      v11 = [MEMORY[0x1E696C510] unitFromString:@"degC"];
      [v3 addObject:v11];

      v5 = MEMORY[0x1E696C510];
      v6 = @"degF";
      goto LABEL_38;
    case 71:
    case 72:
      v5 = MEMORY[0x1E696C510];
      v6 = @"L";
      goto LABEL_38;
    case 73:
      v5 = MEMORY[0x1E696C510];
      v6 = @"L/min";
      goto LABEL_38;
    case 75:
    case 179:
    case 189:
      v5 = MEMORY[0x1E696C510];
      v6 = @"min";
      goto LABEL_38;
    case 80:
      v5 = MEMORY[0x1E696C510];
      v6 = @"mmHg";
      goto LABEL_38;
    case 87:
      v21 = [MEMORY[0x1E696C510] unitFromString:@"mL"];
      [v3 addObject:v21];

      v22 = [MEMORY[0x1E696C510] unitFromString:@"L"];
      [v3 addObject:v22];

      v23 = [MEMORY[0x1E696C510] unitFromString:@"fl_oz_us"];
      [v3 addObject:v23];

      v24 = [MEMORY[0x1E696C510] unitFromString:@"pt_us"];
      [v3 addObject:v24];

      v25 = [MEMORY[0x1E696C510] unitFromString:@"fl_oz_imp"];
      [v3 addObject:v25];

      v26 = [MEMORY[0x1E696C510] unitFromString:@"pt_imp"];
      [v3 addObject:v26];

      v27 = [MEMORY[0x1E696C510] unitFromString:@"cup_us"];
      [v3 addObject:v27];

      v5 = MEMORY[0x1E696C510];
      v6 = @"cup_imp";
      goto LABEL_38;
    case 110:
      v20 = [MEMORY[0x1E696C510] unitFromString:@"m"];
      [v3 addObject:v20];

      v5 = MEMORY[0x1E696C510];
      v6 = @"yd";
      goto LABEL_38;
    case 114:
    case 188:
LABEL_15:
      v14 = MEMORY[0x1E696C510];
      v15 = @"cm";
LABEL_37:
      v35 = [v14 unitFromString:v15];
      [v3 addObject:v35];

      v5 = MEMORY[0x1E696C510];
      v6 = @"in";
      goto LABEL_38;
    case 124:
      v5 = MEMORY[0x1E696C510];
      v6 = @"ml/(kg*min)";
      goto LABEL_38;
    case 125:
      v19 = [MEMORY[0x1E696C510] internationalUnit];
      goto LABEL_39;
    case 139:
LABEL_19:
      v5 = MEMORY[0x1E696C510];
      v6 = @"ms";
      goto LABEL_38;
    case 172:
    case 173:
LABEL_14:
      v5 = MEMORY[0x1E696C510];
      v6 = @"dBASPL";
      goto LABEL_38;
    case 183:
      v5 = MEMORY[0x1E696C510];
LABEL_34:
      v6 = @"m";
      goto LABEL_38;
    case 187:
LABEL_4:
      v7 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
      [v3 addObject:v7];

      v8 = [MEMORY[0x1E696C510] unitFromString:@"ft/s"];
      [v3 addObject:v8];

      v9 = [MEMORY[0x1E696C510] unitFromString:@"mi/hr"];
      [v3 addObject:v9];

      v5 = MEMORY[0x1E696C510];
      v6 = @"km/hr";
      goto LABEL_38;
    case 195:
    case 196:
      v18 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
      [v3 addObject:v18];

      v5 = MEMORY[0x1E696C510];
      v6 = @"ft/s";
      goto LABEL_38;
    case 237:
      v5 = MEMORY[0x1E696C510];
      v6 = @"s";
LABEL_38:
      v19 = [v5 unitFromString:v6];
LABEL_39:
      v36 = v19;
      [v3 addObject:v19];

      break;
    default:
      switch(v4)
      {
        case 248:
          goto LABEL_9;
        case 251:
        case 275:
        case 276:
          goto LABEL_5;
        case 256:
        case 277:
          goto LABEL_11;
        case 258:
          v33 = [MEMORY[0x1E696C510] unitFromString:@"m"];
          [v3 addObject:v33];

          v34 = [MEMORY[0x1E696C510] unitFromString:@"cm"];
          [v3 addObject:v34];

          v14 = MEMORY[0x1E696C510];
          v15 = @"ft";
          goto LABEL_37;
        case 259:
          goto LABEL_15;
        case 260:
          goto LABEL_19;
        case 269:
          v29 = MEMORY[0x1E696C510];
          v30 = @"ft";
          goto LABEL_33;
        case 270:
          v5 = MEMORY[0x1E696C510];
          v6 = @"W";
          goto LABEL_38;
        case 272:
          goto LABEL_14;
        case 274:
        case 281:
        case 301:
        case 302:
        case 303:
          goto LABEL_4;
        case 279:
          v5 = MEMORY[0x1E696C510];
          v6 = @"lx";
          goto LABEL_38;
        case 286:
          v5 = MEMORY[0x1E696C510];
          v6 = @"kcal/(kg*hr)";
          goto LABEL_38;
        case 294:
        case 295:
        case 296:
        case 297:
          goto LABEL_8;
        default:
          goto LABEL_40;
      }
  }

LABEL_40:

  return v3;
}

void sub_1C3BBF7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HKCodableSummaryVisionPrescriptionValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v28) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v28 & 0x7F) << v5;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          *(a1 + 44) |= 1u;
          v28 = 0;
          v23 = [a2 position] + 8;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v28 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v28;
          goto LABEL_49;
        }

        if (v13 == 3)
        {
          v14 = objc_alloc_init(HKCodablePrescriptionType);
          objc_storeStrong((a1 + 24), v14);
          v28 = 0;
          v29 = 0;
          if (!PBReaderPlaceMark() || !HKCodablePrescriptionTypeReadFrom(v14, a2))
          {
LABEL_51:

            return 0;
          }

          goto LABEL_39;
        }
      }

      else
      {
        switch(v13)
        {
          case 4:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v28) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v28 & 0x7F) << v16;
              if ((v28 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_46;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_46:
            *(a1 + 40) = v22;
            goto LABEL_49;
          case 5:
            v14 = objc_alloc_init(HKCodableQuantity);
            v15 = 16;
            goto LABEL_37;
          case 6:
            v14 = objc_alloc_init(HKCodableQuantity);
            v15 = 32;
LABEL_37:
            objc_storeStrong((a1 + v15), v14);
            v28 = 0;
            v29 = 0;
            if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v14, a2))
            {
              goto LABEL_51;
            }

LABEL_39:
            PBReaderRecallMark();

            goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3BC2870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3BC3490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3BC46AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3BC5250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t HKCodableSummaryTrendValueReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_22:
        v16 = *&a1[v15];
        *&a1[v15] = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = 8;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v16 = objc_alloc_init(HKCodableSummaryVisualizationDataPresencePoint);
    [a1 addDataPresencePoints:v16];
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !HKCodableSummaryVisualizationDataPresencePointReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3BC8B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3BC9EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3BCAA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3BCEEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3BD033C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKCodableSummaryAudioExposureValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32[0] & 0x7F) << v5;
        if ((v32[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          *(a1 + 40) |= 4u;
          v32[0] = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v32 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v27 = v32[0];
          v28 = 24;
LABEL_50:
          *(a1 + v28) = v27;
          goto LABEL_51;
        }

LABEL_28:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
      }

      v18 = objc_alloc_init(HKCodableQuantity);
      objc_storeStrong((a1 + 32), v18);
      v32[0] = 0;
      v32[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v18, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_51:
      v30 = [a2 position];
      if (v30 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v22 = [a2 position] + 1;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v21 |= (v32[0] & 0x7F) << v19;
        if ((v32[0] & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v11 = v20++ >= 9;
        if (v11)
        {
          v25 = 0;
          goto LABEL_45;
        }
      }

      if ([a2 hasError])
      {
        v25 = 0;
      }

      else
      {
        v25 = v21;
      }

LABEL_45:
      *(a1 + 8) = v25;
      goto LABEL_51;
    }

    if (v13 == 4)
    {
      *(a1 + 40) |= 2u;
      v32[0] = 0;
      v16 = [a2 position] + 8;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
      {
        v29 = [a2 data];
        [v29 getBytes:v32 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v27 = v32[0];
      v28 = 16;
      goto LABEL_50;
    }

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableChartQuantityDistributionDataSourceQueryDataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableQuantityDistributionData);
        [a1 addQuantityDistributionData:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableQuantityDistributionDataReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableSummaryPHQ9AssessmentValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v35 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v35 & 0x7F) << v23;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_50:
        v30 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            *(a1 + 32) |= 1u;
            v33 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v33;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_54;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v36 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v36 & 0x7F) << v16;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_46:
        v30 = 24;
      }

      *(a1 + v30) = v22;
LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void HKAffineTransformFromLinearTransforms(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a5;
  *(a1 + 32) = a2;
  *(a1 + 40) = a4;
}

BOOL HKLinearTransformEqualToTransform(double a1, double a2, double a3, double a4)
{
  v4 = a2 - a4;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  v5 = a1 - a3;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  return v5 < 0.00000011920929 && v4 < 0.00000011920929;
}

void sub_1C3BDA098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

void sub_1C3BDADE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3BDAFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3BDCD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3BDCE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_1C3BDD534(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C3BDD9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3BDDB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3BDDD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3BDDEA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

Class __getWKWebViewConfigurationClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  result = objc_getClass("WKWebViewConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWKWebViewConfigurationClass_block_invoke_cold_1();
  }

  getWKWebViewConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void WebKitLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!WebKitLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __WebKitLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E81BB4D0;
    v2 = 0;
    WebKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WebKitLibraryCore_frameworkLibrary)
  {
    WebKitLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __WebKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getWKWebViewClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  result = objc_getClass("WKWebView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWKWebViewClass_block_invoke_cold_1();
  }

  getWKWebViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HKCodableElectrocardiogramDataSourceQueryDataReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(HKCodableElectrocardiogramSample);
        [a1 addSamples:v21];
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableElectrocardiogramSampleReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          a1[32] |= 2u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31[0] & 0x7F) << v14;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_50:
          v28 = 16;
LABEL_51:
          *&a1[v28] = v20;
          goto LABEL_52;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_52:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    a1[32] |= 1u;
    while (1)
    {
      LOBYTE(v31[0]) = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v24 |= (v31[0] & 0x7F) << v22;
      if ((v31[0] & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v11 = v23++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_46;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v24;
    }

LABEL_46:
    v28 = 8;
    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

id HKAudiogramEarLocalizedDisplayNameForEar(uint64_t a1, char a2)
{
  if (a1 == 2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    if (a2)
    {
      v4 = @"RIGHT_ABBREVIATED";
    }

    else
    {
      v4 = @"RIGHT_FULL";
    }
  }

  else
  {
    if (a1 != 1)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    if (a2)
    {
      v4 = @"LEFT_ABBREVIATED";
    }

    else
    {
      v4 = @"LEFT_FULL";
    }
  }

  v5 = [v3 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

LABEL_11:

  return v5;
}

__CFString *HKAudiogramEarLocalizedKeyForEar(uint64_t a1, int a2)
{
  if (a1 == 2)
  {
    v3 = @"RIGHT_FULL";
    v4 = @"RIGHT_ABBREVIATED";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v3 = @"LEFT_FULL";
    v4 = @"LEFT_ABBREVIATED";
LABEL_5:
    if (a2)
    {
      v3 = v4;
    }

    v5 = v3;

    return v5;
  }

  v5 = &stru_1F42FFBE0;

  return v5;
}

void sub_1C3BE57C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void HKUIAddDefaultSampleDetailValuesToSection(void *a1, void *a2)
{
  v52[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 sampleType];
  v6 = [v5 identifier];

  v7 = HKDateFormatterFromTemplate(32);
  v8 = [v3 startDate];
  v9 = [v3 endDate];
  v10 = [v8 isEqualToDate:v9];

  v11 = [v3 startDate];
  v12 = [v7 stringFromDate:v11];

  if (v10)
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v13 localizedStringForKey:@"DATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v52[0] = v6;
    v52[1] = @"Date";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    v16 = HKUIJoinStringsForAutomationIdentifier(v15);
    [v4 addText:v12 detail:v14 baseIdentifier:v16];
  }

  else
  {
    v17 = v6;
    v18 = [v3 endDate];
    v13 = [v7 stringFromDate:v18];

    v19 = v4;
    if ([v3 hasUndeterminedDuration])
    {
      v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v21 = [v20 localizedStringForKey:@"ONGOING_DATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

      v13 = v21;
    }

    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.HealthUI", v7}];
    v23 = [v22 localizedStringForKey:@"START_TIME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v24 = v17;
    v51[0] = v17;
    v51[1] = @"StartTime";
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    v26 = HKUIJoinStringsForAutomationIdentifier(v25);
    [v19 addText:v12 detail:v23 baseIdentifier:v26];

    v4 = v19;
    v6 = v24;
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [v14 localizedStringForKey:@"END_TIME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v50[0] = v24;
    v50[1] = @"EndTime";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v27 = HKUIJoinStringsForAutomationIdentifier(v16);
    [v4 addText:v13 detail:v15 baseIdentifier:v27];

    v7 = v45;
  }

  v28 = [v3 _source];
  v29 = [v28 name];
  if (v29)
  {
    v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v31 = [v30 localizedStringForKey:@"SOURCE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v49[0] = v6;
    v49[1] = @"Source";
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v33 = HKUIJoinStringsForAutomationIdentifier(v32);
    [v4 addText:v29 detail:v31 baseIdentifier:v33];
  }

  [v3 _creationTimestamp];
  if (v34 != 2.22507386e-308)
  {
    v47 = [v3 _creationDate];
    v35 = [v7 stringFromDate:v47];
    v46 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v36 = [v46 localizedStringForKey:@"DATE_ADDED_TO_HEALTH" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v48[0] = v6;
    v48[1] = @"DateAdded";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v37 = v29;
    v38 = v28;
    v39 = v6;
    v41 = v40 = v4;
    HKUIJoinStringsForAutomationIdentifier(v41);
    v42 = v3;
    v44 = v43 = v7;
    [v40 addText:v35 detail:v36 baseIdentifier:v44];

    v7 = v43;
    v3 = v42;

    v4 = v40;
    v6 = v39;
    v28 = v38;
    v29 = v37;
  }
}

__CFString *HKOrganDonationFlowImpressionEventAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"MedicalID";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"SetUpBuddy";
  }

  return v2;
}

void sub_1C3BF2CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNLabeledValueClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContactsUILibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E81BB688;
    v5 = 0;
    ContactsUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!ContactsUILibraryCore_frameworkLibrary_1)
  {
    __getCNLabeledValueClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CNLabeledValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNLabeledValueClass_block_invoke_cold_1();
  }

  getCNLabeledValueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

uint64_t HKCodableElectrocardiogramSampleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(HKCodableDateInterval);
            objc_storeStrong((a1 + 48), v21);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !HKCodableDateIntervalReadFrom(v21, a2))
            {
LABEL_90:

              return 0;
            }

            goto LABEL_49;
          case 2:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              LOBYTE(v45) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v45 & 0x7F) << v36;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_86;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v38;
            }

LABEL_86:
            v42 = 16;
            goto LABEL_87;
          case 3:
            v21 = objc_alloc_init(HKCodableQuantity);
            objc_storeStrong((a1 + 40), v21);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v21, a2))
            {
              goto LABEL_90;
            }

LABEL_49:
            PBReaderRecallMark();

            goto LABEL_88;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v34 = PBReaderReadData();
          v35 = *(a1 + 56);
          *(a1 + 56) = v34;

          goto LABEL_88;
        }

        if (v13 == 7)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            LOBYTE(v45) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v45 & 0x7F) << v22;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v24;
          }

LABEL_82:
          v42 = 8;
          goto LABEL_87;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            LOBYTE(v45) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v45 & 0x7F) << v28;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_74;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v30;
          }

LABEL_74:
          v42 = 32;
          goto LABEL_87;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            LOBYTE(v45) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v45 & 0x7F) << v14;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_78;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_78:
          v42 = 24;
LABEL_87:
          *(a1 + v42) = v20;
          goto LABEL_88;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_88:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableIntentValueResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = objc_alloc_init(HKCodableSummaryCurrentValue);
        objc_storeStrong((a1 + 24), v15);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !HKCodableSummaryCurrentValueReadFrom(v15, a2))
        {
          goto LABEL_31;
        }

LABEL_26:
        PBReaderRecallMark();
        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(HKCodableChartSharableModel);
    objc_storeStrong((a1 + 8), v15);
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !HKCodableChartSharableModelReadFrom(v15, a2))
    {
LABEL_31:

      return 0;
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}