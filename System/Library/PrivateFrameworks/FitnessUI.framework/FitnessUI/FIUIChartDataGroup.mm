@interface FIUIChartDataGroup
- (FIUIChartDataGroupDataSource)dataSource;
- (id)_dataSetAtIndexCreateIfNecessary:(unint64_t)necessary;
- (id)_labelsForSetAtIndex:(unint64_t)index;
- (id)_pointForSetAtIndex:(unint64_t)index pointIndex:(unint64_t)pointIndex;
- (id)dataSet:(id)set chartPointForIndex:(unint64_t)index;
- (id)dataSetAtIndex:(unint64_t)index;
- (id)labelsForSet:(id)set;
- (id)maxXValue;
- (id)maxYValue;
- (id)minXValue;
- (id)minYValue;
- (unint64_t)_numberOfDataPointsInSetAtIndex:(unint64_t)index;
- (unint64_t)_numberOfDataSets;
- (unint64_t)numberOfDataPointsForDataSet:(id)set;
- (void)reloadData;
@end

@implementation FIUIChartDataGroup

- (id)minYValue
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_dataSets;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        minYValue = [*(*(&v12 + 1) + 8 * i) minYValue];
        if (minYValue)
        {
          [array addObject:minYValue];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = FUArraySmallestValue(array);

  return v10;
}

- (id)maxYValue
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_dataSets;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        maxYValue = [*(*(&v12 + 1) + 8 * i) maxYValue];
        if (maxYValue)
        {
          [array addObject:maxYValue];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = FUArrayLargestValue(array);

  return v10;
}

- (id)minXValue
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_dataSets;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        minXValue = [v9 minXValue];
        if (minXValue)
        {
          minXValue2 = [v9 minXValue];
          [array addObject:minXValue2];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = FUArraySmallestValue(array);

  return v12;
}

- (id)maxXValue
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_dataSets;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        maxXValue = [*(*(&v12 + 1) + 8 * i) maxXValue];
        if (maxXValue)
        {
          [array addObject:maxXValue];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = FUArrayLargestValue(array);

  return v10;
}

- (id)dataSetAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_dataSets count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_dataSets objectAtIndexedSubscript:index];
  }

  return v5;
}

- (void)reloadData
{
  _numberOfDataSets = [(FIUIChartDataGroup *)self _numberOfDataSets];
  array = [MEMORY[0x1E695DF70] array];
  if (_numberOfDataSets)
  {
    for (i = 0; i != _numberOfDataSets; ++i)
    {
      v5 = [(FIUIChartDataGroup *)self _dataSetAtIndexCreateIfNecessary:i];
      [v5 reloadData];
      [array addObject:v5];
    }
  }

  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  dataSets = self->_dataSets;
  self->_dataSets = v6;
}

- (id)_dataSetAtIndexCreateIfNecessary:(unint64_t)necessary
{
  v5 = [(FIUIChartDataGroup *)self dataSetAtIndex:?];
  if (!v5)
  {
    v5 = objc_alloc_init(FIUIChartDataSet);
    [(FIUIChartDataSet *)v5 setDataSource:self];
    [(FIUIChartDataSet *)v5 setTag:necessary];
  }

  return v5;
}

- (unint64_t)numberOfDataPointsForDataSet:(id)set
{
  v4 = [set tag];

  return [(FIUIChartDataGroup *)self _numberOfDataPointsInSetAtIndex:v4];
}

- (id)dataSet:(id)set chartPointForIndex:(unint64_t)index
{
  v6 = [set tag];

  return [(FIUIChartDataGroup *)self _pointForSetAtIndex:v6 pointIndex:index];
}

- (id)labelsForSet:(id)set
{
  v4 = [set tag];

  return [(FIUIChartDataGroup *)self _labelsForSetAtIndex:v4];
}

- (unint64_t)_numberOfDataSets
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained numberOfDataSetsInGroup:self];

  return v4;
}

- (unint64_t)_numberOfDataPointsInSetAtIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained dataGroup:self numberOfPointsInSetAtIndex:index];

  return v6;
}

- (id)_pointForSetAtIndex:(unint64_t)index pointIndex:(unint64_t)pointIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v8 = [WeakRetained dataGroup:self pointForSetAtIndex:index pointIndex:pointIndex];

  return v8;
}

- (id)_labelsForSetAtIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_dataSource);
    v8 = [v7 dataGroup:self labelsForSetAtIndex:index];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (FIUIChartDataGroupDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end