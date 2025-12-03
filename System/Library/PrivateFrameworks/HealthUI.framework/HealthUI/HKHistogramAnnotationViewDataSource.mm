@interface HKHistogramAnnotationViewDataSource
- (HKHistogramAnnotationViewDataSource)initWithFormatter:(id)formatter;
- (id)valueViewForColumnAtIndex:(int64_t)index orientation:(int64_t)orientation;
- (int64_t)numberOfValuesForAnnotationView:(id)view;
- (void)updateWithPointSelectionContexts:(id)contexts;
@end

@implementation HKHistogramAnnotationViewDataSource

- (HKHistogramAnnotationViewDataSource)initWithFormatter:(id)formatter
{
  formatterCopy = formatter;
  v11.receiver = self;
  v11.super_class = HKHistogramAnnotationViewDataSource;
  v6 = [(HKHistogramAnnotationViewDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_formatter, formatter);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    keyValuePairs = v7->_keyValuePairs;
    v7->_keyValuePairs = v8;
  }

  return v7;
}

- (void)updateWithPointSelectionContexts:(id)contexts
{
  v37 = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  keyValuePairs = [(HKHistogramAnnotationViewDataSource *)self keyValuePairs];
  [keyValuePairs removeAllObjects];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = contextsCopy;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        userInfo = [*(*(&v31 + 1) + 8 * v11) userInfo];
        [v6 addObjectsFromArray:userInfo];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  v26 = v7;

  formatter = [(HKHistogramAnnotationViewDataSource *)self formatter];
  v14 = [formatter formattedSelectedRangeLabelDataWithChartData:v6 context:0];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        v21 = objc_alloc_init(HKInteractiveChartAnnotationViewKeyValueLabel);
        keyLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v21 keyLabel];
        [keyLabel setSelectedRangeData:v20];

        valueLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v21 valueLabel];
        attributedString = [v20 attributedString];
        [valueLabel setAttributedText:attributedString];

        keyValuePairs2 = [(HKHistogramAnnotationViewDataSource *)self keyValuePairs];
        [keyValuePairs2 addObject:v21];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v17);
  }
}

- (int64_t)numberOfValuesForAnnotationView:(id)view
{
  keyValuePairs = [(HKHistogramAnnotationViewDataSource *)self keyValuePairs];
  v4 = [keyValuePairs count];

  return v4;
}

- (id)valueViewForColumnAtIndex:(int64_t)index orientation:(int64_t)orientation
{
  keyValuePairs = [(HKHistogramAnnotationViewDataSource *)self keyValuePairs];
  v7 = [keyValuePairs objectAtIndexedSubscript:index];

  if (orientation)
  {
    if (orientation != 1)
    {
      goto LABEL_6;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  [v7 setOrientation:v8];
LABEL_6:

  return v7;
}

@end