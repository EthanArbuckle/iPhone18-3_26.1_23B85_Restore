@interface MTScheduledList
+ (id)_dateIntervalFilter:(id)a3;
+ (id)_nextScheduledObjectInSets:(id)a3;
+ (void)_sort:(id)a3;
+ (void)_sortAndFilter:(id)a3 objectsToScheduleAhead:(id)a4;
- (BOOL)isScheduled:(id)a3;
- (MTScheduledList)initWithDelegate:(id)a3;
- (MTScheduledListDelegate)delegate;
- (NSArray)scheduledAlertsAndNotifications;
- (NSArray)scheduledObjects;
- (id)_scheduledListForTriggerType:(unint64_t)a3;
- (id)description;
- (id)nextScheduledAlertOrNotification;
- (id)nextScheduledObject;
- (id)nextScheduledObjectWithTriggerType:(unint64_t)a3;
- (id)scheduledObjectsToFireBeforeDate:(id)a3;
- (id)scheduledObjectsToFireInInterval:(id)a3;
- (void)_performScheduleChangingBlock:(id)a3 withCompletion:(id)a4;
- (void)_scheduleObject:(id)a3;
- (void)_unschedule:(id)a3;
- (void)_unscheduleObject:(id)a3;
- (void)reset;
- (void)schedule:(id)a3 afterDate:(id)a4 withCompletion:(id)a5;
- (void)unschedule:(id)a3;
@end

@implementation MTScheduledList

- (MTScheduledList)initWithDelegate:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MTScheduledList;
  v5 = [(MTScheduledList *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
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

+ (void)_sort:(id)a3
{
  v5 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(MTScheduledList *)a2 _sort:a1];
  }

  v6 = [objc_opt_class() _scheduledObjectComparator];
  [v5 sortUsingComparator:v6];
}

+ (void)_sortAndFilter:(id)a3 objectsToScheduleAhead:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [MTScheduledList _sortAndFilter:a2 objectsToScheduleAhead:a1];
  }

  v9 = [objc_opt_class() _scheduledObjectComparator];
  [v7 sortUsingComparator:v9];

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
  [v7 enumerateObjectsUsingBlock:v33];
  if ([v13 count])
  {
    v16 = [v13 firstObject];
    v17 = objc_opt_new();
    v18 = [MEMORY[0x1E695DEE8] mtGregorianCalendar];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __57__MTScheduledList__sortAndFilter_objectsToScheduleAhead___block_invoke_2;
    v27 = &unk_1E7B0C898;
    v19 = v16;
    v28 = v19;
    v29 = v18;
    v20 = v17;
    v30 = v20;
    v31 = v8;
    v32 = a1;
    v21 = v18;
    [v15 enumerateObjectsUsingBlock:&v24];
    v22 = [v19 trigger];
    v23 = [v22 isPastOverrideEvent];

    if (v23)
    {
      [v20 addObject:v19];
    }

    if ([v20 count])
    {
      [v7 removeObjectsInArray:v20];
    }

    if ([v14 count])
    {
      [v7 removeObjectsInArray:v14];
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
  v4 = [(NSMutableOrderedSet *)self->_orderedScheduledAlerts array];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(NSMutableOrderedSet *)self->_orderedScheduledNotifications array];
  [v5 addObjectsFromArray:v6];

  [objc_opt_class() _sortAndFilter:v5];

  return v5;
}

- (NSArray)scheduledObjects
{
  v3 = MEMORY[0x1E695DF70];
  v4 = [(MTScheduledList *)self scheduledAlertsAndNotifications];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(NSMutableOrderedSet *)self->_orderedScheduledEvents array];
  [v5 addObjectsFromArray:v6];

  [objc_opt_class() _sortAndFilter:v5];

  return v5;
}

- (id)scheduledObjectsToFireBeforeDate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MTScheduledList *)self scheduledObjects];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__MTScheduledList_scheduledObjectsToFireBeforeDate___block_invoke;
  v10[3] = &unk_1E7B0C8E0;
  v11 = v4;
  v7 = v4;
  v8 = [v5 _filterScheduledObjects:v6 withBlock:v10];

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

- (id)scheduledObjectsToFireInInterval:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MTScheduledList *)self scheduledObjects];
  v7 = [objc_opt_class() _dateIntervalFilter:v4];

  v8 = [v5 _filterScheduledObjects:v6 withBlock:v7];

  return v8;
}

+ (id)_dateIntervalFilter:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__MTScheduledList__dateIntervalFilter___block_invoke;
  aBlock[3] = &unk_1E7B0C8E0;
  v8 = v3;
  v4 = v3;
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

+ (id)_nextScheduledObjectInSets:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a3;
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

        v8 = [*(*(&v19 + 1) + 8 * i) firstObject];
        v9 = v8;
        if (!v5)
        {
          goto LABEL_8;
        }

        v10 = [v8 trigger];
        v11 = [v10 triggerDate];
        v12 = [v5 trigger];
        v13 = [v12 triggerDate];
        v14 = [v11 mtIsBeforeDate:v13];

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

- (id)nextScheduledObjectWithTriggerType:(unint64_t)a3
{
  v4 = [(MTScheduledList *)self _scheduledListForTriggerType:?];
  v5 = [v4 array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MTScheduledList_nextScheduledObjectWithTriggerType___block_invoke;
  v8[3] = &__block_descriptor_40_e27_B16__0__MTScheduledObject_8l;
  v8[4] = a3;
  v6 = [v5 na_firstObjectPassingTest:v8];

  return v6;
}

BOOL __54__MTScheduledList_nextScheduledObjectWithTriggerType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 trigger];
  v4 = [v3 triggerType] == *(a1 + 32);

  return v4;
}

- (id)_scheduledListForTriggerType:(unint64_t)a3
{
  v4 = [MTScheduledObject scheduledTypeForTriggerType:a3];
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

- (void)unschedule:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__MTScheduledList_unschedule___block_invoke;
  v6[3] = &unk_1E7B0C928;
  v7 = v4;
  v8 = self;
  v5 = v4;
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

- (void)_unschedule:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  scheduledAlertMap = self->_scheduledAlertMap;
  v5 = [a3 identifier];
  v6 = [(NSMutableDictionary *)scheduledAlertMap objectForKeyedSubscript:v5];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 allValues];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v7);
        }

        [(MTScheduledList *)self _unscheduleObject:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)schedule:(id)a3 afterDate:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__MTScheduledList_schedule_afterDate_withCompletion___block_invoke;
  v12[3] = &unk_1E7B0C9A0;
  v13 = v8;
  v14 = self;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  [(MTScheduledList *)self _performScheduleChangingBlock:v12 withCompletion:a5];
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

- (void)_scheduleObject:(id)a3
{
  v16 = a3;
  v4 = [v16 trigger];
  v5 = -[MTScheduledList _scheduledListForTriggerType:](self, "_scheduledListForTriggerType:", [v4 triggerType]);

  [v5 addObject:v16];
  scheduledAlertMap = self->_scheduledAlertMap;
  v7 = [v16 scheduleable];
  v8 = [v7 identifier];
  v9 = [(NSMutableDictionary *)scheduledAlertMap objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_opt_new();
    v10 = self->_scheduledAlertMap;
    v11 = [v16 scheduleable];
    v12 = [v11 identifier];
    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:v12];
  }

  v13 = MEMORY[0x1E696AD98];
  v14 = [v16 trigger];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "triggerType")}];
  [v9 setObject:v16 forKeyedSubscript:v15];
}

- (void)_performScheduleChangingBlock:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTScheduledList *)self nextScheduledAlertOrNotification];
  v7[2](v7);

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
  v10 = [(MTScheduledList *)self nextScheduledAlertOrNotification];
  if (v8 == v10 || ([v8 isEqual:v10] & 1) != 0)
  {
    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v11 = [(MTScheduledList *)self delegate];
    [v11 scheduledListDidChange:self withCompletion:v6];
  }
}

- (BOOL)isScheduled:(id)a3
{
  v4 = a3;
  scheduledAlertMap = self->_scheduledAlertMap;
  v6 = [v4 scheduleable];
  v7 = [v6 identifier];
  v8 = [(NSMutableDictionary *)scheduledAlertMap objectForKeyedSubscript:v7];
  v9 = MEMORY[0x1E696AD98];
  v10 = [v4 trigger];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "triggerType")}];
  v12 = [v8 objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [v4 trigger];
    v14 = [v13 triggerDate];

    v15 = [v12 trigger];
    v16 = [v15 triggerDate];

    v17 = [v14 compare:v16] != -1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_unscheduleObject:(id)a3
{
  v16 = a3;
  v4 = [v16 trigger];
  v5 = -[MTScheduledList _scheduledListForTriggerType:](self, "_scheduledListForTriggerType:", [v4 triggerType]);

  [v5 removeObject:v16];
  scheduledAlertMap = self->_scheduledAlertMap;
  v7 = [v16 scheduleable];
  v8 = [v7 identifier];
  v9 = [(NSMutableDictionary *)scheduledAlertMap objectForKeyedSubscript:v8];

  v10 = MEMORY[0x1E696AD98];
  v11 = [v16 trigger];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "triggerType")}];
  [v9 removeObjectForKey:v12];

  if (![v9 count])
  {
    v13 = self->_scheduledAlertMap;
    v14 = [v16 scheduleable];
    v15 = [v14 identifier];
    [(NSMutableDictionary *)v13 removeObjectForKey:v15];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MTScheduledList *)self orderedScheduledAlerts];
  v5 = [(MTScheduledList *)self orderedScheduledNotifications];
  v6 = [(MTScheduledList *)self orderedScheduledEvents];
  v7 = [v3 stringWithFormat:@"Alerts: %@, Notifications: %@, Events: %@", v4, v5, v6];

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