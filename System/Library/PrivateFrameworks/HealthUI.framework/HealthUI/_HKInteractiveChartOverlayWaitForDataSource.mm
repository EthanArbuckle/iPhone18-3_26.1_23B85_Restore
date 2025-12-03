@interface _HKInteractiveChartOverlayWaitForDataSource
- (HKInteractiveChartOverlayViewController)overlayController;
- (_HKInteractiveChartOverlayWaitForCacheData)parent;
- (_HKInteractiveChartOverlayWaitForDataSource)initWithOverlayController:(id)controller dataSource:(id)source parent:(id)parent;
- (void)_requestDataForTimeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate priorityDelegate:(id)delegate;
- (void)addWaitForDataGraphSeriesContext:(id)context timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate priorityDelegate:(id)delegate completion:(id)completion;
- (void)dataSourceDidUpdateCache:(id)cache;
@end

@implementation _HKInteractiveChartOverlayWaitForDataSource

- (_HKInteractiveChartOverlayWaitForDataSource)initWithOverlayController:(id)controller dataSource:(id)source parent:(id)parent
{
  controllerCopy = controller;
  sourceCopy = source;
  parentCopy = parent;
  v16.receiver = self;
  v16.super_class = _HKInteractiveChartOverlayWaitForDataSource;
  v11 = [(_HKInteractiveChartOverlayWaitForDataSource *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(_HKInteractiveChartOverlayWaitForDataSource *)v11 setOverlayController:controllerCopy];
    [(_HKInteractiveChartOverlayWaitForDataSource *)v12 setParent:parentCopy];
    objc_storeStrong(&v12->_dataSource, source);
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(_HKInteractiveChartOverlayWaitForDataSource *)v12 setDeliveries:v13];

    delegate = [sourceCopy delegate];
    [(_HKInteractiveChartOverlayWaitForDataSource *)v12 setPreviousDelegate:delegate];

    [sourceCopy setDelegate:v12];
  }

  return v12;
}

- (void)addWaitForDataGraphSeriesContext:(id)context timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate priorityDelegate:(id)delegate completion:(id)completion
{
  completionCopy = completion;
  delegateCopy = delegate;
  endDateCopy = endDate;
  dateCopy = date;
  contextCopy = context;
  v20 = [_HKInteractiveChartOverlayDeliverCachedData alloc];
  overlayController = [(_HKInteractiveChartOverlayWaitForDataSource *)self overlayController];
  dataSource = [(_HKInteractiveChartOverlayWaitForDataSource *)self dataSource];
  v25 = [(_HKInteractiveChartOverlayDeliverCachedData *)v20 initWithOverlayController:overlayController dataSource:dataSource graphSeriesContext:contextCopy timeScope:scope resolution:resolution startDate:dateCopy endDate:endDateCopy completion:completionCopy];

  deliveries = [(_HKInteractiveChartOverlayWaitForDataSource *)self deliveries];
  [deliveries addObject:v25];

  [(_HKInteractiveChartOverlayWaitForDataSource *)self _requestDataForTimeScope:scope resolution:resolution startDate:dateCopy endDate:endDateCopy priorityDelegate:delegateCopy];
}

- (void)_requestDataForTimeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate priorityDelegate:(id)delegate
{
  dateCopy = date;
  endDateCopy = endDate;
  v26 = 0uLL;
  v27 = 0;
  delegateCopy = delegate;
  dataSource = [(_HKInteractiveChartOverlayWaitForDataSource *)self dataSource];
  v16 = dataSource;
  if (dataSource)
  {
    [dataSource blockPathForX:dateCopy zoom:scope resolution:resolution];
  }

  else
  {
    v26 = 0uLL;
    v27 = 0;
  }

  v24 = 0uLL;
  v25 = 0;
  dataSource2 = [(_HKInteractiveChartOverlayWaitForDataSource *)self dataSource];
  v18 = dataSource2;
  if (dataSource2)
  {
    [dataSource2 blockPathForX:endDateCopy zoom:scope resolution:resolution];
  }

  else
  {
    v24 = 0uLL;
    v25 = 0;
  }

  dataSource3 = [(_HKInteractiveChartOverlayWaitForDataSource *)self dataSource];
  v22 = v26;
  v23 = v27;
  v20 = v24;
  v21 = v25;
  [dataSource3 blocksRequestedFromPath:&v22 toPath:&v20 priorityDelegate:delegateCopy];
}

- (void)dataSourceDidUpdateCache:(id)cache
{
  v27 = *MEMORY[0x1E69E9840];
  deliveries = [(_HKInteractiveChartOverlayWaitForDataSource *)self deliveries];
  v5 = [deliveries copy];

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

  deliveries2 = [(_HKInteractiveChartOverlayWaitForDataSource *)self deliveries];
  [deliveries2 removeObjectsInArray:v6];

  deliveries3 = [(_HKInteractiveChartOverlayWaitForDataSource *)self deliveries];
  v15 = [deliveries3 count];

  if (!v15)
  {
    previousDelegate = [(_HKInteractiveChartOverlayWaitForDataSource *)self previousDelegate];
    dataSource = [(_HKInteractiveChartOverlayWaitForDataSource *)self dataSource];
    [dataSource setDelegate:previousDelegate];

    previousDelegate2 = [(_HKInteractiveChartOverlayWaitForDataSource *)self previousDelegate];

    if (previousDelegate2)
    {
      previousDelegate3 = [(_HKInteractiveChartOverlayWaitForDataSource *)self previousDelegate];
      dataSource2 = [(_HKInteractiveChartOverlayWaitForDataSource *)self dataSource];
      [previousDelegate3 dataSourceDidUpdateCache:dataSource2];
    }

    parent = [(_HKInteractiveChartOverlayWaitForDataSource *)self parent];
    [parent removeWaitForDataSource:self];
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