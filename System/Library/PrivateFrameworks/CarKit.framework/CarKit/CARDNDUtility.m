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
  block[4] = a1;
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
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [MEMORY[0x1E6963510] isAvailable];
  [v3 appendString:@"Device State:\n"];
  if (v4)
  {
    v5 = @"Available";
  }

  else
  {
    v5 = @"Not Available";
  }

  if (v4)
  {
    v6 = @"✅ ";
  }

  else
  {
    v6 = @"❌ ";
  }

  v7 = [@"Vehicle Queries " stringByAppendingString:v5];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v6, v7];
  [v3 appendString:v8];

  v9 = [MEMORY[0x1E6963510] vehicularState];
  v10 = [MEMORY[0x1E6963510] vehicularHints];
  v11 = [MEMORY[0x1E6963510] vehicularOperatorState];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  if (!v10)
  {
    v15 = @"None";
    goto LABEL_24;
  }

  v13 = [MEMORY[0x1E695DF70] array];
  v14 = v13;
  if (v10)
  {
    [v13 addObject:@"Motion"];
    if ((v10 & 2) == 0)
    {
LABEL_10:
      if ((v10 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_10;
  }

  [v14 addObject:@"GPS"];
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    [v14 addObject:@"Wi-Fi"];
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  [v14 addObject:@"Baseband"];
  if ((v10 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v10 & 0x10) != 0)
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
  [v3 appendFormat:@"  Core Motion Vehicular Hints: %@ (%@)\n", v12, v15];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v17 = v16;
  if (v9 > 2)
  {
    v18 = @"INVALID";
  }

  else
  {
    v18 = off_1E82FC1D8[v9];
  }

  [v3 appendFormat:@"  Core Motion Vehicular State: %@ (%@)\n", v16, v18];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  v20 = v19;
  if (v11 > 2)
  {
    v21 = @"INVALID";
  }

  else
  {
    v21 = off_1E82FC1F0[v11];
  }

  [v3 appendFormat:@"  Core Motion Operator State: %@ (%@)\n", v19, v21];

  v22 = [MEMORY[0x1E696AD98] numberWithInt:CRAutomaticDNDLocationServicesStatus()];
  v23 = CRAutomaticDNDLocationServicesEnabled();
  v24 = @"Disabled";
  if (v23)
  {
    v24 = @"Enabled";
  }

  [v3 appendFormat:@"  Location Services Status: %@ (%@)\n", v22, v24];

  [v3 appendString:@"User Preferences:\n"];
  v25 = [(CARDNDUtility *)self DNDStatus];
  v26 = [v25 automaticDNDTriggeringMethod];
  if (v26 > 2)
  {
    v27 = @"INVALID";
  }

  else
  {
    v27 = off_1E82FC208[v26];
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@  %@\n", v27, @"CARDNDAutomaticTriggeringMethod"];
  [v3 appendString:v28];

  v29 = [(CARDNDUtility *)self DNDStatus];
  if ([v29 hasAdjustedTriggerMethod])
  {
    v30 = @"✅ ";
  }

  else
  {
    v30 = @"❌ ";
  }

  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v30, @"CARDNDUserHasAdjustedTriggerMethod"];
  [v3 appendString:v31];

  v32 = [(CARDNDUtility *)self DNDStatus];
  if ([v32 shouldActivateWithCarPlay])
  {
    v33 = @"✅ ";
  }

  else
  {
    v33 = @"❌ ";
  }

  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v33, @"CARDNDActivateWithCarPlay"];
  [v3 appendString:v34];

  v35 = [(CARDNDUtility *)self DNDStatus];
  v36 = [v35 disableTimerTimestamp];
  v37 = @"CARDNDDisableTimerTimestamp";
  v38 = v36;
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

  [v3 appendString:v41];
  v42 = [(CARDNDUtility *)self DNDStatus];
  if ([v42 hasMigratedToDriving])
  {
    v43 = @"✅ ";
  }

  else
  {
    v43 = @"❌ ";
  }

  v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v43, @"CARHasMigratedToDriving"];
  [v3 appendString:v44];

  [v3 appendString:@"Internal Preferences:\n"];
  v45 = [(CARDNDUtility *)self DNDStatus];
  if ([v45 isAutomaticDNDInternalForceOverrideEnabledPreference])
  {
    v46 = @"✅ ";
  }

  else
  {
    v46 = @"❌ ";
  }

  v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v46, @"CARDNDMiniInternalForceOverride"];
  [v3 appendString:v47];

  v48 = [(CARDNDUtility *)self DNDStatus];
  if ([v48 isAutomaticDNDInternalExitConfirmationOverrideEnabledPreference])
  {
    v49 = @"✅ ";
  }

  else
  {
    v49 = @"❌ ";
  }

  v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v49, @"CARDNDMiniInternalExitConfirmationOverride"];
  [v3 appendString:v50];

  v51 = [(CARDNDUtility *)self DNDStatus];
  if ([v51 isAutomaticDNDInternalShowGeofencingAlertsEnabledPreference])
  {
    v52 = @"✅ ";
  }

  else
  {
    v52 = @"❌ ";
  }

  v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v52, @"CARDNDMiniInternalShowGeofencingAlerts"];
  [v3 appendString:v53];

  v54 = [(CARDNDUtility *)self DNDStatus];
  if ([v54 isAutomaticDNDInternalShowUserAlertsEnabledPreference])
  {
    v55 = @"✅ ";
  }

  else
  {
    v55 = @"❌ ";
  }

  v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@ %@\n", v55, @"CARDNDMiniInternalShowInternalAlerts"];
  [v3 appendString:v56];

  [v3 appendString:@"Overall Feature States:\n"];
  v57 = dispatch_semaphore_create(0);
  v58 = [(CARDNDUtility *)self DNDStatus];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __40__CARDNDUtility_outputFromRhodesUtility__block_invoke;
  v70[3] = &unk_1E82FC1B8;
  v59 = v3;
  v71 = v59;
  v60 = v57;
  v72 = v60;
  [v58 fetchAutomaticDNDAssertionWithReply:v70];

  dispatch_semaphore_wait(v60, 0xFFFFFFFFFFFFFFFFLL);
  v61 = [(CARDNDUtility *)self DNDStatus];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __40__CARDNDUtility_outputFromRhodesUtility__block_invoke_2;
  v67[3] = &unk_1E82FC1B8;
  v62 = v59;
  v68 = v62;
  v69 = v60;
  v63 = v60;
  [v61 fetchAutomaticDNDExitConfirmationWithReply:v67];

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