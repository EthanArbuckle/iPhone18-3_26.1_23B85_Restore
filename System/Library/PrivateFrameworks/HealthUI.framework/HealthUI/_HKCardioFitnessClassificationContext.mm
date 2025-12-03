@interface _HKCardioFitnessClassificationContext
- (_HKCardioFitnessClassificationContext)initWithMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller delegate:(id)delegate;
- (_HKCardioFitnessClassificationContextDelegate)delegate;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation _HKCardioFitnessClassificationContext

- (_HKCardioFitnessClassificationContext)initWithMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller delegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = _HKCardioFitnessClassificationContext;
  v11 = [(_HKCardioFitnessOverlayContext *)&v14 initWithMode:mode applicationItems:items overlayChartController:controller];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
  }

  return v12;
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  overlayChartController = [(_HKCardioFitnessOverlayContext *)self overlayChartController];
  primaryDisplayType = [overlayChartController primaryDisplayType];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = primaryDisplayType;
    overlayChartController2 = [(_HKCardioFitnessOverlayContext *)self overlayChartController];
    v16 = [v14 graphSeriesForTimeScope:scope];

    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __124___HKCardioFitnessClassificationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B62D8;
    v19[4] = self;
    v20 = completionCopy;
    [overlayChartController2 cachedDataForCustomGraphSeries:v16 timeScope:scope resolution:0 startDate:startDate endDate:endDate completion:v19];
  }
}

- (_HKCardioFitnessClassificationContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end