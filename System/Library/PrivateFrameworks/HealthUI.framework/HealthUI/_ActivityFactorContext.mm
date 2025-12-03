@interface _ActivityFactorContext
- (BOOL)_isGraphViewReadyForContextUpdate:(id)update;
- (_ActivityCurrentValueView)activityCurrentValueView;
- (_ActivityFactorContext)initWithPrimaryDisplayType:(id)type factorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode activityCurrentValueView:(id)view;
- (id)_moveStringForSummary:(id)summary;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation _ActivityFactorContext

- (_ActivityFactorContext)initWithPrimaryDisplayType:(id)type factorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode activityCurrentValueView:(id)view
{
  viewCopy = view;
  v21.receiver = self;
  v21.super_class = _ActivityFactorContext;
  v20 = 1;
  v17 = [(HKOverlayRoomFactorContext *)&v21 initWithPrimaryDisplayType:type factorDisplayType:displayType overlayChartController:controller currentCalendarOverride:override applicationItems:items overlayMode:mode allowsDeselection:v20];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_activityCurrentValueView, viewCopy);
  }

  return v18;
}

- (BOOL)_isGraphViewReadyForContextUpdate:(id)update
{
  updateCopy = update;
  v4 = [HKInteractiveChartActivityController firstActivitySeriesForGraphView:updateCopy];
  [updateCopy frame];
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

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  v32[1] = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  controllerCopy = controller;
  completionCopy = completion;
  primaryGraphViewController = [controllerCopy primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];

  if ([(_ActivityFactorContext *)self _isGraphViewReadyForContextUpdate:graphView])
  {
    objc_initWeak(&location, self);
    v32[0] = intervalCopy;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __109___ActivityFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2;
    v18[3] = &unk_1E81BA6F8;
    objc_copyWeak(v24, &location);
    v19 = intervalCopy;
    v24[1] = scope;
    v20 = controllerCopy;
    selfCopy = self;
    v22 = graphView;
    v23 = completionCopy;
    [(HKOverlayRoomStackedContext *)self chartPointsForChartPointType:1 dateIntervals:v17 overlayChartController:v20 dateIntervalMustMatchView:1 timeScope:scope resolution:resolution completion:v18];

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
    v27 = intervalCopy;
    v28 = controllerCopy;
    scopeCopy = scope;
    resolutionCopy = resolution;
    v29 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)_moveStringForSummary:(id)summary
{
  summaryCopy = summary;
  if ([summaryCopy activityMoveMode] == 2)
  {
    appleMoveTime = [summaryCopy appleMoveTime];
    appleMoveTimeGoal = [summaryCopy appleMoveTimeGoal];

    v7 = HKLocalizedDisplayStringForAppleMoveTime(appleMoveTime, appleMoveTimeGoal, 1, 0);
  }

  else
  {
    activityCurrentValueView = [(_ActivityFactorContext *)self activityCurrentValueView];
    activitySummaryDataProvider = [activityCurrentValueView activitySummaryDataProvider];
    displayTypeController = [activitySummaryDataProvider displayTypeController];
    appleMoveTime = [displayTypeController displayTypeWithIdentifier:&unk_1F43843F0];

    activityCurrentValueView2 = [(_ActivityFactorContext *)self activityCurrentValueView];
    activitySummaryDataProvider2 = [activityCurrentValueView2 activitySummaryDataProvider];
    unitController = [activitySummaryDataProvider2 unitController];
    appleMoveTimeGoal = [unitController unitForDisplayType:appleMoveTime];

    v14 = MEMORY[0x1E696AD98];
    activeEnergyBurned = [summaryCopy activeEnergyBurned];
    [activeEnergyBurned doubleValueForUnit:appleMoveTimeGoal];
    v16 = [v14 numberWithDouble:?];

    activeEnergyBurned2 = [summaryCopy activeEnergyBurned];

    v18 = HKLocalizedStringWithEnergy();

    activityCurrentValueView3 = [(_ActivityFactorContext *)self activityCurrentValueView];
    activitySummaryDataProvider3 = [activityCurrentValueView3 activitySummaryDataProvider];
    unitController2 = [activitySummaryDataProvider3 unitController];
    v22 = [unitController2 localizedDisplayNameForUnit:appleMoveTimeGoal value:v16];

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