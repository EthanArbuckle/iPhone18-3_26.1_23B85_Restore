@interface FIUIChartDataGroup
- (FIUIChartDataGroupDataSource)dataSource;
- (id)_dataSetAtIndexCreateIfNecessary:(unint64_t)a3;
- (id)_labelsForSetAtIndex:(unint64_t)a3;
- (id)_pointForSetAtIndex:(unint64_t)a3 pointIndex:(unint64_t)a4;
- (id)dataSet:(id)a3 chartPointForIndex:(unint64_t)a4;
- (id)dataSetAtIndex:(unint64_t)a3;
- (id)labelsForSet:(id)a3;
- (id)maxXValue;
- (id)maxYValue;
- (id)minXValue;
- (id)minYValue;
- (unint64_t)_numberOfDataPointsInSetAtIndex:(unint64_t)a3;
- (unint64_t)_numberOfDataSets;
- (unint64_t)numberOfDataPointsForDataSet:(id)a3;
- (void)reloadData;
@end

@implementation FIUIChartDataGroup

- (id)minYValue
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
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

        v9 = [*(*(&v12 + 1) + 8 * i) minYValue];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = FUArraySmallestValue(v3);

  return v10;
}

- (id)maxYValue
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
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

        v9 = [*(*(&v12 + 1) + 8 * i) maxYValue];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = FUArrayLargestValue(v3);

  return v10;
}

- (id)minXValue
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
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
        v10 = [v9 minXValue];
        if (v10)
        {
          v11 = [v9 minXValue];
          [v3 addObject:v11];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = FUArraySmallestValue(v3);

  return v12;
}

- (id)maxXValue
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
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

        v9 = [*(*(&v12 + 1) + 8 * i) maxXValue];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = FUArrayLargestValue(v3);

  return v10;
}

- (id)dataSetAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_dataSets count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_dataSets objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (void)reloadData
{
  v3 = [(FIUIChartDataGroup *)self _numberOfDataSets];
  v8 = [MEMORY[0x1E695DF70] array];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = [(FIUIChartDataGroup *)self _dataSetAtIndexCreateIfNecessary:i];
      [v5 reloadData];
      [v8 addObject:v5];
    }
  }

  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:v8];
  dataSets = self->_dataSets;
  self->_dataSets = v6;
}

- (id)_dataSetAtIndexCreateIfNecessary:(unint64_t)a3
{
  v5 = [(FIUIChartDataGroup *)self dataSetAtIndex:?];
  if (!v5)
  {
    v5 = objc_alloc_init(FIUIChartDataSet);
    [(FIUIChartDataSet *)v5 setDataSource:self];
    [(FIUIChartDataSet *)v5 setTag:a3];
  }

  return v5;
}

- (unint64_t)numberOfDataPointsForDataSet:(id)a3
{
  v4 = [a3 tag];

  return [(FIUIChartDataGroup *)self _numberOfDataPointsInSetAtIndex:v4];
}

- (id)dataSet:(id)a3 chartPointForIndex:(unint64_t)a4
{
  v6 = [a3 tag];

  return [(FIUIChartDataGroup *)self _pointForSetAtIndex:v6 pointIndex:a4];
}

- (id)labelsForSet:(id)a3
{
  v4 = [a3 tag];

  return [(FIUIChartDataGroup *)self _labelsForSetAtIndex:v4];
}

- (unint64_t)_numberOfDataSets
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained numberOfDataSetsInGroup:self];

  return v4;
}

- (unint64_t)_numberOfDataPointsInSetAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained dataGroup:self numberOfPointsInSetAtIndex:a3];

  return v6;
}

- (id)_pointForSetAtIndex:(unint64_t)a3 pointIndex:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v8 = [WeakRetained dataGroup:self pointForSetAtIndex:a3 pointIndex:a4];

  return v8;
}

- (id)_labelsForSetAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_dataSource);
    v8 = [v7 dataGroup:self labelsForSetAtIndex:a3];
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