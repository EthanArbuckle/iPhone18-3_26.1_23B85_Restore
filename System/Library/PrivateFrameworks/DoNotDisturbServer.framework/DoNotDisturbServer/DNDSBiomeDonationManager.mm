@interface DNDSBiomeDonationManager
- (DNDSBiomeDonationManager)init;
- (void)_donateEventForStateUpdate:(id)a3;
@end

@implementation DNDSBiomeDonationManager

- (DNDSBiomeDonationManager)init
{
  v8.receiver = self;
  v8.super_class = DNDSBiomeDonationManager;
  v2 = [(DNDSBiomeDonationManager *)&v8 init];
  if (v2)
  {
    v3 = BiomeLibrary();
    v4 = [v3 UserFocus];
    v5 = [v4 ComputedMode];
    computedModeStream = v2->_computedModeStream;
    v2->_computedModeStream = v5;
  }

  return v2;
}

- (void)_donateEventForStateUpdate:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 previousState];
  v6 = [v5 activeModeConfiguration];
  v7 = [v6 mode];

  v8 = [v4 state];
  v9 = [v8 activeModeConfiguration];
  v10 = [v9 mode];

  if (v7 == v10 || v7 && v10 && [v7 isEqual:v10])
  {
    v11 = DNDSLogBiomeDonation;
    if (os_log_type_enabled(DNDSLogBiomeDonation, OS_LOG_TYPE_ERROR))
    {
      [DNDSBiomeDonationManager _donateEventForStateUpdate:v11];
    }
  }

  else
  {
    v12 = [v4 reason];
    if (v12 > 6)
    {
      v13 = 1;
    }

    else
    {
      v13 = dword_2491FFB10[v12];
    }

    v39 = v13;
    v14 = [v4 source];
    if (v14 >= 4)
    {
      v15 = 2;
    }

    else
    {
      v15 = v14;
    }

    if (v7)
    {
      v16 = objc_alloc(MEMORY[0x277CF16F0]);
      v17 = [v7 identifier];
      v18 = [v17 UUIDString];
      v19 = BMUserFocusModeComputedSemanticTypeForDNDModeSemanticType([v7 semanticType]);
      v20 = [v7 modeIdentifier];
      v21 = [v16 initWithMode:v18 starting:MEMORY[0x277CBEC28] updateReason:v39 semanticType:v19 updateSource:v15 semanticModeIdentifier:v20];

      v22 = [(BMStream *)self->_computedModeStream source];
      [v22 sendEvent:v21];

      v23 = DNDSLogBiomeDonation;
      if (os_log_type_enabled(DNDSLogBiomeDonation, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        [v4 reason];
        v25 = DNDStateUpdateReasonToString();
        [v4 source];
        v26 = DNDStateUpdateSourceToString();
        *buf = 138543874;
        v41 = v25;
        v42 = 2114;
        v43 = v26;
        v44 = 2114;
        v45 = v7;
        _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Biome event(s) donated for mode end: reason=%{public}@ source=%{public}@ from=%{public}@", buf, 0x20u);
      }
    }

    if (v10)
    {
      v27 = objc_alloc(MEMORY[0x277CF16F0]);
      v28 = [v10 identifier];
      v29 = [v28 UUIDString];
      v30 = BMUserFocusModeComputedSemanticTypeForDNDModeSemanticType([v10 semanticType]);
      v31 = [v10 modeIdentifier];
      v32 = [v27 initWithMode:v29 starting:MEMORY[0x277CBEC38] updateReason:v39 semanticType:v30 updateSource:v15 semanticModeIdentifier:v31];

      v33 = [(BMStream *)self->_computedModeStream source];
      [v33 sendEvent:v32];

      v34 = DNDSLogBiomeDonation;
      if (os_log_type_enabled(DNDSLogBiomeDonation, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
        [v4 reason];
        v36 = DNDStateUpdateReasonToString();
        [v4 source];
        v37 = DNDStateUpdateSourceToString();
        *buf = 138543874;
        v41 = v36;
        v42 = 2114;
        v43 = v37;
        v44 = 2114;
        v45 = v10;
        _os_log_impl(&dword_24912E000, v35, OS_LOG_TYPE_DEFAULT, "Biome event(s) donated for mode begin: reason=%{public}@ source=%{public}@ to=%{public}@", buf, 0x20u);
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

@end