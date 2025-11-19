@interface HKQuantitySeriesDataProvider
- (HKQuantitySeriesDataProvider)initWithSample:(id)a3 healthStore:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)textForQuantity:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)commitDeletionsIfNeeded;
- (void)deleteQuantity:(id)a3;
- (void)queryForSubsamples:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
@end

@implementation HKQuantitySeriesDataProvider

- (HKQuantitySeriesDataProvider)initWithSample:(id)a3 healthStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"Sample type is not an HKQuantitySample" format:@"Must be an HKQuantitySample to use the quantity series data provider"];
  }

  v13.receiver = self;
  v13.super_class = HKQuantitySeriesDataProvider;
  v8 = [(HKQuantitySeriesDataProvider *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(HKQuantitySeriesDataProvider *)v8 setParentSample:v6];
    [(HKQuantitySeriesDataProvider *)v9 setHealthStore:v7];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(HKQuantitySeriesDataProvider *)v9 setQuantities:v10];

    v11 = [objc_alloc(MEMORY[0x1E696C360]) initWithHealthStore:v9->_healthStore quantitySample:v9->_parentSample];
    [(HKQuantitySeriesDataProvider *)v9 setEditor:v11];

    [(HKQuantitySeriesDataProvider *)v9 setHasSubsamplesToRemove:0];
  }

  return v9;
}

- (id)textForQuantity:(id)a3
{
  v4 = a3;
  v5 = [(HKQuantitySeriesDataProvider *)self displayTypeController];
  v6 = [(HKQuantitySeriesDataProvider *)self parentSample];
  v7 = [v6 sampleType];
  v8 = [v5 displayTypeForObjectType:v7];

  v9 = [(HKQuantitySeriesDataProvider *)self unitController];
  v10 = [v9 unitForDisplayType:v8];

  v11 = [v4 quantity];

  [v11 doubleValueForUnit:v10];
  v13 = v12;

  v14 = [v8 presentation];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v16 = [v14 adjustedValueForDaemonValue:v15];

  v17 = [(HKQuantitySeriesDataProvider *)self unitController];
  v18 = HKFormattedStringFromValueForContext(v16, v8, v17, 0, 0, 1);

  v19 = [(HKQuantitySeriesDataProvider *)self unitController];
  v20 = HKFormatterIncludesUnitForDisplayTypeInContext(v8, 1, v19);

  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v22 = [(HKQuantitySeriesDataProvider *)self unitController];
    v23 = [v22 localizedDisplayNameForDisplayType:v8 value:v16];

    if ([v8 displayTypeIdentifier] == 2)
    {
      v24 = [MEMORY[0x1E696C510] footUnit];
      v25 = [v10 isEqual:v24];

      if (v25)
      {

        v23 = &stru_1F42FFBE0;
      }
    }

    v21 = HKFormatValueAndUnit(v18, v23);
  }

  return v21;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HKQuantitySeriesTableViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [(HKQuantitySeriesDataProvider *)self quantities];
  v11 = [v6 row];

  v12 = [v10 objectAtIndex:v11];

  v13 = [(HKQuantitySeriesDataProvider *)self textForQuantity:v12];
  v14 = [v9 textLabel];
  [v14 setText:v13];

  v15 = HKDateFormatterFromTemplate(32);
  v16 = [v12 dateInterval];
  v17 = [v16 startDate];
  v18 = [v15 stringFromDate:v17];
  v19 = [v9 detailTextLabel];
  [v19 setText:v18];

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(HKQuantitySeriesDataProvider *)self quantities:a3];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v8 = a5;
    v9 = a3;
    v10 = [(HKQuantitySeriesDataProvider *)self quantities];
    v13 = [v10 objectAtIndex:{objc_msgSend(v8, "row")}];

    [(HKQuantitySeriesDataProvider *)self deleteQuantity:v13];
    v11 = [(HKQuantitySeriesDataProvider *)self quantities];
    v12 = [v8 row];

    [v11 removeObjectAtIndex:v12];
    [v9 reloadData];
  }
}

- (void)queryForSubsamples:(id)a3
{
  v4 = a3;
  v5 = [(HKQuantitySeriesDataProvider *)self parentSample];
  v6 = [v5 sampleType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"Sample type is not an HKQuantitySample" format:@"Must be an HKQuantitySample to use the quantity series data provider"];
  }

  v8 = [(HKQuantitySeriesDataProvider *)self parentSample];
  v9 = [v8 sampleType];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = MEMORY[0x1E696C378];
  v12 = [(HKQuantitySeriesDataProvider *)self parentSample];
  v13 = [v12 UUID];
  v14 = [v11 predicateForObjectWithUUID:v13];

  objc_initWeak(&location, self);
  v15 = objc_alloc(MEMORY[0x1E696C368]);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __51__HKQuantitySeriesDataProvider_queryForSubsamples___block_invoke;
  v23 = &unk_1E81B76D8;
  v16 = v10;
  v24 = v16;
  objc_copyWeak(&v26, &location);
  v17 = v4;
  v25 = v17;
  v18 = [v15 initWithQuantityType:v9 predicate:v14 quantityHandler:&v20];
  [v18 setIncludeSample:{0, v20, v21, v22, v23}];
  [v18 setOrderByQuantitySampleStartDate:1];
  v19 = [(HKQuantitySeriesDataProvider *)self healthStore];
  [v19 executeQuery:v18];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __51__HKQuantitySeriesDataProvider_queryForSubsamples___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, void *a7)
{
  v20 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (v13 && v14)
  {
    v17 = [[HKQuantityWrapper alloc] initWithQuantity:v13 dateInterval:v14];
    [*(a1 + 32) addObject:v17];
  }

  if (a6)
  {
    v18 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setQuantities:v18];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)deleteQuantity:(id)a3
{
  v4 = a3;
  v5 = [(HKQuantitySeriesDataProvider *)self editor];
  v6 = [v4 dateInterval];

  v9 = 0;
  [v5 removeQuantityForDateInterval:v6 error:&v9];
  v7 = v9;

  [(HKQuantitySeriesDataProvider *)self setHasSubsamplesToRemove:1];
  if (v7)
  {
    v8 = [(HKQuantitySeriesDataProvider *)self editor];
    [v8 discard];

    [(HKQuantitySeriesDataProvider *)self setHasSubsamplesToRemove:0];
  }
}

- (void)commitDeletionsIfNeeded
{
  if ([(HKQuantitySeriesDataProvider *)self hasSubsamplesToRemove])
  {
    v3 = [(HKQuantitySeriesDataProvider *)self editor];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __55__HKQuantitySeriesDataProvider_commitDeletionsIfNeeded__block_invoke;
    v4[3] = &unk_1E81B7700;
    v4[4] = self;
    [v3 commitWithCompletion:v4];
  }
}

void __55__HKQuantitySeriesDataProvider_commitDeletionsIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v15 = v5;
  if (a3)
  {
    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    v8 = [v7 editor];
    [v8 discard];

    goto LABEL_9;
  }

  if ([v5 count] <= 1)
  {
    [*(a1 + 32) setParentSample:v15];
    v9 = [*(a1 + 32) delegate];
    [v9 sampleDidChange:v15];

    v10 = *(a1 + 32);
LABEL_7:
    v14 = [v10 delegate];
    [v14 reloadSampleData];
    goto LABEL_8;
  }

  v10 = *(a1 + 32);
  if (!v15)
  {
    goto LABEL_7;
  }

  [v10 setParentSample:v15];
  v11 = objc_alloc(MEMORY[0x1E696C360]);
  v12 = [*(a1 + 32) healthStore];
  v13 = [v11 initWithHealthStore:v12 quantitySample:v15];
  [*(a1 + 32) setEditor:v13];

  v14 = [*(a1 + 32) delegate];
  [v14 sampleDidChange:v15];
LABEL_8:

  v6 = (a1 + 32);
LABEL_9:
  [*v6 setHasSubsamplesToRemove:0];
}

@end