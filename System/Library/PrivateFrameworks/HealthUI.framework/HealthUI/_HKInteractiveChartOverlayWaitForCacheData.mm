@interface _HKInteractiveChartOverlayWaitForCacheData
- (HKInteractiveChartOverlayViewController)overlayController;
- (_HKInteractiveChartOverlayWaitForCacheData)initWithOverlayController:(id)controller;
- (id)_findDataSource:(id)source;
- (void)addWaitForDataSource:(id)source graphSeriesContext:(id)context timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate priorityDelegate:(id)delegate completion:(id)self0;
- (void)removeWaitForDataSource:(id)source;
@end

@implementation _HKInteractiveChartOverlayWaitForCacheData

- (_HKInteractiveChartOverlayWaitForCacheData)initWithOverlayController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = _HKInteractiveChartOverlayWaitForCacheData;
  v5 = [(_HKInteractiveChartOverlayWaitForCacheData *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(_HKInteractiveChartOverlayWaitForCacheData *)v5 setOverlayController:controllerCopy];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    waitForDataSources = v6->_waitForDataSources;
    v6->_waitForDataSources = v7;
  }

  return v6;
}

- (void)addWaitForDataSource:(id)source graphSeriesContext:(id)context timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate priorityDelegate:(id)delegate completion:(id)self0
{
  sourceCopy = source;
  contextCopy = context;
  dateCopy = date;
  endDateCopy = endDate;
  delegateCopy = delegate;
  completionCopy = completion;
  v21 = [(_HKInteractiveChartOverlayWaitForCacheData *)self _findDataSource:sourceCopy];
  if (!v21)
  {
    v22 = [_HKInteractiveChartOverlayWaitForDataSource alloc];
    overlayController = [(_HKInteractiveChartOverlayWaitForCacheData *)self overlayController];
    v21 = [(_HKInteractiveChartOverlayWaitForDataSource *)v22 initWithOverlayController:overlayController dataSource:sourceCopy parent:self];

    waitForDataSources = [(_HKInteractiveChartOverlayWaitForCacheData *)self waitForDataSources];
    [waitForDataSources addObject:v21];
  }

  [(_HKInteractiveChartOverlayWaitForDataSource *)v21 addWaitForDataGraphSeriesContext:contextCopy timeScope:scope resolution:resolution startDate:dateCopy endDate:endDateCopy priorityDelegate:delegateCopy completion:completionCopy];
}

- (id)_findDataSource:(id)source
{
  v17 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  waitForDataSources = [(_HKInteractiveChartOverlayWaitForCacheData *)self waitForDataSources];
  v6 = [waitForDataSources countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(waitForDataSources);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        dataSource = [v9 dataSource];

        if (dataSource == sourceCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [waitForDataSources countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)removeWaitForDataSource:(id)source
{
  sourceCopy = source;
  waitForDataSources = [(_HKInteractiveChartOverlayWaitForCacheData *)self waitForDataSources];
  [waitForDataSources removeObject:sourceCopy];
}

- (HKInteractiveChartOverlayViewController)overlayController
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayController);

  return WeakRetained;
}

@end