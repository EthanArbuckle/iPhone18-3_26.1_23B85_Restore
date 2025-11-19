@interface HFFormattedTimeRemainingValue
+ (id)defaultFormatter;
+ (id)valueWithRemainingDuration:(double)a3 relativeToDate:(id)a4;
- (HFFormattedTimeRemainingValue)initWithFireDate:(id)a3;
- (HFFormattedTimeRemainingValue)initWithFireDate:(id)a3 formatter:(id)a4;
- (HFStringGenerator)currentFormattedValue;
- (NSMapTable)observationBlocks;
- (double)_timeRemaining;
- (id)_generateFormattedValue;
- (id)observeFormattedValueChangesWithBlock:(id)a3;
- (void)_stopTimer;
- (void)_updateTimerState;
- (void)countdownTimerDidFire:(id)a3;
@end

@implementation HFFormattedTimeRemainingValue

+ (id)defaultFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA958]);
  [v2 setZeroFormattingBehavior:0x10000];

  return v2;
}

+ (id)valueWithRemainingDuration:(double)a3 relativeToDate:(id)a4
{
  v5 = [a4 dateByAddingTimeInterval:a3];
  v6 = [[a1 alloc] initWithFireDate:v5];

  return v6;
}

- (HFFormattedTimeRemainingValue)initWithFireDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() defaultFormatter];
  v6 = [(HFFormattedTimeRemainingValue *)self initWithFireDate:v4 formatter:v5];

  return v6;
}

- (HFFormattedTimeRemainingValue)initWithFireDate:(id)a3 formatter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFFormattedTimeRemainingValue;
  v9 = [(HFFormattedTimeRemainingValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, a3);
    objc_storeStrong(&v10->_formatter, a4);
  }

  return v10;
}

- (double)_timeRemaining
{
  v2 = [(HFFormattedTimeRemainingValue *)self value];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;

  result = 0.0;
  if (v5 >= 0.0)
  {
    return v5;
  }

  return result;
}

- (id)_generateFormattedValue
{
  [(HFFormattedTimeRemainingValue *)self _timeRemaining];
  v4 = v3;
  v5 = objc_opt_new();
  [v5 setSecond:v4];
  [v5 setMinute:0];
  if (v4 >= 3600.0)
  {
    [v5 setHour:0];
  }

  v6 = [(HFFormattedTimeRemainingValue *)self formatter];
  v7 = [v6 stringFromDateComponents:v5];

  return v7;
}

- (HFStringGenerator)currentFormattedValue
{
  currentFormattedValue = self->_currentFormattedValue;
  if (!currentFormattedValue)
  {
    v4 = [(HFFormattedTimeRemainingValue *)self _generateFormattedValue];
    v5 = self->_currentFormattedValue;
    self->_currentFormattedValue = v4;

    currentFormattedValue = self->_currentFormattedValue;
  }

  return currentFormattedValue;
}

- (NSMapTable)observationBlocks
{
  observationBlocks = self->_observationBlocks;
  if (!observationBlocks)
  {
    v4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v5 = self->_observationBlocks;
    self->_observationBlocks = v4;

    observationBlocks = self->_observationBlocks;
  }

  return observationBlocks;
}

- (id)observeFormattedValueChangesWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D2C8C8]);
  v6 = [(HFFormattedTimeRemainingValue *)self observationBlocks];
  v7 = [v4 copy];
  v8 = _Block_copy(v7);
  [v6 setObject:v8 forKey:v5];

  [(HFFormattedTimeRemainingValue *)self _updateTimerState];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__HFFormattedTimeRemainingValue_observeFormattedValueChangesWithBlock___block_invoke;
  v10[3] = &unk_277DF5690;
  objc_copyWeak(&v11, &location);
  objc_copyWeak(&v12, &from);
  [v5 addCancelationBlock:v10];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v5;
}

void __71__HFFormattedTimeRemainingValue_observeFormattedValueChangesWithBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained observationBlocks];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v2 removeObjectForKey:v3];

  [WeakRetained _updateTimerState];
}

- (void)_updateTimerState
{
  v3 = [(HFFormattedTimeRemainingValue *)self observationBlocks];
  v4 = [v3 count];

  if (v4)
  {
    v5 = +[HFSynchronizedTimer sharedInstance];
    [v5 addObserver:self];
  }

  else
  {

    [(HFFormattedTimeRemainingValue *)self _stopTimer];
  }
}

- (void)_stopTimer
{
  v3 = +[HFSynchronizedTimer sharedInstance];
  [v3 removeObserver:self];
}

- (void)countdownTimerDidFire:(id)a3
{
  v4 = [(HFFormattedTimeRemainingValue *)self _generateFormattedValue];
  [(HFFormattedTimeRemainingValue *)self setCurrentFormattedValue:v4];

  v5 = [(HFFormattedTimeRemainingValue *)self observationBlocks];
  v6 = [v5 objectEnumerator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HFFormattedTimeRemainingValue_countdownTimerDidFire___block_invoke;
  v8[3] = &unk_277DF56B8;
  v8[4] = self;
  [v6 na_each:v8];

  [(HFFormattedTimeRemainingValue *)self _timeRemaining];
  *&v7 = v7;
  if (fabsf(*&v7) < 0.00000011921)
  {
    [(HFFormattedTimeRemainingValue *)self _stopTimer];
  }
}

@end