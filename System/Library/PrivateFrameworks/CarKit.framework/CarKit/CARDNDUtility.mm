@interface CARDNDUtility
+ (id)sharedInstance;
- (CARDNDUtility)init;
- (id)outputFromRhodesUtility;
@end

@implementation CARDNDUtility

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CARDNDUtility_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___utility;

  return v2;
}

uint64_t __31__CARDNDUtility_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___utility = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (CARDNDUtility)init
{
  v6.receiver = self;
  v6.super_class = CARDNDUtility;
  v2 = [(CARDNDUtility *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CARAutomaticDNDStatus);
    DNDStatus = v2->_DNDStatus;
    v2->_DNDStatus = v3;

    [(CARAutomaticDNDStatus *)v2->_DNDStatus _detachObservers];
  }

  return v2;
}

- (id)outputFromRhodesUtility
{
  string = [MEMORY[0x1E696AD60] string];
  isAvailable = [MEMORY[0x1E6963510] isAvailable];
  [string appendString:@"Device State:\n"];
  if (isAvailable)
  {
    v5 = @"Available";
  }

  else
  {
    v5 = @"Not Available";
  }

  if (isAvailable)
  {
    v6 = @"✅ ";
  }

  else
  {
    v6 = @"❌ ";
  }

  v7 = [@"Vehicle Queries " stringByAppendingString:v5];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v6, v7];
  [string appendString:v8];

  vehicularState = [MEMORY[0x1E6963510] vehicularState];
  vehicularHints = [MEMORY[0x1E6963510] vehicularHints];
  vehicularOperatorState = [MEMORY[0x1E6963510] vehicularOperatorState];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:vehicularHints];
  if (!vehicularHints)
  {
    v15 = @"None";
    goto LABEL_24;
  }

  array = [MEMORY[0x1E695DF70] array];
  v14 = array;
  if (vehicularHints)
  {
    [array addObject:@"Motion"];
    if ((vehicularHints & 2) == 0)
    {
LABEL_10:
      if ((vehicularHints & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((vehicularHints & 2) == 0)
  {
    goto LABEL_10;
  }

  [v14 addObject:@"GPS"];
  if ((vehicularHints & 4) == 0)
  {
LABEL_11:
    if ((vehicularHints & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    [v14 addObject:@"Wi-Fi"];
    if ((vehicularHints & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  [v14 addObject:@"Baseband"];
  if ((vehicularHints & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((vehicularHints & 0x10) != 0)
  {
LABEL_13:
    [v14 addObject:@"Bluetooth"];
  }

LABEL_14:
  if ([v14 count])
  {
    v15 = [v14 componentsJoinedByString:@""];;
  }

  else
  {
    v15 = @"None";
  }

LABEL_24:
  [string appendFormat:@"  Core Motion Vehicular Hints: %@ (%@)\n", v12, v15];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:vehicularState];
  v17 = v16;
  if (vehicularState > 2)
  {
    v18 = @"INVALID";
  }

  else
  {
    v18 = off_1E82FC1D8[vehicularState];
  }

  [string appendFormat:@"  Core Motion Vehicular State: %@ (%@)\n", v16, v18];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:vehicularOperatorState];
  v20 = v19;
  if (vehicularOperatorState > 2)
  {
    v21 = @"INVALID";
  }

  else
  {
    v21 = off_1E82FC1F0[vehicularOperatorState];
  }

  [string appendFormat:@"  Core Motion Operator State: %@ (%@)\n", v19, v21];

  v22 = [MEMORY[0x1E696AD98] numberWithInt:CRAutomaticDNDLocationServicesStatus()];
  v23 = CRAutomaticDNDLocationServicesEnabled();
  v24 = @"Disabled";
  if (v23)
  {
    v24 = @"Enabled";
  }

  [string appendFormat:@"  Location Services Status: %@ (%@)\n", v22, v24];

  [string appendString:@"User Preferences:\n"];
  dNDStatus = [(CARDNDUtility *)self DNDStatus];
  automaticDNDTriggeringMethod = [dNDStatus automaticDNDTriggeringMethod];
  if (automaticDNDTriggeringMethod > 2)
  {
    v27 = @"INVALID";
  }

  else
  {
    v27 = off_1E82FC208[automaticDNDTriggeringMethod];
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@  %@\n", v27, @"CARDNDAutomaticTriggeringMethod"];
  [string appendString:v28];

  dNDStatus2 = [(CARDNDUtility *)self DNDStatus];
  if ([dNDStatus2 hasAdjustedTriggerMethod])
  {
    v30 = @"✅ ";
  }

  else
  {
    v30 = @"❌ ";
  }

  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v30, @"CARDNDUserHasAdjustedTriggerMethod"];
  [string appendString:v31];

  dNDStatus3 = [(CARDNDUtility *)self DNDStatus];
  if ([dNDStatus3 shouldActivateWithCarPlay])
  {
    v33 = @"✅ ";
  }

  else
  {
    v33 = @"❌ ";
  }

  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v33, @"CARDNDActivateWithCarPlay"];
  [string appendString:v34];

  dNDStatus4 = [(CARDNDUtility *)self DNDStatus];
  disableTimerTimestamp = [dNDStatus4 disableTimerTimestamp];
  v37 = @"CARDNDDisableTimerTimestamp";
  v38 = disableTimerTimestamp;
  if (CARDatePreferenceDescription_onceToken != -1)
  {
    [CARDNDUtility outputFromRhodesUtility];
  }

  v39 = MEMORY[0x1E696AEC0];
  if (v38)
  {
    v40 = [CARDatePreferenceDescription__formatter stringFromDate:v38];
    v41 = [v39 stringWithFormat:@"     %@: %@\n", v37, v40];
  }

  else
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"     %@: %@\n", v37, @"None"];
  }

  [string appendString:v41];
  dNDStatus5 = [(CARDNDUtility *)self DNDStatus];
  if ([dNDStatus5 hasMigratedToDriving])
  {
    v43 = @"✅ ";
  }

  else
  {
    v43 = @"❌ ";
  }

  v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v43, @"CARHasMigratedToDriving"];
  [string appendString:v44];

  [string appendString:@"Internal Preferences:\n"];
  dNDStatus6 = [(CARDNDUtility *)self DNDStatus];
  if ([dNDStatus6 isAutomaticDNDInternalForceOverrideEnabledPreference])
  {
    v46 = @"✅ ";
  }

  else
  {
    v46 = @"❌ ";
  }

  v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v46, @"CARDNDMiniInternalForceOverride"];
  [string appendString:v47];

  dNDStatus7 = [(CARDNDUtility *)self DNDStatus];
  if ([dNDStatus7 isAutomaticDNDInternalExitConfirmationOverrideEnabledPreference])
  {
    v49 = @"✅ ";
  }

  else
  {
    v49 = @"❌ ";
  }

  v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v49, @"CARDNDMiniInternalExitConfirmationOverride"];
  [string appendString:v50];

  dNDStatus8 = [(CARDNDUtility *)self DNDStatus];
  if ([dNDStatus8 isAutomaticDNDInternalShowGeofencingAlertsEnabledPreference])
  {
    v52 = @"✅ ";
  }

  else
  {
    v52 = @"❌ ";
  }

  v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v52, @"CARDNDMiniInternalShowGeofencingAlerts"];
  [string appendString:v53];

  dNDStatus9 = [(CARDNDUtility *)self DNDStatus];
  if ([dNDStatus9 isAutomaticDNDInternalShowUserAlertsEnabledPreference])
  {
    v55 = @"✅ ";
  }

  else
  {
    v55 = @"❌ ";
  }

  v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v55, @"CARDNDMiniInternalShowInternalAlerts"];
  [string appendString:v56];

  [string appendString:@"Overall Feature States:\n"];
  v57 = dispatch_semaphore_create(0);
  dNDStatus10 = [(CARDNDUtility *)self DNDStatus];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __40__CARDNDUtility_outputFromRhodesUtility__block_invoke;
  v70[3] = &unk_1E82FC1B8;
  v59 = string;
  v71 = v59;
  v60 = v57;
  v72 = v60;
  [dNDStatus10 fetchAutomaticDNDAssertionWithReply:v70];

  dispatch_semaphore_wait(v60, 0xFFFFFFFFFFFFFFFFLL);
  dNDStatus11 = [(CARDNDUtility *)self DNDStatus];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __40__CARDNDUtility_outputFromRhodesUtility__block_invoke_2;
  v67[3] = &unk_1E82FC1B8;
  v62 = v59;
  v68 = v62;
  v69 = v60;
  v63 = v60;
  [dNDStatus11 fetchAutomaticDNDExitConfirmationWithReply:v67];

  dispatch_semaphore_wait(v63, 0xFFFFFFFFFFFFFFFFLL);
  v64 = v69;
  v65 = v62;

  return v62;
}

intptr_t __40__CARDNDUtility_outputFromRhodesUtility__block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 appendFormat:@"ERROR fetching Driving state: %@", a3];
  }

  else
  {
    v5 = @"❌ ";
    if (a2)
    {
      v5 = @"✅ ";
    }

    [v4 appendFormat:@"  %@ Driving Mode \n", v5];
  }

  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

intptr_t __40__CARDNDUtility_outputFromRhodesUtility__block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 appendFormat:@"ERROR fetching EC state: %@", a3];
  }

  else
  {
    v5 = @"❌ ";
    if (a2)
    {
      v5 = @"✅ ";
    }

    [v4 appendFormat:@"  %@ Lock Screen Exit Confirmation \n", v5];
  }

  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

@end