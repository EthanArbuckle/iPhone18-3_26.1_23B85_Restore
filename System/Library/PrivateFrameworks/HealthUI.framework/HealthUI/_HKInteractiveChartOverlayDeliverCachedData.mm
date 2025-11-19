@interface _HKInteractiveChartOverlayDeliverCachedData
- (BOOL)deliverDataToCompletion;
- (HKInteractiveChartOverlayViewController)overlayController;
- (_HKInteractiveChartOverlayDeliverCachedData)initWithOverlayController:(id)a3 dataSource:(id)a4 graphSeriesContext:(id)a5 timeScope:(int64_t)a6 resolution:(int64_t)a7 startDate:(id)a8 endDate:(id)a9 completion:(id)a10;
@end

@implementation _HKInteractiveChartOverlayDeliverCachedData

- (_HKInteractiveChartOverlayDeliverCachedData)initWithOverlayController:(id)a3 dataSource:(id)a4 graphSeriesContext:(id)a5 timeScope:(int64_t)a6 resolution:(int64_t)a7 startDate:(id)a8 endDate:(id)a9 completion:(id)a10
{
  v14 = a3;
  v26 = a4;
  v15 = a5;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v27.receiver = self;
  v27.super_class = _HKInteractiveChartOverlayDeliverCachedData;
  v19 = [(_HKInteractiveChartOverlayDeliverCachedData *)&v27 init];
  v20 = v19;
  if (v19)
  {
    [(_HKInteractiveChartOverlayDeliverCachedData *)v19 setOverlayController:v14];
    objc_storeStrong(&v20->_dataSource, a4);
    objc_storeStrong(&v20->_graphSeriesContext, a5);
    v20->_timeScope = a6;
    v20->_resolution = a7;
    objc_storeStrong(&v20->_startDate, a8);
    objc_storeStrong(&v20->_endDate, a9);
    v21 = _Block_copy(v18);
    completion = v20->_completion;
    v20->_completion = v21;
  }

  return v20;
}

- (BOOL)deliverDataToCompletion
{
  v3 = [(_HKInteractiveChartOverlayDeliverCachedData *)self overlayController];
  v4 = [(_HKInteractiveChartOverlayDeliverCachedData *)self dataSource];
  v5 = [(_HKInteractiveChartOverlayDeliverCachedData *)self graphSeriesContext];
  v6 = [(_HKInteractiveChartOverlayDeliverCachedData *)self timeScope];
  v7 = [(_HKInteractiveChartOverlayDeliverCachedData *)self resolution];
  v8 = [(_HKInteractiveChartOverlayDeliverCachedData *)self startDate];
  v9 = [(_HKInteractiveChartOverlayDeliverCachedData *)self endDate];
  v10 = [(_HKInteractiveChartOverlayDeliverCachedData *)self completion];
  LOBYTE(v6) = [v3 _deliverCachedDataFromSource:v4 graphSeriesContext:v5 timeScope:v6 resolution:v7 startDate:v8 endDate:v9 completion:v10];

  return v6;
}

- (HKInteractiveChartOverlayViewController)overlayController
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayController);

  return WeakRetained;
}

@end