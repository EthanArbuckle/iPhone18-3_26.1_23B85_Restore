@interface _ActivityFactorContext
- (BOOL)_isGraphViewReadyForContextUpdate:(id)a3;
- (_ActivityCurrentValueView)activityCurrentValueView;
- (_ActivityFactorContext)initWithPrimaryDisplayType:(id)a3 factorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8 activityCurrentValueView:(id)a9;
- (id)_moveStringForSummary:(id)a3;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation _ActivityFactorContext

- (_ActivityFactorContext)initWithPrimaryDisplayType:(id)a3 factorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8 activityCurrentValueView:(id)a9
{
  v16 = a9;
  v21.receiver = self;
  v21.super_class = _ActivityFactorContext;
  v20 = 1;
  v17 = [(HKOverlayRoomFactorContext *)&v21 initWithPrimaryDisplayType:a3 factorDisplayType:a4 overlayChartController:a5 currentCalendarOverride:a6 applicationItems:a7 overlayMode:a8 allowsDeselection:v20];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_activityCurrentValueView, v16);
  }

  return v18;
}

- (BOOL)_isGraphViewReadyForContextUpdate:(id)a3
{
  v3 = a3;
  v4 = [HKInteractiveChartActivityController firstActivitySeriesForGraphView:v3];
  [v3 frame];
  v6 = v5;
  v8 = v7;

  v9 = v8 > 0.0;
  if (v6 <= 0.0)
  {
    v9 = 0;
  }

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v32[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [v13 primaryGraphViewController];
  v16 = [v15 graphView];

  if ([(_ActivityFactorContext *)self _isGraphViewReadyForContextUpdate:v16])
  {
    objc_initWeak(&location, self);
    v32[0] = v12;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __109___ActivityFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2;
    v18[3] = &unk_1E81BA6F8;
    objc_copyWeak(v24, &location);
    v19 = v12;
    v24[1] = a5;
    v20 = v13;
    v21 = self;
    v22 = v16;
    v23 = v14;
    [(HKOverlayRoomStackedContext *)self chartPointsForChartPointType:1 dateIntervals:v17 overlayChartController:v20 dateIntervalMustMatchView:1 timeScope:a5 resolution:a6 completion:v18];

    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109___ActivityFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    block[3] = &unk_1E81BA6D0;
    block[4] = self;
    v27 = v12;
    v28 = v13;
    v30 = a5;
    v31 = a6;
    v29 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)_moveStringForSummary:(id)a3
{
  v4 = a3;
  if ([v4 activityMoveMode] == 2)
  {
    v5 = [v4 appleMoveTime];
    v6 = [v4 appleMoveTimeGoal];

    v7 = HKLocalizedDisplayStringForAppleMoveTime(v5, v6, 1, 0);
  }

  else
  {
    v8 = [(_ActivityFactorContext *)self activityCurrentValueView];
    v9 = [v8 activitySummaryDataProvider];
    v10 = [v9 displayTypeController];
    v5 = [v10 displayTypeWithIdentifier:&unk_1F43843F0];

    v11 = [(_ActivityFactorContext *)self activityCurrentValueView];
    v12 = [v11 activitySummaryDataProvider];
    v13 = [v12 unitController];
    v6 = [v13 unitForDisplayType:v5];

    v14 = MEMORY[0x1E696AD98];
    v15 = [v4 activeEnergyBurned];
    [v15 doubleValueForUnit:v6];
    v16 = [v14 numberWithDouble:?];

    v17 = [v4 activeEnergyBurned];

    v18 = HKLocalizedStringWithEnergy();

    v19 = [(_ActivityFactorContext *)self activityCurrentValueView];
    v20 = [v19 activitySummaryDataProvider];
    v21 = [v20 unitController];
    v22 = [v21 localizedDisplayNameForUnit:v6 value:v16];

    v7 = HKFormatValueAndUnit(v18, v22);
  }

  return v7;
}

- (_ActivityCurrentValueView)activityCurrentValueView
{
  WeakRetained = objc_loadWeakRetained(&self->_activityCurrentValueView);

  return WeakRetained;
}

@end