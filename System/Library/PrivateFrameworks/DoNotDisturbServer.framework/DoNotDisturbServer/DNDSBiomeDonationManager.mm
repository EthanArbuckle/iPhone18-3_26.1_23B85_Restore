@interface DNDSBiomeDonationManager
- (DNDSBiomeDonationManager)init;
- (void)_donateEventForStateUpdate:(id)update;
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
    userFocus = [v3 UserFocus];
    computedMode = [userFocus ComputedMode];
    computedModeStream = v2->_computedModeStream;
    v2->_computedModeStream = computedMode;
  }

  return v2;
}

- (void)_donateEventForStateUpdate:(id)update
{
  v46 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  previousState = [updateCopy previousState];
  activeModeConfiguration = [previousState activeModeConfiguration];
  mode = [activeModeConfiguration mode];

  state = [updateCopy state];
  activeModeConfiguration2 = [state activeModeConfiguration];
  mode2 = [activeModeConfiguration2 mode];

  if (mode == mode2 || mode && mode2 && [mode isEqual:mode2])
  {
    v11 = DNDSLogBiomeDonation;
    if (os_log_type_enabled(DNDSLogBiomeDonation, OS_LOG_TYPE_ERROR))
    {
      [DNDSBiomeDonationManager _donateEventForStateUpdate:v11];
    }
  }

  else
  {
    reason = [updateCopy reason];
    if (reason > 6)
    {
      v13 = 1;
    }

    else
    {
      v13 = dword_2491FFB10[reason];
    }

    v39 = v13;
    source = [updateCopy source];
    if (source >= 4)
    {
      v15 = 2;
    }

    else
    {
      v15 = source;
    }

    if (mode)
    {
      v16 = objc_alloc(MEMORY[0x277CF16F0]);
      identifier = [mode identifier];
      uUIDString = [identifier UUIDString];
      v19 = BMUserFocusModeComputedSemanticTypeForDNDModeSemanticType([mode semanticType]);
      modeIdentifier = [mode modeIdentifier];
      v21 = [v16 initWithMode:uUIDString starting:MEMORY[0x277CBEC28] updateReason:v39 semanticType:v19 updateSource:v15 semanticModeIdentifier:modeIdentifier];

      source2 = [(BMStream *)self->_computedModeStream source];
      [source2 sendEvent:v21];

      v23 = DNDSLogBiomeDonation;
      if (os_log_type_enabled(DNDSLogBiomeDonation, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        [updateCopy reason];
        v25 = DNDStateUpdateReasonToString();
        [updateCopy source];
        v26 = DNDStateUpdateSourceToString();
        *buf = 138543874;
        v41 = v25;
        v42 = 2114;
        v43 = v26;
        v44 = 2114;
        v45 = mode;
        _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Biome event(s) donated for mode end: reason=%{public}@ source=%{public}@ from=%{public}@", buf, 0x20u);
      }
    }

    if (mode2)
    {
      v27 = objc_alloc(MEMORY[0x277CF16F0]);
      identifier2 = [mode2 identifier];
      uUIDString2 = [identifier2 UUIDString];
      v30 = BMUserFocusModeComputedSemanticTypeForDNDModeSemanticType([mode2 semanticType]);
      modeIdentifier2 = [mode2 modeIdentifier];
      v32 = [v27 initWithMode:uUIDString2 starting:MEMORY[0x277CBEC38] updateReason:v39 semanticType:v30 updateSource:v15 semanticModeIdentifier:modeIdentifier2];

      source3 = [(BMStream *)self->_computedModeStream source];
      [source3 sendEvent:v32];

      v34 = DNDSLogBiomeDonation;
      if (os_log_type_enabled(DNDSLogBiomeDonation, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
        [updateCopy reason];
        v36 = DNDStateUpdateReasonToString();
        [updateCopy source];
        v37 = DNDStateUpdateSourceToString();
        *buf = 138543874;
        v41 = v36;
        v42 = 2114;
        v43 = v37;
        v44 = 2114;
        v45 = mode2;
        _os_log_impl(&dword_24912E000, v35, OS_LOG_TYPE_DEFAULT, "Biome event(s) donated for mode begin: reason=%{public}@ source=%{public}@ to=%{public}@", buf, 0x20u);
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

@end