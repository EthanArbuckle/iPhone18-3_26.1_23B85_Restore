@interface _HKInteractiveChartOverlayDeliverCachedData
- (BOOL)deliverDataToCompletion;
- (HKInteractiveChartOverlayViewController)overlayController;
- (_HKInteractiveChartOverlayDeliverCachedData)initWithOverlayController:(id)controller dataSource:(id)source graphSeriesContext:(id)context timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate completion:(id)self0;
@end

@implementation _HKInteractiveChartOverlayDeliverCachedData

- (_HKInteractiveChartOverlayDeliverCachedData)initWithOverlayController:(id)controller dataSource:(id)source graphSeriesContext:(id)context timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate completion:(id)self0
{
  controllerCopy = controller;
  sourceCopy = source;
  contextCopy = context;
  dateCopy = date;
  endDateCopy = endDate;
  completionCopy = completion;
  v27.receiver = self;
  v27.super_class = _HKInteractiveChartOverlayDeliverCachedData;
  v19 = [(_HKInteractiveChartOverlayDeliverCachedData *)&v27 init];
  v20 = v19;
  if (v19)
  {
    [(_HKInteractiveChartOverlayDeliverCachedData *)v19 setOverlayController:controllerCopy];
    objc_storeStrong(&v20->_dataSource, source);
    objc_storeStrong(&v20->_graphSeriesContext, context);
    v20->_timeScope = scope;
    v20->_resolution = resolution;
    objc_storeStrong(&v20->_startDate, date);
    objc_storeStrong(&v20->_endDate, endDate);
    v21 = _Block_copy(completionCopy);
    completion = v20->_completion;
    v20->_completion = v21;
  }

  return v20;
}

- (BOOL)deliverDataToCompletion
{
  overlayController = [(_HKInteractiveChartOverlayDeliverCachedData *)self overlayController];
  dataSource = [(_HKInteractiveChartOverlayDeliverCachedData *)self dataSource];
  graphSeriesContext = [(_HKInteractiveChartOverlayDeliverCachedData *)self graphSeriesContext];
  timeScope = [(_HKInteractiveChartOverlayDeliverCachedData *)self timeScope];
  resolution = [(_HKInteractiveChartOverlayDeliverCachedData *)self resolution];
  startDate = [(_HKInteractiveChartOverlayDeliverCachedData *)self startDate];
  endDate = [(_HKInteractiveChartOverlayDeliverCachedData *)self endDate];
  completion = [(_HKInteractiveChartOverlayDeliverCachedData *)self completion];
  LOBYTE(timeScope) = [overlayController _deliverCachedDataFromSource:dataSource graphSeriesContext:graphSeriesContext timeScope:timeScope resolution:resolution startDate:startDate endDate:endDate completion:completion];

  return timeScope;
}

- (HKInteractiveChartOverlayViewController)overlayController
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayController);

  return WeakRetained;
}

@end