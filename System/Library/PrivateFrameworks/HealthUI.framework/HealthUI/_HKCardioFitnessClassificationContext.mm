@interface _HKCardioFitnessClassificationContext
- (_HKCardioFitnessClassificationContext)initWithMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 delegate:(id)a6;
- (_HKCardioFitnessClassificationContextDelegate)delegate;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation _HKCardioFitnessClassificationContext

- (_HKCardioFitnessClassificationContext)initWithMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 delegate:(id)a6
{
  v10 = a6;
  v14.receiver = self;
  v14.super_class = _HKCardioFitnessClassificationContext;
  v11 = [(_HKCardioFitnessOverlayContext *)&v14 initWithMode:a3 applicationItems:a4 overlayChartController:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v10);
  }

  return v12;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v10 = a3;
  v11 = a7;
  v12 = [(_HKCardioFitnessOverlayContext *)self overlayChartController];
  v13 = [v12 primaryDisplayType];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
    v15 = [(_HKCardioFitnessOverlayContext *)self overlayChartController];
    v16 = [v14 graphSeriesForTimeScope:a5];

    v17 = [v10 startDate];
    v18 = [v10 endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __124___HKCardioFitnessClassificationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B62D8;
    v19[4] = self;
    v20 = v11;
    [v15 cachedDataForCustomGraphSeries:v16 timeScope:a5 resolution:0 startDate:v17 endDate:v18 completion:v19];
  }
}

- (_HKCardioFitnessClassificationContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end