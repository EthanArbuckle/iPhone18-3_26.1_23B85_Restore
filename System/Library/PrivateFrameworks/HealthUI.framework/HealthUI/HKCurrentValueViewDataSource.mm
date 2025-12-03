@interface HKCurrentValueViewDataSource
+ (id)defaultStringForValueRange:(id)range timeScope:(int64_t)scope;
- (BOOL)_pendingDataForGraphView:(id)view;
- (HKCurrentValueViewDataSource)initWithDateCache:(id)cache healthStore:(id)store selectedRangeFormatter:(id)formatter;
- (HKCurrentValueViewDataSourceDelegate)delegate;
- (id)_dateIntervalStringForGraphView:(id)view timeScope:(int64_t)scope;
- (id)_delegateTitleForSelectedRangeData:(id)data displayType:(id)type;
- (id)_delegateValueForSelectedRangeData:(id)data;
- (id)_delegateValueStringForGraphView:(id)view timeScope:(int64_t)scope;
- (id)dateViewWithOrientation:(int64_t)orientation;
- (id)valueViewForColumnAtIndex:(int64_t)index orientation:(int64_t)orientation;
- (int64_t)numberOfValuesForAnnotationView:(id)view;
- (void)_updateAnnotationLabels:(id)labels fromRangeData:(id)data displayType:(id)type;
- (void)updateDataSourceWithGraphView:(id)view displayType:(id)type timeScope:(int64_t)scope;
@end

@implementation HKCurrentValueViewDataSource

- (HKCurrentValueViewDataSource)initWithDateCache:(id)cache healthStore:(id)store selectedRangeFormatter:(id)formatter
{
  cacheCopy = cache;
  storeCopy = store;
  formatterCopy = formatter;
  v21.receiver = self;
  v21.super_class = HKCurrentValueViewDataSource;
  v12 = [(HKCurrentValueViewDataSource *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_selectedRangeFormatter, formatter);
    objc_storeStrong(&v13->_dateCache, cache);
    objc_storeStrong(&v13->_healthStore, store);
    v13->_pendingData = 0;
    hk_chartCurrentValueValueFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
    [(HKCurrentValueViewDataSource *)v13 setMajorFont:hk_chartCurrentValueValueFont];

    hk_chartCurrentValueUnitFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueUnitFont];
    [(HKCurrentValueViewDataSource *)v13 setMinorFont:hk_chartCurrentValueUnitFont];

    v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(HKCurrentValueViewDataSource *)v13 setDateLabelView:v16];

    hk_chartCurrentValueDateFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueDateFont];
    dateLabelView = [(HKCurrentValueViewDataSource *)v13 dateLabelView];
    [dateLabelView setFont:hk_chartCurrentValueDateFont];

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(HKCurrentValueViewDataSource *)v13 setAnnotationLabels:v19];
  }

  return v13;
}

- (void)updateDataSourceWithGraphView:(id)view displayType:(id)type timeScope:(int64_t)scope
{
  typeCopy = type;
  viewCopy = view;
  [(HKCurrentValueViewDataSource *)self setDisplayType:typeCopy];
  v10 = [(HKCurrentValueViewDataSource *)self _dateIntervalStringForGraphView:viewCopy timeScope:scope];
  [(HKCurrentValueViewDataSource *)self setDateIntervalString:v10];

  selectedRangeFormatter = [(HKCurrentValueViewDataSource *)self selectedRangeFormatter];
  majorFont = [(HKCurrentValueViewDataSource *)self majorFont];
  minorFont = [(HKCurrentValueViewDataSource *)self minorFont];
  v14 = [selectedRangeFormatter selectedRangeDataWithGraphView:viewCopy majorFont:majorFont minorFont:minorFont displayType:typeCopy timeScope:scope context:1];
  [(HKCurrentValueViewDataSource *)self setSelectedRangeData:v14];

  v15 = [(HKCurrentValueViewDataSource *)self _pendingDataForGraphView:viewCopy];
  [(HKCurrentValueViewDataSource *)self setPendingData:v15];
  hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  [(HKCurrentValueViewDataSource *)self setTitleColor:hk_chartLollipopLabelColor];

  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  [(HKCurrentValueViewDataSource *)self setValueColor:hk_chartLollipopValueColor];

  annotationLabels = [(HKCurrentValueViewDataSource *)self annotationLabels];
  selectedRangeData = [(HKCurrentValueViewDataSource *)self selectedRangeData];
  [(HKCurrentValueViewDataSource *)self _updateAnnotationLabels:annotationLabels fromRangeData:selectedRangeData displayType:typeCopy];
}

- (id)_dateIntervalStringForGraphView:(id)view timeScope:(int64_t)scope
{
  viewCopy = view;
  v7 = [(HKCurrentValueViewDataSource *)self _delegateValueStringForGraphView:viewCopy timeScope:scope];
  v8 = v7;
  if (!v7)
  {
    effectiveVisibleRangeActive = [viewCopy effectiveVisibleRangeActive];
    v8 = [HKCurrentValueViewDataSource defaultStringForValueRange:effectiveVisibleRangeActive timeScope:scope];

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

- (id)_delegateValueStringForGraphView:(id)view timeScope:(int64_t)scope
{
  viewCopy = view;
  delegate = [(HKCurrentValueViewDataSource *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(HKCurrentValueViewDataSource *)self delegate];
    effectiveVisibleRangeActive = [viewCopy effectiveVisibleRangeActive];
    v11 = [delegate2 stringForValueRange:effectiveVisibleRangeActive timeScope:scope];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_pendingDataForGraphView:(id)view
{
  viewCopy = view;
  primarySeries = [viewCopy primarySeries];
  actualVisibleRange = [viewCopy actualVisibleRange];
  v8 = 0;
  if (actualVisibleRange && primarySeries)
  {
    v9 = [primarySeries resolutionForTimeScope:objc_msgSend(viewCopy traitResolution:{"xAxisDateZoom"), objc_msgSend(viewCopy, "resolutionFromTraitCollectionAttributes")}];
    v27 = 0uLL;
    v28 = 0;
    dataSource = [primarySeries dataSource];
    minValue = [actualVisibleRange minValue];
    xAxisDateZoom = [viewCopy xAxisDateZoom];
    if (dataSource)
    {
      [dataSource blockPathForX:minValue zoom:xAxisDateZoom resolution:v9];
    }

    else
    {
      v27 = 0uLL;
      v28 = 0;
    }

    v25 = 0uLL;
    v26 = 0;
    dataSource2 = [primarySeries dataSource];
    maxValue = [actualVisibleRange maxValue];
    xAxisDateZoom2 = [viewCopy xAxisDateZoom];
    if (dataSource2)
    {
      [dataSource2 blockPathForX:maxValue zoom:xAxisDateZoom2 resolution:v9];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HKCurrentValueViewDataSource.m" lineNumber:101 description:@"Visible block start should not be greater than visible block end"];

      v16 = v27;
      v17 = v25;
    }

    *&v27 = v16 - 1;
    *&v25 = v17 + 1;
    dataSource3 = [primarySeries dataSource];
    v23 = v27;
    v24 = v28;
    v21 = v25;
    v22 = v26;
    v8 = [dataSource3 hasPendingQueriesBetweenStartPath:&v23 endPath:&v21];
  }

  return v8;
}

- (void)_updateAnnotationLabels:(id)labels fromRangeData:(id)data displayType:(id)type
{
  v35 = *MEMORY[0x1E69E9840];
  labelsCopy = labels;
  dataCopy = data;
  typeCopy = type;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = dataCopy;
  v10 = [dataCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
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
        if (v12 >= [labelsCopy count])
        {
          v19 = [[HKInteractiveChartAnnotationViewKeyValueLabel alloc] initWithFrame:v13, v14, v15, v16];
          [labelsCopy addObject:v19];
        }

        else
        {
          v19 = [labelsCopy objectAtIndexedSubscript:v12];
        }

        v20 = [(HKCurrentValueViewDataSource *)self _delegateTitleForSelectedRangeData:v18 displayType:typeCopy];
        keyLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v19 keyLabel];
        v22 = keyLabel;
        if (v20)
        {
          [keyLabel setAttributedText:v20];
        }

        else
        {
          [keyLabel setSelectedRangeData:v18];
        }

        v23 = [(HKCurrentValueViewDataSource *)self _delegateValueForSelectedRangeData:v18];
        valueLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v19 valueLabel];
        v25 = valueLabel;
        if (v23)
        {
          [valueLabel setAttributedText:v23];
        }

        else
        {
          attributedString = [v18 attributedString];
          [v25 setAttributedText:attributedString];
        }

        ++v12;
      }

      v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v11);
    if (v12 < [labelsCopy count])
    {
      [labelsCopy removeObjectsInRange:{v12, objc_msgSend(labelsCopy, "count") - v12}];
    }
  }

  else
  {
    [labelsCopy removeAllObjects];
  }
}

- (id)_delegateTitleForSelectedRangeData:(id)data displayType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  delegate = [(HKCurrentValueViewDataSource *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(HKCurrentValueViewDataSource *)self delegate];
    v11 = [delegate2 titleForSelectedRangeData:dataCopy displayType:typeCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_delegateValueForSelectedRangeData:(id)data
{
  dataCopy = data;
  delegate = [(HKCurrentValueViewDataSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(HKCurrentValueViewDataSource *)self delegate];
    v8 = [delegate2 valueForSelectedRangeData:dataCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)defaultStringForValueRange:(id)range timeScope:(int64_t)scope
{
  v5 = [MEMORY[0x1E696AB80] hk_dateIntervalWithValueRange:range];
  if (v5)
  {
    if (scope == 6)
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

- (id)dateViewWithOrientation:(int64_t)orientation
{
  titleColor = [(HKCurrentValueViewDataSource *)self titleColor];
  dateLabelView = [(HKCurrentValueViewDataSource *)self dateLabelView];
  [dateLabelView setTextColor:titleColor];

  dateIntervalString = [(HKCurrentValueViewDataSource *)self dateIntervalString];
  dateLabelView2 = [(HKCurrentValueViewDataSource *)self dateLabelView];
  [dateLabelView2 setText:dateIntervalString];

  return [(HKCurrentValueViewDataSource *)self dateLabelView];
}

- (int64_t)numberOfValuesForAnnotationView:(id)view
{
  annotationLabels = [(HKCurrentValueViewDataSource *)self annotationLabels];
  v4 = [annotationLabels count];

  return v4;
}

- (id)valueViewForColumnAtIndex:(int64_t)index orientation:(int64_t)orientation
{
  if (index < 0 || (-[HKCurrentValueViewDataSource annotationLabels](self, "annotationLabels"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8 <= index))
  {
    [HKCurrentValueViewDataSource valueViewForColumnAtIndex:a2 orientation:self];
  }

  annotationLabels = [(HKCurrentValueViewDataSource *)self annotationLabels];
  v10 = [annotationLabels objectAtIndexedSubscript:index];

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