@interface MCPasscodeManager
+ (BOOL)_passcodeCharacteristics:(id)a3 creationDate:(id)a4 compliesWithPolicyFromRestrictions:(id)a5 outError:(id *)a6;
+ (BOOL)passcode:(id)a3 compliesWithPolicyFromRestrictions:(id)a4 checkHistory:(BOOL)a5 outError:(id *)a6;
+ (BOOL)passcodeContext:(id)a3 compliesWithPolicyFromRestrictions:(id)a4 checkHistory:(BOOL)a5 outError:(id *)a6;
+ (BOOL)restrictionsEnforcePasscodePolicy:(id)a3;
+ (id)_localizedDescriptionOfPasscodePolicyFromRestrictions:(id)a3 shouldBeDefault:(BOOL)a4;
+ (id)characteristicsDictionaryFromPasscode:(id)a3;
+ (id)characteristicsDictionaryFromPasscodeContext:(id)a3;
+ (id)deviceLockedError;
+ (id)generateSalt;
+ (id)hashForPasscode:(id)a3 usingMethod:(int)a4 salt:(id)a5 customIterations:(unsigned int)a6;
+ (id)sharedManager;
+ (int)unlockScreenTypeForPasscodeCharacteristics:(id)a3 outSimplePasscodeType:(int *)a4;
+ (int)unlockScreenTypeForRestrictions:(id)a3 outSimplePasscodeType:(int *)a4;
- (BOOL)_checkPasscode:(id)a3 againstHistoryWithRestrictions:(id)a4 outError:(id *)a5;
- (BOOL)_checkPasscodeContext:(id)a3 againstHistoryWithRestrictions:(id)a4 outError:(id *)a5;
- (BOOL)currentPasscodeCompliesWithPolicyFromRestrictions:(id)a3 outError:(id *)a4;
- (BOOL)isCurrentPasscodeCompliantOutError:(id *)a3;
- (BOOL)isPasscodeCompliantWithNamedPolicy:(id)a3 outError:(id *)a4;
- (BOOL)unlockDeviceWithPasscode:(id)a3 outError:(id *)a4;
- (BOOL)unlockDeviceWithPasscodeContext:(id)a3 outError:(id *)a4;
- (id)_currentPublicPasscodeDict;
- (id)_filterPasscodeCharacteristics:(id)a3 forGeneration:(id)a4;
- (id)_filterPublicPasscodeDict:(id)a3 forGeneration:(id)a4;
- (id)_fixUpPasscodeCharacteristics:(id)a3;
- (id)_fixUpPublicPasscodeDict:(id)a3;
- (id)_mkbErrorStringForResult:(int)a3;
- (id)_privatePasscodeDictWithOutError:(id *)a3;
- (id)_publicPasscodeDictForUser:(id)a3;
- (id)_publicPasscodeDictSharedDataVolume:(id)a3;
- (id)_wrongPasscodeError;
- (id)localizedDescriptionOfDefaultNewPasscodePolicy;
- (id)localizedDescriptionOfPasscodePolicy;
- (id)passcodeCreationDate;
- (id)passcodeExpiryDate;
- (id)recoveryPasscodeExpiryDate;
- (int)_minimumPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)a3;
- (int)_newPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)a3 shouldBeMinimum:(BOOL)a4;
- (int)currentUnlockScreenType;
- (int)currentUnlockSimplePasscodeType;
- (int)recoveryPasscodeUnlockScreenType;
- (int)recoveryPasscodeUnlockSimplePasscodeType;
- (int)unlockScreenTypeForSharedDataVolume:(id)a3;
- (int)unlockScreenTypeForUser:(id)a3;
- (int)unlockScreenTypeWithPublicPasscodeDict:(id)a3 isRecovery:(BOOL)a4 deviceHandle:(id)a5;
- (int)unlockSimplePasscodeTypeForSharedDataVolume:(id)a3;
- (int)unlockSimplePasscodeTypeForUser:(id)a3;
- (void)lockDeviceImmediately:(BOOL)a3;
@end

@implementation MCPasscodeManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[MCPasscodeManager sharedManager];
  }

  v3 = sharedManager_obj_0;

  return v3;
}

uint64_t __34__MCPasscodeManager_sharedManager__block_invoke()
{
  v0 = NSClassFromString(&cfstr_Mcpasscodemana.isa);
  if (!v0)
  {
    v0 = MCPasscodeManager;
  }

  sharedManager_obj_0 = objc_alloc_init(v0);

  return MEMORY[0x1EEE66BB8]();
}

- (int)currentUnlockSimplePasscodeType
{
  v2 = self;
  v3 = [(MCPasscodeManager *)self _currentPublicPasscodeDict];
  LODWORD(v2) = [(MCPasscodeManager *)v2 unlockSimplePasscodeTypeWithPublicPasscodeDict:v3 isRecovery:0 deviceHandle:0];

  return v2;
}

- (id)_currentPublicPasscodeDict
{
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 currentUser];
  v5 = [(MCPasscodeManager *)self _publicPasscodeDictForUser:v4];

  return v5;
}

- (int)currentUnlockScreenType
{
  v2 = self;
  v3 = [(MCPasscodeManager *)self _currentPublicPasscodeDict];
  LODWORD(v2) = [(MCPasscodeManager *)v2 unlockScreenTypeWithPublicPasscodeDict:v3 isRecovery:0 deviceHandle:0];

  return v2;
}

+ (id)deviceLockedError
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArrayByDevice(@"PASSCODE_ERROR_DEVICE_CPLOCKED", a2, v2, v3, v4, v5, v6, v7, 0);
  v10 = [v8 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5010 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

- (id)_publicPasscodeDictForUser:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [MEMORY[0x1E69AD420] sharedConfiguration];
  if ([v6 userMode] == 1)
  {
    v7 = [v5 isSharedIPad];
  }

  else
  {
    v7 = 0;
  }

  v18 = 0;
  v8 = [v5 keybagOpaqueDataForUser:v4 withError:&v18];
  v9 = v18;
  if (v9)
  {
    v10 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v9;
      _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_ERROR, "Cannot read public passcode metadata for current user: %{public}@", buf, 0xCu);
    }
  }

  if (![v8 length] || ((-[MCPasscodeManager isPasscodeSet](self, "isPasscodeSet") | v7) & 1) == 0)
  {
    v11 = 0;
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v17 = 0;
  v11 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v8 options:0 format:0 error:&v17];
  v12 = v17;
  if (v12)
  {
    v13 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v12;
      _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_ERROR, "Cannot read public passcode metadata: %{public}@", buf, 0xCu);
    }
  }

  if (v7)
  {
LABEL_15:
    if (![v11 count])
    {
      v14 = +[MCPasscodeUtilities defaultPublicDictionaryForUMUserPasscodeType:](MCPasscodeUtilities, "defaultPublicDictionaryForUMUserPasscodeType:", [v4 passcodeType]);

      v11 = v14;
    }
  }

LABEL_17:

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_publicPasscodeDictSharedDataVolume:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DF0C8];
  v5 = a3;
  v6 = [v4 sharedManager];
  v16 = 0;
  v7 = [v6 keybagOpaqueDataOnSharedDataVolumePath:v5 withError:&v16];

  v8 = v16;
  if (v8)
  {
    v9 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "Cannot read public passcode metadata for shared data volume: %{public}@", buf, 0xCu);
    }
  }

  if ([v7 length] && -[MCPasscodeManager isPasscodeSet](self, "isPasscodeSet"))
  {
    v15 = 0;
    v10 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v7 options:0 format:0 error:&v15];
    v11 = v15;
    if (v11)
    {
      v12 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v11;
        _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "Cannot read public passcode metadata: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_filterPublicPasscodeDict:(id)a3 forGeneration:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69AD420] sharedConfiguration];
  if ([v8 userMode] == 1)
  {
    v9 = [MEMORY[0x1E69DF068] sharedManager];
    v10 = [v9 isSharedIPad] ^ 1;
  }

  else
  {
    v10 = 1;
  }

  if (MCGestaltHasSEP() && (v10 & 1) != 0)
  {
    if (v7)
    {
      v11 = [v7 stringValue];
      v12 = [v6 objectForKeyedSubscript:v11];
      v13 = v12;
      if (v6 && !v12)
      {
        v14 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          v19 = 138543362;
          v20 = v7;
          _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_ERROR, "Missing data for passcode generation %{public}@. Attempting to recover data", &v19, 0xCu);
        }

        v15 = [(MCPasscodeManager *)self _fixUpPublicPasscodeDict:v6];
        v13 = [v15 objectForKeyedSubscript:v11];
      }
    }

    else
    {
      v16 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_ERROR, "No passcode generation provided to filter public dictionary. Returning nil", &v19, 2u);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = v6;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_fixUpPublicPasscodeDict:(id)a3
{
  v55[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 || ![(MCPasscodeManager *)self isPasscodeSet])
  {
    v8 = 0;
    goto LABEL_39;
  }

  v5 = [MEMORY[0x1E69AD420] sharedConfiguration];
  if ([v5 userMode] == 1)
  {
    v6 = [MEMORY[0x1E69DF068] sharedManager];
    v7 = [v6 isSharedIPad] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v9 = MCGestaltHasSEP() & v7;
  v10 = MCKeybagCurrentPasscodeGeneration();
  v11 = v10;
  if (v9 == 1 && !v10)
  {
    v12 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "Unable to determine current passcode generation", buf, 2u);
    }

    v8 = v4;
    goto LABEL_38;
  }

  v13 = [v10 stringValue];
  v14 = [v4 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v15 = [v4 objectForKeyedSubscript:@"keyboardType"];
    v16 = v15;
    v17 = &unk_1F1AA58A8;
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;

    v19 = [v4 objectForKeyedSubscript:@"simpleType"];
    v20 = v19;
    v21 = &unk_1F1AA58C0;
    if (v19)
    {
      v21 = v19;
    }

    v22 = v21;

    v23 = [v4 objectForKeyedSubscript:@"creationDate"];
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v25 = [(MCPasscodeManager *)self _privatePasscodeDictWithOutError:0];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 objectForKeyedSubscript:@"characteristics"];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 objectForKeyedSubscript:v13];
          v30 = v22;
          v31 = v29;
          if (!v29)
          {
            v29 = v28;
          }

          v24 = [v29 objectForKeyedSubscript:@"timestamp"];

          v22 = v30;
          if (v24)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }
      }

      v24 = [MEMORY[0x1E695DF00] date];
    }

LABEL_28:
    v8 = objc_opt_new();
    v54[0] = @"keyboardType";
    v54[1] = @"simpleType";
    v55[0] = v18;
    v55[1] = v22;
    v50 = v22;
    v54[2] = @"creationDate";
    v55[2] = v24;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];
    v33 = v32;
    if (v9)
    {
      [v8 setObject:v32 forKeyedSubscript:v13];
      v34 = MCKeybagMementoPasscodeGeneration();
      v35 = v34;
      if (v34)
      {
        v48 = [v34 stringValue];
        v36 = [v4 objectForKeyedSubscript:@"recoveryKeyboardType"];
        v49 = v18;
        v37 = v36;
        v38 = &unk_1F1AA58A8;
        if (v36)
        {
          v38 = v36;
        }

        v46 = v38;

        v39 = [v4 objectForKeyedSubscript:@"recoverySimpleType"];
        v40 = v39;
        v41 = &unk_1F1AA58C0;
        if (v39)
        {
          v41 = v39;
        }

        v42 = v41;

        v47 = [MEMORY[0x1E695DF00] date];
        v52[0] = @"keyboardType";
        v52[1] = @"simpleType";
        v53[0] = v46;
        v53[1] = v42;
        v52[2] = @"creationDate";
        v53[2] = v47;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];

        [v8 setObject:v43 forKeyedSubscript:v48];
        v18 = v49;
      }
    }

    else
    {
      v35 = v8;
      v8 = [v32 mutableCopy];
    }

    goto LABEL_37;
  }

  v8 = v4;
LABEL_37:

LABEL_38:
LABEL_39:

  v44 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_privatePasscodeDictWithOutError:(id *)a3
{
  v20 = 0;
  v5 = [MCKeychain dataFromService:@"com.apple.managedconfiguration" account:@"Private" label:0 description:0 group:0 useSystemKeychain:0 outError:&v20];
  v6 = v20;
  v14 = v6;
  if (a3 && v6)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = MCErrorArray(@"PASSCODE_ERROR_CANNOT_RETRIEVE_CHARACTERISTICS", v7, v8, v9, v10, v11, v12, v13, 0);
    [v15 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5020 descriptionArray:v16 underlyingError:v14 errorType:@"MCFatalError"];
    *a3 = v17 = 0;
LABEL_9:

    goto LABEL_10;
  }

  if (v5)
  {
    v18 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v5 options:2 format:0 error:0];
    if (v18 && ![(MCPasscodeManager *)self isPasscodeSet])
    {
      [v18 setObject:0 forKeyedSubscript:@"characteristics"];
    }

    v16 = [v18 copy];

    v17 = v16;
    goto LABEL_9;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (id)_filterPasscodeCharacteristics:(id)a3 forGeneration:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69AD420] sharedConfiguration];
  if ([v8 userMode] == 1)
  {
    v9 = [MEMORY[0x1E69DF068] sharedManager];
    v10 = [v9 isSharedIPad] ^ 1;
  }

  else
  {
    v10 = 1;
  }

  if (MCGestaltHasSEP() && v10)
  {
    if (v7)
    {
      v11 = [v7 stringValue];
      v12 = [v6 objectForKeyedSubscript:v11];
      v13 = v12;
      if (v6 && !v12)
      {
        v14 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          v19 = 138543362;
          v20 = v7;
          _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_ERROR, "Missing characteristics for passcode generation %{public}@. Attempting to recover data", &v19, 0xCu);
        }

        v15 = [(MCPasscodeManager *)self _fixUpPasscodeCharacteristics:v6];
        v13 = [v15 objectForKeyedSubscript:v11];
      }
    }

    else
    {
      v16 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_ERROR, "No passcode generation provided to filter characteristics. Returning nil", &v19, 2u);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = v6;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_fixUpPasscodeCharacteristics:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && [(MCPasscodeManager *)self isPasscodeSet])
  {
    v5 = [MEMORY[0x1E69AD420] sharedConfiguration];
    if ([v5 userMode] == 1)
    {
      v6 = [MEMORY[0x1E69DF068] sharedManager];
      v7 = [v6 isSharedIPad] ^ 1;
    }

    else
    {
      v7 = 1;
    }

    if (MCGestaltHasSEP() && (v7 & 1) != 0)
    {
      v11 = MCKeybagCurrentPasscodeGeneration();
      v12 = v11;
      if (v11)
      {
        v13 = [v11 stringValue];
        v14 = [v4 objectForKeyedSubscript:v13];

        if (v14)
        {
          v8 = v4;
        }

        else
        {
          v17 = [v4 MCMutableDeepCopy];
          [v17 setObject:0 forKeyedSubscript:@"timestamp"];
          v19 = v13;
          v20[0] = v17;
          v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        }
      }

      else
      {
        v16 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          *v18 = 0;
          _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_ERROR, "Unable to determine current passcode generation", v18, 2u);
        }

        v8 = v4;
      }
    }

    else
    {
      v15 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEFAULT, "Passcode generation not supported. Nothing to migrate", v18, 2u);
      }

      v8 = v4;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)lockDeviceImmediately:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:*MEMORY[0x1E695E4D0] forKey:@"LockDeviceNow"];
    v5 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEFAULT, "MCPasscodeManager locking device immediately...", &v13, 2u);
    }
  }

  else
  {
    v6 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_DEFAULT, "MCPasscodeManager locking device...", &v13, 2u);
    }

    v4 = 0;
  }

  v7 = MKBLockDevice();
  v8 = _MCLogObjects;
  if (v7)
  {
    v9 = v7;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v10 = v8;
      v11 = [(MCPasscodeManager *)self _mkbErrorStringForResult:v9];
      v13 = 138543618;
      v14 = v11;
      v15 = 1026;
      v16 = v9;
      _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_ERROR, "MCPasscodeManager failed to lock device with MKB error: %{public}@ (%{public}d)", &v13, 0x12u);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEFAULT, "MCPasscodeManager successfully locked device", &v13, 2u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)unlockDeviceWithPasscode:(id)a3 outError:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_INFO, "MCPasscodeManager unlocking device with passcode...", &v27, 2u);
  }

  v8 = [v6 dataUsingEncoding:4];
  if (MKBGetDeviceLockState() == 3)
  {
    v9 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27) = 0;
      v10 = "MCPasscodeManager ignoring device unlock because MobileKeyBag is disabled.";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
LABEL_15:
      _os_log_impl(&dword_1A795B000, v11, v12, v10, &v27, 2u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v13 = MKBUnlockDevice();
  v14 = _MCLogObjects;
  if (!v13)
  {
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      LOWORD(v27) = 0;
      v10 = "MCPasscodeManager successfully unlocked device with passcode.";
      v11 = v14;
      v12 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

LABEL_16:

    v18 = 0;
LABEL_17:
    v23 = 1;
    goto LABEL_18;
  }

  v15 = v13;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v16 = v14;
    v17 = [(MCPasscodeManager *)self _mkbErrorStringForResult:v15];
    v27 = 138543618;
    v28 = v17;
    v29 = 1026;
    v30 = v15;
    _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_ERROR, "MCPasscodeManager failed to unlock device with passcode with MKB error: %{public}@ (%{public}d)", &v27, 0x12u);
  }

  v18 = [(MCPasscodeManager *)self _wrongPasscodeError];

  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = [v6 length];
  v20 = _MCLogObjects;
  if (v19)
  {
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      v22 = [v18 MCVerboseDescription];
      v27 = 138543362;
      v28 = v22;
      _os_log_impl(&dword_1A795B000, v21, OS_LOG_TYPE_ERROR, "MCPasscodeManager failed to unlock device with error: %{public}@", &v27, 0xCu);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_INFO, "MCPasscodeManager failed to unlock device with empty passcode", &v27, 2u);
  }

  if (a4)
  {
    v26 = v18;
    v23 = 0;
    *a4 = v18;
  }

  else
  {
    v23 = 0;
  }

LABEL_18:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)unlockDeviceWithPasscodeContext:(id)a3 outError:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_INFO, "MCPasscodeManager unlocking device with credential set...", &v22, 2u);
  }

  if (MKBGetDeviceLockState() == 3)
  {
    v8 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "MCPasscodeManager ignoring device unlock because MobileKeyBag is disabled.", &v22, 2u);
    }

    v9 = 0;
LABEL_7:
    v10 = 1;
    goto LABEL_23;
  }

  v11 = MKBUnlockDeviceWithACM();
  v12 = _MCLogObjects;
  if (v11)
  {
    v13 = v11;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v14 = v12;
      v15 = [(MCPasscodeManager *)self _mkbErrorStringForResult:v13];
      v22 = 138543618;
      v23 = v15;
      v24 = 1026;
      v25 = v13;
      _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_ERROR, "MCPasscodeManager failed to unlock device with passcode with MKB error: %{public}@ (%{public}d)", &v22, 0x12u);
    }

    v9 = [(MCPasscodeManager *)self _wrongPasscodeError];
    if (!v9)
    {
      goto LABEL_7;
    }

    v16 = _MCLogObjects;
    if (v6)
    {
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = [v9 MCVerboseDescription];
        v22 = 138543362;
        v23 = v18;
        _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_ERROR, "MCPasscodeManager failed to unlock device with error: %{public}@", &v22, 0xCu);
      }
    }

    else if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_INFO, "MCPasscodeManager failed to unlock device with empty credential set", &v22, 2u);
    }

    if (a4)
    {
      v19 = v9;
      v10 = 0;
      *a4 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_INFO, "MCPasscodeManager successfully unlocked device with credential set.", &v22, 2u);
    }

    v9 = 0;
  }

LABEL_23:

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_wrongPasscodeError
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"PASSCODE_ERROR_WRONG_PASSCODE", a2, v2, v3, v4, v5, v6, v7, 0);
  v10 = [v8 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5011 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

- (id)_mkbErrorStringForResult:(int)a3
{
  result = @"Success";
  switch(a3)
  {
    case -20:
      result = @"Decode Error";
      break;
    case -19:
      result = @"Bad Data";
      break;
    case -18:
      result = @"MKB Busy";
      break;
    case -17:
      result = @"Invalid Arguments";
      break;
    case -16:
      result = @"Entitlement Error";
      break;
    case -15:
      result = @"User Should Wipe - Unlock Failed";
      break;
    case -14:
      result = @"Policy Error - Device Unlock Disabled";
      break;
    case -13:
      result = @"MKB Not Ready";
      break;
    case -12:
      result = @"Permission Failure";
      break;
    case -11:
      result = @"Wipe Error - Effaceable Storage Error";
      break;
    case -10:
      result = @"IOKit Error";
      break;
    case -9:
      result = @"Invalid Bag";
      break;
    case -8:
      result = @"MKB Not Found";
      break;
    case -7:
      result = @"Crypto Error - Security Framework Error";
      break;
    case -6:
      result = @"System Error - System Call Failed";
      break;
    case -5:
      result = @"No Memory";
      break;
    case -4:
      result = @"MKB Exists";
      break;
    case -3:
      result = @"Invalid Secret";
      break;
    case -2:
      result = @"Device Locked";
      break;
    case -1:
      result = @"MKB Error";
      break;
    case 0:
      return result;
    default:
      if (a3 == -1000)
      {
        result = @"Internal Error";
      }

      else
      {
        result = @"Unknown";
      }

      break;
  }

  return result;
}

+ (id)generateSalt
{
  v4 = arc4random();
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:&v4 length:4];

  return v2;
}

- (int)recoveryPasscodeUnlockScreenType
{
  v2 = self;
  v3 = [(MCPasscodeManager *)self _currentPublicPasscodeDict];
  LODWORD(v2) = [(MCPasscodeManager *)v2 unlockScreenTypeWithPublicPasscodeDict:v3 isRecovery:1 deviceHandle:0];

  return v2;
}

- (int)unlockScreenTypeForUser:(id)a3
{
  v3 = self;
  v4 = [(MCPasscodeManager *)self _publicPasscodeDictForUser:a3];
  LODWORD(v3) = [(MCPasscodeManager *)v3 unlockScreenTypeWithPublicPasscodeDict:v4 isRecovery:0 deviceHandle:0];

  return v3;
}

- (int)unlockScreenTypeForSharedDataVolume:(id)a3
{
  v3 = self;
  v4 = [(MCPasscodeManager *)self _publicPasscodeDictSharedDataVolume:a3];
  LODWORD(v3) = [(MCPasscodeManager *)v3 unlockScreenTypeWithPublicPasscodeDict:v4 isRecovery:0 deviceHandle:&unk_1F1AA58D8];

  return v3;
}

- (int)unlockScreenTypeWithPublicPasscodeDict:(id)a3 isRecovery:(BOOL)a4 deviceHandle:(id)a5
{
  v6 = a4;
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v6)
  {
    MCKeybagMementoPasscodeGenerationForHandle(v9);
  }

  else
  {
    MCKeybagCurrentPasscodeGenerationForHandle(v9);
  }
  v11 = ;
  v12 = [(MCPasscodeManager *)self _filterPublicPasscodeDict:v8 forGeneration:v11];
  v13 = [v12 objectForKeyedSubscript:@"keyboardType"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 intValue];
  }

  else
  {
    if (v8)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v17 = v16;
    if ([v8 count])
    {
      v18 = @"NO";
    }

    else
    {
      v18 = @"YES";
    }

    v19 = v18;
    if (v12)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = v20;
    if (v6)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v23 = v21;
    v24 = v22;
    v25 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v28 = 138544642;
      v29 = v11;
      v30 = 2114;
      v31 = @"Full Keyboard";
      v32 = 2114;
      v33 = v17;
      v34 = 2114;
      v35 = v19;
      v36 = 2114;
      v37 = v23;
      v38 = 2114;
      v39 = v24;
      _os_log_impl(&dword_1A795B000, v25, OS_LOG_TYPE_ERROR, "Unable to retrieve unlock screen type for generation %{public}@, defaulting to %{public}@. Public Dictionary Exists: %{public}@. Is Empty: %{public}@. Generation Exists: %{public}@. Is Recovery: %{public}@", &v28, 0x3Eu);
    }

    v15 = 2;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (int)unlockSimplePasscodeTypeForUser:(id)a3
{
  v3 = self;
  v4 = [(MCPasscodeManager *)self _publicPasscodeDictForUser:a3];
  LODWORD(v3) = [(MCPasscodeManager *)v3 unlockSimplePasscodeTypeWithPublicPasscodeDict:v4 isRecovery:0 deviceHandle:0];

  return v3;
}

- (int)unlockSimplePasscodeTypeForSharedDataVolume:(id)a3
{
  v3 = self;
  v4 = [(MCPasscodeManager *)self _publicPasscodeDictSharedDataVolume:a3];
  LODWORD(v3) = [(MCPasscodeManager *)v3 unlockSimplePasscodeTypeWithPublicPasscodeDict:v4 isRecovery:0 deviceHandle:&unk_1F1AA58D8];

  return v3;
}

- (int)recoveryPasscodeUnlockSimplePasscodeType
{
  v2 = self;
  v3 = [(MCPasscodeManager *)self _currentPublicPasscodeDict];
  LODWORD(v2) = [(MCPasscodeManager *)v2 unlockSimplePasscodeTypeWithPublicPasscodeDict:v3 isRecovery:1 deviceHandle:0];

  return v2;
}

- (int)_newPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)a3 shouldBeMinimum:(BOOL)a4
{
  v4 = a4;
  v17 = -1;
  v7 = [(MCPasscodeManager *)self _minimumPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v17];
  if (v7)
  {
    if (v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v4)
    {
      v7 = 0;
      v17 &= ~(v17 >> 31);
      goto LABEL_15;
    }

    HasBiometricCapability = MCGestaltHasBiometricCapability();
    v9 = v17;
    if (HasBiometricCapability)
    {
      if (v17 <= 1)
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = v17 & ~(v17 >> 31);
    }

    v17 = v9;
  }

  v10 = MCKeybagCurrentPasscodeGeneration();
  v11 = [(MCPasscodeManager *)self _currentPublicPasscodeDict];
  v12 = [(MCPasscodeManager *)self _filterPublicPasscodeDict:v11 forGeneration:v10];

  v13 = [v12 objectForKeyedSubscript:@"keyboardType"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 intValue];
    if (v7 <= v15)
    {
      v7 = v15;
    }
  }

LABEL_15:
  if (a3)
  {
    *a3 = v17;
  }

  return v7;
}

- (int)_minimumPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)a3
{
  v4 = +[MCRestrictionManager sharedManager];
  v5 = [v4 effectiveValueForSetting:@"passcodeKeyboardComplexity"];
  v6 = [v5 intValue];

  v7 = [v4 currentRestrictions];
  v8 = [MCPasscodeManager unlockScreenTypeForRestrictions:v7 outSimplePasscodeType:a3];

  if (v6 > v8)
  {
    v8 = v6;
  }

  return v8;
}

+ (int)unlockScreenTypeForPasscodeCharacteristics:(id)a3 outSimplePasscodeType:(int *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = [v5 objectForKey:@"length"];
  v8 = [v7 unsignedIntValue];

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [v6 objectForKey:@"allDigits"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    if (v8 == 4)
    {
      v12 = 0;
      v11 = 0;
      if (!a4)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (v8 == 6)
    {
      v11 = 0;
      v12 = 1;
      if (!a4)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v11 = 1;
  }

  else
  {
LABEL_8:
    v11 = 2;
  }

  v12 = -1;
  if (a4)
  {
LABEL_10:
    *a4 = v12;
  }

LABEL_11:

  return v11;
}

+ (int)unlockScreenTypeForRestrictions:(id)a3 outSimplePasscodeType:(int *)a4
{
  v5 = a3;
  v6 = [MCRestrictionManager restrictedBoolForFeature:@"requireAlphanumeric" withRestrictionsDictionary:v5];
  v7 = [MCRestrictionManager valueForFeature:@"minComplexChars" withRestrictionsDictionary:v5];
  v8 = [v7 unsignedIntValue];

  v9 = [MCRestrictionManager valueForFeature:@"minLength" withRestrictionsDictionary:v5];

  if (v6 == 1 || v8 != 0)
  {
    v11 = 2;
LABEL_6:
    v12 = -1;
    goto LABEL_12;
  }

  if (!v9 || (v13 = [v9 unsignedIntValue], v13 == 4))
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    if (v13 != 6)
    {
      v11 = 1;
      goto LABEL_6;
    }

    v11 = 0;
    v12 = 1;
  }

LABEL_12:
  if (a4)
  {
    *a4 = v12;
  }

  return v11;
}

- (id)localizedDescriptionOfPasscodePolicy
{
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 currentRestrictions];
  v4 = [MCPasscodeManager localizedDescriptionOfPasscodePolicyFromRestrictions:v3];

  return v4;
}

- (id)localizedDescriptionOfDefaultNewPasscodePolicy
{
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 currentRestrictions];
  v4 = [MCPasscodeManager localizedDescriptionOfDefaultNewPasscodePolicyFromRestrictions:v3];

  return v4;
}

+ (id)_localizedDescriptionOfPasscodePolicyFromRestrictions:(id)a3 shouldBeDefault:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v34 = [MCRestrictionManager valueForFeature:@"minLength" withRestrictionsDictionary:v5];
  [v34 unsignedIntValue];
  v6 = [MCRestrictionManager defaultValueForSetting:@"minLength"];
  [v6 unsignedIntValue];

  v7 = [MCRestrictionManager minimumValueForSetting:@"minLength"];
  [v7 unsignedIntValue];

  v8 = [MCRestrictionManager restrictedBoolForFeature:@"allowSimple" withRestrictionsDictionary:v5];
  v9 = [MCRestrictionManager restrictedBoolForFeature:@"requireAlphanumeric" withRestrictionsDictionary:v5];
  v10 = [MCRestrictionManager valueForFeature:@"minComplexChars" withRestrictionsDictionary:v5];

  if (v10)
  {
    v18 = [v10 unsignedIntValue];
  }

  else
  {
    v18 = 0;
  }

  if (v9 == 1)
  {
    if (v8 == 2)
    {
      MCLocalizedFormat(@"PASSCODE_CHARACTERS_STRONG", v11, v12, v13, v14, v15, v16, v17, v18);
    }

    else
    {
      MCLocalizedFormat(@"PASSCODE_CHARACTERS", v11, v12, v13, v14, v15, v16, v17, v18);
    }

    goto LABEL_18;
  }

  if (v8 == 2)
  {
    MCLocalizedFormat(@"PASSCODE_DIGITS_STRONG", v11, v12, v13, v14, v15, v16, v17, v18);
    v31 = LABEL_18:;
    goto LABEL_19;
  }

  v35 = 0;
  v19 = +[MCPasscodeManager sharedManager];
  v20 = v19;
  if (v4)
  {
    v21 = [v19 defaultNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v35];
  }

  else
  {
    v21 = [v19 minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v35];
  }

  v22 = v21;

  if (v18 | v22)
  {
    goto LABEL_17;
  }

  if (!v35)
  {
    v30 = @"PASSCODE_4_DIGIT";
    goto LABEL_23;
  }

  if (v35 != 1)
  {
LABEL_17:
    MCLocalizedFormat(@"PASSCODE_DIGITS", v23, v24, v25, v26, v27, v28, v29, v18);
    goto LABEL_18;
  }

  v30 = @"PASSCODE_6_DIGIT";
LABEL_23:
  v31 = MCLocalizedString(v30);
LABEL_19:
  v32 = v31;

  return v32;
}

+ (BOOL)restrictionsEnforcePasscodePolicy:(id)a3
{
  v3 = a3;
  if ([MCRestrictionManager restrictedBoolForFeature:@"allowSimple" withRestrictionsDictionary:v3]== 2 || [MCRestrictionManager restrictedBoolForFeature:@"forcePIN" withRestrictionsDictionary:v3]== 2 || [MCRestrictionManager restrictedBoolForFeature:@"requireAlphanumeric" withRestrictionsDictionary:v3]== 2)
  {
    v4 = 1;
  }

  else
  {
    v6 = [MCRestrictionManager valueForFeature:@"minLength" withRestrictionsDictionary:v3];
    if ([v6 intValue] <= 4)
    {
      v7 = [MCRestrictionManager valueForFeature:@"pinHistory" withRestrictionsDictionary:v3];
      if (v7)
      {
        v4 = 1;
      }

      else
      {
        v8 = [MCRestrictionManager valueForFeature:@"maxFailedAttempts" withRestrictionsDictionary:v3];
        if (v8)
        {
          v4 = 1;
        }

        else
        {
          v9 = [MCRestrictionManager valueForFeature:@"minComplexChars" withRestrictionsDictionary:v3];
          if (v9)
          {
            v4 = 1;
          }

          else
          {
            v10 = [MCRestrictionManager valueForFeature:@"maxPINAgeInDays" withRestrictionsDictionary:v3];
            v4 = v10 != 0;
          }
        }
      }
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

+ (BOOL)passcode:(id)a3 compliesWithPolicyFromRestrictions:(id)a4 checkHistory:(BOOL)a5 outError:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [MCPasscodeManager characteristicsDictionaryFromPasscode:v10];
  v13 = [a1 _passcodeCharacteristics:v12 creationDate:0 compliesWithPolicyFromRestrictions:v11 outError:a6];
  if (v13)
  {
    v14 = !v7;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = +[MCPasscodeManager sharedManager];
    LOBYTE(v13) = [v15 _checkPasscode:v10 againstHistoryWithRestrictions:v11 outError:a6];
  }

  return v13;
}

+ (BOOL)passcodeContext:(id)a3 compliesWithPolicyFromRestrictions:(id)a4 checkHistory:(BOOL)a5 outError:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [MCPasscodeManager characteristicsDictionaryFromPasscodeContext:v10];
  v13 = [a1 _passcodeCharacteristics:v12 creationDate:0 compliesWithPolicyFromRestrictions:v11 outError:a6];
  if (v13)
  {
    v14 = !v7;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = +[MCPasscodeManager sharedManager];
    LOBYTE(v13) = [v15 _checkPasscodeContext:v10 againstHistoryWithRestrictions:v11 outError:a6];
  }

  return v13;
}

- (BOOL)currentPasscodeCompliesWithPolicyFromRestrictions:(id)a3 outError:(id *)a4
{
  v6 = a3;
  if (+[MCPasscodeManager isDeviceUnlocked](MCPasscodeManager, "isDeviceUnlocked") || (+[MCPasscodeManager deviceLockedError], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v26 = 0;
    v9 = [(MCPasscodeManager *)self _privatePasscodeDictWithOutError:&v26];
    v10 = v26;
    if (v10 || !+[MCPasscodeManager isDeviceUnlocked](MCPasscodeManager, "isDeviceUnlocked") && (+[MCPasscodeManager deviceLockedError], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v10;
    }

    else
    {
      v19 = MCKeybagCurrentPasscodeGeneration();
      v20 = [v9 objectForKeyedSubscript:@"characteristics"];
      v21 = [(MCPasscodeManager *)self _filterPasscodeCharacteristics:v20 forGeneration:v19];
      v22 = [(MCPasscodeManager *)self passcodeCreationDate];
      v25 = 0;
      [MCPasscodeManager _passcodeCharacteristics:v21 creationDate:v22 compliesWithPolicyFromRestrictions:v6 outError:&v25];
      v8 = v25;

      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v8 = v7;
  }

  if (a4)
  {
    v11 = v8;
    *a4 = v8;
  }

  v12 = [v8 domain];
  if ([v12 isEqualToString:@"MCPasscodeErrorDomain"])
  {
    v13 = [v8 code];

    if (v13 == 5010)
    {
      v14 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        v15 = "Device was locked when passcode compliance check was attempted.";
LABEL_17:
        _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_DEFAULT, v15, v24, 2u);
        goto LABEL_23;
      }

      goto LABEL_23;
    }
  }

  else
  {
  }

  v16 = [v8 domain];
  if ([v16 isEqualToString:@"MCPasscodeErrorDomain"])
  {
    v17 = [v8 code];

    if (v17 == 5020)
    {
      v14 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        v15 = "Unable to retrieve passcode characteristics when compliance check was attempted.";
        goto LABEL_17;
      }

LABEL_23:
      v18 = 1;
      goto LABEL_24;
    }
  }

  else
  {
  }

  v18 = 0;
LABEL_24:

  return v18;
}

- (BOOL)isCurrentPasscodeCompliantOutError:(id *)a3
{
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 currentRestrictions];

  LOBYTE(a3) = [(MCPasscodeManager *)self currentPasscodeCompliesWithPolicyFromRestrictions:v6 outError:a3];
  return a3;
}

- (BOOL)isPasscodeCompliantWithNamedPolicy:(id)a3 outError:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v6;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEFAULT, "Checking for passcode compliance against named policy: %@", buf, 0xCu);
  }

  if (+[MCPasscodeManager isDeviceUnlocked](MCPasscodeManager, "isDeviceUnlocked") || (+[MCPasscodeManager deviceLockedError], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v31 = 0;
    v9 = [(MCPasscodeManager *)self _privatePasscodeDictWithOutError:&v31];
    v10 = v31;
    if (!v10)
    {
      if (+[MCPasscodeManager isDeviceUnlocked](MCPasscodeManager, "isDeviceUnlocked") || (+[MCPasscodeManager deviceLockedError], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v16 = MCKeybagCurrentPasscodeGeneration();
        v17 = [v9 objectForKeyedSubscript:@"characteristics"];
        v8 = [(MCPasscodeManager *)self _filterPasscodeCharacteristics:v17 forGeneration:v16];

        v18 = [MEMORY[0x1E695DF90] dictionary];
        if ([v6 isEqualToString:@"ApplePayChinaPasscodePolicy"])
        {
          [v18 MCSetBoolRestriction:@"allowSimple" value:0];
        }

        else if (![v6 isEqualToString:@"AutoUnlockPasscodePolicy"])
        {
          v21 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v33 = v6;
            _os_log_impl(&dword_1A795B000, v21, OS_LOG_TYPE_ERROR, "Unknown passcode compliance policy: %{public}@", buf, 0xCu);
          }

          if (a4)
          {
            v29 = MEMORY[0x1E696ABC0];
            v30 = MCErrorArray(@"PASSCODE_ERROR_UNKNOWN_POLICY_P_POLICY", v22, v23, v24, v25, v26, v27, v28, v6);
            *a4 = [v29 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5019 descriptionArray:v30 errorType:@"MCFatalError"];
          }

          goto LABEL_19;
        }

        [v18 MCSetValueRestriction:@"minLength" value:&unk_1F1AA58F0];
LABEL_19:
        if ([v18 count])
        {
          v19 = objc_opt_class();
          v20 = [(MCPasscodeManager *)self passcodeCreationDate];
          v13 = [v19 _passcodeCharacteristics:v8 creationDate:v20 compliesWithPolicyFromRestrictions:v18 outError:0];
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_12;
      }
    }

    v8 = v10;
  }

  if (a4)
  {
    v11 = v8;
    *a4 = v8;
  }

  v12 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v33 = v6;
    v34 = 2114;
    v35 = v8;
    _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "Unable to check passcode compliance with named policy %{public}@: %{public}@", buf, 0x16u);
  }

  v13 = 0;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)_passcodeCharacteristics:(id)a3 creationDate:(id)a4 compliesWithPolicyFromRestrictions:(id)a5 outError:(id *)a6
{
  v79 = *MEMORY[0x1E69E9840];
  v76 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [MCRestrictionManager valueForFeature:@"minComplexChars" withRestrictionsDictionary:v8];
  v74 = [v10 unsignedIntValue];

  v11 = [MCRestrictionManager valueForFeature:@"minLength" withRestrictionsDictionary:v8];
  v12 = [v11 unsignedIntValue];

  v73 = [MCRestrictionManager restrictedBoolForFeature:@"requireAlphanumeric" withRestrictionsDictionary:v8];
  v13 = [MCRestrictionManager restrictedBoolForFeature:@"forcePIN" withRestrictionsDictionary:v8];
  v14 = [MCRestrictionManager restrictedBoolForFeature:@"allowSimple" withRestrictionsDictionary:v8];
  v15 = [v9 objectForKey:@"length"];
  v16 = [v15 unsignedIntValue];

  v17 = [v9 objectForKey:@"hasRepeatingCharacters"];
  v18 = [v17 BOOLValue];

  v19 = [v9 objectForKey:@"hasAscendingDescendingCharacters"];
  v72 = [v19 BOOLValue];

  v20 = [v9 objectForKey:@"hasAlpha"];
  v71 = [v20 BOOLValue];

  v21 = [v9 objectForKey:@"hasNumber"];
  v70 = [v21 BOOLValue];

  v22 = [v9 objectForKey:@"complexCharactersCount"];

  v23 = [v22 unsignedIntValue];
  if ((v13 == 1 || v12 || v74 || v73 == 1 || v14 == 2) && !v16)
  {
    goto LABEL_19;
  }

  v31 = [MCRestrictionManager minimumValueForSetting:@"minLength"];
  v32 = [v31 unsignedIntValue];

  if (v12)
  {
    v33 = 0;
  }

  else
  {
    v33 = v13 == 1;
  }

  if (v33)
  {
    v34 = v32;
  }

  else
  {
    v34 = v12;
  }

  if (v34 <= v32)
  {
    v35 = v32;
  }

  else
  {
    v35 = v34;
  }

  if (v16)
  {
    v34 = v35;
  }

  if (v16 < v34)
  {
LABEL_19:
    v36 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(@"PASSCODE_QUALITY_SHORT", v24, v25, v26, v27, v28, v29, v30, 0);
    v38 = v36;
    v39 = 5000;
LABEL_20:
    v40 = [v38 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:v39 descriptionArray:v37 errorType:@"MCFatalError"];
    v42 = a6;
    v41 = v76;
    goto LABEL_21;
  }

  if (((v14 == 2) & v18) == 1)
  {
    v49 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(@"PASSCODE_QUALITY_REPEAT", v24, v25, v26, v27, v28, v29, v30, 0);
    v38 = v49;
    v39 = 5003;
    goto LABEL_20;
  }

  if (((v14 == 2) & v72) == 1)
  {
    v50 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(@"PASSCODE_QUALITY_ASCENDING_DESCENDING", v24, v25, v26, v27, v28, v29, v30, 0);
    v38 = v50;
    v39 = 5004;
    goto LABEL_20;
  }

  v42 = a6;
  v41 = v76;
  if (v23 < v74)
  {
    v51 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(@"PASSCODE_QUALITY_COMPLEX", v24, v25, v26, v27, v28, v29, v30, 0);
    v52 = v51;
    v53 = 5002;
LABEL_42:
    v40 = [v52 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:v53 descriptionArray:v37 errorType:@"MCFatalError"];
    goto LABEL_21;
  }

  if (!((v73 != 1) | v71 & 1))
  {
    v66 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(@"PASSCODE_QUALITY_ALPHA", v24, v25, v26, v27, v28, v29, v30, 0);
    v52 = v66;
    v53 = 5006;
    goto LABEL_42;
  }

  if (!((v73 != 1) | v70 & 1))
  {
    v67 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(@"PASSCODE_QUALITY_NUMBER", v24, v25, v26, v27, v28, v29, v30, 0);
    v52 = v67;
    v53 = 5005;
    goto LABEL_42;
  }

  v54 = [MCRestrictionManager valueForFeature:@"maxPINAgeInDays" withRestrictionsDictionary:v8];
  v37 = v54;
  v40 = 0;
  if (v76 && v54)
  {
    v55 = [v54 unsignedIntValue];
    v56 = [MEMORY[0x1E695DEE8] currentCalendar];
    v57 = [MEMORY[0x1E695DF00] date];
    v58 = [v56 components:16 fromDate:v76 toDate:v57 options:0];

    if ([v58 day] < 0 || v55 > objc_msgSend(v58, "day"))
    {
      v40 = 0;
    }

    else
    {
      v68 = MEMORY[0x1E696ABC0];
      v69 = MCErrorArray(@"PASSCODE_QUALITY_EXPIRED", v59, v60, v61, v62, v63, v64, v65, 0);
      v40 = [v68 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5007 descriptionArray:v69 errorType:@"MCFatalError"];
    }
  }

LABEL_21:

  if (v40)
  {
    v43 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
      v45 = [v40 MCVerboseDescription];
      *buf = 138543362;
      v78 = v45;
      _os_log_impl(&dword_1A795B000, v44, OS_LOG_TYPE_DEFAULT, "Passcode does not meet criteria. Error: %{public}@", buf, 0xCu);
    }

    if (v42)
    {
      v46 = v40;
      *v42 = v40;
    }
  }

  v47 = *MEMORY[0x1E69E9840];
  return v40 == 0;
}

- (BOOL)_checkPasscode:(id)a3 againstHistoryWithRestrictions:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MCRestrictionManager valueForFeature:@"pinHistory" withRestrictionsDictionary:v9];
  v11 = [v10 unsignedIntValue];
  if (!v11)
  {

    v14 = 0;
    goto LABEL_44;
  }

  LODWORD(v12) = v11;
  if (!+[MCPasscodeManager isDeviceUnlocked])
  {
    v13 = +[MCPasscodeManager deviceLockedError];
    if (v13)
    {
      v14 = v13;
LABEL_7:

      goto LABEL_8;
    }
  }

  v63 = 0;
  v15 = [(MCPasscodeManager *)self _privatePasscodeDictWithOutError:&v63];
  v16 = v63;
  if (v16 || !+[MCPasscodeManager isDeviceUnlocked](MCPasscodeManager, "isDeviceUnlocked") && (+[MCPasscodeManager deviceLockedError], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v16;

    goto LABEL_7;
  }

  v26 = [v15 objectForKey:@"history"];
  if ([v26 count])
  {
    v12 = v12;
    if ([v26 count] < v12)
    {
      v12 = [v26 count];
    }

    if (v12)
    {
      v56 = v8;
      v57 = v12;
      v52 = v15;
      v53 = v10;
      v54 = a5;
      v55 = v9;
      v27 = 0;
      v28 = 0;
      v60 = 0;
      v29 = 0;
      v59 = -1;
      v30 = 1;
      v58 = v26;
      do
      {
        v31 = [v26 objectAtIndex:v29];
        v32 = [v31 objectForKey:@"hash"];
        v33 = [v31 objectForKey:@"salt"];
        v34 = [v31 objectForKey:@"iterations"];
        v35 = [v31 objectForKey:@"hashMethod"];
        v36 = [v35 intValue];

        if (![v28 isEqualToData:v33] || v59 != v36 || (objc_msgSend(v60, "isEqualToNumber:", v34) & 1) == 0)
        {
          v37 = +[MCPasscodeManager hashForPasscode:usingMethod:salt:customIterations:](MCPasscodeManager, "hashForPasscode:usingMethod:salt:customIterations:", v56, v36, v33, [v34 intValue]);

          v38 = v33;
          v39 = v34;

          v59 = v36;
          v60 = v39;
          v28 = v38;
          v27 = v37;
        }

        v40 = [v27 isEqualToData:v32];

        v26 = v58;
        if (v40)
        {
          break;
        }

        v30 = ++v29 < v57;
      }

      while (v57 != v29);
      v9 = v55;
      if (v30)
      {
        v48 = MEMORY[0x1E696ABC0];
        v49 = MCErrorArray(@"PASSCODE_QUALITY_TOORECENT", v41, v42, v43, v44, v45, v46, v47, 0);
        v14 = [v48 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5008 descriptionArray:v49 errorType:@"MCFatalError"];
      }

      else
      {
        v14 = 0;
      }

      v8 = v56;
      v10 = v53;
      a5 = v54;
      v15 = v52;
      v50 = v60;
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v50 = 0;
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_44;
  }

LABEL_8:
  if (a5)
  {
    v17 = v14;
    *a5 = v14;
  }

  v18 = [v14 domain];
  if ([v18 isEqualToString:@"MCPasscodeErrorDomain"])
  {
    v19 = [v14 code];

    if (v19 == 5010)
    {
      v20 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        v62 = 0;
        v21 = "Device was locked when passcode history check was attempted.";
        v22 = &v62;
LABEL_20:
        _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_DEFAULT, v21, v22, 2u);
        goto LABEL_44;
      }

      goto LABEL_44;
    }
  }

  else
  {
  }

  v23 = [v14 domain];
  if ([v23 isEqualToString:@"MCPasscodeErrorDomain"])
  {
    v24 = [v14 code];

    if (v24 == 5020)
    {
      v20 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v21 = "Unable to retrieve passcode characteristics when compliance check was attempted.";
        v22 = buf;
        goto LABEL_20;
      }

LABEL_44:
      v25 = 1;
      goto LABEL_45;
    }
  }

  else
  {
  }

  v25 = 0;
LABEL_45:

  return v25;
}

- (BOOL)_checkPasscodeContext:(id)a3 againstHistoryWithRestrictions:(id)a4 outError:(id *)a5
{
  v8 = a4;
  v16 = 0;
  v9 = [MCExtractablePasscodeContextWrapper contextWrapperFromExternalizedContext:a3 outError:&v16];
  v10 = v16;
  v11 = v10;
  if (v10)
  {
    if (a5)
    {
      v12 = v10;
      v13 = 0;
      *a5 = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = [v9 passcode];
    v13 = [(MCPasscodeManager *)self _checkPasscode:v14 againstHistoryWithRestrictions:v8 outError:a5];
  }

  return v13;
}

- (id)passcodeCreationDate
{
  v3 = MCKeybagCurrentPasscodeGeneration();
  v4 = [(MCPasscodeManager *)self _currentPublicPasscodeDict];
  v5 = [(MCPasscodeManager *)self _filterPublicPasscodeDict:v4 forGeneration:v3];

  v6 = [v5 objectForKeyedSubscript:@"creationDate"];

  return v6;
}

- (id)passcodeExpiryDate
{
  v3 = 0;
  if (MKBGetDeviceLockState() != 3)
  {
    v4 = +[MCRestrictionManager sharedManager];
    v5 = [v4 valueForFeature:@"maxPINAgeInDays"];

    if (v5)
    {
      [v5 doubleValue];
      v7 = v6 * 86400.0;
      v8 = [(MCPasscodeManager *)self passcodeCreationDate];
      v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v8 sinceDate:v7];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)recoveryPasscodeExpiryDate
{
  if (MCKeybagMementoBlobExists())
  {
    v3 = [(MCPasscodeManager *)self passcodeCreationDate];
    v4 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v3 sinceDate:259200.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)characteristicsDictionaryFromPasscode:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 length];
    v5 = 0x1E696A000uLL;
    v7 = [MEMORY[0x1E696AB08] characterSetWithRange:{48, 10}];
    v37 = v4;
    if (v4)
    {
      v6 = 0;
      v8 = 0;
      v9 = 0;
      v35 = 0;
      v36 = v3;
      v10 = 0;
      v39 = 0;
      v38 = 0;
      v11 = 0;
      v12 = 1;
      LODWORD(v13) = 1;
      while (1)
      {
        v14 = [v3 characterAtIndex:v6];
        v15 = v14;
        if (v12 != 1)
        {
          if (v14 == v8)
          {
            v10 |= v9++ > 0;
          }

          else
          {
            v9 = 0;
          }

          if (v11)
          {
            LODWORD(v35) = 0;
            v11 = 1;
          }

          else
          {
            v16 = [*(v5 + 2824) alphanumericCharacterSet];
            if ([v16 characterIsMember:v15])
            {
              v17 = v5;
              v18 = v7;
              v19 = [*(v17 + 2824) alphanumericCharacterSet];
              if ([v19 characterIsMember:v8])
              {

                if (v8 - 1 == v15 || v8 + 1 == v15)
                {
                  v11 = v35 > 0;
                  LODWORD(v35) = v35 + 1;
LABEL_18:
                  v7 = v18;
                  v5 = 0x1E696A000uLL;
                  goto LABEL_19;
                }
              }

              else
              {
              }

              v11 = 0;
              LODWORD(v35) = 0;
              goto LABEL_18;
            }

            v11 = 0;
            LODWORD(v35) = 0;
          }
        }

LABEL_19:
        v20 = [v7 characterIsMember:v15];
        [*(v5 + 2824) letterCharacterSet];
        v22 = v21 = v7;
        v23 = [v22 characterIsMember:v15];

        if (v23)
        {
          BYTE4(v35) = 1;
        }

        else
        {
          v24 = [v21 characterIsMember:v15];
          v38 |= v24;
          v39 += v24 ^ 1u;
        }

        v7 = v21;
        v13 = v20 & v13;
        v6 = v12;
        v3 = v36;
        v25 = v37 > v12++;
        v8 = v15;
        v5 = 0x1E696A000;
        if (!v25)
        {
          goto LABEL_26;
        }
      }
    }

    v11 = 0;
    BYTE4(v35) = 0;
    v38 = 0;
    v39 = 0;
    v10 = 0;
    v13 = 1;
LABEL_26:
    v26 = [MEMORY[0x1E695DF90] dictionary];
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "length")}];
    [v26 setObject:v27 forKey:@"length"];

    v28 = [MEMORY[0x1E696AD98] numberWithBool:v10 & 1];
    [v26 setObject:v28 forKey:@"hasRepeatingCharacters"];

    v29 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    [v26 setObject:v29 forKey:@"hasAscendingDescendingCharacters"];

    v30 = [MEMORY[0x1E696AD98] numberWithBool:BYTE4(v35) & 1];
    [v26 setObject:v30 forKey:@"hasAlpha"];

    v31 = [MEMORY[0x1E696AD98] numberWithBool:v38 & 1];
    [v26 setObject:v31 forKey:@"hasNumber"];

    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v39];
    [v26 setObject:v32 forKey:@"complexCharactersCount"];

    v33 = [MEMORY[0x1E696AD98] numberWithBool:v13];
    [v26 setObject:v33 forKey:@"allDigits"];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (id)characteristicsDictionaryFromPasscodeContext:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = [MCExtractablePasscodeContextWrapper contextWrapperFromExternalizedContext:a3 outError:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v5 MCVerboseDescription];
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEFAULT, "Unable to retrieve passcode characteristics. Error: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v10 = [v4 passcode];
    v9 = [a1 characteristicsDictionaryFromPasscode:v10];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)hashForPasscode:(id)a3 usingMethod:(int)a4 salt:(id)a5 customIterations:(unsigned int)a6
{
  v8 = a3;
  v9 = a5;
  v10 = 0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v13 = [v8 dataUsingEncoding:4];
      v10 = [MEMORY[0x1E695DF88] dataWithLength:20];
      SecKeyFromPassphraseDataHMACSHA1();
    }

    else if (a4 == 3)
    {
      v12 = [v8 dataUsingEncoding:4];
      v10 = [MEMORY[0x1E695DF88] dataWithLength:32];
      SecKeyFromPassphraseDataHMACSHA256();
    }
  }

  else
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_11;
      }

      v11 = [v8 MCSHA256DigestWithPasscodeSalt];
    }

    else
    {
      v15 = [v8 hash];
      v11 = [MEMORY[0x1E695DEF0] dataWithBytes:&v15 length:8];
    }

    v10 = v11;
  }

LABEL_11:

  return v10;
}

@end