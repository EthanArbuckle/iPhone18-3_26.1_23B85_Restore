@interface NTKLocalTimelineComplicationController
+ (Class)complicationDataSourceClassForComplication:(id)complication family:(int64_t)family device:(id)device;
- (CLKComplicationTemplate)sharingTemplate;
- (Class)richComplicationDisplayViewClass;
- (NTKLocalTimelineComplicationController)initWithComplication:(id)complication variant:(id)variant device:(id)device;
- (id)activeDisplayTemplateForDisplayWrapper:(id)wrapper;
- (id)alwaysOnTemplate;
- (id)lockedTemplate;
- (void)_applyAnimationMode;
- (void)_applyCachingMode;
- (void)_applyUpdatingMode;
- (void)_cancelDelayedBlocks;
- (void)_completeExtendRightOperationWithBoundaryDate:(id)date entries:(id)entries;
- (void)_completeSetupOperationWithEndDate:(id)date currentEntry:(id)entry;
- (void)_deactivate;
- (void)_extendTimelineIfNecessaryAndPossible;
- (void)_queueAnimationForNextUpdate:(unint64_t)update;
- (void)_requestDataSourceToUpdateToState:(int64_t)state;
- (void)_resetTimelineForCachingChange;
- (void)_startExtendOperationIfNecessaryForTimeline:(id)timeline withDate:(id)date minBuffer:(double)buffer;
- (void)_startExtendRightOperationFromDate:(id)date;
- (void)_startSetupOperationIfPossible;
- (void)_suspendRightBoundaryDate:(id)date;
- (void)_updateAllDisplayWrappersToCurrentTemplateWithReason:(int64_t)reason animation:(unint64_t)queuedAnimation;
- (void)_updateDimStateForCurrentTimeline;
- (void)_updateDisplayWrapper:(id)wrapper toCurrentTemplateWithReason:(int64_t)reason animation:(unint64_t)animation;
- (void)_updateIsComplicationActive:(BOOL)active;
- (void)addDisplayWrapper:(id)wrapper;
- (void)appendEntries:(id)entries withTritiumUpdatePriority:(int64_t)priority;
- (void)entriesDidChangeInTimeline:(id)timeline;
- (void)invalidateEntries;
- (void)invalidateSwitcherTemplate;
- (void)setDisplayProperties:(id)properties forDisplayWrapper:(id)wrapper;
- (void)setIgnoreNewTemplates:(BOOL)templates;
- (void)setShowsLockedUI:(BOOL)i;
- (void)setTimelineEndDate:(id)date;
- (void)timeline:(id)timeline didChangeNowEntryFrom:(id)from to:(id)to;
@end

@implementation NTKLocalTimelineComplicationController

- (NTKLocalTimelineComplicationController)initWithComplication:(id)complication variant:(id)variant device:(id)device
{
  complicationCopy = complication;
  variantCopy = variant;
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = NTKLocalTimelineComplicationController;
  v11 = [(NTKComplicationController *)&v22 initWithComplication:complicationCopy variant:variantCopy device:deviceCopy];
  if (v11)
  {
    v12 = [objc_opt_class() complicationDataSourceClassForComplication:complicationCopy family:objc_msgSend(variantCopy device:{"family"), deviceCopy}];
    v13 = objc_opt_new();
    metrics = [variantCopy metrics];
    [v13 setShowsBackground:{objc_msgSend(metrics, "opaque")}];

    v15 = [[v12 alloc] initWithComplication:complicationCopy family:objc_msgSend(variantCopy forDevice:"family") context:{deviceCopy, v13}];
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

+ (Class)complicationDataSourceClassForComplication:(id)complication family:(int64_t)family device:(id)device
{
  deviceCopy = device;
  v8 = +[NTKComplicationDataSource dataSourceClassForComplicationType:family:forDevice:](NTKComplicationDataSource, "dataSourceClassForComplicationType:family:forDevice:", [complication complicationType], family, deviceCopy);

  return v8;
}

- (void)setIgnoreNewTemplates:(BOOL)templates
{
  templatesCopy = templates;
  v14 = *MEMORY[0x277D85DE8];
  if ([(NTKTimelineComplicationController *)self ignoreNewTemplates]!= templates)
  {
    v5 = _NTKLoggingObjectForDomain(40, "NTKLoggingDomainTritium");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      dataSource = self->_dataSource;
      *buf = 138412802;
      selfCopy = self;
      v10 = 2112;
      v11 = dataSource;
      v12 = 1024;
      v13 = templatesCopy;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "%@ %@ setIgnoreNewTemplates: %i", buf, 0x1Cu);
    }
  }

  v7.receiver = self;
  v7.super_class = NTKLocalTimelineComplicationController;
  [(NTKTimelineComplicationController *)&v7 setIgnoreNewTemplates:templatesCopy];
  if (!templatesCopy)
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
  nowEntry = [(TLTimeline *)self->_timeline nowEntry];
  [(TLTimeline *)self->_timeline resetWithEntry:nowEntry];
  [(NSMutableSet *)self->_suspendedRightBoundaryDates removeAllObjects];
  [(NTKLocalTimelineComplicationController *)self _queueAnimationForNextUpdate:1];
}

- (void)_applyCachingMode
{
  cachingMode = [(NTKComplicationController *)self cachingMode];
  if (cachingMode == 2)
  {

    [(NTKLocalTimelineComplicationController *)self _startSetupOperationIfPossible];
  }

  else
  {
    if (cachingMode != 1)
    {
      if (cachingMode)
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

- (void)_requestDataSourceToUpdateToState:(int64_t)state
{
  dataSourceState = self->_dataSourceState;
  if (state != 1 || dataSourceState)
  {
    if (!state && dataSourceState == 1)
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
  animationMode = [(NTKComplicationController *)self animationMode];
  dataSource = self->_dataSource;
  if (animationMode == 1)
  {

    [(CLKCComplicationDataSource *)dataSource resumeAnimations];
  }

  else
  {

    [(CLKCComplicationDataSource *)dataSource pauseAnimations];
  }
}

- (void)_updateIsComplicationActive:(BOOL)active
{
  dataSource = self->_dataSource;
  if (active)
  {
    [(CLKCComplicationDataSource *)dataSource becomeActive];
  }

  else
  {
    [(CLKCComplicationDataSource *)dataSource becomeInactive];
  }
}

- (void)setDisplayProperties:(id)properties forDisplayWrapper:(id)wrapper
{
  propertiesCopy = properties;
  wrapperCopy = wrapper;
  effectiveFaceDataMode = [(NTKComplicationController *)self effectiveFaceDataMode];
  v24.receiver = self;
  v24.super_class = NTKLocalTimelineComplicationController;
  [(NTKComplicationController *)&v24 setDisplayProperties:propertiesCopy forDisplayWrapper:wrapperCopy];
  effectiveFaceDataMode2 = [(NTKComplicationController *)self effectiveFaceDataMode];
  faceDataMode = [propertiesCopy faceDataMode];
  if (effectiveFaceDataMode2 != effectiveFaceDataMode)
  {
    v11 = faceDataMode;
    v12 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(NTKLocalTimelineComplicationController *)self setDisplayProperties:effectiveFaceDataMode2 forDisplayWrapper:v12];
    }

    if (effectiveFaceDataMode2 == 1)
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
      if (self->_hasBeenLive && (effectiveFaceDataMode - 3) <= 2 && *(v21 + 24) == 1)
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

    else if ([(CLKCComplicationDataSource *)self->_dataSource alwaysShowIdealizedTemplateInSwitcher]|| effectiveFaceDataMode2 == 3 && !self->_hasBeenLive && !self->_switcherTemplate)
    {
      currentSwitcherTemplate = [(CLKCComplicationDataSource *)self->_dataSource currentSwitcherTemplate];
      switcherTemplate = self->_switcherTemplate;
      self->_switcherTemplate = currentSwitcherTemplate;

      [(CLKComplicationTemplate *)self->_switcherTemplate finalize];
      if (v11 == 3 && effectiveFaceDataMode == 1)
      {
        selfCopy2 = self;
        v17 = 2;
      }

      else
      {
        selfCopy2 = self;
        v17 = 0;
      }

      [(NTKLocalTimelineComplicationController *)selfCopy2 _updateAllDisplayWrappersToCurrentTemplateWithReason:v17];
    }
  }
}

- (void)setShowsLockedUI:(BOOL)i
{
  iCopy = i;
  showsLockedUI = [(NTKComplicationController *)self showsLockedUI];
  v7.receiver = self;
  v7.super_class = NTKLocalTimelineComplicationController;
  [(NTKComplicationController *)&v7 setShowsLockedUI:iCopy];
  if (showsLockedUI != iCopy)
  {
    if (iCopy)
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

- (void)addDisplayWrapper:(id)wrapper
{
  v6.receiver = self;
  v6.super_class = NTKLocalTimelineComplicationController;
  wrapperCopy = wrapper;
  [(NTKComplicationController *)&v6 addDisplayWrapper:wrapperCopy];
  v5 = [(NTKLocalTimelineComplicationController *)self activeDisplayTemplateForDisplayWrapper:wrapperCopy, v6.receiver, v6.super_class];
  [wrapperCopy setComplicationTemplate:v5 reason:0 animation:0];

  [wrapperCopy setDimmed:0];
}

- (void)_queueAnimationForNextUpdate:(unint64_t)update
{
  if ([(CLKCComplicationDataSource *)self->_dataSource timelineAnimationBehavior])
  {
    self->_hasQueuedAnimation = 1;
    self->_queuedAnimation = update;
  }
}

- (void)_updateAllDisplayWrappersToCurrentTemplateWithReason:(int64_t)reason animation:(unint64_t)queuedAnimation
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
    v7[5] = reason;
    v7[6] = queuedAnimation;
    [(NTKComplicationController *)self enumerateDisplayWrappersWithBlock:v7];
  }
}

- (void)_updateDisplayWrapper:(id)wrapper toCurrentTemplateWithReason:(int64_t)reason animation:(unint64_t)animation
{
  wrapperCopy = wrapper;
  v8 = [(NTKLocalTimelineComplicationController *)self activeDisplayTemplateForDisplayWrapper:?];
  if ([(NTKComplicationController *)self showsLockedUI])
  {
    lockedTemplate = [(NTKLocalTimelineComplicationController *)self lockedTemplate];

    if (v8 == lockedTemplate)
    {
      animation = 0;
    }
  }

  [wrapperCopy setComplicationTemplate:v8 reason:reason animation:animation];
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

- (void)setTimelineEndDate:(id)date
{
  objc_storeStrong(&self->_timelineEndDate, date);

  [(NTKLocalTimelineComplicationController *)self _updateDimStateForCurrentTimeline];
}

- (void)appendEntries:(id)entries withTritiumUpdatePriority:(int64_t)priority
{
  timeline = self->_timeline;
  entriesCopy = entries;
  _rightmostDate = [(TLTimeline *)timeline _rightmostDate];
  [(TLTimeline *)self->_timeline extendTimelineFromDate:_rightmostDate withEntries:entriesCopy];
}

- (void)invalidateSwitcherTemplate
{
  switcherTemplate = self->_switcherTemplate;
  self->_switcherTemplate = 0;

  if (!self->_hasBeenLive)
  {
    currentSwitcherTemplate = [(CLKCComplicationDataSource *)self->_dataSource currentSwitcherTemplate];
    v5 = self->_switcherTemplate;
    self->_switcherTemplate = currentSwitcherTemplate;

    [(CLKComplicationTemplate *)self->_switcherTemplate finalize];

    [(NTKLocalTimelineComplicationController *)self _updateAllDisplayWrappersToCurrentTemplateWithReason:0];
  }
}

- (void)timeline:(id)timeline didChangeNowEntryFrom:(id)from to:(id)to
{
  if (!self->_timeTravelDate)
  {
    dataSource = self->_dataSource;
    toCopy = to;
    fromCopy = from;
    v11 = [(NTKTimelineComplicationController *)self _animationForTimelineEntryTransitionFrom:fromCopy to:toCopy withAnimationBehavior:[(CLKCComplicationDataSource *)dataSource timelineAnimationBehavior]];

    [(NTKLocalTimelineComplicationController *)self _updateAllDisplayWrappersToCurrentTemplateWithReason:1 animation:v11];

    [(NTKLocalTimelineComplicationController *)self _extendTimelineIfNecessaryAndPossible];
  }
}

- (void)entriesDidChangeInTimeline:(id)timeline
{
  tritiumUpdatePriority = [objc_opt_class() tritiumUpdatePriority];

  [(NTKComplicationController *)self notifyDelegateOnTimelineChangeWithTritiumUpdatePriority:tritiumUpdatePriority];
}

- (void)_completeSetupOperationWithEndDate:(id)date currentEntry:(id)entry
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  entryCopy = entry;
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

  [entryCopy finalize];
  v11 = self->_currentOperation;
  self->_currentOperation = 0;

  self->_supportsTimeTravelForward = dateCopy != 0;
  [(NTKLocalTimelineComplicationController *)self setTimelineEndDate:dateCopy];
  if (entryCopy)
  {
    timeline = self->_timeline;
    if (timeline)
    {
      [(TLTimeline *)timeline resetWithEntry:entryCopy];
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x277D71500]) initWithEntry:entryCopy];
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
  alwaysOnTemplate = [(CLKCComplicationDataSource *)self->_dataSource alwaysOnTemplate];
  [alwaysOnTemplate finalize];

  return alwaysOnTemplate;
}

- (void)_extendTimelineIfNecessaryAndPossible
{
  if (!self->_currentOperation && self->_timeline && [(NTKComplicationController *)self effectiveFaceDataMode]!= 3 && [(NTKComplicationController *)self effectiveFaceDataMode]!= 4 && [(NTKComplicationController *)self effectiveFaceDataMode]!= 5)
  {
    timeline = self->_timeline;
    date = [MEMORY[0x277CBEAA8] date];
    [(NTKLocalTimelineComplicationController *)self _startExtendOperationIfNecessaryForTimeline:timeline withDate:date minBuffer:300.0];
  }
}

- (void)_startExtendOperationIfNecessaryForTimeline:(id)timeline withDate:(id)date minBuffer:(double)buffer
{
  dateCopy = date;
  _rightmostDate = [timeline _rightmostDate];
  [_rightmostDate timeIntervalSinceDate:dateCopy];
  v11 = v10;

  if (self->_supportsTimeTravelForward)
  {
    if (v11 >= buffer)
    {
      v12 = 0;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = 0;
  if (([_rightmostDate isEqualToDate:_rightmostDate] & 1) == 0 && v11 < buffer)
  {
LABEL_6:
    v12 = [(NSMutableSet *)self->_suspendedRightBoundaryDates containsObject:_rightmostDate]^ 1;
  }

LABEL_7:
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __105__NTKLocalTimelineComplicationController__startExtendOperationIfNecessaryForTimeline_withDate_minBuffer___block_invoke;
  v16[3] = &unk_27877E438;
  v16[4] = self;
  v17 = _rightmostDate;
  v13 = _rightmostDate;
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

- (void)_suspendRightBoundaryDate:(id)date
{
  dateCopy = date;
  [(NSMutableSet *)self->_suspendedRightBoundaryDates addObject:dateCopy];
  v5 = [NTKDelayedBlock alloc];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __68__NTKLocalTimelineComplicationController__suspendRightBoundaryDate___block_invoke;
  v11 = &unk_2787864F8;
  selfCopy = self;
  v13 = dateCopy;
  v6 = dateCopy;
  v7 = [(NTKDelayedBlock *)v5 initWithDelay:&v8 action:120.0];
  [(NSMutableSet *)self->_delayedBlocks addObject:v7, v8, v9, v10, v11, selfCopy];
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

- (void)_completeExtendRightOperationWithBoundaryDate:(id)date entries:(id)entries
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  entriesCopy = entries;
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
    v27 = [entriesCopy count];
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "Timeline extend right operation %@ completed for %@ with %lu entries", buf, 0x20u);
  }

  v11 = self->_currentOperation;
  self->_currentOperation = 0;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = entriesCopy;
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

  [(TLTimeline *)self->_timeline extendTimelineFromDate:dateCopy withEntries:v12];
  [(NTKLocalTimelineComplicationController *)self _extendTimelineIfNecessaryAndPossible];
}

- (void)_startExtendRightOperationFromDate:(id)date
{
  dateCopy = date;
  objc_initWeak(&location, self);
  v5 = [(NTKTimelineDataOperation *)NTKTimelineExtendDataOperation operationWithLocalDataSource:self->_dataSource];
  [v5 setExtendsRightFromDate:dateCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__NTKLocalTimelineComplicationController__startExtendRightOperationFromDate___block_invoke;
  v7[3] = &unk_278786520;
  objc_copyWeak(&v9, &location);
  v6 = dateCopy;
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
    device = [(NTKComplicationController *)self device];
    v5 = [(CLKCComplicationDataSource *)dataSource richComplicationDisplayViewClassForDevice:device];

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)activeDisplayTemplateForDisplayWrapper:(id)wrapper
{
  v4 = [(NTKComplicationController *)self displayPropertiesForDisplayWrapper:wrapper];
  contentOverride = [v4 contentOverride];

  if (contentOverride)
  {
    sampleTemplate = [(CLKCComplicationDataSource *)self->_dataSource sampleTemplate];

    if (sampleTemplate)
    {
      sampleTemplate2 = [(CLKCComplicationDataSource *)self->_dataSource sampleTemplate];
LABEL_9:
      v8 = sampleTemplate2;
      goto LABEL_13;
    }
  }

  if ([(NTKComplicationController *)self showsLockedUI])
  {
    sampleTemplate2 = [(NTKLocalTimelineComplicationController *)self lockedTemplate];
    if (sampleTemplate2)
    {
      goto LABEL_9;
    }
  }

  if ([(CLKCComplicationDataSource *)self->_dataSource alwaysShowIdealizedTemplateInSwitcher])
  {
    if ([(NTKComplicationController *)self effectiveFaceDataMode]== 3)
    {
      sampleTemplate2 = self->_switcherTemplate;
      if (sampleTemplate2)
      {
        goto LABEL_9;
      }
    }
  }

  _currentEntry = [(NTKLocalTimelineComplicationController *)self _currentEntry];
  complicationTemplate = [_currentEntry complicationTemplate];
  switcherTemplate = complicationTemplate;
  if (!complicationTemplate)
  {
    switcherTemplate = self->_switcherTemplate;
  }

  v8 = switcherTemplate;

LABEL_13:

  return v8;
}

- (id)lockedTemplate
{
  lockedTemplate = [(CLKCComplicationDataSource *)self->_dataSource lockedTemplate];
  [lockedTemplate finalize];

  return lockedTemplate;
}

- (void)_updateDimStateForCurrentTimeline
{
  if (self->_timeTravelDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    if (self->_supportsTimeTravelForward)
    {
      timelineEndDate = self->_timelineEndDate;
      if (timelineEndDate)
      {
        distantFuture = timelineEndDate;
      }

      else
      {
        distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      }
    }

    else
    {
      distantFuture = [MEMORY[0x277CBEAA8] date];
    }

    v7 = distantFuture;
    v6 = [(NSDate *)self->_timeTravelDate compare:date]!= NSOrderedDescending || [(NSDate *)self->_timeTravelDate compare:v7]!= NSOrderedAscending;
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
  sampleTemplate = [(CLKCComplicationDataSource *)self->_dataSource sampleTemplate];
  v4 = sampleTemplate;
  if (sampleTemplate)
  {
    [(CLKComplicationTemplate *)sampleTemplate finalize];
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