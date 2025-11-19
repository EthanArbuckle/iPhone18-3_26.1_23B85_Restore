@interface CALNSchedulingSnoozeUpdateTimer
- (CALNSchedulingSnoozeUpdateTimer)initWithDateProvider:(id)a3 scheduler:(id)a4;
- (CALNSnoozeUpdateTimerDelegate)delegate;
- (id)_dequeueEventsDueBy:(id)a3;
- (void)_scheduleTimer;
- (void)activityRun;
- (void)notifyDelegateOfDueAlarmsAndRescheduleTimer;
- (void)setFireDate:(id)a3 leeway:(double)a4 forEventWithIdentifier:(id)a5;
- (void)significantTimeChange;
@end

@implementation CALNSchedulingSnoozeUpdateTimer

- (CALNSchedulingSnoozeUpdateTimer)initWithDateProvider:(id)a3 scheduler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CALNSchedulingSnoozeUpdateTimer;
  v9 = [(CALNSchedulingSnoozeUpdateTimer *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateProvider, a3);
    objc_storeStrong(&v10->_scheduler, a4);
    [(CALNActivityScheduler *)v10->_scheduler setDelegate:v10];
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fireDates = v10->_fireDates;
    v10->_fireDates = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    overdueDates = v10->_overdueDates;
    v10->_overdueDates = v13;

    v15 = [MEMORY[0x277CBEAA8] distantFuture];
    scheduledFireDate = v10->_scheduledFireDate;
    v10->_scheduledFireDate = v15;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)setFireDate:(id)a3 leeway:(double)a4 forEventWithIdentifier:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = snoozeLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v8;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Setting snooze update fire date for %{public}@ to %{public}@ with leeway = %f", &v13, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_fireDates setObject:v8 forKeyedSubscript:v9];
  v11 = [v8 dateByAddingTimeInterval:a4];
  [(NSMutableDictionary *)self->_overdueDates setObject:v11 forKeyedSubscript:v9];

  [(CALNSchedulingSnoozeUpdateTimer *)self _scheduleTimer];
  os_unfair_lock_unlock(&self->_lock);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)significantTimeChange
{
  v3 = snoozeLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Snooze update timer informed of significant time change; rescheduling", v4, 2u);
  }

  [(CALNActivityScheduler *)self->_scheduler unschedule];
  [(CALNSchedulingSnoozeUpdateTimer *)self notifyDelegateOfDueAlarmsAndRescheduleTimer];
}

- (void)activityRun
{
  v3 = snoozeLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Snooze update timer fired", v4, 2u);
  }

  [(CALNSchedulingSnoozeUpdateTimer *)self notifyDelegateOfDueAlarmsAndRescheduleTimer];
}

- (void)notifyDelegateOfDueAlarmsAndRescheduleTimer
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(CalDateProvider *)self->_dateProvider now];
  os_unfair_lock_lock(&self->_lock);
  scheduledFireDate = self->_scheduledFireDate;
  self->_scheduledFireDate = 0;

  scheduledOverdueDate = self->_scheduledOverdueDate;
  self->_scheduledOverdueDate = 0;

  v6 = [(CALNSchedulingSnoozeUpdateTimer *)self _dequeueEventsDueBy:v3];
  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 count];
  v8 = snoozeLogHandle();
  WeakRetained = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_242909000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Refreshing notifications due for snooze update: %{public}@", &v11, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained snoozeTimerFiredForEvents:v6];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(CALNSchedulingSnoozeUpdateTimer *)WeakRetained notifyDelegateOfDueAlarmsAndRescheduleTimer];
  }

  os_unfair_lock_lock(&self->_lock);
  [(CALNSchedulingSnoozeUpdateTimer *)self _scheduleTimer];
  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_dequeueEventsDueBy:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_fireDates;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_fireDates objectForKeyedSubscript:v11];
        if ([v4 CalIsAfterOrSameAsDate:v12])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * j);
        [(NSMutableDictionary *)self->_fireDates removeObjectForKey:v18, v21];
        [(NSMutableDictionary *)self->_overdueDates removeObjectForKey:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_scheduleTimer
{
  v43 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = self->_fireDates;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_fireDates objectForKeyedSubscript:v10, v32];
        if (!v7 || [v7 CalIsAfterDate:v11])
        {
          v12 = v11;

          v7 = v12;
        }

        v13 = [(NSMutableDictionary *)self->_overdueDates objectForKeyedSubscript:v10];
        if (!v6 || [v6 CalIsAfterDate:v13])
        {
          v14 = v13;

          v6 = v14;
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v5);

    if (v7)
    {
      p_scheduledFireDate = &self->_scheduledFireDate;
      scheduledFireDate = self->_scheduledFireDate;
      if (scheduledFireDate && [(NSDate *)scheduledFireDate isEqual:v7]&& ![(NSDate *)self->_scheduledOverdueDate CalIsAfterDate:v6])
      {
        v30 = snoozeLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = *p_scheduledFireDate;
          *buf = 138543362;
          v37 = v31;
          _os_log_impl(&dword_242909000, v30, OS_LOG_TYPE_INFO, "Snooze update still scheduled for %{public}@", buf, 0xCu);
        }
      }

      else
      {
        [v6 timeIntervalSinceDate:v7];
        if (v17 < 0.0)
        {
          v17 = 0.0;
        }

        v18 = v17;
        v19 = snoozeLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *p_scheduledFireDate;
          *buf = 138543874;
          v37 = v20;
          v38 = 2114;
          v39 = v7;
          v40 = 2048;
          v41 = v18;
          _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Rescheduling snooze update from %{public}@ to %{public}@ with leeway %lli", buf, 0x20u);
        }

        objc_storeStrong(&self->_scheduledFireDate, v7);
        objc_storeStrong(&self->_scheduledOverdueDate, v6);
        v21 = [(CalDateProvider *)self->_dateProvider now];
        [v7 timeIntervalSinceDate:v21];
        if (v22 < 1.0)
        {
          v22 = 1.0;
        }

        [(CALNActivityScheduler *)self->_scheduler scheduleWithTimeInterval:vcvtpd_s64_f64(v22) gracePeriod:v18];
      }

      goto LABEL_34;
    }
  }

  else
  {

    v6 = 0;
  }

  v23 = self->_scheduledFireDate;
  v24 = snoozeLogHandle();
  v25 = v24;
  if (v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_scheduledFireDate;
      *buf = 138543362;
      v37 = v26;
      _os_log_impl(&dword_242909000, v25, OS_LOG_TYPE_DEFAULT, "Unscheduling snooze update (previous time = %{public}@, new time = nil)", buf, 0xCu);
    }

    v27 = self->_scheduledFireDate;
    self->_scheduledFireDate = 0;

    scheduledOverdueDate = self->_scheduledOverdueDate;
    self->_scheduledOverdueDate = 0;

    [(CALNActivityScheduler *)self->_scheduler unschedule];
  }

  else
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [(CALNSchedulingSnoozeUpdateTimer *)v25 _scheduleTimer];
    }
  }

  v7 = 0;
LABEL_34:

  v29 = *MEMORY[0x277D85DE8];
}

- (CALNSnoozeUpdateTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end