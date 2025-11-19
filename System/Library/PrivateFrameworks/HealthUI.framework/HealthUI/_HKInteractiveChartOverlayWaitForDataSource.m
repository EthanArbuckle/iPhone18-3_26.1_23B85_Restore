@interface _HKInteractiveChartOverlayWaitForDataSource
- (HKInteractiveChartOverlayViewController)overlayController;
- (_HKInteractiveChartOverlayWaitForCacheData)parent;
- (_HKInteractiveChartOverlayWaitForDataSource)initWithOverlayController:(id)a3 dataSource:(id)a4 parent:(id)a5;
- (void)_requestDataForTimeScope:(int64_t)a3 resolution:(int64_t)a4 startDate:(id)a5 endDate:(id)a6 priorityDelegate:(id)a7;
- (void)addWaitForDataGraphSeriesContext:(id)a3 timeScope:(int64_t)a4 resolution:(int64_t)a5 startDate:(id)a6 endDate:(id)a7 priorityDelegate:(id)a8 completion:(id)a9;
- (void)dataSourceDidUpdateCache:(id)a3;
@end

@implementation _HKInteractiveChartOverlayWaitForDataSource

- (_HKInteractiveChartOverlayWaitForDataSource)initWithOverlayController:(id)a3 dataSource:(id)a4 parent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _HKInteractiveChartOverlayWaitForDataSource;
  v11 = [(_HKInteractiveChartOverlayWaitForDataSource *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(_HKInteractiveChartOverlayWaitForDataSource *)v11 setOverlayController:v8];
    [(_HKInteractiveChartOverlayWaitForDataSource *)v12 setParent:v10];
    objc_storeStrong(&v12->_dataSource, a4);
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(_HKInteractiveChartOverlayWaitForDataSource *)v12 setDeliveries:v13];

    v14 = [v9 delegate];
    [(_HKInteractiveChartOverlayWaitForDataSource *)v12 setPreviousDelegate:v14];

    [v9 setDelegate:v12];
  }

  return v12;
}

- (void)addWaitForDataGraphSeriesContext:(id)a3 timeScope:(int64_t)a4 resolution:(int64_t)a5 startDate:(id)a6 endDate:(id)a7 priorityDelegate:(id)a8 completion:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a3;
  v20 = [_HKInteractiveChartOverlayDeliverCachedData alloc];
  v21 = [(_HKInteractiveChartOverlayWaitForDataSource *)self overlayController];
  v22 = [(_HKInteractiveChartOverlayWaitForDataSource *)self dataSource];
  v25 = [(_HKInteractiveChartOverlayDeliverCachedData *)v20 initWithOverlayController:v21 dataSource:v22 graphSeriesContext:v19 timeScope:a4 resolution:a5 startDate:v18 endDate:v17 completion:v15];

  v23 = [(_HKInteractiveChartOverlayWaitForDataSource *)self deliveries];
  [v23 addObject:v25];

  [(_HKInteractiveChartOverlayWaitForDataSource *)self _requestDataForTimeScope:a4 resolution:a5 startDate:v18 endDate:v17 priorityDelegate:v16];
}

- (void)_requestDataForTimeScope:(int64_t)a3 resolution:(int64_t)a4 startDate:(id)a5 endDate:(id)a6 priorityDelegate:(id)a7
{
  v12 = a5;
  v13 = a6;
  v26 = 0uLL;
  v27 = 0;
  v14 = a7;
  v15 = [(_HKInteractiveChartOverlayWaitForDataSource *)self dataSource];
  v16 = v15;
  if (v15)
  {
    [v15 blockPathForX:v12 zoom:a3 resolution:a4];
  }

  else
  {
    v26 = 0uLL;
    v27 = 0;
  }

  v24 = 0uLL;
  v25 = 0;
  v17 = [(_HKInteractiveChartOverlayWaitForDataSource *)self dataSource];
  v18 = v17;
  if (v17)
  {
    [v17 blockPathForX:v13 zoom:a3 resolution:a4];
  }

  else
  {
    v24 = 0uLL;
    v25 = 0;
  }

  v19 = [(_HKInteractiveChartOverlayWaitForDataSource *)self dataSource];
  v22 = v26;
  v23 = v27;
  v20 = v24;
  v21 = v25;
  [v19 blocksRequestedFromPath:&v22 toPath:&v20 priorityDelegate:v14];
}

- (void)dataSourceDidUpdateCache:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [(_HKInteractiveChartOverlayWaitForDataSource *)self deliveries];
  v5 = [v4 copy];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if ([v12 deliverDataToCompletion])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v13 = [(_HKInteractiveChartOverlayWaitForDataSource *)self deliveries];
  [v13 removeObjectsInArray:v6];

  v14 = [(_HKInteractiveChartOverlayWaitForDataSource *)self deliveries];
  v15 = [v14 count];

  if (!v15)
  {
    v16 = [(_HKInteractiveChartOverlayWaitForDataSource *)self previousDelegate];
    v17 = [(_HKInteractiveChartOverlayWaitForDataSource *)self dataSource];
    [v17 setDelegate:v16];

    v18 = [(_HKInteractiveChartOverlayWaitForDataSource *)self previousDelegate];

    if (v18)
    {
      v19 = [(_HKInteractiveChartOverlayWaitForDataSource *)self previousDelegate];
      v20 = [(_HKInteractiveChartOverlayWaitForDataSource *)self dataSource];
      [v19 dataSourceDidUpdateCache:v20];
    }

    v21 = [(_HKInteractiveChartOverlayWaitForDataSource *)self parent];
    [v21 removeWaitForDataSource:self];
  }
}

- (HKInteractiveChartOverlayViewController)overlayController
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayController);

  return WeakRetained;
}

- (_HKInteractiveChartOverlayWaitForCacheData)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end