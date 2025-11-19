@interface _HKInteractiveChartOverlayWaitForCacheData
- (HKInteractiveChartOverlayViewController)overlayController;
- (_HKInteractiveChartOverlayWaitForCacheData)initWithOverlayController:(id)a3;
- (id)_findDataSource:(id)a3;
- (void)addWaitForDataSource:(id)a3 graphSeriesContext:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 startDate:(id)a7 endDate:(id)a8 priorityDelegate:(id)a9 completion:(id)a10;
- (void)removeWaitForDataSource:(id)a3;
@end

@implementation _HKInteractiveChartOverlayWaitForCacheData

- (_HKInteractiveChartOverlayWaitForCacheData)initWithOverlayController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _HKInteractiveChartOverlayWaitForCacheData;
  v5 = [(_HKInteractiveChartOverlayWaitForCacheData *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(_HKInteractiveChartOverlayWaitForCacheData *)v5 setOverlayController:v4];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    waitForDataSources = v6->_waitForDataSources;
    v6->_waitForDataSources = v7;
  }

  return v6;
}

- (void)addWaitForDataSource:(id)a3 graphSeriesContext:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 startDate:(id)a7 endDate:(id)a8 priorityDelegate:(id)a9 completion:(id)a10
{
  v25 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = [(_HKInteractiveChartOverlayWaitForCacheData *)self _findDataSource:v25];
  if (!v21)
  {
    v22 = [_HKInteractiveChartOverlayWaitForDataSource alloc];
    v23 = [(_HKInteractiveChartOverlayWaitForCacheData *)self overlayController];
    v21 = [(_HKInteractiveChartOverlayWaitForDataSource *)v22 initWithOverlayController:v23 dataSource:v25 parent:self];

    v24 = [(_HKInteractiveChartOverlayWaitForCacheData *)self waitForDataSources];
    [v24 addObject:v21];
  }

  [(_HKInteractiveChartOverlayWaitForDataSource *)v21 addWaitForDataGraphSeriesContext:v16 timeScope:a5 resolution:a6 startDate:v17 endDate:v18 priorityDelegate:v19 completion:v20];
}

- (id)_findDataSource:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(_HKInteractiveChartOverlayWaitForCacheData *)self waitForDataSources];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 dataSource];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)removeWaitForDataSource:(id)a3
{
  v4 = a3;
  v5 = [(_HKInteractiveChartOverlayWaitForCacheData *)self waitForDataSources];
  [v5 removeObject:v4];
}

- (HKInteractiveChartOverlayViewController)overlayController
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayController);

  return WeakRetained;
}

@end