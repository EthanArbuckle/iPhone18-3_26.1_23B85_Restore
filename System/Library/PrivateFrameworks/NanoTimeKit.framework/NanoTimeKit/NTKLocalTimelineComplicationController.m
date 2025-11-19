@interface NTKLocalTimelineComplicationController
+ (Class)complicationDataSourceClassForComplication:(id)a3 family:(int64_t)a4 device:(id)a5;
- (CLKComplicationTemplate)sharingTemplate;
- (Class)richComplicationDisplayViewClass;
- (NTKLocalTimelineComplicationController)initWithComplication:(id)a3 variant:(id)a4 device:(id)a5;
- (id)activeDisplayTemplateForDisplayWrapper:(id)a3;
- (id)alwaysOnTemplate;
- (id)lockedTemplate;
- (void)_applyAnimationMode;
- (void)_applyCachingMode;
- (void)_applyUpdatingMode;
- (void)_cancelDelayedBlocks;
- (void)_completeExtendRightOperationWithBoundaryDate:(id)a3 entries:(id)a4;
- (void)_completeSetupOperationWithEndDate:(id)a3 currentEntry:(id)a4;
- (void)_deactivate;
- (void)_extendTimelineIfNecessaryAndPossible;
- (void)_queueAnimationForNextUpdate:(unint64_t)a3;
- (void)_requestDataSourceToUpdateToState:(int64_t)a3;
- (void)_resetTimelineForCachingChange;
- (void)_startExtendOperationIfNecessaryForTimeline:(id)a3 withDate:(id)a4 minBuffer:(double)a5;
- (void)_startExtendRightOperationFromDate:(id)a3;
- (void)_startSetupOperationIfPossible;
- (void)_suspendRightBoundaryDate:(id)a3;
- (void)_updateAllDisplayWrappersToCurrentTemplateWithReason:(int64_t)a3 animation:(unint64_t)queuedAnimation;
- (void)_updateDimStateForCurrentTimeline;
- (void)_updateDisplayWrapper:(id)a3 toCurrentTemplateWithReason:(int64_t)a4 animation:(unint64_t)a5;
- (void)_updateIsComplicationActive:(BOOL)a3;
- (void)addDisplayWrapper:(id)a3;
- (void)appendEntries:(id)a3 withTritiumUpdatePriority:(int64_t)a4;
- (void)entriesDidChangeInTimeline:(id)a3;
- (void)invalidateEntries;
- (void)invalidateSwitcherTemplate;
- (void)setDisplayProperties:(id)a3 forDisplayWrapper:(id)a4;
- (void)setIgnoreNewTemplates:(BOOL)a3;
- (void)setShowsLockedUI:(BOOL)a3;
- (void)setTimelineEndDate:(id)a3;
- (void)timeline:(id)a3 didChangeNowEntryFrom:(id)a4 to:(id)a5;
@end

@implementation NTKLocalTimelineComplicationController

- (NTKLocalTimelineComplicationController)initWithComplication:(id)a3 variant:(id)a4 device:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = NTKLocalTimelineComplicationController;
  v11 = [(NTKComplicationController *)&v22 initWithComplication:v8 variant:v9 device:v10];
  if (v11)
  {
    v12 = [objc_opt_class() complicationDataSourceClassForComplication:v8 family:objc_msgSend(v9 device:{"family"), v10}];
    v13 = objc_opt_new();
    v14 = [v9 metrics];
    [v13 setShowsBackground:{objc_msgSend(v14, "opaque")}];

    v15 = [[v12 alloc] initWithComplication:v8 family:objc_msgSend(v9 forDevice:"family") context:{v10, v13}];
    dataSource = v11->_dataSource;
    v11->_dataSource = v15;

    [(CLKCComplicationDataSource *)v11->_dataSource setDelegate:v11];
    v11->_dataSourceState = 0;
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    suspendedRightBoundaryDates = v11->_suspendedRightBoundaryDates;
    v11->_suspendedRightBoundaryDates = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    delayedBlocks = v11->_delayedBlocks;
    v11->_delayedBlocks = v19;

    v11->_hasBeenLive = 0;
    [(NTKLocalTimelineComplicationController *)v11 invalidateSwitcherTemplate];
  }

  return v11;
}

+ (Class)complicationDataSourceClassForComplication:(id)a3 family:(int64_t)a4 device:(id)a5
{
  v7 = a5;
  v8 = +[NTKComplicationDataSource dataSourceClassForComplicationType:family:forDevice:](NTKComplicationDataSource, "dataSourceClassForComplicationType:family:forDevice:", [a3 complicationType], a4, v7);

  return v8;
}

- (void)setIgnoreNewTemplates:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  if ([(NTKTimelineComplicationController *)self ignoreNewTemplates]!= a3)
  {
    v5 = _NTKLoggingObjectForDomain(40, "NTKLoggingDomainTritium");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      dataSource = self->_dataSource;
      *buf = 138412802;
      v9 = self;
      v10 = 2112;
      v11 = dataSource;
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "%@ %@ setIgnoreNewTemplates: %i", buf, 0x1Cu);
    }
  }

  v7.receiver = self;
  v7.super_class = NTKLocalTimelineComplicationController;
  [(NTKTimelineComplicationController *)&v7 setIgnoreNewTemplates:v3];
  if (!v3)
  {
    [(NTKLocalTimelineComplicationController *)self _updateAllDisplayWrappersToCurrentTemplateWithReason:0];
  }
}

- (void)_deactivate
{
  [(NTKTimelineDataOperation *)self->_currentOperation cancel];
  currentOperation = self->_currentOperation;
  self->_currentOperation = 0;

  [(NTKLocalTimelineComplicationController *)self _cancelDelayedBlocks];
}

- (void)_resetTimelineForCachingChange
{
  v3 = [(TLTimeline *)self->_timeline nowEntry];
  [(TLTimeline *)self->_timeline resetWithEntry:v3];
  [(NSMutableSet *)self->_suspendedRightBoundaryDates removeAllObjects];
  [(NTKLocalTimelineComplicationController *)self _queueAnimationForNextUpdate:1];
}

- (void)_applyCachingMode
{
  v3 = [(NTKComplicationController *)self cachingMode];
  if (v3 == 2)
  {

    [(NTKLocalTimelineComplicationController *)self _startSetupOperationIfPossible];
  }

  else
  {
    if (v3 != 1)
    {
      if (v3)
      {
        return;
      }

      self->_hasBeenLive = 0;
    }

    [(NTKLocalTimelineComplicationController *)self _resetTimelineForCachingChange];
  }
}

- (void)_applyUpdatingMode
{
  if ([(NTKComplicationController *)self updatingMode]== 1)
  {
    if (!self->_hasBeenLive)
    {
      self->_hasBeenLive = 1;
      [(NTKLocalTimelineComplicationController *)self _startSetupOperationIfPossible];
    }

    [(NTKLocalTimelineComplicationController *)self _requestDataSourceToUpdateToState:1];
    timeline = self->_timeline;

    [(TLTimeline *)timeline setPaused:0];
  }

  else
  {
    [(NTKLocalTimelineComplicationController *)self _requestDataSourceToUpdateToState:0];
    [(TLTimeline *)self->_timeline setPaused:1];

    [(NTKComplicationController *)self enumerateDisplayWrappersWithBlock:&__block_literal_global_144];
  }
}

- (void)_requestDataSourceToUpdateToState:(int64_t)a3
{
  dataSourceState = self->_dataSourceState;
  if (a3 != 1 || dataSourceState)
  {
    if (!a3 && dataSourceState == 1)
    {
      self->_dataSourceState = 0;
      [(CLKCComplicationDataSource *)self->_dataSource pause];
    }
  }

  else
  {
    self->_dataSourceState = 1;
    [(CLKCComplicationDataSource *)self->_dataSource resume];
  }
}

- (void)_applyAnimationMode
{
  v3 = [(NTKComplicationController *)self animationMode];
  dataSource = self->_dataSource;
  if (v3 == 1)
  {

    [(CLKCComplicationDataSource *)dataSource resumeAnimations];
  }

  else
  {

    [(CLKCComplicationDataSource *)dataSource pauseAnimations];
  }
}

- (void)_updateIsComplicationActive:(BOOL)a3
{
  dataSource = self->_dataSource;
  if (a3)
  {
    [(CLKCComplicationDataSource *)dataSource becomeActive];
  }

  else
  {
    [(CLKCComplicationDataSource *)dataSource becomeInactive];
  }
}

- (void)setDisplayProperties:(id)a3 forDisplayWrapper:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NTKComplicationController *)self effectiveFaceDataMode];
  v24.receiver = self;
  v24.super_class = NTKLocalTimelineComplicationController;
  [(NTKComplicationController *)&v24 setDisplayProperties:v6 forDisplayWrapper:v7];
  v9 = [(NTKComplicationController *)self effectiveFaceDataMode];
  v10 = [v6 faceDataMode];
  if (v9 != v8)
  {
    v11 = v10;
    v12 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(NTKLocalTimelineComplicationController *)self setDisplayProperties:v9 forDisplayWrapper:v12];
    }

    if (v9 == 1)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      dataSource = self->_dataSource;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __81__NTKLocalTimelineComplicationController_setDisplayProperties_forDisplayWrapper___block_invoke;
      v19[3] = &unk_278786480;
      v19[4] = &v20;
      [(CLKCComplicationDataSource *)dataSource getTimelineEndDateWithHandler:v19];
      if (self->_hasBeenLive && (v8 - 3) <= 2 && *(v21 + 24) == 1)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __81__NTKLocalTimelineComplicationController_setDisplayProperties_forDisplayWrapper___block_invoke_2;
        v18[3] = &unk_27877DB10;
        v18[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], v18);
      }

      else
      {
        [(NTKLocalTimelineComplicationController *)self _updateAllDisplayWrappersToCurrentTemplateWithReason:0];
      }

      _Block_object_dispose(&v20, 8);
    }

    else if ([(CLKCComplicationDataSource *)self->_dataSource alwaysShowIdealizedTemplateInSwitcher]|| v9 == 3 && !self->_hasBeenLive && !self->_switcherTemplate)
    {
      v14 = [(CLKCComplicationDataSource *)self->_dataSource currentSwitcherTemplate];
      switcherTemplate = self->_switcherTemplate;
      self->_switcherTemplate = v14;

      [(CLKComplicationTemplate *)self->_switcherTemplate finalize];
      if (v11 == 3 && v8 == 1)
      {
        v16 = self;
        v17 = 2;
      }

      else
      {
        v16 = self;
        v17 = 0;
      }

      [(NTKLocalTimelineComplicationController *)v16 _updateAllDisplayWrappersToCurrentTemplateWithReason:v17];
    }
  }
}

- (void)setShowsLockedUI:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKComplicationController *)self showsLockedUI];
  v7.receiver = self;
  v7.super_class = NTKLocalTimelineComplicationController;
  [(NTKComplicationController *)&v7 setShowsLockedUI:v3];
  if (v5 != v3)
  {
    if (v3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    [(NTKLocalTimelineComplicationController *)self _updateAllDisplayWrappersToCurrentTemplateWithReason:v6];
  }
}

- (void)addDisplayWrapper:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKLocalTimelineComplicationController;
  v4 = a3;
  [(NTKComplicationController *)&v6 addDisplayWrapper:v4];
  v5 = [(NTKLocalTimelineComplicationController *)self activeDisplayTemplateForDisplayWrapper:v4, v6.receiver, v6.super_class];
  [v4 setComplicationTemplate:v5 reason:0 animation:0];

  [v4 setDimmed:0];
}

- (void)_queueAnimationForNextUpdate:(unint64_t)a3
{
  if ([(CLKCComplicationDataSource *)self->_dataSource timelineAnimationBehavior])
  {
    self->_hasQueuedAnimation = 1;
    self->_queuedAnimation = a3;
  }
}

- (void)_updateAllDisplayWrappersToCurrentTemplateWithReason:(int64_t)a3 animation:(unint64_t)queuedAnimation
{
  if (![(NTKTimelineComplicationController *)self ignoreNewTemplates])
  {
    if (![(NTKComplicationController *)self showsLockedUI])
    {
      if (!self->_timeTravelDate && self->_hasQueuedAnimation && [(NTKComplicationController *)self updatingMode]== 1)
      {
        queuedAnimation = self->_queuedAnimation;
      }

      if ([(NTKComplicationController *)self updatingMode]== 1)
      {
        self->_hasQueuedAnimation = 0;
      }
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __105__NTKLocalTimelineComplicationController__updateAllDisplayWrappersToCurrentTemplateWithReason_animation___block_invoke;
    v7[3] = &unk_2787864A8;
    v7[4] = self;
    v7[5] = a3;
    v7[6] = queuedAnimation;
    [(NTKComplicationController *)self enumerateDisplayWrappersWithBlock:v7];
  }
}

- (void)_updateDisplayWrapper:(id)a3 toCurrentTemplateWithReason:(int64_t)a4 animation:(unint64_t)a5
{
  v10 = a3;
  v8 = [(NTKLocalTimelineComplicationController *)self activeDisplayTemplateForDisplayWrapper:?];
  if ([(NTKComplicationController *)self showsLockedUI])
  {
    v9 = [(NTKLocalTimelineComplicationController *)self lockedTemplate];

    if (v8 == v9)
    {
      a5 = 0;
    }
  }

  [v10 setComplicationTemplate:v8 reason:a4 animation:a5];
}

- (void)invalidateEntries
{
  [(NTKTimelineDataOperation *)self->_currentOperation cancel];
  currentOperation = self->_currentOperation;
  self->_currentOperation = 0;

  [(NTKLocalTimelineComplicationController *)self _cancelDelayedBlocks];
  [(NSMutableSet *)self->_suspendedRightBoundaryDates removeAllObjects];

  [(NTKLocalTimelineComplicationController *)self _startSetupOperationIfPossible];
}

- (void)setTimelineEndDate:(id)a3
{
  objc_storeStrong(&self->_timelineEndDate, a3);

  [(NTKLocalTimelineComplicationController *)self _updateDimStateForCurrentTimeline];
}

- (void)appendEntries:(id)a3 withTritiumUpdatePriority:(int64_t)a4
{
  timeline = self->_timeline;
  v6 = a3;
  v7 = [(TLTimeline *)timeline _rightmostDate];
  [(TLTimeline *)self->_timeline extendTimelineFromDate:v7 withEntries:v6];
}

- (void)invalidateSwitcherTemplate
{
  switcherTemplate = self->_switcherTemplate;
  self->_switcherTemplate = 0;

  if (!self->_hasBeenLive)
  {
    v4 = [(CLKCComplicationDataSource *)self->_dataSource currentSwitcherTemplate];
    v5 = self->_switcherTemplate;
    self->_switcherTemplate = v4;

    [(CLKComplicationTemplate *)self->_switcherTemplate finalize];

    [(NTKLocalTimelineComplicationController *)self _updateAllDisplayWrappersToCurrentTemplateWithReason:0];
  }
}

- (void)timeline:(id)a3 didChangeNowEntryFrom:(id)a4 to:(id)a5
{
  if (!self->_timeTravelDate)
  {
    dataSource = self->_dataSource;
    v9 = a5;
    v10 = a4;
    v11 = [(NTKTimelineComplicationController *)self _animationForTimelineEntryTransitionFrom:v10 to:v9 withAnimationBehavior:[(CLKCComplicationDataSource *)dataSource timelineAnimationBehavior]];

    [(NTKLocalTimelineComplicationController *)self _updateAllDisplayWrappersToCurrentTemplateWithReason:1 animation:v11];

    [(NTKLocalTimelineComplicationController *)self _extendTimelineIfNecessaryAndPossible];
  }
}

- (void)entriesDidChangeInTimeline:(id)a3
{
  v4 = [objc_opt_class() tritiumUpdatePriority];

  [(NTKComplicationController *)self notifyDelegateOnTimelineChangeWithTritiumUpdatePriority:v4];
}

- (void)_completeSetupOperationWithEndDate:(id)a3 currentEntry:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    currentOperation = self->_currentOperation;
    dataSource = self->_dataSource;
    v17 = 138412546;
    v18 = currentOperation;
    v19 = 2112;
    v20 = dataSource;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "Timeline setup operation %@ completed for %@", &v17, 0x16u);
  }

  [v7 finalize];
  v11 = self->_currentOperation;
  self->_currentOperation = 0;

  self->_supportsTimeTravelForward = v6 != 0;
  [(NTKLocalTimelineComplicationController *)self setTimelineEndDate:v6];
  if (v7)
  {
    timeline = self->_timeline;
    if (timeline)
    {
      [(TLTimeline *)timeline resetWithEntry:v7];
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x277D71500]) initWithEntry:v7];
      v16 = self->_timeline;
      self->_timeline = v15;

      [(TLTimeline *)self->_timeline setDelegate:self];
    }

    [(NTKLocalTimelineComplicationController *)self _updateAllDisplayWrappersToCurrentTemplateWithReason:1];
    [(NTKLocalTimelineComplicationController *)self _extendTimelineIfNecessaryAndPossible];
  }

  else
  {
    v13 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_dataSource;
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "**** First-party complication data source gave us a nil timeline entry; this will result in a blank complication: %@", &v17, 0xCu);
    }
  }
}

- (void)_startSetupOperationIfPossible
{
  if (!self->_currentOperation && self->_hasBeenLive)
  {
    objc_initWeak(&location, self);
    v3 = [(NTKTimelineDataOperation *)NTKTimelineSetupOperation operationWithLocalDataSource:self->_dataSource];
    v4 = MEMORY[0x277D85DD0];
    v5 = 3221225472;
    v6 = __72__NTKLocalTimelineComplicationController__startSetupOperationIfPossible__block_invoke;
    v7 = &unk_2787864D0;
    objc_copyWeak(&v8, &location);
    [v3 setHandler:&v4];
    objc_storeStrong(&self->_currentOperation, v3);
    [v3 start];
    objc_destroyWeak(&v8);

    objc_destroyWeak(&location);
  }
}

void __72__NTKLocalTimelineComplicationController__startSetupOperationIfPossible__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeSetupOperationWithEndDate:v8 currentEntry:v7];
}

- (id)alwaysOnTemplate
{
  v2 = [(CLKCComplicationDataSource *)self->_dataSource alwaysOnTemplate];
  [v2 finalize];

  return v2;
}

- (void)_extendTimelineIfNecessaryAndPossible
{
  if (!self->_currentOperation && self->_timeline && [(NTKComplicationController *)self effectiveFaceDataMode]!= 3 && [(NTKComplicationController *)self effectiveFaceDataMode]!= 4 && [(NTKComplicationController *)self effectiveFaceDataMode]!= 5)
  {
    timeline = self->_timeline;
    v4 = [MEMORY[0x277CBEAA8] date];
    [(NTKLocalTimelineComplicationController *)self _startExtendOperationIfNecessaryForTimeline:timeline withDate:v4 minBuffer:300.0];
  }
}

- (void)_startExtendOperationIfNecessaryForTimeline:(id)a3 withDate:(id)a4 minBuffer:(double)a5
{
  v8 = a4;
  v9 = [a3 _rightmostDate];
  [v9 timeIntervalSinceDate:v8];
  v11 = v10;

  if (self->_supportsTimeTravelForward)
  {
    if (v11 >= a5)
    {
      v12 = 0;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = 0;
  if (([v9 isEqualToDate:v9] & 1) == 0 && v11 < a5)
  {
LABEL_6:
    v12 = [(NSMutableSet *)self->_suspendedRightBoundaryDates containsObject:v9]^ 1;
  }

LABEL_7:
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __105__NTKLocalTimelineComplicationController__startExtendOperationIfNecessaryForTimeline_withDate_minBuffer___block_invoke;
  v16[3] = &unk_27877E438;
  v16[4] = self;
  v17 = v9;
  v13 = v9;
  v14 = _Block_copy(v16);
  v15 = v14;
  if (v12)
  {
    (*(v14 + 2))(v14);
  }
}

uint64_t __105__NTKLocalTimelineComplicationController__startExtendOperationIfNecessaryForTimeline_withDate_minBuffer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startExtendRightOperationFromDate:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _suspendRightBoundaryDate:v3];
}

- (void)_suspendRightBoundaryDate:(id)a3
{
  v4 = a3;
  [(NSMutableSet *)self->_suspendedRightBoundaryDates addObject:v4];
  v5 = [NTKDelayedBlock alloc];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __68__NTKLocalTimelineComplicationController__suspendRightBoundaryDate___block_invoke;
  v11 = &unk_2787864F8;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = [(NTKDelayedBlock *)v5 initWithDelay:&v8 action:120.0];
  [(NSMutableSet *)self->_delayedBlocks addObject:v7, v8, v9, v10, v11, v12];
}

uint64_t __68__NTKLocalTimelineComplicationController__suspendRightBoundaryDate___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 232) removeObject:a2];
  [*(*(a1 + 32) + 224) removeObject:*(a1 + 40)];
  v3 = *(a1 + 32);

  return [v3 _extendTimelineIfNecessaryAndPossible];
}

- (void)_cancelDelayedBlocks
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_delayedBlocks;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_delayedBlocks removeAllObjects];
}

- (void)_completeExtendRightOperationWithBoundaryDate:(id)a3 entries:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    currentOperation = self->_currentOperation;
    dataSource = self->_dataSource;
    *buf = 138412802;
    v23 = currentOperation;
    v24 = 2112;
    v25 = dataSource;
    v26 = 2048;
    v27 = [v7 count];
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "Timeline extend right operation %@ completed for %@ with %lu entries", buf, 0x20u);
  }

  v11 = self->_currentOperation;
  self->_currentOperation = 0;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) finalize];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }

  [(TLTimeline *)self->_timeline extendTimelineFromDate:v6 withEntries:v12];
  [(NTKLocalTimelineComplicationController *)self _extendTimelineIfNecessaryAndPossible];
}

- (void)_startExtendRightOperationFromDate:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NTKTimelineDataOperation *)NTKTimelineExtendDataOperation operationWithLocalDataSource:self->_dataSource];
  [v5 setExtendsRightFromDate:v4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__NTKLocalTimelineComplicationController__startExtendRightOperationFromDate___block_invoke;
  v7[3] = &unk_278786520;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 setHandler:v7];
  objc_storeStrong(&self->_currentOperation, v5);
  [v5 start];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __77__NTKLocalTimelineComplicationController__startExtendRightOperationFromDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completeExtendRightOperationWithBoundaryDate:*(a1 + 32) entries:v3];
}

- (Class)richComplicationDisplayViewClass
{
  if (objc_opt_respondsToSelector())
  {
    dataSource = self->_dataSource;
    v4 = [(NTKComplicationController *)self device];
    v5 = [(CLKCComplicationDataSource *)dataSource richComplicationDisplayViewClassForDevice:v4];

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)activeDisplayTemplateForDisplayWrapper:(id)a3
{
  v4 = [(NTKComplicationController *)self displayPropertiesForDisplayWrapper:a3];
  v5 = [v4 contentOverride];

  if (v5)
  {
    v6 = [(CLKCComplicationDataSource *)self->_dataSource sampleTemplate];

    if (v6)
    {
      v7 = [(CLKCComplicationDataSource *)self->_dataSource sampleTemplate];
LABEL_9:
      v8 = v7;
      goto LABEL_13;
    }
  }

  if ([(NTKComplicationController *)self showsLockedUI])
  {
    v7 = [(NTKLocalTimelineComplicationController *)self lockedTemplate];
    if (v7)
    {
      goto LABEL_9;
    }
  }

  if ([(CLKCComplicationDataSource *)self->_dataSource alwaysShowIdealizedTemplateInSwitcher])
  {
    if ([(NTKComplicationController *)self effectiveFaceDataMode]== 3)
    {
      v7 = self->_switcherTemplate;
      if (v7)
      {
        goto LABEL_9;
      }
    }
  }

  v9 = [(NTKLocalTimelineComplicationController *)self _currentEntry];
  v10 = [v9 complicationTemplate];
  switcherTemplate = v10;
  if (!v10)
  {
    switcherTemplate = self->_switcherTemplate;
  }

  v8 = switcherTemplate;

LABEL_13:

  return v8;
}

- (id)lockedTemplate
{
  v2 = [(CLKCComplicationDataSource *)self->_dataSource lockedTemplate];
  [v2 finalize];

  return v2;
}

- (void)_updateDimStateForCurrentTimeline
{
  if (self->_timeTravelDate)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    if (self->_supportsTimeTravelForward)
    {
      timelineEndDate = self->_timelineEndDate;
      if (timelineEndDate)
      {
        v5 = timelineEndDate;
      }

      else
      {
        v5 = [MEMORY[0x277CBEAA8] distantFuture];
      }
    }

    else
    {
      v5 = [MEMORY[0x277CBEAA8] date];
    }

    v7 = v5;
    v6 = [(NSDate *)self->_timeTravelDate compare:v3]!= NSOrderedDescending || [(NSDate *)self->_timeTravelDate compare:v7]!= NSOrderedAscending;
  }

  else
  {
    v6 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__NTKLocalTimelineComplicationController__updateDimStateForCurrentTimeline__block_invoke;
  v8[3] = &__block_descriptor_33_e43_v16__0__NTKComplicationDisplayWrapperView_8l;
  v9 = v6;
  [(NTKComplicationController *)self enumerateDisplayWrappersWithBlock:v8];
}

- (CLKComplicationTemplate)sharingTemplate
{
  v3 = [(CLKCComplicationDataSource *)self->_dataSource sampleTemplate];
  v4 = v3;
  if (v3)
  {
    [(CLKComplicationTemplate *)v3 finalize];
    switcherTemplate = v4;
  }

  else
  {
    switcherTemplate = self->_switcherTemplate;
  }

  v6 = switcherTemplate;

  return v6;
}

- (void)setDisplayProperties:(NSObject *)a3 forDisplayWrapper:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = NTKFaceDataModeDescription(a2);
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_DEBUG, "Updating %@ to data mode to %@", &v6, 0x16u);
}

@end