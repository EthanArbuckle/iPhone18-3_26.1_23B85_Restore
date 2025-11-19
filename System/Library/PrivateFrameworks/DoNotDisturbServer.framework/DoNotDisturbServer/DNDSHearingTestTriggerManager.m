@interface DNDSHearingTestTriggerManager
- (DNDSHearingTestTriggerManagerDataSource)dataSource;
- (void)refreshWithEvent:(id)a3;
@end

@implementation DNDSHearingTestTriggerManager

- (void)refreshWithEvent:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DNDSHearingTestTriggerManager *)self dataSource];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [WeakRetained hearingTestModeForHearingTestTriggerManager:self];

  v8 = [v7 modeIdentifier];
  v60 = 0;
  v9 = [v5 triggerManager:self assertionsWithClientIdentifer:@"com.apple.donotdisturb.private.hearing-trigger" error:&v60];
  v10 = v60;
  if (!v4)
  {
    if ([v9 count])
    {
      v17 = [v9 firstObject];
      v13 = v17;
      if (v8)
      {
        v18 = [v17 details];
        v19 = [v18 modeIdentifier];
        v20 = [v8 isEqualToString:v19];

        if (v20)
        {
          v15 = v10;
        }

        else
        {
          v52 = v13;
          v43 = [v13 details];
          v44 = [v43 mutableCopy];

          [v44 setModeIdentifier:v8];
          v58 = v10;
          v45 = [v5 triggerManager:self takeModeAssertionWithDetails:v44 clientIdentifier:@"com.apple.donotdisturb.private.hearing-trigger" error:&v58];
          v15 = v58;

          v46 = DNDSLogHearingTestTrigger;
          if (os_log_type_enabled(DNDSLogHearingTestTrigger, OS_LOG_TYPE_DEFAULT))
          {
            v47 = v46;
            v48 = [v52 details];
            v49 = [v48 modeIdentifier];
            *buf = 138543618;
            v62 = v8;
            v63 = 2114;
            v64 = v49;
            _os_log_impl(&dword_24912E000, v47, OS_LOG_TYPE_DEFAULT, "Updating active assertion to new mode identifer for hearing test session trigger; modeID=%{public}@ previousModeID=%{public}@", buf, 0x16u);
          }

          v13 = v52;
        }

        v4 = 0;
      }

      else
      {
        v37 = [v17 UUID];
        v59 = v10;
        v38 = [v5 triggerManager:self invalidateModeAssertionWithUUID:v37 reason:2 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.hearing-trigger" error:&v59];
        v15 = v59;

        v39 = DNDSLogHearingTestTrigger;
        if (os_log_type_enabled(DNDSLogHearingTestTrigger, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v39;
          v41 = [v13 details];
          v42 = [v41 modeIdentifier];
          *buf = 138543362;
          v62 = v42;
          _os_log_impl(&dword_24912E000, v40, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion no mode identifer for hearing test session trigger; previousModeID=%{public}@", buf, 0xCu);
        }
      }

      goto LABEL_25;
    }

LABEL_18:
    v15 = v10;
    goto LABEL_28;
  }

  if (v8)
  {
    v11 = [v4 isHearingTestActive];
    v12 = [v9 count];
    if (v11)
    {
      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x277D05A40]);
        [v13 setIdentifier:@"com.apple.donotdisturb.trigger.hearing"];
        [v13 setLifetime:0];
        [v13 setModeIdentifier:v8];
        v57 = v10;
        v14 = [v5 triggerManager:self takeModeAssertionWithDetails:v13 clientIdentifier:@"com.apple.donotdisturb.private.hearing-trigger" error:&v57];
        v15 = v57;

        v16 = DNDSLogHearingTestTrigger;
        if (os_log_type_enabled(DNDSLogHearingTestTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v62 = v8;
          _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for hearing test session trigger in response to event; modeID=%{public}@", buf, 0xCu);
        }

LABEL_25:

        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (!v12)
    {
      goto LABEL_18;
    }

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __50__DNDSHearingTestTriggerManager_refreshWithEvent___block_invoke;
    v55[3] = &unk_278F8A0B0;
    v56 = v8;
    v29 = [v9 bs_filter:v55];
    v30 = [v29 firstObject];

    if (v30)
    {
      v31 = [v30 UUID];
      v54 = v10;
      v32 = [v5 triggerManager:self invalidateModeAssertionWithUUID:v31 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.hearing-trigger" error:&v54];
      v15 = v54;

      v33 = DNDSLogHearingTestTrigger;
      if (os_log_type_enabled(DNDSLogHearingTestTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
        v35 = [v30 details];
        v36 = [v35 modeIdentifier];
        *buf = 138543362;
        v62 = v36;
        _os_log_impl(&dword_24912E000, v34, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion for hearing test session trigger in response to event; previousModeID=%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v15 = v10;
    }
  }

  else
  {
    if (![v9 count])
    {
      goto LABEL_18;
    }

    v21 = [v9 firstObject];
    v22 = [v21 UUID];
    v53 = v10;
    v23 = [v5 triggerManager:self invalidateModeAssertionWithUUID:v22 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.hearing-trigger" error:&v53];
    v15 = v53;

    v24 = DNDSLogHearingTestTrigger;
    if (os_log_type_enabled(DNDSLogHearingTestTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = [v9 firstObject];
      v27 = [v26 details];
      v28 = [v27 modeIdentifier];
      *buf = 138543362;
      v62 = v28;
      _os_log_impl(&dword_24912E000, v25, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion for hearing test session trigger in response to event, trigger is disabled; previousModeID=%{public}@", buf, 0xCu);
    }
  }

LABEL_28:
  v50 = DNDSLogHearingTestTrigger;
  if (os_log_type_enabled(DNDSLogHearingTestTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v62 = v7;
    _os_log_impl(&dword_24912E000, v50, OS_LOG_TYPE_DEFAULT, "Updated assertions for hearing test trigger: mode=%{public}@", buf, 0xCu);
  }

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __50__DNDSHearingTestTriggerManager_refreshWithEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 details];
  v4 = [v3 modeIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (DNDSHearingTestTriggerManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end