@interface LACDTOMutableEnvironment
+ (id)nullInstance;
- (BOOL)_isBiometryUsable;
- (BOOL)allowsAuthenticationFallbacks;
- (BOOL)allowsGracePeriodUI;
- (BOOL)hasExpiredBiometry;
- (BOOL)isDTOActive;
- (BOOL)isDTOEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGracePeriodActive;
- (BOOL)isStrictModeEnabled;
- (NSString)description;
@end

@implementation LACDTOMutableEnvironment

- (BOOL)allowsAuthenticationFallbacks
{
  locationState = [(LACDTOMutableEnvironment *)self locationState];
  v4 = [locationState rawValue] == 1 || !-[LACDTOMutableEnvironment isDTOActive](self, "isDTOActive") || -[LACDTOMutableEnvironment hasExpiredBiometry](self, "hasExpiredBiometry");

  return v4;
}

- (BOOL)allowsGracePeriodUI
{
  if (![(LACDTOMutableEnvironment *)self isGracePeriodActive]|| ![(LACDTOMutableEnvironment *)self isDTOActive])
  {
    return 0;
  }

  return [(LACDTOMutableEnvironment *)self _isBiometryUsable];
}

- (BOOL)isGracePeriodActive
{
  gracePeriodState = [(LACDTOMutableEnvironment *)self gracePeriodState];
  isActive = [gracePeriodState isActive];

  return isActive;
}

- (BOOL)hasExpiredBiometry
{
  ratchetState = [(LACDTOMutableEnvironment *)self ratchetState];
  v3 = [ratchetState rawValue] == 4;

  return v3;
}

- (BOOL)isDTOEnabled
{
  featureState = [(LACDTOMutableEnvironment *)self featureState];
  isEnabled = [featureState isEnabled];

  return isEnabled;
}

- (BOOL)isDTOActive
{
  featureState = [(LACDTOMutableEnvironment *)self featureState];
  if ([featureState isEnabled])
  {
    featureState2 = [(LACDTOMutableEnvironment *)self featureState];
    isAvailable = [featureState2 isAvailable];
  }

  else
  {
    isAvailable = 0;
  }

  return isAvailable;
}

- (BOOL)isStrictModeEnabled
{
  featureState = [(LACDTOMutableEnvironment *)self featureState];
  isStrictModeEnabled = [featureState isStrictModeEnabled];

  return isStrictModeEnabled;
}

+ (id)nullInstance
{
  v2 = objc_alloc_init(LACDTOMutableEnvironment);
  [(LACDTOMutableEnvironment *)v2 setConfirmed:0];
  v3 = +[LACDTOBiometryWatchdogPack nullInstance];
  [(LACDTOMutableEnvironment *)v2 setBiometryWatchdogPack:v3];

  v4 = +[LACDTOMutableFeatureState nullInstance];
  [(LACDTOMutableEnvironment *)v2 setFeatureState:v4];

  v5 = +[LACDTOLocationState nullInstance];
  [(LACDTOMutableEnvironment *)v2 setLocationState:v5];

  v6 = +[LACDTOLostModeState nullInstance];
  [(LACDTOMutableEnvironment *)v2 setLostModeState:v6];

  v7 = +[LACDTORatchetState nullInstance];
  [(LACDTOMutableEnvironment *)v2 setRatchetState:v7];

  v8 = +[LACDTOGracePeriodState nullInstance];
  [(LACDTOMutableEnvironment *)v2 setGracePeriodState:v8];

  return v2;
}

- (BOOL)_isBiometryUsable
{
  featureState = [(LACDTOMutableEnvironment *)self featureState];
  requirements = [featureState requirements];
  if ([requirements hasBiometricEnrollments])
  {
    v5 = ![(LACDTOMutableEnvironment *)self hasExpiredBiometry];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (NSString)description
{
  v53[14] = *MEMORY[0x1E69E9840];
  v3 = os_variant_allows_internal_security_policies();
  v48 = MEMORY[0x1E696AEC0];
  v47 = objc_opt_class();
  v4 = MEMORY[0x1E696AEC0];
  if ([(LACDTOMutableEnvironment *)self isConfirmed])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v52 = [v4 stringWithFormat:@"confirmed: %@", v5];
  v53[0] = v52;
  v6 = MEMORY[0x1E696AEC0];
  if ([(LACDTOMutableEnvironment *)self isDTOEnabled])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v51 = [v6 stringWithFormat:@"isDTOEnabled: %@", v7];
  v53[1] = v51;
  v8 = MEMORY[0x1E696AEC0];
  if ([(LACDTOMutableEnvironment *)self isDTOActive])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v50 = [v8 stringWithFormat:@"isDTOActive: %@", v9];
  v53[2] = v50;
  v10 = MEMORY[0x1E696AEC0];
  if ([(LACDTOMutableEnvironment *)self isGracePeriodActive])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v49 = [v10 stringWithFormat:@"isGracePeriodActive: %@", v11];
  v53[3] = v49;
  v12 = MEMORY[0x1E696AEC0];
  if ([(LACDTOMutableEnvironment *)self isStrictModeEnabled])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v46 = [v12 stringWithFormat:@"isStrictModeEnabled: %@", v13];
  v53[4] = v46;
  v14 = MEMORY[0x1E696AEC0];
  if ([(LACDTOMutableEnvironment *)self hasExpiredBiometry])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v45 = [v14 stringWithFormat:@"hasExpiredBiometry: %@", v15];
  v53[5] = v45;
  v16 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    if ([(LACDTOMutableEnvironment *)self allowsAuthenticationFallbacks])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }
  }

  else
  {
    v17 = @"<private>";
  }

  v44 = [v16 stringWithFormat:@"allowsAuthenticationFallbacks: %@", v17];
  v53[6] = v44;
  v18 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    if ([(LACDTOMutableEnvironment *)self allowsGracePeriodUI])
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }
  }

  else
  {
    v19 = @"<private>";
  }

  v43 = [v18 stringWithFormat:@"allowsGracePeriodUI: %@", v19];
  v53[7] = v43;
  v20 = MEMORY[0x1E696AEC0];
  biometryWatchdogPack = [(LACDTOMutableEnvironment *)self biometryWatchdogPack];
  v41 = [v20 stringWithFormat:@"biometryWatchdogPack: %@", biometryWatchdogPack];
  v53[8] = v41;
  v21 = MEMORY[0x1E696AEC0];
  locationState = [(LACDTOMutableEnvironment *)self locationState];
  v39 = [v21 stringWithFormat:@"locationState: %@", locationState];
  v53[9] = v39;
  v22 = MEMORY[0x1E696AEC0];
  lostModeState = [(LACDTOMutableEnvironment *)self lostModeState];
  v23 = [v22 stringWithFormat:@"lostModeState: %@", lostModeState];
  v53[10] = v23;
  v24 = MEMORY[0x1E696AEC0];
  featureState = [(LACDTOMutableEnvironment *)self featureState];
  v26 = [v24 stringWithFormat:@"featureState: %@", featureState];
  v53[11] = v26;
  v27 = MEMORY[0x1E696AEC0];
  ratchetState = [(LACDTOMutableEnvironment *)self ratchetState];
  v29 = [v27 stringWithFormat:@"ratchetState: %@", ratchetState];
  v53[12] = v29;
  v30 = MEMORY[0x1E696AEC0];
  gracePeriodState = [(LACDTOMutableEnvironment *)self gracePeriodState];
  v32 = [v30 stringWithFormat:@"gracePeriodState: %@", gracePeriodState];
  v53[13] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:14];
  v34 = [v33 componentsJoinedByString:@" "];;
  v35 = [v48 stringWithFormat:@"<%@ %p %@>", v47, self, v34];;

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F269E6B8])
  {
    v5 = equalCopy;
    isConfirmed = [(LACDTOMutableEnvironment *)self isConfirmed];
    if (isConfirmed != [v5 isConfirmed])
    {
      goto LABEL_28;
    }

    isDTOEnabled = [(LACDTOMutableEnvironment *)self isDTOEnabled];
    if (isDTOEnabled != [v5 isDTOEnabled])
    {
      goto LABEL_28;
    }

    hasExpiredBiometry = [(LACDTOMutableEnvironment *)self hasExpiredBiometry];
    if (hasExpiredBiometry != [v5 hasExpiredBiometry])
    {
      goto LABEL_28;
    }

    allowsAuthenticationFallbacks = [(LACDTOMutableEnvironment *)self allowsAuthenticationFallbacks];
    if (allowsAuthenticationFallbacks != [v5 allowsAuthenticationFallbacks])
    {
      goto LABEL_28;
    }

    allowsGracePeriodUI = [(LACDTOMutableEnvironment *)self allowsGracePeriodUI];
    if (allowsGracePeriodUI != [v5 allowsGracePeriodUI])
    {
      goto LABEL_28;
    }

    isGracePeriodActive = [(LACDTOMutableEnvironment *)self isGracePeriodActive];
    if (isGracePeriodActive != [v5 isGracePeriodActive])
    {
      goto LABEL_28;
    }

    isStrictModeEnabled = [(LACDTOMutableEnvironment *)self isStrictModeEnabled];
    if (isStrictModeEnabled != [v5 isStrictModeEnabled])
    {
      goto LABEL_28;
    }

    biometryWatchdogPack = [(LACDTOMutableEnvironment *)self biometryWatchdogPack];
    biometryWatchdogPack2 = [v5 biometryWatchdogPack];
    v15 = biometryWatchdogPack2;
    if (biometryWatchdogPack == biometryWatchdogPack2)
    {
    }

    else
    {
      biometryWatchdogPack3 = [(LACDTOMutableEnvironment *)self biometryWatchdogPack];
      biometryWatchdogPack4 = [v5 biometryWatchdogPack];
      v18 = [biometryWatchdogPack3 isEqual:biometryWatchdogPack4];

      if (!v18)
      {
        goto LABEL_28;
      }
    }

    featureState = [(LACDTOMutableEnvironment *)self featureState];
    featureState2 = [v5 featureState];
    v22 = featureState2;
    if (featureState == featureState2)
    {
    }

    else
    {
      featureState3 = [(LACDTOMutableEnvironment *)self featureState];
      featureState4 = [v5 featureState];
      v25 = [featureState3 isEqual:featureState4];

      if (!v25)
      {
        goto LABEL_28;
      }
    }

    locationState = [(LACDTOMutableEnvironment *)self locationState];
    locationState2 = [v5 locationState];
    v28 = locationState2;
    if (locationState == locationState2)
    {
    }

    else
    {
      locationState3 = [(LACDTOMutableEnvironment *)self locationState];
      locationState4 = [v5 locationState];
      v31 = [locationState3 isEqual:locationState4];

      if (!v31)
      {
        goto LABEL_28;
      }
    }

    lostModeState = [(LACDTOMutableEnvironment *)self lostModeState];
    lostModeState2 = [v5 lostModeState];
    v34 = lostModeState2;
    if (lostModeState == lostModeState2)
    {
    }

    else
    {
      lostModeState3 = [(LACDTOMutableEnvironment *)self lostModeState];
      lostModeState4 = [v5 lostModeState];
      v37 = [lostModeState3 isEqual:lostModeState4];

      if (!v37)
      {
        goto LABEL_28;
      }
    }

    ratchetState = [(LACDTOMutableEnvironment *)self ratchetState];
    ratchetState2 = [v5 ratchetState];
    v40 = ratchetState2;
    if (ratchetState == ratchetState2)
    {
    }

    else
    {
      ratchetState3 = [(LACDTOMutableEnvironment *)self ratchetState];
      ratchetState4 = [v5 ratchetState];
      v43 = [ratchetState3 isEqual:ratchetState4];

      if (!v43)
      {
LABEL_28:
        v19 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    gracePeriodState = [(LACDTOMutableEnvironment *)self gracePeriodState];
    gracePeriodState2 = [v5 gracePeriodState];
    if (gracePeriodState == gracePeriodState2)
    {
      v19 = 1;
    }

    else
    {
      gracePeriodState3 = [(LACDTOMutableEnvironment *)self gracePeriodState];
      gracePeriodState4 = [v5 gracePeriodState];
      v19 = [gracePeriodState3 isEqual:gracePeriodState4];
    }

    goto LABEL_29;
  }

  v19 = 0;
LABEL_30:

  return v19 & 1;
}

@end