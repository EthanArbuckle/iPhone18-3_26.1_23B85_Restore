@interface MTScheduledList
+ (id)_dateIntervalFilter:(id)filter;
+ (id)_nextScheduledObjectInSets:(id)sets;
+ (void)_sort:(id)_sort;
+ (void)_sortAndFilter:(id)filter objectsToScheduleAhead:(id)ahead;
- (BOOL)isScheduled:(id)scheduled;
- (MTScheduledList)initWithDelegate:(id)delegate;
- (MTScheduledListDelegate)delegate;
- (NSArray)scheduledAlertsAndNotifications;
- (NSArray)scheduledObjects;
- (id)_scheduledListForTriggerType:(unint64_t)type;
- (id)description;
- (id)nextScheduledAlertOrNotification;
- (id)nextScheduledObject;
- (id)nextScheduledObjectWithTriggerType:(unint64_t)type;
- (id)scheduledObjectsToFireBeforeDate:(id)date;
- (id)scheduledObjectsToFireInInterval:(id)interval;
- (void)_performScheduleChangingBlock:(id)block withCompletion:(id)completion;
- (void)_scheduleObject:(id)object;
- (void)_unschedule:(id)_unschedule;
- (void)_unscheduleObject:(id)object;
- (void)reset;
- (void)schedule:(id)schedule afterDate:(id)date withCompletion:(id)completion;
- (void)unschedule:(id)unschedule;
@end

@implementation MTScheduledList

- (MTScheduledList)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = MTScheduledList;
  v5 = [(MTScheduledList *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_opt_new();
    orderedScheduledAlerts = v6->_orderedScheduledAlerts;
    v6->_orderedScheduledAlerts = v7;

    v9 = objc_opt_new();
    orderedScheduledNotifications = v6->_orderedScheduledNotifications;
    v6->_orderedScheduledNotifications = v9;

    v11 = objc_opt_new();
    orderedScheduledEvents = v6->_orderedScheduledEvents;
    v6->_orderedScheduledEvents = v11;

    v13 = objc_opt_new();
    scheduledAlertMap = v6->_scheduledAlertMap;
    v6->_scheduledAlertMap = v13;
  }

  return v6;
}

+ (void)_sort:(id)_sort
{
  _sortCopy = _sort;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(MTScheduledList *)a2 _sort:self];
  }

  _scheduledObjectComparator = [objc_opt_class() _scheduledObjectComparator];
  [_sortCopy sortUsingComparator:_scheduledObjectComparator];
}

+ (void)_sortAndFilter:(id)filter objectsToScheduleAhead:(id)ahead
{
  filterCopy = filter;
  aheadCopy = ahead;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [MTScheduledList _sortAndFilter:a2 objectsToScheduleAhead:self];
  }

  _scheduledObjectComparator = [objc_opt_class() _scheduledObjectComparator];
  [filterCopy sortUsingComparator:_scheduledObjectComparator];

  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __57__MTScheduledList__sortAndFilter_objectsToScheduleAhead___block_invoke;
  v33[3] = &unk_1E7B0C870;
  v13 = v11;
  v34 = v13;
  v14 = v12;
  v35 = v14;
  v15 = v10;
  v36 = v15;
  [filterCopy enumerateObjectsUsingBlock:v33];
  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    v17 = objc_opt_new();
    mtGregorianCalendar = [MEMORY[0x1E695DEE8] mtGregorianCalendar];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __57__MTScheduledList__sortAndFilter_objectsToScheduleAhead___block_invoke_2;
    v27 = &unk_1E7B0C898;
    v19 = firstObject;
    v28 = v19;
    v29 = mtGregorianCalendar;
    v20 = v17;
    v30 = v20;
    v31 = aheadCopy;
    selfCopy = self;
    v21 = mtGregorianCalendar;
    [v15 enumerateObjectsUsingBlock:&v24];
    trigger = [v19 trigger];
    isPastOverrideEvent = [trigger isPastOverrideEvent];

    if (isPastOverrideEvent)
    {
      [v20 addObject:v19];
    }

    if ([v20 count])
    {
      [filterCopy removeObjectsInArray:v20];
    }

    if ([v14 count])
    {
      [filterCopy removeObjectsInArray:v14];
    }
  }
}

void __57__MTScheduledList__sortAndFilter_objectsToScheduleAhead___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v4 = [v14 trigger];
  v5 = [v4 triggerType];
  v6 = v14;
  if (v5 != 4)
  {
    v2 = [v14 trigger];
    if ([v2 triggerType] != 5)
    {

      goto LABEL_14;
    }

    v6 = v14;
  }

  v7 = [v6 scheduleable];
  v8 = [v7 isSleepItem];

  if (v5 == 4)
  {

    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v9 = [v14 scheduleable];
  v10 = [v9 isSingleTime];

  if (v10)
  {
    [*(a1 + 32) addObject:v14];
    v11 = [v14 scheduleable];
    v12 = [v11 isItemEnabled];

    if (v12)
    {
      goto LABEL_14;
    }

    v13 = *(a1 + 40);
  }

  else
  {
    v13 = *(a1 + 48);
  }

  [v13 addObject:v14];
LABEL_14:
}

void __57__MTScheduledList__sortAndFilter_objectsToScheduleAhead___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) scheduleable];
  v5 = [v4 overridesScheduledObject:v3 calendar:*(a1 + 40)];

  if (v5)
  {
    [*(a1 + 48) addObject:v3];
    v6 = [v3 scheduleable];
    v7 = [v3 trigger];
    v8 = [v7 triggerDate];
    v9 = [v6 upcomingTriggersAfterDate:v8];

    if ([v9 count])
    {
      v10 = *(a1 + 56);
      v11 = [v3 scheduleable];
      v12 = [v9 firstObject];
      v13 = [MTScheduledObject scheduledObjectForScheduleable:v11 trigger:v12];
      [v10 addObject:v13];

      v14 = [v3 scheduleable];
      LOBYTE(v13) = objc_opt_respondsToSelector();

      if (v13)
      {
        v15 = *(a1 + 40);
        v16 = [v3 trigger];
        v17 = [v16 triggerDate];
        v18 = [v15 startOfDayForDate:v17];

        v19 = [*(a1 + 40) dateByAddingUnit:16 value:1 toDate:v18 options:0];
        v20 = [*(a1 + 40) dateByAddingUnit:128 value:-1 toDate:v19 options:0];
        v21 = [v3 scheduleable];
        [v21 scheduleOverridenForDate:v20];
      }
    }
  }

  else
  {
    v9 = MTLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 64);
      v24 = [*(a1 + 32) debugDescription];
      v25 = [v3 debugDescription];
      v26 = 138543874;
      v27 = v23;
      v28 = 2114;
      v29 = v24;
      v30 = 2114;
      v31 = v25;
      _os_log_error_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_ERROR, "%{public}@ event %{public}@ failed to override event %{public}@ keeping original wake event schedule", &v26, 0x20u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __45__MTScheduledList__scheduledObjectComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 trigger];
  v7 = [v6 triggerDate];
  v8 = [v5 trigger];
  v9 = [v8 triggerDate];
  v10 = [v7 isEqualToDate:v9];

  if (v10)
  {
    v11 = [v5 trigger];
    v12 = [v11 triggerType];
    v13 = [v4 trigger];
    v14 = v12 - [v13 triggerType];
  }

  else
  {
    v11 = [v4 trigger];
    v13 = [v11 triggerDate];
    v15 = [v5 trigger];
    v16 = [v15 triggerDate];
    v14 = [v13 compare:v16];
  }

  return v14;
}

- (NSArray)scheduledAlertsAndNotifications
{
  v3 = MEMORY[0x1E695DF70];
  array = [(NSMutableOrderedSet *)self->_orderedScheduledAlerts array];
  v5 = [v3 arrayWithArray:array];

  array2 = [(NSMutableOrderedSet *)self->_orderedScheduledNotifications array];
  [v5 addObjectsFromArray:array2];

  [objc_opt_class() _sortAndFilter:v5];

  return v5;
}

- (NSArray)scheduledObjects
{
  v3 = MEMORY[0x1E695DF70];
  scheduledAlertsAndNotifications = [(MTScheduledList *)self scheduledAlertsAndNotifications];
  v5 = [v3 arrayWithArray:scheduledAlertsAndNotifications];

  array = [(NSMutableOrderedSet *)self->_orderedScheduledEvents array];
  [v5 addObjectsFromArray:array];

  [objc_opt_class() _sortAndFilter:v5];

  return v5;
}

- (id)scheduledObjectsToFireBeforeDate:(id)date
{
  dateCopy = date;
  v5 = objc_opt_class();
  scheduledObjects = [(MTScheduledList *)self scheduledObjects];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__MTScheduledList_scheduledObjectsToFireBeforeDate___block_invoke;
  v10[3] = &unk_1E7B0C8E0;
  v11 = dateCopy;
  v7 = dateCopy;
  v8 = [v5 _filterScheduledObjects:scheduledObjects withBlock:v10];

  return v8;
}

BOOL __52__MTScheduledList_scheduledObjectsToFireBeforeDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 trigger];
  v4 = [v3 triggerDate];
  v5 = v4;
  v6 = v4 && ([v4 mtIsBeforeOrSameAsDate:*(a1 + 32)] & 1) != 0;

  return v6;
}

- (id)scheduledObjectsToFireInInterval:(id)interval
{
  intervalCopy = interval;
  v5 = objc_opt_class();
  scheduledObjects = [(MTScheduledList *)self scheduledObjects];
  v7 = [objc_opt_class() _dateIntervalFilter:intervalCopy];

  v8 = [v5 _filterScheduledObjects:scheduledObjects withBlock:v7];

  return v8;
}

+ (id)_dateIntervalFilter:(id)filter
{
  filterCopy = filter;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__MTScheduledList__dateIntervalFilter___block_invoke;
  aBlock[3] = &unk_1E7B0C8E0;
  v8 = filterCopy;
  v4 = filterCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

BOOL __39__MTScheduledList__dateIntervalFilter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 trigger];
  v4 = [v3 triggerDate];
  v5 = v4 && ([*(a1 + 32) containsDate:v4] & 1) != 0;

  return v5;
}

- (id)nextScheduledAlertOrNotification
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  orderedScheduledAlerts = self->_orderedScheduledAlerts;
  v9[0] = self->_orderedScheduledNotifications;
  v9[1] = orderedScheduledAlerts;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v3 _nextScheduledObjectInSets:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)nextScheduledObject
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  orderedScheduledNotifications = self->_orderedScheduledNotifications;
  orderedScheduledAlerts = self->_orderedScheduledAlerts;
  v10[0] = self->_orderedScheduledEvents;
  v10[1] = orderedScheduledNotifications;
  v10[2] = orderedScheduledAlerts;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [v3 _nextScheduledObjectInSets:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)_nextScheduledObjectInSets:(id)sets
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = sets;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        firstObject = [*(*(&v19 + 1) + 8 * i) firstObject];
        v9 = firstObject;
        if (!v5)
        {
          goto LABEL_8;
        }

        trigger = [firstObject trigger];
        triggerDate = [trigger triggerDate];
        trigger2 = [v5 trigger];
        triggerDate2 = [trigger2 triggerDate];
        v14 = [triggerDate mtIsBeforeDate:triggerDate2];

        if (v14)
        {
LABEL_8:
          v15 = v9;

          v5 = v15;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)nextScheduledObjectWithTriggerType:(unint64_t)type
{
  v4 = [(MTScheduledList *)self _scheduledListForTriggerType:?];
  array = [v4 array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MTScheduledList_nextScheduledObjectWithTriggerType___block_invoke;
  v8[3] = &__block_descriptor_40_e27_B16__0__MTScheduledObject_8l;
  v8[4] = type;
  v6 = [array na_firstObjectPassingTest:v8];

  return v6;
}

BOOL __54__MTScheduledList_nextScheduledObjectWithTriggerType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 trigger];
  v4 = [v3 triggerType] == *(a1 + 32);

  return v4;
}

- (id)_scheduledListForTriggerType:(unint64_t)type
{
  v4 = [MTScheduledObject scheduledTypeForTriggerType:type];
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&self->_orderedScheduledAlerts)[v4];
  }

  return v5;
}

- (void)reset
{
  [(NSMutableOrderedSet *)self->_orderedScheduledAlerts removeAllObjects];
  [(NSMutableOrderedSet *)self->_orderedScheduledNotifications removeAllObjects];
  [(NSMutableOrderedSet *)self->_orderedScheduledEvents removeAllObjects];
  scheduledAlertMap = self->_scheduledAlertMap;

  [(NSMutableDictionary *)scheduledAlertMap removeAllObjects];
}

- (void)unschedule:(id)unschedule
{
  unscheduleCopy = unschedule;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__MTScheduledList_unschedule___block_invoke;
  v6[3] = &unk_1E7B0C928;
  v7 = unscheduleCopy;
  selfCopy = self;
  v5 = unscheduleCopy;
  [(MTScheduledList *)self _performScheduleChangingBlock:v6 withCompletion:0];
}

void __30__MTScheduledList_unschedule___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _unschedule:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_unschedule:(id)_unschedule
{
  v18 = *MEMORY[0x1E69E9840];
  scheduledAlertMap = self->_scheduledAlertMap;
  identifier = [_unschedule identifier];
  v6 = [(NSMutableDictionary *)scheduledAlertMap objectForKeyedSubscript:identifier];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [v6 allValues];
  v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        [(MTScheduledList *)self _unscheduleObject:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)schedule:(id)schedule afterDate:(id)date withCompletion:(id)completion
{
  scheduleCopy = schedule;
  dateCopy = date;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__MTScheduledList_schedule_afterDate_withCompletion___block_invoke;
  v12[3] = &unk_1E7B0C9A0;
  v13 = scheduleCopy;
  selfCopy = self;
  v15 = dateCopy;
  v10 = dateCopy;
  v11 = scheduleCopy;
  [(MTScheduledList *)self _performScheduleChangingBlock:v12 withCompletion:completion];
}

void __53__MTScheduledList_schedule_afterDate_withCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        [*(a1 + 40) _unschedule:v7];
        if ([v7 shouldBeScheduled])
        {
          v8 = [v7 upcomingTriggersAfterDate:*(a1 + 48)];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __53__MTScheduledList_schedule_afterDate_withCompletion___block_invoke_2;
          v12[3] = &unk_1E7B0C950;
          v12[4] = v7;
          v9 = [v8 na_map:v12];
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __53__MTScheduledList_schedule_afterDate_withCompletion___block_invoke_3;
          v11[3] = &unk_1E7B0C978;
          v11[4] = *(a1 + 40);
          [v9 na_each:v11];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleObject:(id)object
{
  objectCopy = object;
  trigger = [objectCopy trigger];
  v5 = -[MTScheduledList _scheduledListForTriggerType:](self, "_scheduledListForTriggerType:", [trigger triggerType]);

  [v5 addObject:objectCopy];
  scheduledAlertMap = self->_scheduledAlertMap;
  scheduleable = [objectCopy scheduleable];
  identifier = [scheduleable identifier];
  v9 = [(NSMutableDictionary *)scheduledAlertMap objectForKeyedSubscript:identifier];

  if (!v9)
  {
    v9 = objc_opt_new();
    v10 = self->_scheduledAlertMap;
    scheduleable2 = [objectCopy scheduleable];
    identifier2 = [scheduleable2 identifier];
    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:identifier2];
  }

  v13 = MEMORY[0x1E696AD98];
  trigger2 = [objectCopy trigger];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(trigger2, "triggerType")}];
  [v9 setObject:objectCopy forKeyedSubscript:v15];
}

- (void)_performScheduleChangingBlock:(id)block withCompletion:(id)completion
{
  completionCopy = completion;
  blockCopy = block;
  nextScheduledAlertOrNotification = [(MTScheduledList *)self nextScheduledAlertOrNotification];
  blockCopy[2](blockCopy);

  v9 = objc_opt_new();
  [objc_opt_class() _sortAndFilter:self->_orderedScheduledAlerts objectsToScheduleAhead:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__MTScheduledList__performScheduleChangingBlock_withCompletion___block_invoke;
  v12[3] = &unk_1E7B0C978;
  v12[4] = self;
  [v9 na_each:v12];
  [objc_opt_class() _sort:self->_orderedScheduledNotifications];
  [objc_opt_class() _sort:self->_orderedScheduledEvents];
  nextScheduledAlertOrNotification2 = [(MTScheduledList *)self nextScheduledAlertOrNotification];
  if (nextScheduledAlertOrNotification == nextScheduledAlertOrNotification2 || ([nextScheduledAlertOrNotification isEqual:nextScheduledAlertOrNotification2] & 1) != 0)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    delegate = [(MTScheduledList *)self delegate];
    [delegate scheduledListDidChange:self withCompletion:completionCopy];
  }
}

- (BOOL)isScheduled:(id)scheduled
{
  scheduledCopy = scheduled;
  scheduledAlertMap = self->_scheduledAlertMap;
  scheduleable = [scheduledCopy scheduleable];
  identifier = [scheduleable identifier];
  v8 = [(NSMutableDictionary *)scheduledAlertMap objectForKeyedSubscript:identifier];
  v9 = MEMORY[0x1E696AD98];
  trigger = [scheduledCopy trigger];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(trigger, "triggerType")}];
  v12 = [v8 objectForKeyedSubscript:v11];

  if (v12)
  {
    trigger2 = [scheduledCopy trigger];
    triggerDate = [trigger2 triggerDate];

    trigger3 = [v12 trigger];
    triggerDate2 = [trigger3 triggerDate];

    v17 = [triggerDate compare:triggerDate2] != -1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_unscheduleObject:(id)object
{
  objectCopy = object;
  trigger = [objectCopy trigger];
  v5 = -[MTScheduledList _scheduledListForTriggerType:](self, "_scheduledListForTriggerType:", [trigger triggerType]);

  [v5 removeObject:objectCopy];
  scheduledAlertMap = self->_scheduledAlertMap;
  scheduleable = [objectCopy scheduleable];
  identifier = [scheduleable identifier];
  v9 = [(NSMutableDictionary *)scheduledAlertMap objectForKeyedSubscript:identifier];

  v10 = MEMORY[0x1E696AD98];
  trigger2 = [objectCopy trigger];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(trigger2, "triggerType")}];
  [v9 removeObjectForKey:v12];

  if (![v9 count])
  {
    v13 = self->_scheduledAlertMap;
    scheduleable2 = [objectCopy scheduleable];
    identifier2 = [scheduleable2 identifier];
    [(NSMutableDictionary *)v13 removeObjectForKey:identifier2];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  orderedScheduledAlerts = [(MTScheduledList *)self orderedScheduledAlerts];
  orderedScheduledNotifications = [(MTScheduledList *)self orderedScheduledNotifications];
  orderedScheduledEvents = [(MTScheduledList *)self orderedScheduledEvents];
  v7 = [v3 stringWithFormat:@"Alerts: %@, Notifications: %@, Events: %@", orderedScheduledAlerts, orderedScheduledNotifications, orderedScheduledEvents];

  return v7;
}

- (MTScheduledListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)_sort:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTScheduledList.m" lineNumber:54 description:@"Not a mutable ordered collection"];
}

+ (void)_sortAndFilter:(uint64_t)a1 objectsToScheduleAhead:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTScheduledList.m" lineNumber:64 description:@"Not a mutable ordered collection"];
}

@end