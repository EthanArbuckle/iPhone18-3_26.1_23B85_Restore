@interface HKDataMetadataSubsampleSection
+ (id)displayNameForSampleType:(id)a3 displayTypeController:(id)a4;
- (HKDataMetadataSubsampleDelegate)subsampleDelegate;
- (HKDataMetadataSubsampleSection)initWithSample:(id)a3 workoutActivity:(id)a4 subSampleTypes:(id)a5 showOnlyExertion:(BOOL)a6 healthStore:(id)a7 displayTypeController:(id)a8 unitController:(id)a9 subsampleDelegate:(id)a10;
- (id)_allFixedValuesFromSamples:(id)a3 displayTypeController:(id)a4 unitController:(id)a5;
- (id)_fixedValuesfromSamples:(id)a3 ofExertionType:(id)a4 displayTypeController:(id)a5 unitController:(id)a6;
- (id)_formattedDisplayValueFromValue:(id)a3 exertionType:(id)a4 displayTypeController:(id)a5 unitController:(id)a6;
- (id)_formattedValueWithUnits:(id)a3 sampleType:(id)a4;
- (id)_localizedWorkoutEffortRatingFromValue:(id)a3 stringValue:(id)a4;
- (id)_mergeTypesForFixedValues:(id)a3 subSampleTypes:(id)a4;
- (id)_mostRelevantFixedValuesFromSamples:(id)a3 displayTypeController:(id)a4 unitController:(id)a5;
- (id)_subSampleAggregatePredicate:(id)a3;
- (id)_subSamplePredicateOnSelectCellForSampleType:(id)a3;
- (id)_subSampleTypesWithoutWorkoutEffort;
- (id)_trimAndSortSampleTypes:(id)a3;
- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4;
- (void)_exertionFixedValuesDisplayTypeController:(id)a3 unitController:(id)a4 healthStore:(id)a5 completion:(id)a6;
- (void)_submitAverageAggregateQueryForQuantityType:(id)a3 aggregateQueryFinishedBlock:(id)a4;
- (void)_submitCountStandHourQueryForSampleType:(id)a3 aggregateQueryFinishedBlock:(id)a4;
- (void)_submitMaximumValueQueryForQuantityType:(id)a3 aggregateQueryFinishedBlock:(id)a4;
- (void)_submitRangeValueQueryForQuantityType:(id)a3 aggregateQueryFinishedBlock:(id)a4;
- (void)_submitRateOfExertionFixedValuesWithDisplayTypeController:(id)a3 unitController:(id)a4 healthStore:(id)a5 finishedBlock:(id)a6;
- (void)_submitSingleValueQueryForQuantityType:(id)a3 aggregateQueryFinishedBlock:(id)a4;
- (void)_submitSubSampleAggregateQueriesWithCompletion:(id)a3;
- (void)_submitSumAggregateQueryForQuantityType:(id)a3 aggregateQueryFinishedBlock:(id)a4;
- (void)_updateAggregateValue:(id)a3 sampleType:(id)a4 aggregateQueryFinishedBlock:(id)a5;
- (void)selectCellForIndex:(unint64_t)a3 navigationController:(id)a4 animated:(BOOL)a5;
@end

@implementation HKDataMetadataSubsampleSection

- (HKDataMetadataSubsampleSection)initWithSample:(id)a3 workoutActivity:(id)a4 subSampleTypes:(id)a5 showOnlyExertion:(BOOL)a6 healthStore:(id)a7 displayTypeController:(id)a8 unitController:(id)a9 subsampleDelegate:(id)a10
{
  v12 = a6;
  v34 = a3;
  v32 = a4;
  v33 = a5;
  v31 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v37.receiver = self;
  v37.super_class = HKDataMetadataSubsampleSection;
  v20 = [(HKDataMetadataSubsampleSection *)&v37 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_sample, a3);
    objc_storeStrong(&v21->_workoutActivity, a4);
    objc_storeStrong(&v21->_healthStore, a7);
    objc_storeStrong(&v21->_displayTypeController, a8);
    objc_storeStrong(&v21->_unitController, a9);
    objc_storeWeak(&v21->_subsampleDelegate, v19);
    v21->_showOnlyExertion = v12;
    v22 = [v34 fixedAggregateValuesWithDisplayTypeController:v17 unitController:v18];
    v23 = [v22 allKeys];
    v24 = [(HKDataMetadataSubsampleSection *)v21 _mergeTypesForFixedValues:v23 subSampleTypes:v33];
    subSampleTypes = v21->_subSampleTypes;
    v21->_subSampleTypes = v24;

    if (![(NSArray *)v21->_subSampleTypes count])
    {

      v29 = 0;
      goto LABEL_8;
    }

    if (v12)
    {
      v26 = v21->_subSampleTypes;
      v21->_subSampleTypes = MEMORY[0x1E695E0F0];
    }

    v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v22];
    aggregationValue = v21->_aggregationValue;
    v21->_aggregationValue = v27;

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __164__HKDataMetadataSubsampleSection_initWithSample_workoutActivity_subSampleTypes_showOnlyExertion_healthStore_displayTypeController_unitController_subsampleDelegate___block_invoke;
    v35[3] = &unk_1E81B55A8;
    v36 = v21;
    [(HKDataMetadataSubsampleSection *)v36 _submitSubSampleAggregateQueriesWithCompletion:v35];
  }

  v29 = v21;
LABEL_8:

  return v29;
}

void __164__HKDataMetadataSubsampleSection_initWithSample_workoutActivity_subSampleTypes_showOnlyExertion_healthStore_displayTypeController_unitController_subsampleDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained finishedAggregateQuery];
}

- (void)_updateAggregateValue:(id)a3 sampleType:(id)a4 aggregateQueryFinishedBlock:(id)a5
{
  aggregationValue = self->_aggregationValue;
  v8 = a5;
  [(NSMutableDictionary *)aggregationValue setObject:a3 forKey:a4];
  v8[2]();
}

- (id)_formattedValueWithUnits:(id)a3 sampleType:(id)a4
{
  displayTypeController = self->_displayTypeController;
  v7 = a3;
  v8 = [(HKDisplayTypeController *)displayTypeController displayTypeForObjectType:a4];
  v9 = [(HKUnitPreferenceController *)self->_unitController unitForDisplayType:v8];
  [v7 doubleValueForUnit:v9];
  v11 = v10;

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v13 = HKFormattedStringFromValueForContext(v12, v8, self->_unitController, 0, 0, 1);
  v14 = [(HKUnitPreferenceController *)self->_unitController localizedDisplayNameForDisplayType:v8];
  if (v14)
  {
    v15 = HKFormatValueAndUnit(v13, v14);
  }

  else
  {
    v15 = v13;
  }

  v16 = v15;

  return v16;
}

- (id)_subSampleAggregatePredicate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_subsampleDelegate);
  v6 = [WeakRetained defaultPredicateForSampleType:v4];

  v7 = [(HKSample *)self->_sample subSamplePredicate];
  v8 = HKUIPredicateMatchingPredicates(v6, v7);

  return v8;
}

- (void)_submitSumAggregateQueryForQuantityType:(id)a3 aggregateQueryFinishedBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKDataMetadataSubsampleSection *)self _subSampleAggregatePredicate:v6];
  v9 = objc_alloc(MEMORY[0x1E696C4E0]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __102__HKDataMetadataSubsampleSection__submitSumAggregateQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke;
  v13[3] = &unk_1E81BB6A8;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [v9 initWithQuantityType:v11 quantitySamplePredicate:v8 options:16 completionHandler:v13];
  [(HKHealthStore *)self->_healthStore executeQuery:v12];
  [(NSMutableDictionary *)self->_aggregationValue setObject:@" " forKey:v11];
}

void __102__HKDataMetadataSubsampleSection__submitSumAggregateQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 sumQuantity];
  v5 = [*(a1 + 32) _formattedValueWithUnits:v4 sampleType:*(a1 + 40)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__HKDataMetadataSubsampleSection__submitSumAggregateQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke_2;
  v8[3] = &unk_1E81B5FD0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 48);
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (void)_submitAverageAggregateQueryForQuantityType:(id)a3 aggregateQueryFinishedBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKDataMetadataSubsampleSection *)self _subSampleAggregatePredicate:v6];
  v9 = objc_alloc(MEMORY[0x1E696C4E0]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__HKDataMetadataSubsampleSection__submitAverageAggregateQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke;
  v13[3] = &unk_1E81BB6A8;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [v9 initWithQuantityType:v11 quantitySamplePredicate:v8 options:2 completionHandler:v13];
  [(HKHealthStore *)self->_healthStore executeQuery:v12];
  [(NSMutableDictionary *)self->_aggregationValue setObject:@" " forKey:v11];
}

void __106__HKDataMetadataSubsampleSection__submitAverageAggregateQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 averageQuantity];
  v5 = [*(a1 + 32) _formattedValueWithUnits:v4 sampleType:*(a1 + 40)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __106__HKDataMetadataSubsampleSection__submitAverageAggregateQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke_2;
  v8[3] = &unk_1E81B5FD0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 48);
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (void)_submitSingleValueQueryForQuantityType:(id)a3 aggregateQueryFinishedBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKDataMetadataSubsampleSection *)self _subSampleAggregatePredicate:v6];
  v9 = objc_alloc(MEMORY[0x1E696C3C8]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__HKDataMetadataSubsampleSection__submitSingleValueQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke;
  v13[3] = &unk_1E81B5A88;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [v9 initWithSampleType:v11 predicate:v8 limit:1 sortDescriptors:0 resultsHandler:v13];
  [(HKHealthStore *)self->_healthStore executeQuery:v12];
  [(NSMutableDictionary *)self->_aggregationValue setObject:@" " forKey:v11];
}

void __101__HKDataMetadataSubsampleSection__submitSingleValueQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 firstObject];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 quantity];
    v7 = [*(a1 + 32) _formattedValueWithUnits:v6 sampleType:*(a1 + 40)];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __101__HKDataMetadataSubsampleSection__submitSingleValueQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke_2;
    v10[3] = &unk_1E81B5FD0;
    v8 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v7;
    v12 = v8;
    v13 = *(a1 + 48);
    v9 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

- (void)_submitMaximumValueQueryForQuantityType:(id)a3 aggregateQueryFinishedBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKDataMetadataSubsampleSection *)self _subSampleAggregatePredicate:v6];
  v9 = objc_alloc(MEMORY[0x1E696C4E0]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __102__HKDataMetadataSubsampleSection__submitMaximumValueQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke;
  v13[3] = &unk_1E81BB6A8;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [v9 initWithQuantityType:v11 quantitySamplePredicate:v8 options:8 completionHandler:v13];
  [(HKHealthStore *)self->_healthStore executeQuery:v12];
  [(NSMutableDictionary *)self->_aggregationValue setObject:@" " forKey:v11];
}

void __102__HKDataMetadataSubsampleSection__submitMaximumValueQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 maximumQuantity];
  v5 = [*(a1 + 32) _formattedValueWithUnits:v4 sampleType:*(a1 + 40)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__HKDataMetadataSubsampleSection__submitMaximumValueQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke_2;
  v8[3] = &unk_1E81B5FD0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 48);
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (void)_submitRangeValueQueryForQuantityType:(id)a3 aggregateQueryFinishedBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKDataMetadataSubsampleSection *)self _subSampleAggregatePredicate:v6];
  v9 = objc_alloc(MEMORY[0x1E696C4E0]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__HKDataMetadataSubsampleSection__submitRangeValueQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke;
  v13[3] = &unk_1E81BB6A8;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [v9 initWithQuantityType:v11 quantitySamplePredicate:v8 options:12 completionHandler:v13];
  [(HKHealthStore *)self->_healthStore executeQuery:v12];
  [(NSMutableDictionary *)self->_aggregationValue setObject:@" " forKey:v11];
}

void __100__HKDataMetadataSubsampleSection__submitRangeValueQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 maximumQuantity];
  v6 = [v4 minimumQuantity];

  v7 = [*(*(a1 + 32) + 48) displayTypeForObjectType:*(a1 + 40)];
  v8 = [*(*(a1 + 32) + 56) unitForDisplayType:v7];
  v9 = MEMORY[0x1E696AD98];
  [v5 doubleValueForUnit:v8];
  v10 = [v9 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [v6 doubleValueForUnit:v8];
  v12 = [v11 numberWithDouble:?];
  v13 = objc_alloc_init(HKInteractiveChartNumberRangeFormatter);
  v14 = [(HKInteractiveChartNumberRangeFormatter *)v13 stringForMinimumValue:v12 maximumValue:v10 displayType:v7 unitPreferenceController:*(*(a1 + 32) + 56)];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__HKDataMetadataSubsampleSection__submitRangeValueQueryForQuantityType_aggregateQueryFinishedBlock___block_invoke_2;
  v17[3] = &unk_1E81B5FD0;
  v15 = *(a1 + 40);
  v17[4] = *(a1 + 32);
  v18 = v14;
  v19 = v15;
  v20 = *(a1 + 48);
  v16 = v14;
  dispatch_async(MEMORY[0x1E69E96A0], v17);
}

- (void)_submitCountStandHourQueryForSampleType:(id)a3 aggregateQueryFinishedBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__HKDataMetadataSubsampleSection__submitCountStandHourQueryForSampleType_aggregateQueryFinishedBlock___block_invoke;
  aBlock[3] = &unk_1E81B5A88;
  aBlock[4] = self;
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  v10 = _Block_copy(aBlock);
  v11 = [(HKDataMetadataSubsampleSection *)self _subSampleAggregatePredicate:v9];
  v12 = [objc_alloc(MEMORY[0x1E696C3C8]) initWithSampleType:v9 predicate:v11 limit:0 sortDescriptors:0 resultsHandler:v10];
  [(HKHealthStore *)self->_healthStore executeQuery:v12];
  [(NSMutableDictionary *)self->_aggregationValue setObject:@" " forKey:v9];
}

void __102__HKDataMetadataSubsampleSection__submitCountStandHourQueryForSampleType_aggregateQueryFinishedBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [*(*(a1 + 32) + 16) startDate];
    v6 = [*(*(a1 + 32) + 16) endDate];
    v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v7 setHour:1];
    v19 = v6;
    v20 = v5;
    v8 = [MEMORY[0x1E696C660] calculateIncludedValuesWithSamples:v4 startDate:v5 endDate:v6 intervalComponents:v7];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [v8 objectForKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
          v11 += [v14 containsObject:&unk_1F4384780];
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v16 = HKLocalizedStringForNumberWithTemplate(v15, 1);

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__HKDataMetadataSubsampleSection__submitCountStandHourQueryForSampleType_aggregateQueryFinishedBlock___block_invoke_305;
    block[3] = &unk_1E81B5FD0;
    v17 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v22 = v16;
    v23 = v17;
    v24 = *(a1 + 48);
    v18 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_submitSubSampleAggregateQueriesWithCompletion:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = self;
  v4 = self->_subSampleTypes;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v26 = *v28;
    v7 = *MEMORY[0x1E696BE20];
    v8 = *MEMORY[0x1E696BD18];
    v23 = *MEMORY[0x1E696B560];
    v24 = *MEMORY[0x1E696BD18];
    v9 = 0x1E696C000uLL;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v26)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = [*(v9 + 880) quantityTypeForIdentifier:v7];
        if (([v11 isEqual:v12] & 1) == 0)
        {
          [*(v9 + 880) quantityTypeForIdentifier:v8];
          v14 = v13 = v9;
          v15 = [v11 isEqual:v14];

          v9 = v13;
          if (v15)
          {
            goto LABEL_15;
          }

          v16 = v4;
          v12 = [MEMORY[0x1E696C2E0] categoryTypeForIdentifier:v23];
          v17 = [v11 identifier];
          v18 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:v17];
          if (v18)
          {
            v19 = [(NSMutableDictionary *)v25->_aggregationValue objectForKey:v11];
            if (!v19)
            {
              v20 = [v11 associatedSampleAggregationStyle];
              if (v20 <= 2)
              {
                if (v20 == 1)
                {
                  [(HKDataMetadataSubsampleSection *)v25 _submitSumAggregateQueryForQuantityType:v18 aggregateQueryFinishedBlock:v22];
                }

                else if (v20 == 2)
                {
                  [(HKDataMetadataSubsampleSection *)v25 _submitAverageAggregateQueryForQuantityType:v18 aggregateQueryFinishedBlock:v22];
                }
              }

              else
              {
                switch(v20)
                {
                  case 3:
                    [(HKDataMetadataSubsampleSection *)v25 _submitSingleValueQueryForQuantityType:v18 aggregateQueryFinishedBlock:v22];
                    break;
                  case 4:
                    [(HKDataMetadataSubsampleSection *)v25 _submitMaximumValueQueryForQuantityType:v18 aggregateQueryFinishedBlock:v22];
                    break;
                  case 5:
                    [(HKDataMetadataSubsampleSection *)v25 _submitRangeValueQueryForQuantityType:v18 aggregateQueryFinishedBlock:v22];
                    break;
                }
              }
            }

            v9 = v13;
          }

          else if ([v12 isEqual:v11])
          {
            [(HKDataMetadataSubsampleSection *)v25 _submitCountStandHourQueryForSampleType:v11 aggregateQueryFinishedBlock:v22];
          }

          v4 = v16;
          v8 = v24;
        }

LABEL_15:
        ++v10;
      }

      while (v6 != v10);
      v21 = [(NSArray *)v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v6 = v21;
    }

    while (v21);
  }

  [(HKDataMetadataSubsampleSection *)v25 _submitRateOfExertionFixedValuesWithDisplayTypeController:v25->_displayTypeController unitController:v25->_unitController healthStore:v25->_healthStore finishedBlock:v22];
}

- (id)_subSampleTypesWithoutWorkoutEffort
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_subSampleTypes];
  v3 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BE20]];
  [v2 removeObject:v3];

  v4 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BD18]];
  [v2 removeObject:v4];

  return v2;
}

- (void)_submitRateOfExertionFixedValuesWithDisplayTypeController:(id)a3 unitController:(id)a4 healthStore:(id)a5 finishedBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HKDataMetadataSubsampleSection *)self sample];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __133__HKDataMetadataSubsampleSection__submitRateOfExertionFixedValuesWithDisplayTypeController_unitController_healthStore_finishedBlock___block_invoke;
    v16[3] = &unk_1E81B7B20;
    v16[4] = self;
    v17 = v13;
    [(HKDataMetadataSubsampleSection *)self _exertionFixedValuesDisplayTypeController:v10 unitController:v11 healthStore:v12 completion:v16];
  }
}

void __133__HKDataMetadataSubsampleSection__submitRateOfExertionFixedValuesWithDisplayTypeController_unitController_healthStore_finishedBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    if (v6)
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x1E696B9A8];
      if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_ERROR))
      {
        __133__HKDataMetadataSubsampleSection__submitRateOfExertionFixedValuesWithDisplayTypeController_unitController_healthStore_finishedBlock___block_invoke_cold_1(v7, v17);
      }
    }

    v18 = *(a1 + 32);
    goto LABEL_11;
  }

  _HKInitializeLogging();
  v8 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v22 = 138543618;
    v23 = v9;
    v24 = 1024;
    v25 = [v5 count];
    _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetched %i exertion values.", &v22, 0x12u);
  }

  v11 = [v5 count];
  v12 = *(a1 + 32);
  if (!v11)
  {
    v18 = *(a1 + 32);
LABEL_11:
    v19 = [v18 _subSampleTypesWithoutWorkoutEffort];
    v20 = *(a1 + 32);
    v21 = *(v20 + 32);
    *(v20 + 32) = v19;

    goto LABEL_12;
  }

  v13 = [v5 allKeys];
  v14 = [v12 _mergeTypesForFixedValues:v13 subSampleTypes:*(*(a1 + 32) + 32)];
  v15 = *(a1 + 32);
  v16 = *(v15 + 32);
  *(v15 + 32) = v14;

  [*(*(a1 + 32) + 72) hk_addEntriesFromNonNilDictionary:v5];
LABEL_12:
  (*(*(a1 + 40) + 16))();
}

- (void)_exertionFixedValuesDisplayTypeController:(id)a3 unitController:(id)a4 healthStore:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(HKDataMetadataSubsampleSection *)self sample];
  v13 = MEMORY[0x1E696C378];
  v14 = [v12 UUID];
  v15 = [v13 predicateForObjectWithUUID:v14];

  v16 = objc_alloc(MEMORY[0x1E696C5B0]);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __114__HKDataMetadataSubsampleSection__exertionFixedValuesDisplayTypeController_unitController_healthStore_completion___block_invoke;
  v24 = &unk_1E81BB6D0;
  v25 = self;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v11;
  v20 = [v16 initWithPredicate:v15 anchor:0 options:0 resultsHandler:&v21];
  [(HKHealthStore *)self->_healthStore executeQuery:v20, v21, v22, v23, v24, v25];
}

void __114__HKDataMetadataSubsampleSection__exertionFixedValuesDisplayTypeController_unitController_healthStore_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  [*(*(a1 + 32) + 40) stopQuery:a2];
  if (!v8)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __114__HKDataMetadataSubsampleSection__exertionFixedValuesDisplayTypeController_unitController_healthStore_completion___block_invoke_2;
    block[3] = &unk_1E81B6A60;
    v48 = *(a1 + 56);
    v47 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v25 = v48;
    goto LABEL_25;
  }

  if (![v8 count])
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __114__HKDataMetadataSubsampleSection__exertionFixedValuesDisplayTypeController_unitController_healthStore_completion___block_invoke_3;
    v44[3] = &unk_1E81B77A0;
    v45 = *(a1 + 56);
    dispatch_async(MEMORY[0x1E69E96A0], v44);
    v25 = v45;
    goto LABEL_25;
  }

  v34 = v9;
  v35 = v8;
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  v13 = *v41;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v41 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v40 + 1) + 8 * i);
      v16 = [*(a1 + 32) workoutActivity];
      if (v16)
      {
      }

      else
      {
        v22 = [v15 samples];

        if (v22)
        {
          goto LABEL_14;
        }
      }

      v17 = [*(a1 + 32) workoutActivity];
      if (v17)
      {
        v18 = v17;
        v19 = [*(a1 + 32) workoutActivity];
        v20 = [v15 activity];
        v21 = [v19 isEqual:v20];

        if (v21)
        {
LABEL_14:
          v23 = [v15 samples];
          [v36 addObjectsFromArray:v23];

          continue;
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v40 objects:v53 count:16];
  }

  while (v12);
LABEL_17:

  _HKInitializeLogging();
  v24 = *MEMORY[0x1E696B9A8];
  v25 = v36;
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 32);
    *buf = 138543618;
    v50 = v26;
    v51 = 2112;
    v52 = v36;
    _os_log_impl(&dword_1C3942000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetched samples %@", buf, 0x16u);
  }

  v27 = [*(a1 + 32) showOnlyExertion];
  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  v30 = *(a1 + 48);
  if (v27)
  {
    v31 = [v28 _allFixedValuesFromSamples:v36 displayTypeController:v29 unitController:v30];
    [*(a1 + 32) setExertionSamples:v36];
  }

  else
  {
    v31 = [v28 _mostRelevantFixedValuesFromSamples:v36 displayTypeController:v29 unitController:v30];
  }

  v8 = v35;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __114__HKDataMetadataSubsampleSection__exertionFixedValuesDisplayTypeController_unitController_healthStore_completion___block_invoke_313;
  v37[3] = &unk_1E81B6A60;
  v32 = *(a1 + 56);
  v38 = v31;
  v39 = v32;
  v33 = v31;
  dispatch_async(MEMORY[0x1E69E96A0], v37);

  v9 = v34;
LABEL_25:
}

- (id)_allFixedValuesFromSamples:(id)a3 displayTypeController:(id)a4 unitController:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696C2E0] dataTypeWithCode:304];
  v12 = [MEMORY[0x1E696C2E0] dataTypeWithCode:298];
  v13 = [HKExertionUtilities filterSamplesOfExertionTypeCode:304 fromExertionSamples:v8];
  v22 = v11;
  v14 = [(HKDataMetadataSubsampleSection *)self _fixedValuesfromSamples:v13 ofExertionType:v11 displayTypeController:v9 unitController:v10];
  _HKInitializeLogging();
  v15 = MEMORY[0x1E696B9A8];
  v16 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = self;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_1C3942000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received effort %@", buf, 0x16u);
  }

  v17 = [HKExertionUtilities filterSamplesOfExertionTypeCode:298 fromExertionSamples:v8];
  v18 = [(HKDataMetadataSubsampleSection *)self _fixedValuesfromSamples:v17 ofExertionType:v12 displayTypeController:v9 unitController:v10];
  _HKInitializeLogging();
  v19 = *v15;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = self;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&dword_1C3942000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received estimated %@", buf, 0x16u);
  }

  v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  [v20 hk_addEntriesFromNonNilDictionary:v14];
  [v20 hk_addEntriesFromNonNilDictionary:v18];

  return v20;
}

- (id)_fixedValuesfromSamples:(id)a3 ofExertionType:(id)a4 displayTypeController:(id)a5 unitController:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = MEMORY[0x1E696AD98];
        v19 = [*(*(&v25 + 1) + 8 * i) quantity];
        [v19 _value];
        v20 = [v18 numberWithDouble:?];

        v21 = [(HKDataMetadataSubsampleSection *)self _formattedDisplayValueFromValue:v20 exertionType:v11 displayTypeController:v12 unitController:v13];
        if (v21)
        {
          [v24 setObject:v21 forKey:v11];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  return v24;
}

- (id)_mostRelevantFixedValuesFromSamples:(id)a3 displayTypeController:(id)a4 unitController:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  _HKInitializeLogging();
  v11 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = self;
    _os_log_impl(&dword_1C3942000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finding most relevant sample", buf, 0xCu);
  }

  v12 = [MEMORY[0x1E696C2E0] dataTypeWithCode:304];
  v13 = [MEMORY[0x1E696C2E0] dataTypeWithCode:298];
  v24 = [HKExertionUtilities filterSamplesOfExertionTypeCode:304 fromExertionSamples:v10];
  v14 = [HKExertionUtilities mostRelevantValueFromExertionSamples:?];
  v15 = [HKExertionUtilities filterSamplesOfExertionTypeCode:298 fromExertionSamples:v10];

  v16 = [HKExertionUtilities mostRelevantValueFromExertionSamples:v15];
  v17 = [(HKDataMetadataSubsampleSection *)self _formattedDisplayValueFromValue:v14 exertionType:v12 displayTypeController:v9 unitController:v8];
  v18 = [(HKDataMetadataSubsampleSection *)self _formattedDisplayValueFromValue:v16 exertionType:v13 displayTypeController:v9 unitController:v8];

  _HKInitializeLogging();
  v19 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v26 = self;
    v27 = 2112;
    v28 = v17;
    v29 = 2112;
    v30 = v18;
    _os_log_impl(&dword_1C3942000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Most relevant workout effort %@ and estimated value %@", buf, 0x20u);
  }

  v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  if (v17)
  {
    v21 = [(HKDataMetadataSubsampleSection *)self _localizedWorkoutEffortRatingFromValue:v14 stringValue:v17];
    [v20 setObject:v21 forKey:v12];
  }

  if (v18)
  {
    v22 = [(HKDataMetadataSubsampleSection *)self _localizedWorkoutEffortRatingFromValue:v16 stringValue:v18];
    [v20 setObject:v22 forKey:v13];
  }

  return v20;
}

- (id)_localizedWorkoutEffortRatingFromValue:(id)a3 stringValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 intValue] > 3)
  {
    if ([v5 intValue] > 6)
    {
      v11 = [v5 intValue];
      v7 = MEMORY[0x1E696AEC0];
      v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v9 = v8;
      if (v11 > 8)
      {
        v10 = @"%@_WORKOUT_LOAD_ALLOUT";
      }

      else
      {
        v10 = @"%@_WORKOUT_LOAD_HARD";
      }
    }

    else
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v9 = v8;
      v10 = @"%@_WORKOUT_LOAD_MODERATE";
    }
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v8;
    v10 = @"%@_WORKOUT_LOAD_EASY";
  }

  v12 = [v8 localizedStringForKey:v10 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v13 = [v7 stringWithFormat:v12, v6];

  return v13;
}

- (id)_formattedDisplayValueFromValue:(id)a3 exertionType:(id)a4 displayTypeController:(id)a5 unitController:(id)a6
{
  if (a3)
  {
    v9 = a6;
    v10 = a3;
    v11 = [a5 displayTypeForObjectType:a4];
    v12 = [v9 unitForDisplayType:v11];
    v13 = [v11 hk_numberFormatterForUnit:v12];
    v14 = [v13 stringFromNumber:v10 displayType:v11 unitController:v9];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4
{
  subSampleTypes = self->_subSampleTypes;
  v7 = a4;
  v8 = [(NSArray *)subSampleTypes objectAtIndex:a3];
  v9 = [(NSMutableDictionary *)self->_aggregationValue objectForKey:v8];
  v10 = [v7 dequeueReusableCellWithIdentifier:@"sub_samples"];

  if (!v10)
  {
    v10 = [[HKDataMetadataSimpleTableViewCell alloc] initWithReuseIdentifier:@"sub_samples"];
    [(HKDataMetadataSimpleTableViewCell *)v10 setAccessoryType:1];
  }

  v11 = [objc_opt_class() displayNameForSampleType:v8 displayTypeController:self->_displayTypeController];
  v12 = [v8 associatedSampleAggregationStyle];
  v13 = 0;
  if (v12 <= 2)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v16 = v15;
        v17 = @"SUBSAMPLE_TYPE_TOTAL %@";
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_16;
        }

        v14 = MEMORY[0x1E696AEC0];
        v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v16 = v15;
        v17 = @"SUBSAMPLE_TYPE_AVERAGE %@";
      }

      goto LABEL_15;
    }

LABEL_11:
    v13 = v11;
    goto LABEL_16;
  }

  switch(v12)
  {
    case 5:
      v14 = MEMORY[0x1E696AEC0];
      v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v16 = v15;
      v17 = @"%@ SUBSAMPLE_TYPE_RANGE";
      break;
    case 4:
      v14 = MEMORY[0x1E696AEC0];
      v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v16 = v15;
      v17 = @"SUBSAMPLE_TYPE_MAXIMUM %@";
      break;
    case 3:
      goto LABEL_11;
    default:
      goto LABEL_16;
  }

LABEL_15:
  v18 = [v15 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v13 = [v14 stringWithFormat:v18, v11];

LABEL_16:
  v19 = [(HKDataMetadataSimpleTableViewCell *)v10 titleTextLabel];
  v20 = v19;
  if (v9)
  {
    [v19 setText:v9];

    v19 = [(HKDataMetadataSimpleTableViewCell *)v10 subtitleTextLabel];
    v20 = v19;
    v21 = v13;
  }

  else
  {
    v21 = v11;
  }

  [v19 setText:v21];

  return v10;
}

- (void)selectCellForIndex:(unint64_t)a3 navigationController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v14 = a4;
  if ([(HKDataMetadataSubsampleSection *)self showOnlyExertion])
  {
    v8 = [(HKDataMetadataSubsampleSection *)self exertionSamples];
    v9 = [v8 objectAtIndexedSubscript:a3];

    WeakRetained = objc_loadWeakRetained(&self->_subsampleDelegate);
    v11 = [WeakRetained viewControllerForSampleSelected:v9];
  }

  else
  {
    v9 = [(NSArray *)self->_subSampleTypes objectAtIndex:a3];
    WeakRetained = [(HKDataMetadataSubsampleSection *)self _subSamplePredicateOnSelectCellForSampleType:v9];
    v12 = [objc_opt_class() displayNameForSampleType:v9 displayTypeController:self->_displayTypeController];
    v13 = objc_loadWeakRetained(&self->_subsampleDelegate);
    v11 = [v13 viewControllerForSampleType:v9 subSamplePredicate:WeakRetained title:v12];
  }

  if (v11)
  {
    [v14 hk_showViewController:v11 animated:v5];
  }
}

- (id)_mergeTypesForFixedValues:(id)a3 subSampleTypes:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:a4];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (([v7 containsObject:{v13, v16}] & 1) == 0)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [(HKDataMetadataSubsampleSection *)self _trimAndSortSampleTypes:v7];

  return v14;
}

- (id)_trimAndSortSampleTypes:(id)a3
{
  v4 = MEMORY[0x1E696AE18];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__HKDataMetadataSubsampleSection__trimAndSortSampleTypes___block_invoke;
  v12[3] = &unk_1E81BB6F8;
  v12[4] = self;
  v5 = a3;
  v6 = [v4 predicateWithBlock:v12];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__HKDataMetadataSubsampleSection__trimAndSortSampleTypes___block_invoke_2;
  v11[3] = &unk_1E81BB720;
  v11[4] = self;
  v8 = _Block_copy(v11);
  v9 = [v7 sortedArrayUsingComparator:v8];

  return v9;
}

BOOL __58__HKDataMetadataSubsampleSection__trimAndSortSampleTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 48) displayTypeForObjectType:a2];
  v3 = v2 != 0;

  return v3;
}

uint64_t __58__HKDataMetadataSubsampleSection__trimAndSortSampleTypes___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [objc_opt_class() displayNameForSampleType:v6 displayTypeController:*(*(a1 + 32) + 48)];

  v8 = [objc_opt_class() displayNameForSampleType:v5 displayTypeController:*(*(a1 + 32) + 48)];

  v9 = [v7 compare:v8];
  return v9;
}

- (id)_subSamplePredicateOnSelectCellForSampleType:(id)a3
{
  v4 = a3;
  if ([v4 code] == 298 || objc_msgSend(v4, "code") == 304)
  {
    v5 = [(HKSample *)self->_sample subExertionSamplePredicate];
  }

  else
  {
    v5 = [(HKSample *)self->_sample subSamplePredicate];
  }

  v6 = v5;

  return v6;
}

+ (id)displayNameForSampleType:(id)a3 displayTypeController:(id)a4
{
  v4 = [a4 displayTypeForObjectType:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 localization];
    v7 = [v6 displayName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HKDataMetadataSubsampleDelegate)subsampleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_subsampleDelegate);

  return WeakRetained;
}

void __133__HKDataMetadataSubsampleSection__submitRateOfExertionFixedValuesWithDisplayTypeController_unitController_healthStore_finishedBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch rating of exertion samples: %@", &v2, 0xCu);
}

@end