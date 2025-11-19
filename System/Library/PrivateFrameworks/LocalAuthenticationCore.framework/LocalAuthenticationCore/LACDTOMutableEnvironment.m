@interface LACDTOMutableEnvironment
+ (id)nullInstance;
- (BOOL)_isBiometryUsable;
- (BOOL)allowsAuthenticationFallbacks;
- (BOOL)allowsGracePeriodUI;
- (BOOL)hasExpiredBiometry;
- (BOOL)isDTOActive;
- (BOOL)isDTOEnabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGracePeriodActive;
- (BOOL)isStrictModeEnabled;
- (NSString)description;
@end

@implementation LACDTOMutableEnvironment

- (BOOL)allowsAuthenticationFallbacks
{
  v3 = [(LACDTOMutableEnvironment *)self locationState];
  v4 = [v3 rawValue] == 1 || !-[LACDTOMutableEnvironment isDTOActive](self, "isDTOActive") || -[LACDTOMutableEnvironment hasExpiredBiometry](self, "hasExpiredBiometry");

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
  v2 = [(LACDTOMutableEnvironment *)self gracePeriodState];
  v3 = [v2 isActive];

  return v3;
}

- (BOOL)hasExpiredBiometry
{
  v2 = [(LACDTOMutableEnvironment *)self ratchetState];
  v3 = [v2 rawValue] == 4;

  return v3;
}

- (BOOL)isDTOEnabled
{
  v2 = [(LACDTOMutableEnvironment *)self featureState];
  v3 = [v2 isEnabled];

  return v3;
}

- (BOOL)isDTOActive
{
  v3 = [(LACDTOMutableEnvironment *)self featureState];
  if ([v3 isEnabled])
  {
    v4 = [(LACDTOMutableEnvironment *)self featureState];
    v5 = [v4 isAvailable];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isStrictModeEnabled
{
  v2 = [(LACDTOMutableEnvironment *)self featureState];
  v3 = [v2 isStrictModeEnabled];

  return v3;
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
  v3 = [(LACDTOMutableEnvironment *)self featureState];
  v4 = [v3 requirements];
  if ([v4 hasBiometricEnrollments])
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
  v42 = [(LACDTOMutableEnvironment *)self biometryWatchdogPack];
  v41 = [v20 stringWithFormat:@"biometryWatchdogPack: %@", v42];
  v53[8] = v41;
  v21 = MEMORY[0x1E696AEC0];
  v40 = [(LACDTOMutableEnvironment *)self locationState];
  v39 = [v21 stringWithFormat:@"locationState: %@", v40];
  v53[9] = v39;
  v22 = MEMORY[0x1E696AEC0];
  v38 = [(LACDTOMutableEnvironment *)self lostModeState];
  v23 = [v22 stringWithFormat:@"lostModeState: %@", v38];
  v53[10] = v23;
  v24 = MEMORY[0x1E696AEC0];
  v25 = [(LACDTOMutableEnvironment *)self featureState];
  v26 = [v24 stringWithFormat:@"featureState: %@", v25];
  v53[11] = v26;
  v27 = MEMORY[0x1E696AEC0];
  v28 = [(LACDTOMutableEnvironment *)self ratchetState];
  v29 = [v27 stringWithFormat:@"ratchetState: %@", v28];
  v53[12] = v29;
  v30 = MEMORY[0x1E696AEC0];
  v31 = [(LACDTOMutableEnvironment *)self gracePeriodState];
  v32 = [v30 stringWithFormat:@"gracePeriodState: %@", v31];
  v53[13] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:14];
  v34 = [v33 componentsJoinedByString:@" "];;
  v35 = [v48 stringWithFormat:@"<%@ %p %@>", v47, self, v34];;

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F269E6B8])
  {
    v5 = v4;
    v6 = [(LACDTOMutableEnvironment *)self isConfirmed];
    if (v6 != [v5 isConfirmed])
    {
      goto LABEL_28;
    }

    v7 = [(LACDTOMutableEnvironment *)self isDTOEnabled];
    if (v7 != [v5 isDTOEnabled])
    {
      goto LABEL_28;
    }

    v8 = [(LACDTOMutableEnvironment *)self hasExpiredBiometry];
    if (v8 != [v5 hasExpiredBiometry])
    {
      goto LABEL_28;
    }

    v9 = [(LACDTOMutableEnvironment *)self allowsAuthenticationFallbacks];
    if (v9 != [v5 allowsAuthenticationFallbacks])
    {
      goto LABEL_28;
    }

    v10 = [(LACDTOMutableEnvironment *)self allowsGracePeriodUI];
    if (v10 != [v5 allowsGracePeriodUI])
    {
      goto LABEL_28;
    }

    v11 = [(LACDTOMutableEnvironment *)self isGracePeriodActive];
    if (v11 != [v5 isGracePeriodActive])
    {
      goto LABEL_28;
    }

    v12 = [(LACDTOMutableEnvironment *)self isStrictModeEnabled];
    if (v12 != [v5 isStrictModeEnabled])
    {
      goto LABEL_28;
    }

    v13 = [(LACDTOMutableEnvironment *)self biometryWatchdogPack];
    v14 = [v5 biometryWatchdogPack];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(LACDTOMutableEnvironment *)self biometryWatchdogPack];
      v17 = [v5 biometryWatchdogPack];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_28;
      }
    }

    v20 = [(LACDTOMutableEnvironment *)self featureState];
    v21 = [v5 featureState];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(LACDTOMutableEnvironment *)self featureState];
      v24 = [v5 featureState];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_28;
      }
    }

    v26 = [(LACDTOMutableEnvironment *)self locationState];
    v27 = [v5 locationState];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(LACDTOMutableEnvironment *)self locationState];
      v30 = [v5 locationState];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_28;
      }
    }

    v32 = [(LACDTOMutableEnvironment *)self lostModeState];
    v33 = [v5 lostModeState];
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      v35 = [(LACDTOMutableEnvironment *)self lostModeState];
      v36 = [v5 lostModeState];
      v37 = [v35 isEqual:v36];

      if (!v37)
      {
        goto LABEL_28;
      }
    }

    v38 = [(LACDTOMutableEnvironment *)self ratchetState];
    v39 = [v5 ratchetState];
    v40 = v39;
    if (v38 == v39)
    {
    }

    else
    {
      v41 = [(LACDTOMutableEnvironment *)self ratchetState];
      v42 = [v5 ratchetState];
      v43 = [v41 isEqual:v42];

      if (!v43)
      {
LABEL_28:
        v19 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    v45 = [(LACDTOMutableEnvironment *)self gracePeriodState];
    v46 = [v5 gracePeriodState];
    if (v45 == v46)
    {
      v19 = 1;
    }

    else
    {
      v47 = [(LACDTOMutableEnvironment *)self gracePeriodState];
      v48 = [v5 gracePeriodState];
      v19 = [v47 isEqual:v48];
    }

    goto LABEL_29;
  }

  v19 = 0;
LABEL_30:

  return v19 & 1;
}

@end