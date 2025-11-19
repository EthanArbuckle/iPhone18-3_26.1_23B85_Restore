@interface HDBiomeInterface
- (BOOL)sleepFocusOn;
- (id)_createBiomeEventWithType:(void *)a3 sessionConfiguration:(uint64_t)a4 isUpdate:;
- (void)_sendBiomeEvent:(id)a3 toSource:(id)a4;
- (void)stopSessionWithIdentifier:(id)a3 recoveredWorkoutConfiguration:(id)a4;
- (void)workoutConfigurationUpdated:(id)a3;
- (void)workoutSessionWithConfiguration:(id)a3 transitionedToState:(int64_t)a4 fromState:(int64_t)a5;
@end

@implementation HDBiomeInterface

- (void)workoutSessionWithConfiguration:(id)a3 transitionedToState:(int64_t)a4 fromState:(int64_t)a5
{
  v8 = a3;
  if (!self)
  {
    goto LABEL_17;
  }

  if (a4 > 7)
  {
    if ((a4 - 16) >= 2)
    {
      v9 = 4;
      if (a4 != 8 && a4 != 10)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (a5 != 16)
    {
      v9 = 2;
      goto LABEL_15;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_19;
  }

  if ((a4 - 4) >= 2)
  {
    if (a4 != 7)
    {
LABEL_18:
      v14 = 0;
      goto LABEL_19;
    }

    if ((a5 & 0xFFFFFFFFFFFFFFFDLL) == 8)
    {
      v9 = 3;
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (a5 == 4)
  {
    goto LABEL_17;
  }

  v9 = 1;
LABEL_15:
  v14 = [(HDBiomeInterface *)self _createBiomeEventWithType:v9 sessionConfiguration:v8 isUpdate:0];

  v10 = v14;
  if (!v14)
  {
    goto LABEL_20;
  }

  v11 = BiomeLibrary();
  v12 = [v11 Health];
  v8 = [v12 Workout];

  v13 = [v8 source];
  [(HDBiomeInterface *)self _sendBiomeEvent:v14 toSource:v13];

LABEL_19:
  v10 = v14;
LABEL_20:
}

- (void)workoutConfigurationUpdated:(id)a3
{
  v4 = [(HDBiomeInterface *)self _createBiomeEventWithType:a3 sessionConfiguration:1 isUpdate:?];
  if (v4)
  {
    v9 = v4;
    v5 = BiomeLibrary();
    v6 = [v5 Health];
    v7 = [v6 Workout];

    v8 = [v7 source];
    [(HDBiomeInterface *)self _sendBiomeEvent:v9 toSource:v8];

    v4 = v9;
  }
}

- (id)_createBiomeEventWithType:(void *)a3 sessionConfiguration:(uint64_t)a4 isUpdate:
{
  if (a1)
  {
    v6 = a3;
    v7 = [v6 workoutConfiguration];
    v8 = [v7 locationType] == 2;

    v9 = MEMORY[0x277CCDCD8];
    v10 = [v6 clientApplicationIdentifier];
    v11 = [v9 isFirstPartyForIdentifier:v10];

    v12 = [v6 workoutConfiguration];
    [v12 activityType];

    v13 = [v6 sessionIdentifier];

    v14 = [v13 UUIDString];

    v15 = objc_alloc(MEMORY[0x277CF11A8]);
    v16 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v18 = _HKWorkoutActivityNameForActivityType();
    v19 = [MEMORY[0x277CCABB0] numberWithBool:a4];
    v20 = [v15 initWithIsFirstPartyDonation:v16 isIndoor:v17 activityType:v18 eventType:a2 activityUUID:v14 isUpdate:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)stopSessionWithIdentifier:(id)a3 recoveredWorkoutConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 locationType] == 2;
  [v6 activityType];

  v18 = _HKWorkoutActivityNameForActivityType();
  v9 = objc_alloc(MEMORY[0x277CF11A8]);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  if (v18)
  {
    v11 = v18;
  }

  else
  {
    v11 = @"N/A";
  }

  v12 = [v7 UUIDString];

  v13 = [v9 initWithIsFirstPartyDonation:MEMORY[0x277CBEC28] isIndoor:v10 activityType:v11 eventType:2 activityUUID:v12 isUpdate:MEMORY[0x277CBEC28]];
  v14 = BiomeLibrary();
  v15 = [v14 Health];
  v16 = [v15 Workout];

  v17 = [v16 source];
  [(HDBiomeInterface *)self _sendBiomeEvent:v13 toSource:v17];
}

- (void)_sendBiomeEvent:(id)a3 toSource:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  self->_mostRecentBiomeEventType = [v6 eventType];
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *v12 = 138543874;
    *&v12[4] = objc_opt_class();
    *&v12[12] = 2048;
    *&v12[14] = self;
    *&v12[22] = 2114;
    v13 = v6;
    v10 = *&v12[4];
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] sending workout event %{public}@ to biome", v12, 0x20u);
  }

  [v7 sendEvent:{v6, *v12, *&v12[16], v13}];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)sleepFocusOn
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = BiomeLibrary();
  v4 = [v3 UserFocus];
  v5 = [v4 ComputedMode];
  v6 = [v5 publisher];
  v7 = [v6 last];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __32__HDBiomeInterface_sleepFocusOn__block_invoke;
  v11[3] = &unk_278629420;
  v11[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__HDBiomeInterface_sleepFocusOn__block_invoke_298;
  v10[3] = &unk_278629448;
  v10[4] = self;
  v10[5] = &v12;
  v8 = [v7 sinkWithCompletion:v11 receiveInput:v10];

  LOBYTE(v3) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v3;
}

void __32__HDBiomeInterface_sleepFocusOn__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [v3 error];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] User focus computed mode publisher finished with error: %{public}@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __32__HDBiomeInterface_sleepFocusOn__block_invoke_298(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];

  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2B0];
  v6 = os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = v5;
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [v3 eventBody];
      v21 = 138543618;
      v22 = v9;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received event: %{public}@", &v21, 0x16u);
    }

    v12 = [v3 eventBody];
    if ([v12 semanticType] == 3)
    {
      v13 = [v3 eventBody];
      *(*(*(a1 + 40) + 8) + 24) = [v13 starting];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else if (v6)
  {
    v14 = *(a1 + 32);
    v15 = v5;
    v16 = objc_opt_class();
    v17 = MEMORY[0x277CCABB0];
    v18 = v16;
    v19 = [v17 numberWithUnsignedChar:{objc_msgSend(v3, "error")}];
    v21 = 138543618;
    v22 = v16;
    v23 = 2114;
    v24 = v19;
    _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received nil user focus computed mode with reason: %{public}@", &v21, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end