@interface HKQuantitySeriesDataProvider
- (HKQuantitySeriesDataProvider)initWithSample:(id)sample healthStore:(id)store;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)textForQuantity:(id)quantity;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)commitDeletionsIfNeeded;
- (void)deleteQuantity:(id)quantity;
- (void)queryForSubsamples:(id)subsamples;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
@end

@implementation HKQuantitySeriesDataProvider

- (HKQuantitySeriesDataProvider)initWithSample:(id)sample healthStore:(id)store
{
  sampleCopy = sample;
  storeCopy = store;
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
    [(HKQuantitySeriesDataProvider *)v8 setParentSample:sampleCopy];
    [(HKQuantitySeriesDataProvider *)v9 setHealthStore:storeCopy];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(HKQuantitySeriesDataProvider *)v9 setQuantities:v10];

    v11 = [objc_alloc(MEMORY[0x1E696C360]) initWithHealthStore:v9->_healthStore quantitySample:v9->_parentSample];
    [(HKQuantitySeriesDataProvider *)v9 setEditor:v11];

    [(HKQuantitySeriesDataProvider *)v9 setHasSubsamplesToRemove:0];
  }

  return v9;
}

- (id)textForQuantity:(id)quantity
{
  quantityCopy = quantity;
  displayTypeController = [(HKQuantitySeriesDataProvider *)self displayTypeController];
  parentSample = [(HKQuantitySeriesDataProvider *)self parentSample];
  sampleType = [parentSample sampleType];
  v8 = [displayTypeController displayTypeForObjectType:sampleType];

  unitController = [(HKQuantitySeriesDataProvider *)self unitController];
  v10 = [unitController unitForDisplayType:v8];

  quantity = [quantityCopy quantity];

  [quantity doubleValueForUnit:v10];
  v13 = v12;

  presentation = [v8 presentation];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v16 = [presentation adjustedValueForDaemonValue:v15];

  unitController2 = [(HKQuantitySeriesDataProvider *)self unitController];
  v18 = HKFormattedStringFromValueForContext(v16, v8, unitController2, 0, 0, 1);

  unitController3 = [(HKQuantitySeriesDataProvider *)self unitController];
  v20 = HKFormatterIncludesUnitForDisplayTypeInContext(v8, 1, unitController3);

  if (v20)
  {
    v21 = v18;
  }

  else
  {
    unitController4 = [(HKQuantitySeriesDataProvider *)self unitController];
    v23 = [unitController4 localizedDisplayNameForDisplayType:v8 value:v16];

    if ([v8 displayTypeIdentifier] == 2)
    {
      footUnit = [MEMORY[0x1E696C510] footUnit];
      v25 = [v10 isEqual:footUnit];

      if (v25)
      {

        v23 = &stru_1F42FFBE0;
      }
    }

    v21 = HKFormatValueAndUnit(v18, v23);
  }

  return v21;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[HKQuantitySeriesTableViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  quantities = [(HKQuantitySeriesDataProvider *)self quantities];
  v11 = [pathCopy row];

  v12 = [quantities objectAtIndex:v11];

  v13 = [(HKQuantitySeriesDataProvider *)self textForQuantity:v12];
  textLabel = [v9 textLabel];
  [textLabel setText:v13];

  v15 = HKDateFormatterFromTemplate(32);
  dateInterval = [v12 dateInterval];
  startDate = [dateInterval startDate];
  v18 = [v15 stringFromDate:startDate];
  detailTextLabel = [v9 detailTextLabel];
  [detailTextLabel setText:v18];

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(HKQuantitySeriesDataProvider *)self quantities:view];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    pathCopy = path;
    viewCopy = view;
    quantities = [(HKQuantitySeriesDataProvider *)self quantities];
    v13 = [quantities objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    [(HKQuantitySeriesDataProvider *)self deleteQuantity:v13];
    quantities2 = [(HKQuantitySeriesDataProvider *)self quantities];
    v12 = [pathCopy row];

    [quantities2 removeObjectAtIndex:v12];
    [viewCopy reloadData];
  }
}

- (void)queryForSubsamples:(id)subsamples
{
  subsamplesCopy = subsamples;
  parentSample = [(HKQuantitySeriesDataProvider *)self parentSample];
  sampleType = [parentSample sampleType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"Sample type is not an HKQuantitySample" format:@"Must be an HKQuantitySample to use the quantity series data provider"];
  }

  parentSample2 = [(HKQuantitySeriesDataProvider *)self parentSample];
  sampleType2 = [parentSample2 sampleType];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = MEMORY[0x1E696C378];
  parentSample3 = [(HKQuantitySeriesDataProvider *)self parentSample];
  uUID = [parentSample3 UUID];
  v14 = [v11 predicateForObjectWithUUID:uUID];

  objc_initWeak(&location, self);
  v15 = objc_alloc(MEMORY[0x1E696C368]);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __51__HKQuantitySeriesDataProvider_queryForSubsamples___block_invoke;
  v23 = &unk_1E81B76D8;
  v16 = v10;
  v24 = v16;
  objc_copyWeak(&v26, &location);
  v17 = subsamplesCopy;
  v25 = v17;
  v18 = [v15 initWithQuantityType:sampleType2 predicate:v14 quantityHandler:&v20];
  [v18 setIncludeSample:{0, v20, v21, v22, v23}];
  [v18 setOrderByQuantitySampleStartDate:1];
  healthStore = [(HKQuantitySeriesDataProvider *)self healthStore];
  [healthStore executeQuery:v18];

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

- (void)deleteQuantity:(id)quantity
{
  quantityCopy = quantity;
  editor = [(HKQuantitySeriesDataProvider *)self editor];
  dateInterval = [quantityCopy dateInterval];

  v9 = 0;
  [editor removeQuantityForDateInterval:dateInterval error:&v9];
  v7 = v9;

  [(HKQuantitySeriesDataProvider *)self setHasSubsamplesToRemove:1];
  if (v7)
  {
    editor2 = [(HKQuantitySeriesDataProvider *)self editor];
    [editor2 discard];

    [(HKQuantitySeriesDataProvider *)self setHasSubsamplesToRemove:0];
  }
}

- (void)commitDeletionsIfNeeded
{
  if ([(HKQuantitySeriesDataProvider *)self hasSubsamplesToRemove])
  {
    editor = [(HKQuantitySeriesDataProvider *)self editor];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __55__HKQuantitySeriesDataProvider_commitDeletionsIfNeeded__block_invoke;
    v4[3] = &unk_1E81B7700;
    v4[4] = self;
    [editor commitWithCompletion:v4];
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