@interface HKHistogramAnnotationViewDataSource
- (HKHistogramAnnotationViewDataSource)initWithFormatter:(id)a3;
- (id)valueViewForColumnAtIndex:(int64_t)a3 orientation:(int64_t)a4;
- (int64_t)numberOfValuesForAnnotationView:(id)a3;
- (void)updateWithPointSelectionContexts:(id)a3;
@end

@implementation HKHistogramAnnotationViewDataSource

- (HKHistogramAnnotationViewDataSource)initWithFormatter:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HKHistogramAnnotationViewDataSource;
  v6 = [(HKHistogramAnnotationViewDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_formatter, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    keyValuePairs = v7->_keyValuePairs;
    v7->_keyValuePairs = v8;
  }

  return v7;
}

- (void)updateWithPointSelectionContexts:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKHistogramAnnotationViewDataSource *)self keyValuePairs];
  [v5 removeAllObjects];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v4;
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

        v12 = [*(*(&v31 + 1) + 8 * v11) userInfo];
        [v6 addObjectsFromArray:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  v26 = v7;

  v13 = [(HKHistogramAnnotationViewDataSource *)self formatter];
  v14 = [v13 formattedSelectedRangeLabelDataWithChartData:v6 context:0];

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
        v22 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v21 keyLabel];
        [v22 setSelectedRangeData:v20];

        v23 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v21 valueLabel];
        v24 = [v20 attributedString];
        [v23 setAttributedText:v24];

        v25 = [(HKHistogramAnnotationViewDataSource *)self keyValuePairs];
        [v25 addObject:v21];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v17);
  }
}

- (int64_t)numberOfValuesForAnnotationView:(id)a3
{
  v3 = [(HKHistogramAnnotationViewDataSource *)self keyValuePairs];
  v4 = [v3 count];

  return v4;
}

- (id)valueViewForColumnAtIndex:(int64_t)a3 orientation:(int64_t)a4
{
  v6 = [(HKHistogramAnnotationViewDataSource *)self keyValuePairs];
  v7 = [v6 objectAtIndexedSubscript:a3];

  if (a4)
  {
    if (a4 != 1)
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