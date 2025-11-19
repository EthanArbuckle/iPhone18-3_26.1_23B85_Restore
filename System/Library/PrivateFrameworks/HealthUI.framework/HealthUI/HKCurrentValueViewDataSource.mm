@interface HKCurrentValueViewDataSource
+ (id)defaultStringForValueRange:(id)a3 timeScope:(int64_t)a4;
- (BOOL)_pendingDataForGraphView:(id)a3;
- (HKCurrentValueViewDataSource)initWithDateCache:(id)a3 healthStore:(id)a4 selectedRangeFormatter:(id)a5;
- (HKCurrentValueViewDataSourceDelegate)delegate;
- (id)_dateIntervalStringForGraphView:(id)a3 timeScope:(int64_t)a4;
- (id)_delegateTitleForSelectedRangeData:(id)a3 displayType:(id)a4;
- (id)_delegateValueForSelectedRangeData:(id)a3;
- (id)_delegateValueStringForGraphView:(id)a3 timeScope:(int64_t)a4;
- (id)dateViewWithOrientation:(int64_t)a3;
- (id)valueViewForColumnAtIndex:(int64_t)a3 orientation:(int64_t)a4;
- (int64_t)numberOfValuesForAnnotationView:(id)a3;
- (void)_updateAnnotationLabels:(id)a3 fromRangeData:(id)a4 displayType:(id)a5;
- (void)updateDataSourceWithGraphView:(id)a3 displayType:(id)a4 timeScope:(int64_t)a5;
@end

@implementation HKCurrentValueViewDataSource

- (HKCurrentValueViewDataSource)initWithDateCache:(id)a3 healthStore:(id)a4 selectedRangeFormatter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = HKCurrentValueViewDataSource;
  v12 = [(HKCurrentValueViewDataSource *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_selectedRangeFormatter, a5);
    objc_storeStrong(&v13->_dateCache, a3);
    objc_storeStrong(&v13->_healthStore, a4);
    v13->_pendingData = 0;
    v14 = [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
    [(HKCurrentValueViewDataSource *)v13 setMajorFont:v14];

    v15 = [MEMORY[0x1E69DB878] hk_chartCurrentValueUnitFont];
    [(HKCurrentValueViewDataSource *)v13 setMinorFont:v15];

    v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(HKCurrentValueViewDataSource *)v13 setDateLabelView:v16];

    v17 = [MEMORY[0x1E69DB878] hk_chartCurrentValueDateFont];
    v18 = [(HKCurrentValueViewDataSource *)v13 dateLabelView];
    [v18 setFont:v17];

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(HKCurrentValueViewDataSource *)v13 setAnnotationLabels:v19];
  }

  return v13;
}

- (void)updateDataSourceWithGraphView:(id)a3 displayType:(id)a4 timeScope:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  [(HKCurrentValueViewDataSource *)self setDisplayType:v8];
  v10 = [(HKCurrentValueViewDataSource *)self _dateIntervalStringForGraphView:v9 timeScope:a5];
  [(HKCurrentValueViewDataSource *)self setDateIntervalString:v10];

  v11 = [(HKCurrentValueViewDataSource *)self selectedRangeFormatter];
  v12 = [(HKCurrentValueViewDataSource *)self majorFont];
  v13 = [(HKCurrentValueViewDataSource *)self minorFont];
  v14 = [v11 selectedRangeDataWithGraphView:v9 majorFont:v12 minorFont:v13 displayType:v8 timeScope:a5 context:1];
  [(HKCurrentValueViewDataSource *)self setSelectedRangeData:v14];

  v15 = [(HKCurrentValueViewDataSource *)self _pendingDataForGraphView:v9];
  [(HKCurrentValueViewDataSource *)self setPendingData:v15];
  v16 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  [(HKCurrentValueViewDataSource *)self setTitleColor:v16];

  v17 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  [(HKCurrentValueViewDataSource *)self setValueColor:v17];

  v19 = [(HKCurrentValueViewDataSource *)self annotationLabels];
  v18 = [(HKCurrentValueViewDataSource *)self selectedRangeData];
  [(HKCurrentValueViewDataSource *)self _updateAnnotationLabels:v19 fromRangeData:v18 displayType:v8];
}

- (id)_dateIntervalStringForGraphView:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKCurrentValueViewDataSource *)self _delegateValueStringForGraphView:v6 timeScope:a4];
  v8 = v7;
  if (!v7)
  {
    v9 = [v6 effectiveVisibleRangeActive];
    v8 = [HKCurrentValueViewDataSource defaultStringForValueRange:v9 timeScope:a4];

    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v7 = &stru_1F42FFBE0;
    }
  }

  v10 = v7;

  return v7;
}

- (id)_delegateValueStringForGraphView:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKCurrentValueViewDataSource *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(HKCurrentValueViewDataSource *)self delegate];
    v10 = [v6 effectiveVisibleRangeActive];
    v11 = [v9 stringForValueRange:v10 timeScope:a4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_pendingDataForGraphView:(id)a3
{
  v5 = a3;
  v6 = [v5 primarySeries];
  v7 = [v5 actualVisibleRange];
  v8 = 0;
  if (v7 && v6)
  {
    v9 = [v6 resolutionForTimeScope:objc_msgSend(v5 traitResolution:{"xAxisDateZoom"), objc_msgSend(v5, "resolutionFromTraitCollectionAttributes")}];
    v27 = 0uLL;
    v28 = 0;
    v10 = [v6 dataSource];
    v11 = [v7 minValue];
    v12 = [v5 xAxisDateZoom];
    if (v10)
    {
      [v10 blockPathForX:v11 zoom:v12 resolution:v9];
    }

    else
    {
      v27 = 0uLL;
      v28 = 0;
    }

    v25 = 0uLL;
    v26 = 0;
    v13 = [v6 dataSource];
    v14 = [v7 maxValue];
    v15 = [v5 xAxisDateZoom];
    if (v13)
    {
      [v13 blockPathForX:v14 zoom:v15 resolution:v9];
    }

    else
    {
      v25 = 0uLL;
      v26 = 0;
    }

    v16 = v27;
    v17 = v25;
    if (v27 > v25)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"HKCurrentValueViewDataSource.m" lineNumber:101 description:@"Visible block start should not be greater than visible block end"];

      v16 = v27;
      v17 = v25;
    }

    *&v27 = v16 - 1;
    *&v25 = v17 + 1;
    v18 = [v6 dataSource];
    v23 = v27;
    v24 = v28;
    v21 = v25;
    v22 = v26;
    v8 = [v18 hasPendingQueriesBetweenStartPath:&v23 endPath:&v21];
  }

  return v8;
}

- (void)_updateAnnotationLabels:(id)a3 fromRangeData:(id)a4 displayType:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v29 = a5;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v28 = *v31;
    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        if (v12 >= [v8 count])
        {
          v19 = [[HKInteractiveChartAnnotationViewKeyValueLabel alloc] initWithFrame:v13, v14, v15, v16];
          [v8 addObject:v19];
        }

        else
        {
          v19 = [v8 objectAtIndexedSubscript:v12];
        }

        v20 = [(HKCurrentValueViewDataSource *)self _delegateTitleForSelectedRangeData:v18 displayType:v29];
        v21 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v19 keyLabel];
        v22 = v21;
        if (v20)
        {
          [v21 setAttributedText:v20];
        }

        else
        {
          [v21 setSelectedRangeData:v18];
        }

        v23 = [(HKCurrentValueViewDataSource *)self _delegateValueForSelectedRangeData:v18];
        v24 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v19 valueLabel];
        v25 = v24;
        if (v23)
        {
          [v24 setAttributedText:v23];
        }

        else
        {
          v26 = [v18 attributedString];
          [v25 setAttributedText:v26];
        }

        ++v12;
      }

      v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v11);
    if (v12 < [v8 count])
    {
      [v8 removeObjectsInRange:{v12, objc_msgSend(v8, "count") - v12}];
    }
  }

  else
  {
    [v8 removeAllObjects];
  }
}

- (id)_delegateTitleForSelectedRangeData:(id)a3 displayType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKCurrentValueViewDataSource *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(HKCurrentValueViewDataSource *)self delegate];
    v11 = [v10 titleForSelectedRangeData:v6 displayType:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_delegateValueForSelectedRangeData:(id)a3
{
  v4 = a3;
  v5 = [(HKCurrentValueViewDataSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(HKCurrentValueViewDataSource *)self delegate];
    v8 = [v7 valueForSelectedRangeData:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)defaultStringForValueRange:(id)a3 timeScope:(int64_t)a4
{
  v5 = [MEMORY[0x1E696AB80] hk_dateIntervalWithValueRange:a3];
  if (v5)
  {
    if (a4 == 6)
    {
      [MEMORY[0x1E696AB88] hk_hourDateIntervalFormatter];
    }

    else
    {
      [MEMORY[0x1E696AB88] hk_dayIntervalFormatter];
    }
    v7 = ;
    v6 = [v7 stringFromDateInterval:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dateViewWithOrientation:(int64_t)a3
{
  v4 = [(HKCurrentValueViewDataSource *)self titleColor];
  v5 = [(HKCurrentValueViewDataSource *)self dateLabelView];
  [v5 setTextColor:v4];

  v6 = [(HKCurrentValueViewDataSource *)self dateIntervalString];
  v7 = [(HKCurrentValueViewDataSource *)self dateLabelView];
  [v7 setText:v6];

  return [(HKCurrentValueViewDataSource *)self dateLabelView];
}

- (int64_t)numberOfValuesForAnnotationView:(id)a3
{
  v3 = [(HKCurrentValueViewDataSource *)self annotationLabels];
  v4 = [v3 count];

  return v4;
}

- (id)valueViewForColumnAtIndex:(int64_t)a3 orientation:(int64_t)a4
{
  if (a3 < 0 || (-[HKCurrentValueViewDataSource annotationLabels](self, "annotationLabels"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8 <= a3))
  {
    [HKCurrentValueViewDataSource valueViewForColumnAtIndex:a2 orientation:self];
  }

  v9 = [(HKCurrentValueViewDataSource *)self annotationLabels];
  v10 = [v9 objectAtIndexedSubscript:a3];

  return v10;
}

- (HKCurrentValueViewDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)valueViewForColumnAtIndex:(uint64_t)a1 orientation:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCurrentValueViewDataSource.m" lineNumber:193 description:@"Inconsistent current value view columns"];
}

@end