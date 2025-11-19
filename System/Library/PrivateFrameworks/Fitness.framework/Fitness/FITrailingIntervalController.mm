@interface FITrailingIntervalController
- (BOOL)addEvent:(id)a3 withError:(id *)a4;
- (FITrailingIntervalController)initWithQuantityType:(id)a3 threshold:(id)a4 startDate:(id)a5;
- (HKQuantity)quantity;
- (double)activeDurationUntilDate:(id)a3;
- (double)committedDuration;
- (double)idleDurationUntilDate:(id)a3;
- (void)_addPauseEvent:(id)a3;
- (void)_addResumeEvent:(id)a3;
- (void)_determineAndProcessThresholdReached;
- (void)_processUncommittedSamples;
- (void)_updateSlicesWithSamples:(id)a3;
- (void)addSample:(id)a3;
- (void)addSamples:(id)a3;
- (void)setThreshold:(id)a3;
@end

@implementation FITrailingIntervalController

- (FITrailingIntervalController)initWithQuantityType:(id)a3 threshold:(id)a4 startDate:(id)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = FITrailingIntervalController;
  v12 = [(FITrailingIntervalController *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_quantityType, a3);
    objc_storeStrong(&v13->_threshold, a4);
    v14 = [[FITrailingQuantityTimeSlice alloc] initWithQuantityType:v9 startDate:v11];
    v23[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    slices = v13->_slices;
    v13->_slices = v15;

    uncommittedSamples = v13->_uncommittedSamples;
    v18 = MEMORY[0x277CBEBF8];
    v13->_uncommittedSamples = MEMORY[0x277CBEBF8];

    pauseResumeEvents = v13->_pauseResumeEvents;
    v13->_pauseResumeEvents = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)addSample:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(FITrailingIntervalController *)self addSamples:v6, v8, v9];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addSamples:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = FIFilterSamplesByType(a3, self->_quantityType);
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 startDate];
        v12 = [(NSArray *)self->_slices lastObject];
        v13 = [v12 endDate];
        v14 = [v11 hk_isBeforeDate:v13];

        if (v14)
        {
          [v18 addObject:v10];
        }

        else
        {
          v15 = [(NSArray *)self->_uncommittedSamples arrayByAddingObject:v10];
          uncommittedSamples = self->_uncommittedSamples;
          self->_uncommittedSamples = v15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  if ([v18 count])
  {
    [(FITrailingIntervalController *)self _updateSlicesWithSamples:v18];
    [(FITrailingIntervalController *)self _determineAndProcessThresholdReached];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_determineAndProcessThresholdReached
{
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__2;
  v21[4] = __Block_byref_object_dispose__2;
  v3 = MEMORY[0x277CCD7E8];
  v4 = [(HKQuantityType *)self->_quantityType canonicalUnit];
  v22 = [v3 quantityWithUnit:v4 doubleValue:0.0];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_slices, "count")}];
  slices = self->_slices;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__FITrailingIntervalController__determineAndProcessThresholdReached__block_invoke;
  v10[3] = &unk_279004BB0;
  v10[4] = self;
  v10[5] = &v17;
  v10[6] = v21;
  v10[7] = &v11;
  [(NSArray *)slices enumerateObjectsWithOptions:2 usingBlock:v10];
  v6 = [v12[5] reverseObjectEnumerator];
  v7 = [v6 allObjects];
  v8 = [v7 copy];
  v9 = self->_slices;
  self->_slices = v8;

  self->_thresholdReached = *(v18 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(v21, 8);
}

void __68__FITrailingIntervalController__determineAndProcessThresholdReached__block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    *a4 = 1;
    goto LABEL_9;
  }

  v7 = *(*(a1[6] + 8) + 40);
  v30 = v6;
  v8 = [v6 committedTotal];
  v9 = [v7 _quantityByAddingQuantity:v8];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (![*(*(a1[6] + 8) + 40) compare:*(a1[4] + 40)])
  {
    *(*(a1[5] + 8) + 24) = 1;
    goto LABEL_7;
  }

  if (![*(*(a1[6] + 8) + 40) hk_isGreaterThanQuantity:*(a1[4] + 40)])
  {
LABEL_7:
    v29 = v30;
    goto LABEL_8;
  }

  *(*(a1[5] + 8) + 24) = 1;
  v12 = *(*(a1[6] + 8) + 40);
  v13 = [*(a1[4] + 16) canonicalUnit];
  [v12 doubleValueForUnit:v13];
  v15 = v14;
  v16 = a1[4];
  v17 = *(v16 + 40);
  v18 = [*(v16 + 16) canonicalUnit];
  [v17 doubleValueForUnit:v18];
  v20 = v15 - v19;

  v21 = [v30 committedTotal];
  v22 = [*(a1[4] + 16) canonicalUnit];
  [v21 doubleValueForUnit:v22];
  v24 = v23 - v20;

  v25 = MEMORY[0x277CCD7E8];
  v26 = [*(a1[4] + 16) canonicalUnit];
  v27 = [v25 quantityWithUnit:v26 doubleValue:v24];
  v28 = [v30 settingTotalQuantityLimit:v27];

  v29 = v28;
LABEL_8:
  v31 = v29;
  [*(*(a1[7] + 8) + 40) addObject:v29];
  v6 = v31;
LABEL_9:
}

- (void)_updateSlicesWithSamples:(id)a3
{
  v4 = a3;
  slices = self->_slices;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__FITrailingIntervalController__updateSlicesWithSamples___block_invoke;
  v9[3] = &unk_279004BD8;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)slices fi_mapUsingBlock:v9];
  v8 = self->_slices;
  self->_slices = v7;
}

id __57__FITrailingIntervalController__updateSlicesWithSamples___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = 0;
  v3 = [a2 addingSamples:v2 error:&v5];

  return v3;
}

- (void)_processUncommittedSamples
{
  if ([(NSArray *)self->_uncommittedSamples count])
  {
    [(FITrailingIntervalController *)self _updateSlicesWithSamples:self->_uncommittedSamples];
    uncommittedSamples = self->_uncommittedSamples;
    self->_uncommittedSamples = MEMORY[0x277CBEBF8];
  }
}

- (BOOL)addEvent:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(NSArray *)self->_pauseResumeEvents lastObject];
  v8 = v6;
  v9 = v7;
  if ([v8 type] != 1 && objc_msgSend(v8, "type") != 2)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Event must be pause or resume event.  Event type: %ld", objc_msgSend(v8, "type"), v25];
    goto LABEL_9;
  }

  if (v9)
  {
    v10 = [v8 dateInterval];
    v11 = [v10 startDate];
    v12 = [v9 dateInterval];
    v13 = [v12 startDate];
    v14 = [v11 hk_isBeforeDate:v13];

    if (v14)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [v9 dateInterval];
      v17 = [v16 startDate];
      v18 = [v8 dateInterval];
      v19 = [v18 startDate];
      v20 = [v15 stringWithFormat:@"New event date must be after previous date. Previous event date: %@. New event date: %@.", v17, v19];

LABEL_10:
      v21 = FIIntervalErrorWithDescription(v20);
      FISetOutErrorIfNotNull(a4, v21);

      v22 = 0;
      goto LABEL_20;
    }

    if ([v9 type] == 1 && objc_msgSend(v8, "type") != 2)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"New event type must be resume. Previous event type: %ld. New event type: %ld.", objc_msgSend(v9, "type"), objc_msgSend(v8, "type")];
    }

    else
    {
      if ([v9 type] != 2 || objc_msgSend(v8, "type") == 1)
      {
        goto LABEL_15;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"Current event type must be pause. Previous event type: %ld. New event type: %ld.", objc_msgSend(v9, "type"), objc_msgSend(v8, "type")];
    }

    v20 = LABEL_9:;
    goto LABEL_10;
  }

  if ([v8 type] != 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"First event must be pause event.  Event type: %ld", objc_msgSend(v8, "type"), v25];
    goto LABEL_9;
  }

LABEL_15:

  v23 = [v8 type];
  if (v23 == 2)
  {
    [(FITrailingIntervalController *)self _addResumeEvent:v8];
  }

  else if (v23 == 1)
  {
    [(FITrailingIntervalController *)self _addPauseEvent:v8];
  }

  v22 = 1;
LABEL_20:

  return v22;
}

- (void)_addPauseEvent:(id)a3
{
  v14 = a3;
  if ([(NSArray *)self->_slices count])
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithArray:self->_slices];
    v5 = [(NSArray *)v4 count]- 1;
    v6 = [(NSArray *)v4 lastObject];
    v7 = [v14 dateInterval];
    v8 = [v7 startDate];
    v9 = [v6 settingEndDate:v8];
    [(NSArray *)v4 replaceObjectAtIndex:v5 withObject:v9];

    slices = self->_slices;
    self->_slices = v4;
    v11 = v4;

    v12 = [(NSArray *)self->_pauseResumeEvents arrayByAddingObject:v14];
    pauseResumeEvents = self->_pauseResumeEvents;
    self->_pauseResumeEvents = v12;
  }
}

- (void)_addResumeEvent:(id)a3
{
  v4 = a3;
  v5 = [FITrailingQuantityTimeSlice alloc];
  quantityType = self->_quantityType;
  v7 = [v4 dateInterval];
  v8 = [v7 startDate];
  v13 = [(FITrailingQuantityTimeSlice *)v5 initWithQuantityType:quantityType startDate:v8];

  v9 = [(NSArray *)self->_slices arrayByAddingObject:v13];
  slices = self->_slices;
  self->_slices = v9;

  [(FITrailingIntervalController *)self _processUncommittedSamples];
  v11 = [(NSArray *)self->_pauseResumeEvents arrayByAddingObject:v4];

  pauseResumeEvents = self->_pauseResumeEvents;
  self->_pauseResumeEvents = v11;
}

- (void)setThreshold:(id)a3
{
  objc_storeStrong(&self->_threshold, a3);

  [(FITrailingIntervalController *)self _determineAndProcessThresholdReached];
}

- (double)committedDuration
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_slices;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * i) committedDuration];
        v6 = v6 + v8;
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)activeDurationUntilDate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_slices;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v14 + 1) + 8 * i) activeDurationUntilDate:{v4, v14}];
        v9 = v9 + v11;
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (double)idleDurationUntilDate:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  slices = self->_slices;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__FITrailingIntervalController_idleDurationUntilDate___block_invoke;
  v9[3] = &unk_279004C00;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSArray *)slices enumerateObjectsWithOptions:2 usingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __54__FITrailingIntervalController_idleDurationUntilDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = a2;
  v6 = [v26 committedTotal];
  v7 = [v26 committedTotal];
  v8 = [v7 _unit];
  [v6 doubleValueForUnit:v8];
  v10 = v9;

  v11 = [v26 endDate];
  v12 = [v11 hk_isAfterDate:*(a1 + 32)];

  if (v10 <= 2.22044605e-16)
  {
    if (v12)
    {
      v18 = *(a1 + 32);
      v19 = [v26 startDate];
      [v18 timeIntervalSinceDate:v19];
      *(*(*(a1 + 40) + 8) + 24) = v20 + *(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v23 = [v26 endDate];
      v24 = [v26 startDate];
      [v23 timeIntervalSinceDate:v24];
      *(*(*(a1 + 40) + 8) + 24) = v25 + *(*(*(a1 + 40) + 8) + 24);
    }
  }

  else
  {
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = [v26 committedSamples];
      v15 = [v14 lastObject];
      v16 = [v15 endDate];
      [v13 timeIntervalSinceDate:v16];
      *(*(*(a1 + 40) + 8) + 24) = v17 + *(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v14 = [v26 endDate];
      v15 = [v26 committedSamples];
      v16 = [v15 lastObject];
      v21 = [v16 endDate];
      [v14 timeIntervalSinceDate:v21];
      *(*(*(a1 + 40) + 8) + 24) = v22 + *(*(*(a1 + 40) + 8) + 24);
    }

    *a4 = 1;
  }
}

- (HKQuantity)quantity
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD7E8];
  v4 = [(HKQuantityType *)self->_quantityType canonicalUnit];
  v5 = [v3 quantityWithUnit:v4 doubleValue:0.0];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_slices;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v15 + 1) + 8 * v10) committedTotal];
        v5 = [v11 _quantityByAddingQuantity:v12];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

@end