@interface FIUIChartDataSet
- (FIUIChartDataSetDataSource)dataSource;
- (id)maxXValue;
- (id)maxYValue;
- (id)minXValue;
- (id)minYValue;
- (void)reloadData;
@end

@implementation FIUIChartDataSet

- (id)maxYValue
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_points;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        maxYValue = [*(*(&v12 + 1) + 8 * i) maxYValue];
        v9 = maxYValue;
        if (!v5 || [maxYValue compare:v5] == 1)
        {
          v10 = v9;

          v5 = v10;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)minYValue
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_points;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        minYValue = [*(*(&v12 + 1) + 8 * i) minYValue];
        v9 = minYValue;
        if (!v5 || [minYValue compare:v5] == -1)
        {
          v10 = v9;

          v5 = v10;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)maxXValue
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_points;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        xValue = [*(*(&v12 + 1) + 8 * i) xValue];
        v9 = xValue;
        if (!v5 || [xValue hk_isAfterDate:v5])
        {
          v10 = v9;

          v5 = v10;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)minXValue
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_points;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        xValue = [*(*(&v12 + 1) + 8 * i) xValue];
        v9 = xValue;
        if (!v5 || [xValue hk_isBeforeDate:v5])
        {
          v10 = v9;

          v5 = v10;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)reloadData
{
  obj = [MEMORY[0x1E695DF70] array];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained numberOfDataPointsForDataSet:self];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = objc_loadWeakRetained(&self->_dataSource);
      v7 = [v6 dataSet:self chartPointForIndex:v5];
      [obj addObject:v7];

      ++v5;
      v8 = objc_loadWeakRetained(&self->_dataSource);
      v9 = [v8 numberOfDataPointsForDataSet:self];
    }

    while (v5 < v9);
  }

  objc_storeStrong(&self->_points, obj);
  v10 = objc_loadWeakRetained(&self->_dataSource);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_dataSource);
    v13 = [v12 labelsForSet:self];
    labels = self->_labels;
    self->_labels = v13;
  }
}

- (FIUIChartDataSetDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end