@interface MCPasscodeManager
+ (BOOL)_passcodeCharacteristics:(id)characteristics creationDate:(id)date compliesWithPolicyFromRestrictions:(id)restrictions outError:(id *)error;
+ (BOOL)passcode:(id)passcode compliesWithPolicyFromRestrictions:(id)restrictions checkHistory:(BOOL)history outError:(id *)error;
+ (BOOL)passcodeContext:(id)context compliesWithPolicyFromRestrictions:(id)restrictions checkHistory:(BOOL)history outError:(id *)error;
+ (BOOL)restrictionsEnforcePasscodePolicy:(id)policy;
+ (id)_localizedDescriptionOfPasscodePolicyFromRestrictions:(id)restrictions shouldBeDefault:(BOOL)default;
+ (id)characteristicsDictionaryFromPasscode:(id)passcode;
+ (id)characteristicsDictionaryFromPasscodeContext:(id)context;
+ (id)deviceLockedError;
+ (id)generateSalt;
+ (id)hashForPasscode:(id)passcode usingMethod:(int)method salt:(id)salt customIterations:(unsigned int)iterations;
+ (id)sharedManager;
+ (int)unlockScreenTypeForPasscodeCharacteristics:(id)characteristics outSimplePasscodeType:(int *)type;
+ (int)unlockScreenTypeForRestrictions:(id)restrictions outSimplePasscodeType:(int *)type;
- (BOOL)_checkPasscode:(id)passcode againstHistoryWithRestrictions:(id)restrictions outError:(id *)error;
- (BOOL)_checkPasscodeContext:(id)context againstHistoryWithRestrictions:(id)restrictions outError:(id *)error;
- (BOOL)currentPasscodeCompliesWithPolicyFromRestrictions:(id)restrictions outError:(id *)error;
- (BOOL)isCurrentPasscodeCompliantOutError:(id *)error;
- (BOOL)isPasscodeCompliantWithNamedPolicy:(id)policy outError:(id *)error;
- (BOOL)unlockDeviceWithPasscode:(id)passcode outError:(id *)error;
- (BOOL)unlockDeviceWithPasscodeContext:(id)context outError:(id *)error;
- (id)_currentPublicPasscodeDict;
- (id)_filterPasscodeCharacteristics:(id)characteristics forGeneration:(id)generation;
- (id)_filterPublicPasscodeDict:(id)dict forGeneration:(id)generation;
- (id)_fixUpPasscodeCharacteristics:(id)characteristics;
- (id)_fixUpPublicPasscodeDict:(id)dict;
- (id)_mkbErrorStringForResult:(int)result;
- (id)_privatePasscodeDictWithOutError:(id *)error;
- (id)_publicPasscodeDictForUser:(id)user;
- (id)_publicPasscodeDictSharedDataVolume:(id)volume;
- (id)_wrongPasscodeError;
- (id)localizedDescriptionOfDefaultNewPasscodePolicy;
- (id)localizedDescriptionOfPasscodePolicy;
- (id)passcodeCreationDate;
- (id)passcodeExpiryDate;
- (id)recoveryPasscodeExpiryDate;
- (int)_minimumPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)type;
- (int)_newPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)type shouldBeMinimum:(BOOL)minimum;
- (int)currentUnlockScreenType;
- (int)currentUnlockSimplePasscodeType;
- (int)recoveryPasscodeUnlockScreenType;
- (int)recoveryPasscodeUnlockSimplePasscodeType;
- (int)unlockScreenTypeForSharedDataVolume:(id)volume;
- (int)unlockScreenTypeForUser:(id)user;
- (int)unlockScreenTypeWithPublicPasscodeDict:(id)dict isRecovery:(BOOL)recovery deviceHandle:(id)handle;
- (int)unlockSimplePasscodeTypeForSharedDataVolume:(id)volume;
- (int)unlockSimplePasscodeTypeForUser:(id)user;
- (void)lockDeviceImmediately:(BOOL)immediately;
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
  selfCopy = self;
  _currentPublicPasscodeDict = [(MCPasscodeManager *)self _currentPublicPasscodeDict];
  LODWORD(selfCopy) = [(MCPasscodeManager *)selfCopy unlockSimplePasscodeTypeWithPublicPasscodeDict:_currentPublicPasscodeDict isRecovery:0 deviceHandle:0];

  return selfCopy;
}

- (id)_currentPublicPasscodeDict
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentUser = [mEMORY[0x1E69DF068] currentUser];
  v5 = [(MCPasscodeManager *)self _publicPasscodeDictForUser:currentUser];

  return v5;
}

- (int)currentUnlockScreenType
{
  selfCopy = self;
  _currentPublicPasscodeDict = [(MCPasscodeManager *)self _currentPublicPasscodeDict];
  LODWORD(selfCopy) = [(MCPasscodeManager *)selfCopy unlockScreenTypeWithPublicPasscodeDict:_currentPublicPasscodeDict isRecovery:0 deviceHandle:0];

  return selfCopy;
}

+ (id)deviceLockedError
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArrayByDevice(@"PASSCODE_ERROR_DEVICE_CPLOCKED", a2, v2, v3, v4, v5, v6, v7, 0);
  v10 = [v8 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5010 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

- (id)_publicPasscodeDictForUser:(id)user
{
  v21 = *MEMORY[0x1E69E9840];
  userCopy = user;
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  if ([mEMORY[0x1E69AD420] userMode] == 1)
  {
    isSharedIPad = [mEMORY[0x1E69DF068] isSharedIPad];
  }

  else
  {
    isSharedIPad = 0;
  }

  v18 = 0;
  v8 = [mEMORY[0x1E69DF068] keybagOpaqueDataForUser:userCopy withError:&v18];
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

  if (![v8 length] || ((-[MCPasscodeManager isPasscodeSet](self, "isPasscodeSet") | isSharedIPad) & 1) == 0)
  {
    v11 = 0;
    if (!isSharedIPad)
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

  if (isSharedIPad)
  {
LABEL_15:
    if (![v11 count])
    {
      v14 = +[MCPasscodeUtilities defaultPublicDictionaryForUMUserPasscodeType:](MCPasscodeUtilities, "defaultPublicDictionaryForUMUserPasscodeType:", [userCopy passcodeType]);

      v11 = v14;
    }
  }

LABEL_17:

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_publicPasscodeDictSharedDataVolume:(id)volume
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DF0C8];
  volumeCopy = volume;
  sharedManager = [v4 sharedManager];
  v16 = 0;
  v7 = [sharedManager keybagOpaqueDataOnSharedDataVolumePath:volumeCopy withError:&v16];

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

- (id)_filterPublicPasscodeDict:(id)dict forGeneration:(id)generation
{
  v21 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  generationCopy = generation;
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  if ([mEMORY[0x1E69AD420] userMode] == 1)
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    v10 = [mEMORY[0x1E69DF068] isSharedIPad] ^ 1;
  }

  else
  {
    v10 = 1;
  }

  if (MCGestaltHasSEP() && (v10 & 1) != 0)
  {
    if (generationCopy)
    {
      stringValue = [generationCopy stringValue];
      v12 = [dictCopy objectForKeyedSubscript:stringValue];
      v13 = v12;
      if (dictCopy && !v12)
      {
        v14 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          v19 = 138543362;
          v20 = generationCopy;
          _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_ERROR, "Missing data for passcode generation %{public}@. Attempting to recover data", &v19, 0xCu);
        }

        v15 = [(MCPasscodeManager *)self _fixUpPublicPasscodeDict:dictCopy];
        v13 = [v15 objectForKeyedSubscript:stringValue];
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
    v13 = dictCopy;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_fixUpPublicPasscodeDict:(id)dict
{
  v55[3] = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  if (!dictCopy || ![(MCPasscodeManager *)self isPasscodeSet])
  {
    v8 = 0;
    goto LABEL_39;
  }

  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  if ([mEMORY[0x1E69AD420] userMode] == 1)
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    v7 = [mEMORY[0x1E69DF068] isSharedIPad] ^ 1;
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

    v8 = dictCopy;
    goto LABEL_38;
  }

  stringValue = [v10 stringValue];
  v14 = [dictCopy objectForKeyedSubscript:stringValue];

  if (!v14)
  {
    v15 = [dictCopy objectForKeyedSubscript:@"keyboardType"];
    v16 = v15;
    v17 = &unk_1F1AA58A8;
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;

    v19 = [dictCopy objectForKeyedSubscript:@"simpleType"];
    v20 = v19;
    v21 = &unk_1F1AA58C0;
    if (v19)
    {
      v21 = v19;
    }

    v22 = v21;

    v23 = [dictCopy objectForKeyedSubscript:@"creationDate"];
    if (v23)
    {
      date = v23;
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
          v29 = [v27 objectForKeyedSubscript:stringValue];
          v30 = v22;
          v31 = v29;
          if (!v29)
          {
            v29 = v28;
          }

          date = [v29 objectForKeyedSubscript:@"timestamp"];

          v22 = v30;
          if (date)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }
      }

      date = [MEMORY[0x1E695DF00] date];
    }

LABEL_28:
    v8 = objc_opt_new();
    v54[0] = @"keyboardType";
    v54[1] = @"simpleType";
    v55[0] = v18;
    v55[1] = v22;
    v50 = v22;
    v54[2] = @"creationDate";
    v55[2] = date;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];
    v33 = v32;
    if (v9)
    {
      [v8 setObject:v32 forKeyedSubscript:stringValue];
      v34 = MCKeybagMementoPasscodeGeneration();
      v35 = v34;
      if (v34)
      {
        stringValue2 = [v34 stringValue];
        v36 = [dictCopy objectForKeyedSubscript:@"recoveryKeyboardType"];
        v49 = v18;
        v37 = v36;
        v38 = &unk_1F1AA58A8;
        if (v36)
        {
          v38 = v36;
        }

        v46 = v38;

        v39 = [dictCopy objectForKeyedSubscript:@"recoverySimpleType"];
        v40 = v39;
        v41 = &unk_1F1AA58C0;
        if (v39)
        {
          v41 = v39;
        }

        v42 = v41;

        date2 = [MEMORY[0x1E695DF00] date];
        v52[0] = @"keyboardType";
        v52[1] = @"simpleType";
        v53[0] = v46;
        v53[1] = v42;
        v52[2] = @"creationDate";
        v53[2] = date2;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];

        [v8 setObject:v43 forKeyedSubscript:stringValue2];
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

  v8 = dictCopy;
LABEL_37:

LABEL_38:
LABEL_39:

  v44 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_privatePasscodeDictWithOutError:(id *)error
{
  v20 = 0;
  v5 = [MCKeychain dataFromService:@"com.apple.managedconfiguration" account:@"Private" label:0 description:0 group:0 useSystemKeychain:0 outError:&v20];
  v6 = v20;
  v14 = v6;
  if (error && v6)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = MCErrorArray(@"PASSCODE_ERROR_CANNOT_RETRIEVE_CHARACTERISTICS", v7, v8, v9, v10, v11, v12, v13, 0);
    [v15 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5020 descriptionArray:v16 underlyingError:v14 errorType:@"MCFatalError"];
    *error = v17 = 0;
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

- (id)_filterPasscodeCharacteristics:(id)characteristics forGeneration:(id)generation
{
  v21 = *MEMORY[0x1E69E9840];
  characteristicsCopy = characteristics;
  generationCopy = generation;
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  if ([mEMORY[0x1E69AD420] userMode] == 1)
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    v10 = [mEMORY[0x1E69DF068] isSharedIPad] ^ 1;
  }

  else
  {
    v10 = 1;
  }

  if (MCGestaltHasSEP() && v10)
  {
    if (generationCopy)
    {
      stringValue = [generationCopy stringValue];
      v12 = [characteristicsCopy objectForKeyedSubscript:stringValue];
      v13 = v12;
      if (characteristicsCopy && !v12)
      {
        v14 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          v19 = 138543362;
          v20 = generationCopy;
          _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_ERROR, "Missing characteristics for passcode generation %{public}@. Attempting to recover data", &v19, 0xCu);
        }

        v15 = [(MCPasscodeManager *)self _fixUpPasscodeCharacteristics:characteristicsCopy];
        v13 = [v15 objectForKeyedSubscript:stringValue];
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
    v13 = characteristicsCopy;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_fixUpPasscodeCharacteristics:(id)characteristics
{
  v20[1] = *MEMORY[0x1E69E9840];
  characteristicsCopy = characteristics;
  if (characteristicsCopy && [(MCPasscodeManager *)self isPasscodeSet])
  {
    mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
    if ([mEMORY[0x1E69AD420] userMode] == 1)
    {
      mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
      v7 = [mEMORY[0x1E69DF068] isSharedIPad] ^ 1;
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
        stringValue = [v11 stringValue];
        v14 = [characteristicsCopy objectForKeyedSubscript:stringValue];

        if (v14)
        {
          v8 = characteristicsCopy;
        }

        else
        {
          mCMutableDeepCopy = [characteristicsCopy MCMutableDeepCopy];
          [mCMutableDeepCopy setObject:0 forKeyedSubscript:@"timestamp"];
          v19 = stringValue;
          v20[0] = mCMutableDeepCopy;
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

        v8 = characteristicsCopy;
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

      v8 = characteristicsCopy;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)lockDeviceImmediately:(BOOL)immediately
{
  v17 = *MEMORY[0x1E69E9840];
  if (immediately)
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

- (BOOL)unlockDeviceWithPasscode:(id)passcode outError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  passcodeCopy = passcode;
  v7 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_INFO, "MCPasscodeManager unlocking device with passcode...", &v27, 2u);
  }

  v8 = [passcodeCopy dataUsingEncoding:4];
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

    _wrongPasscodeError = 0;
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

  _wrongPasscodeError = [(MCPasscodeManager *)self _wrongPasscodeError];

  if (!_wrongPasscodeError)
  {
    goto LABEL_17;
  }

  v19 = [passcodeCopy length];
  v20 = _MCLogObjects;
  if (v19)
  {
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      mCVerboseDescription = [_wrongPasscodeError MCVerboseDescription];
      v27 = 138543362;
      v28 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v21, OS_LOG_TYPE_ERROR, "MCPasscodeManager failed to unlock device with error: %{public}@", &v27, 0xCu);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_INFO, "MCPasscodeManager failed to unlock device with empty passcode", &v27, 2u);
  }

  if (error)
  {
    v26 = _wrongPasscodeError;
    v23 = 0;
    *error = _wrongPasscodeError;
  }

  else
  {
    v23 = 0;
  }

LABEL_18:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)unlockDeviceWithPasscodeContext:(id)context outError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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

    _wrongPasscodeError = 0;
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

    _wrongPasscodeError = [(MCPasscodeManager *)self _wrongPasscodeError];
    if (!_wrongPasscodeError)
    {
      goto LABEL_7;
    }

    v16 = _MCLogObjects;
    if (contextCopy)
    {
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        mCVerboseDescription = [_wrongPasscodeError MCVerboseDescription];
        v22 = 138543362;
        v23 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_ERROR, "MCPasscodeManager failed to unlock device with error: %{public}@", &v22, 0xCu);
      }
    }

    else if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_INFO, "MCPasscodeManager failed to unlock device with empty credential set", &v22, 2u);
    }

    if (error)
    {
      v19 = _wrongPasscodeError;
      v10 = 0;
      *error = _wrongPasscodeError;
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

    _wrongPasscodeError = 0;
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

- (id)_mkbErrorStringForResult:(int)result
{
  result = @"Success";
  switch(result)
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
      if (result == -1000)
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
  selfCopy = self;
  _currentPublicPasscodeDict = [(MCPasscodeManager *)self _currentPublicPasscodeDict];
  LODWORD(selfCopy) = [(MCPasscodeManager *)selfCopy unlockScreenTypeWithPublicPasscodeDict:_currentPublicPasscodeDict isRecovery:1 deviceHandle:0];

  return selfCopy;
}

- (int)unlockScreenTypeForUser:(id)user
{
  selfCopy = self;
  v4 = [(MCPasscodeManager *)self _publicPasscodeDictForUser:user];
  LODWORD(selfCopy) = [(MCPasscodeManager *)selfCopy unlockScreenTypeWithPublicPasscodeDict:v4 isRecovery:0 deviceHandle:0];

  return selfCopy;
}

- (int)unlockScreenTypeForSharedDataVolume:(id)volume
{
  selfCopy = self;
  v4 = [(MCPasscodeManager *)self _publicPasscodeDictSharedDataVolume:volume];
  LODWORD(selfCopy) = [(MCPasscodeManager *)selfCopy unlockScreenTypeWithPublicPasscodeDict:v4 isRecovery:0 deviceHandle:&unk_1F1AA58D8];

  return selfCopy;
}

- (int)unlockScreenTypeWithPublicPasscodeDict:(id)dict isRecovery:(BOOL)recovery deviceHandle:(id)handle
{
  recoveryCopy = recovery;
  v40 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  handleCopy = handle;
  v10 = handleCopy;
  if (recoveryCopy)
  {
    MCKeybagMementoPasscodeGenerationForHandle(handleCopy);
  }

  else
  {
    MCKeybagCurrentPasscodeGenerationForHandle(handleCopy);
  }
  v11 = ;
  v12 = [(MCPasscodeManager *)self _filterPublicPasscodeDict:dictCopy forGeneration:v11];
  v13 = [v12 objectForKeyedSubscript:@"keyboardType"];
  v14 = v13;
  if (v13)
  {
    intValue = [v13 intValue];
  }

  else
  {
    if (dictCopy)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v17 = v16;
    if ([dictCopy count])
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
    if (recoveryCopy)
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

    intValue = 2;
  }

  v26 = *MEMORY[0x1E69E9840];
  return intValue;
}

- (int)unlockSimplePasscodeTypeForUser:(id)user
{
  selfCopy = self;
  v4 = [(MCPasscodeManager *)self _publicPasscodeDictForUser:user];
  LODWORD(selfCopy) = [(MCPasscodeManager *)selfCopy unlockSimplePasscodeTypeWithPublicPasscodeDict:v4 isRecovery:0 deviceHandle:0];

  return selfCopy;
}

- (int)unlockSimplePasscodeTypeForSharedDataVolume:(id)volume
{
  selfCopy = self;
  v4 = [(MCPasscodeManager *)self _publicPasscodeDictSharedDataVolume:volume];
  LODWORD(selfCopy) = [(MCPasscodeManager *)selfCopy unlockSimplePasscodeTypeWithPublicPasscodeDict:v4 isRecovery:0 deviceHandle:&unk_1F1AA58D8];

  return selfCopy;
}

- (int)recoveryPasscodeUnlockSimplePasscodeType
{
  selfCopy = self;
  _currentPublicPasscodeDict = [(MCPasscodeManager *)self _currentPublicPasscodeDict];
  LODWORD(selfCopy) = [(MCPasscodeManager *)selfCopy unlockSimplePasscodeTypeWithPublicPasscodeDict:_currentPublicPasscodeDict isRecovery:1 deviceHandle:0];

  return selfCopy;
}

- (int)_newPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)type shouldBeMinimum:(BOOL)minimum
{
  minimumCopy = minimum;
  v17 = -1;
  v7 = [(MCPasscodeManager *)self _minimumPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v17];
  if (v7)
  {
    if (minimumCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (minimumCopy)
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
  _currentPublicPasscodeDict = [(MCPasscodeManager *)self _currentPublicPasscodeDict];
  v12 = [(MCPasscodeManager *)self _filterPublicPasscodeDict:_currentPublicPasscodeDict forGeneration:v10];

  v13 = [v12 objectForKeyedSubscript:@"keyboardType"];
  v14 = v13;
  if (v13)
  {
    intValue = [v13 intValue];
    if (v7 <= intValue)
    {
      v7 = intValue;
    }
  }

LABEL_15:
  if (type)
  {
    *type = v17;
  }

  return v7;
}

- (int)_minimumPasscodeEntryScreenTypeWithOutSimplePasscodeType:(int *)type
{
  v4 = +[MCRestrictionManager sharedManager];
  v5 = [v4 effectiveValueForSetting:@"passcodeKeyboardComplexity"];
  intValue = [v5 intValue];

  currentRestrictions = [v4 currentRestrictions];
  v8 = [MCPasscodeManager unlockScreenTypeForRestrictions:currentRestrictions outSimplePasscodeType:type];

  if (intValue > v8)
  {
    v8 = intValue;
  }

  return v8;
}

+ (int)unlockScreenTypeForPasscodeCharacteristics:(id)characteristics outSimplePasscodeType:(int *)type
{
  characteristicsCopy = characteristics;
  v6 = characteristicsCopy;
  if (!characteristicsCopy)
  {
    goto LABEL_8;
  }

  v7 = [characteristicsCopy objectForKey:@"length"];
  unsignedIntValue = [v7 unsignedIntValue];

  if (!unsignedIntValue)
  {
    goto LABEL_8;
  }

  v9 = [v6 objectForKey:@"allDigits"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    if (unsignedIntValue == 4)
    {
      v12 = 0;
      v11 = 0;
      if (!type)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (unsignedIntValue == 6)
    {
      v11 = 0;
      v12 = 1;
      if (!type)
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
  if (type)
  {
LABEL_10:
    *type = v12;
  }

LABEL_11:

  return v11;
}

+ (int)unlockScreenTypeForRestrictions:(id)restrictions outSimplePasscodeType:(int *)type
{
  restrictionsCopy = restrictions;
  v6 = [MCRestrictionManager restrictedBoolForFeature:@"requireAlphanumeric" withRestrictionsDictionary:restrictionsCopy];
  v7 = [MCRestrictionManager valueForFeature:@"minComplexChars" withRestrictionsDictionary:restrictionsCopy];
  unsignedIntValue = [v7 unsignedIntValue];

  v9 = [MCRestrictionManager valueForFeature:@"minLength" withRestrictionsDictionary:restrictionsCopy];

  if (v6 == 1 || unsignedIntValue != 0)
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
  if (type)
  {
    *type = v12;
  }

  return v11;
}

- (id)localizedDescriptionOfPasscodePolicy
{
  v2 = +[MCRestrictionManager sharedManager];
  currentRestrictions = [v2 currentRestrictions];
  v4 = [MCPasscodeManager localizedDescriptionOfPasscodePolicyFromRestrictions:currentRestrictions];

  return v4;
}

- (id)localizedDescriptionOfDefaultNewPasscodePolicy
{
  v2 = +[MCRestrictionManager sharedManager];
  currentRestrictions = [v2 currentRestrictions];
  v4 = [MCPasscodeManager localizedDescriptionOfDefaultNewPasscodePolicyFromRestrictions:currentRestrictions];

  return v4;
}

+ (id)_localizedDescriptionOfPasscodePolicyFromRestrictions:(id)restrictions shouldBeDefault:(BOOL)default
{
  defaultCopy = default;
  restrictionsCopy = restrictions;
  v34 = [MCRestrictionManager valueForFeature:@"minLength" withRestrictionsDictionary:restrictionsCopy];
  [v34 unsignedIntValue];
  v6 = [MCRestrictionManager defaultValueForSetting:@"minLength"];
  [v6 unsignedIntValue];

  v7 = [MCRestrictionManager minimumValueForSetting:@"minLength"];
  [v7 unsignedIntValue];

  v8 = [MCRestrictionManager restrictedBoolForFeature:@"allowSimple" withRestrictionsDictionary:restrictionsCopy];
  v9 = [MCRestrictionManager restrictedBoolForFeature:@"requireAlphanumeric" withRestrictionsDictionary:restrictionsCopy];
  v10 = [MCRestrictionManager valueForFeature:@"minComplexChars" withRestrictionsDictionary:restrictionsCopy];

  if (v10)
  {
    unsignedIntValue = [v10 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  if (v9 == 1)
  {
    if (v8 == 2)
    {
      MCLocalizedFormat(@"PASSCODE_CHARACTERS_STRONG", v11, v12, v13, v14, v15, v16, v17, unsignedIntValue);
    }

    else
    {
      MCLocalizedFormat(@"PASSCODE_CHARACTERS", v11, v12, v13, v14, v15, v16, v17, unsignedIntValue);
    }

    goto LABEL_18;
  }

  if (v8 == 2)
  {
    MCLocalizedFormat(@"PASSCODE_DIGITS_STRONG", v11, v12, v13, v14, v15, v16, v17, unsignedIntValue);
    v31 = LABEL_18:;
    goto LABEL_19;
  }

  v35 = 0;
  v19 = +[MCPasscodeManager sharedManager];
  v20 = v19;
  if (defaultCopy)
  {
    v21 = [v19 defaultNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v35];
  }

  else
  {
    v21 = [v19 minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v35];
  }

  v22 = v21;

  if (unsignedIntValue | v22)
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
    MCLocalizedFormat(@"PASSCODE_DIGITS", v23, v24, v25, v26, v27, v28, v29, unsignedIntValue);
    goto LABEL_18;
  }

  v30 = @"PASSCODE_6_DIGIT";
LABEL_23:
  v31 = MCLocalizedString(v30);
LABEL_19:
  v32 = v31;

  return v32;
}

+ (BOOL)restrictionsEnforcePasscodePolicy:(id)policy
{
  policyCopy = policy;
  if ([MCRestrictionManager restrictedBoolForFeature:@"allowSimple" withRestrictionsDictionary:policyCopy]== 2 || [MCRestrictionManager restrictedBoolForFeature:@"forcePIN" withRestrictionsDictionary:policyCopy]== 2 || [MCRestrictionManager restrictedBoolForFeature:@"requireAlphanumeric" withRestrictionsDictionary:policyCopy]== 2)
  {
    v4 = 1;
  }

  else
  {
    v6 = [MCRestrictionManager valueForFeature:@"minLength" withRestrictionsDictionary:policyCopy];
    if ([v6 intValue] <= 4)
    {
      v7 = [MCRestrictionManager valueForFeature:@"pinHistory" withRestrictionsDictionary:policyCopy];
      if (v7)
      {
        v4 = 1;
      }

      else
      {
        v8 = [MCRestrictionManager valueForFeature:@"maxFailedAttempts" withRestrictionsDictionary:policyCopy];
        if (v8)
        {
          v4 = 1;
        }

        else
        {
          v9 = [MCRestrictionManager valueForFeature:@"minComplexChars" withRestrictionsDictionary:policyCopy];
          if (v9)
          {
            v4 = 1;
          }

          else
          {
            v10 = [MCRestrictionManager valueForFeature:@"maxPINAgeInDays" withRestrictionsDictionary:policyCopy];
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

+ (BOOL)passcode:(id)passcode compliesWithPolicyFromRestrictions:(id)restrictions checkHistory:(BOOL)history outError:(id *)error
{
  historyCopy = history;
  passcodeCopy = passcode;
  restrictionsCopy = restrictions;
  v12 = [MCPasscodeManager characteristicsDictionaryFromPasscode:passcodeCopy];
  v13 = [self _passcodeCharacteristics:v12 creationDate:0 compliesWithPolicyFromRestrictions:restrictionsCopy outError:error];
  if (v13)
  {
    v14 = !historyCopy;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = +[MCPasscodeManager sharedManager];
    LOBYTE(v13) = [v15 _checkPasscode:passcodeCopy againstHistoryWithRestrictions:restrictionsCopy outError:error];
  }

  return v13;
}

+ (BOOL)passcodeContext:(id)context compliesWithPolicyFromRestrictions:(id)restrictions checkHistory:(BOOL)history outError:(id *)error
{
  historyCopy = history;
  contextCopy = context;
  restrictionsCopy = restrictions;
  v12 = [MCPasscodeManager characteristicsDictionaryFromPasscodeContext:contextCopy];
  v13 = [self _passcodeCharacteristics:v12 creationDate:0 compliesWithPolicyFromRestrictions:restrictionsCopy outError:error];
  if (v13)
  {
    v14 = !historyCopy;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = +[MCPasscodeManager sharedManager];
    LOBYTE(v13) = [v15 _checkPasscodeContext:contextCopy againstHistoryWithRestrictions:restrictionsCopy outError:error];
  }

  return v13;
}

- (BOOL)currentPasscodeCompliesWithPolicyFromRestrictions:(id)restrictions outError:(id *)error
{
  restrictionsCopy = restrictions;
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
      passcodeCreationDate = [(MCPasscodeManager *)self passcodeCreationDate];
      v25 = 0;
      [MCPasscodeManager _passcodeCharacteristics:v21 creationDate:passcodeCreationDate compliesWithPolicyFromRestrictions:restrictionsCopy outError:&v25];
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

  if (error)
  {
    v11 = v8;
    *error = v8;
  }

  domain = [v8 domain];
  if ([domain isEqualToString:@"MCPasscodeErrorDomain"])
  {
    code = [v8 code];

    if (code == 5010)
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

  domain2 = [v8 domain];
  if ([domain2 isEqualToString:@"MCPasscodeErrorDomain"])
  {
    code2 = [v8 code];

    if (code2 == 5020)
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

- (BOOL)isCurrentPasscodeCompliantOutError:(id *)error
{
  v5 = +[MCRestrictionManager sharedManager];
  currentRestrictions = [v5 currentRestrictions];

  LOBYTE(error) = [(MCPasscodeManager *)self currentPasscodeCompliesWithPolicyFromRestrictions:currentRestrictions outError:error];
  return error;
}

- (BOOL)isPasscodeCompliantWithNamedPolicy:(id)policy outError:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  v7 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = policyCopy;
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

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        if ([policyCopy isEqualToString:@"ApplePayChinaPasscodePolicy"])
        {
          [dictionary MCSetBoolRestriction:@"allowSimple" value:0];
        }

        else if (![policyCopy isEqualToString:@"AutoUnlockPasscodePolicy"])
        {
          v21 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v33 = policyCopy;
            _os_log_impl(&dword_1A795B000, v21, OS_LOG_TYPE_ERROR, "Unknown passcode compliance policy: %{public}@", buf, 0xCu);
          }

          if (error)
          {
            v29 = MEMORY[0x1E696ABC0];
            v30 = MCErrorArray(@"PASSCODE_ERROR_UNKNOWN_POLICY_P_POLICY", v22, v23, v24, v25, v26, v27, v28, policyCopy);
            *error = [v29 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5019 descriptionArray:v30 errorType:@"MCFatalError"];
          }

          goto LABEL_19;
        }

        [dictionary MCSetValueRestriction:@"minLength" value:&unk_1F1AA58F0];
LABEL_19:
        if ([dictionary count])
        {
          v19 = objc_opt_class();
          passcodeCreationDate = [(MCPasscodeManager *)self passcodeCreationDate];
          v13 = [v19 _passcodeCharacteristics:v8 creationDate:passcodeCreationDate compliesWithPolicyFromRestrictions:dictionary outError:0];
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

  if (error)
  {
    v11 = v8;
    *error = v8;
  }

  v12 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v33 = policyCopy;
    v34 = 2114;
    v35 = v8;
    _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "Unable to check passcode compliance with named policy %{public}@: %{public}@", buf, 0x16u);
  }

  v13 = 0;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)_passcodeCharacteristics:(id)characteristics creationDate:(id)date compliesWithPolicyFromRestrictions:(id)restrictions outError:(id *)error
{
  v79 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  restrictionsCopy = restrictions;
  characteristicsCopy = characteristics;
  v10 = [MCRestrictionManager valueForFeature:@"minComplexChars" withRestrictionsDictionary:restrictionsCopy];
  unsignedIntValue = [v10 unsignedIntValue];

  v11 = [MCRestrictionManager valueForFeature:@"minLength" withRestrictionsDictionary:restrictionsCopy];
  unsignedIntValue2 = [v11 unsignedIntValue];

  v73 = [MCRestrictionManager restrictedBoolForFeature:@"requireAlphanumeric" withRestrictionsDictionary:restrictionsCopy];
  v13 = [MCRestrictionManager restrictedBoolForFeature:@"forcePIN" withRestrictionsDictionary:restrictionsCopy];
  v14 = [MCRestrictionManager restrictedBoolForFeature:@"allowSimple" withRestrictionsDictionary:restrictionsCopy];
  v15 = [characteristicsCopy objectForKey:@"length"];
  unsignedIntValue3 = [v15 unsignedIntValue];

  v17 = [characteristicsCopy objectForKey:@"hasRepeatingCharacters"];
  bOOLValue = [v17 BOOLValue];

  v19 = [characteristicsCopy objectForKey:@"hasAscendingDescendingCharacters"];
  bOOLValue2 = [v19 BOOLValue];

  v20 = [characteristicsCopy objectForKey:@"hasAlpha"];
  bOOLValue3 = [v20 BOOLValue];

  v21 = [characteristicsCopy objectForKey:@"hasNumber"];
  bOOLValue4 = [v21 BOOLValue];

  v22 = [characteristicsCopy objectForKey:@"complexCharactersCount"];

  unsignedIntValue4 = [v22 unsignedIntValue];
  if ((v13 == 1 || unsignedIntValue2 || unsignedIntValue || v73 == 1 || v14 == 2) && !unsignedIntValue3)
  {
    goto LABEL_19;
  }

  v31 = [MCRestrictionManager minimumValueForSetting:@"minLength"];
  unsignedIntValue5 = [v31 unsignedIntValue];

  if (unsignedIntValue2)
  {
    v33 = 0;
  }

  else
  {
    v33 = v13 == 1;
  }

  if (v33)
  {
    v34 = unsignedIntValue5;
  }

  else
  {
    v34 = unsignedIntValue2;
  }

  if (v34 <= unsignedIntValue5)
  {
    v35 = unsignedIntValue5;
  }

  else
  {
    v35 = v34;
  }

  if (unsignedIntValue3)
  {
    v34 = v35;
  }

  if (unsignedIntValue3 < v34)
  {
LABEL_19:
    v36 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(@"PASSCODE_QUALITY_SHORT", v24, v25, v26, v27, v28, v29, v30, 0);
    v38 = v36;
    v39 = 5000;
LABEL_20:
    v40 = [v38 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:v39 descriptionArray:v37 errorType:@"MCFatalError"];
    errorCopy2 = error;
    v41 = dateCopy;
    goto LABEL_21;
  }

  if (((v14 == 2) & bOOLValue) == 1)
  {
    v49 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(@"PASSCODE_QUALITY_REPEAT", v24, v25, v26, v27, v28, v29, v30, 0);
    v38 = v49;
    v39 = 5003;
    goto LABEL_20;
  }

  if (((v14 == 2) & bOOLValue2) == 1)
  {
    v50 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(@"PASSCODE_QUALITY_ASCENDING_DESCENDING", v24, v25, v26, v27, v28, v29, v30, 0);
    v38 = v50;
    v39 = 5004;
    goto LABEL_20;
  }

  errorCopy2 = error;
  v41 = dateCopy;
  if (unsignedIntValue4 < unsignedIntValue)
  {
    v51 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(@"PASSCODE_QUALITY_COMPLEX", v24, v25, v26, v27, v28, v29, v30, 0);
    v52 = v51;
    v53 = 5002;
LABEL_42:
    v40 = [v52 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:v53 descriptionArray:v37 errorType:@"MCFatalError"];
    goto LABEL_21;
  }

  if (!((v73 != 1) | bOOLValue3 & 1))
  {
    v66 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(@"PASSCODE_QUALITY_ALPHA", v24, v25, v26, v27, v28, v29, v30, 0);
    v52 = v66;
    v53 = 5006;
    goto LABEL_42;
  }

  if (!((v73 != 1) | bOOLValue4 & 1))
  {
    v67 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(@"PASSCODE_QUALITY_NUMBER", v24, v25, v26, v27, v28, v29, v30, 0);
    v52 = v67;
    v53 = 5005;
    goto LABEL_42;
  }

  v54 = [MCRestrictionManager valueForFeature:@"maxPINAgeInDays" withRestrictionsDictionary:restrictionsCopy];
  v37 = v54;
  v40 = 0;
  if (dateCopy && v54)
  {
    unsignedIntValue6 = [v54 unsignedIntValue];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    date = [MEMORY[0x1E695DF00] date];
    v58 = [currentCalendar components:16 fromDate:dateCopy toDate:date options:0];

    if ([v58 day] < 0 || unsignedIntValue6 > objc_msgSend(v58, "day"))
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
      mCVerboseDescription = [v40 MCVerboseDescription];
      *buf = 138543362;
      v78 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v44, OS_LOG_TYPE_DEFAULT, "Passcode does not meet criteria. Error: %{public}@", buf, 0xCu);
    }

    if (errorCopy2)
    {
      v46 = v40;
      *errorCopy2 = v40;
    }
  }

  v47 = *MEMORY[0x1E69E9840];
  return v40 == 0;
}

- (BOOL)_checkPasscode:(id)passcode againstHistoryWithRestrictions:(id)restrictions outError:(id *)error
{
  passcodeCopy = passcode;
  restrictionsCopy = restrictions;
  v10 = [MCRestrictionManager valueForFeature:@"pinHistory" withRestrictionsDictionary:restrictionsCopy];
  unsignedIntValue = [v10 unsignedIntValue];
  if (!unsignedIntValue)
  {

    v14 = 0;
    goto LABEL_44;
  }

  LODWORD(v12) = unsignedIntValue;
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
      v56 = passcodeCopy;
      v57 = v12;
      v52 = v15;
      v53 = v10;
      errorCopy = error;
      v55 = restrictionsCopy;
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
        intValue = [v35 intValue];

        if (![v28 isEqualToData:v33] || v59 != intValue || (objc_msgSend(v60, "isEqualToNumber:", v34) & 1) == 0)
        {
          v37 = +[MCPasscodeManager hashForPasscode:usingMethod:salt:customIterations:](MCPasscodeManager, "hashForPasscode:usingMethod:salt:customIterations:", v56, intValue, v33, [v34 intValue]);

          v38 = v33;
          v39 = v34;

          v59 = intValue;
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
      restrictionsCopy = v55;
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

      passcodeCopy = v56;
      v10 = v53;
      error = errorCopy;
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
  if (error)
  {
    v17 = v14;
    *error = v14;
  }

  domain = [v14 domain];
  if ([domain isEqualToString:@"MCPasscodeErrorDomain"])
  {
    code = [v14 code];

    if (code == 5010)
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

  domain2 = [v14 domain];
  if ([domain2 isEqualToString:@"MCPasscodeErrorDomain"])
  {
    code2 = [v14 code];

    if (code2 == 5020)
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

- (BOOL)_checkPasscodeContext:(id)context againstHistoryWithRestrictions:(id)restrictions outError:(id *)error
{
  restrictionsCopy = restrictions;
  v16 = 0;
  v9 = [MCExtractablePasscodeContextWrapper contextWrapperFromExternalizedContext:context outError:&v16];
  v10 = v16;
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    passcode = [v9 passcode];
    v13 = [(MCPasscodeManager *)self _checkPasscode:passcode againstHistoryWithRestrictions:restrictionsCopy outError:error];
  }

  return v13;
}

- (id)passcodeCreationDate
{
  v3 = MCKeybagCurrentPasscodeGeneration();
  _currentPublicPasscodeDict = [(MCPasscodeManager *)self _currentPublicPasscodeDict];
  v5 = [(MCPasscodeManager *)self _filterPublicPasscodeDict:_currentPublicPasscodeDict forGeneration:v3];

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
      passcodeCreationDate = [(MCPasscodeManager *)self passcodeCreationDate];
      v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:passcodeCreationDate sinceDate:v7];
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
    passcodeCreationDate = [(MCPasscodeManager *)self passcodeCreationDate];
    v4 = [MEMORY[0x1E695DF00] dateWithTimeInterval:passcodeCreationDate sinceDate:259200.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)characteristicsDictionaryFromPasscode:(id)passcode
{
  passcodeCopy = passcode;
  if ([passcodeCopy length])
  {
    v4 = [passcodeCopy length];
    v5 = 0x1E696A000uLL;
    v7 = [MEMORY[0x1E696AB08] characterSetWithRange:{48, 10}];
    v37 = v4;
    if (v4)
    {
      v6 = 0;
      v8 = 0;
      v9 = 0;
      v35 = 0;
      v36 = passcodeCopy;
      v10 = 0;
      v39 = 0;
      v38 = 0;
      v11 = 0;
      v12 = 1;
      LODWORD(v13) = 1;
      while (1)
      {
        v14 = [passcodeCopy characterAtIndex:v6];
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
            alphanumericCharacterSet = [*(v5 + 2824) alphanumericCharacterSet];
            if ([alphanumericCharacterSet characterIsMember:v15])
            {
              v17 = v5;
              v18 = v7;
              alphanumericCharacterSet2 = [*(v17 + 2824) alphanumericCharacterSet];
              if ([alphanumericCharacterSet2 characterIsMember:v8])
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
        passcodeCopy = v36;
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(passcodeCopy, "length")}];
    [dictionary setObject:v27 forKey:@"length"];

    v28 = [MEMORY[0x1E696AD98] numberWithBool:v10 & 1];
    [dictionary setObject:v28 forKey:@"hasRepeatingCharacters"];

    v29 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    [dictionary setObject:v29 forKey:@"hasAscendingDescendingCharacters"];

    v30 = [MEMORY[0x1E696AD98] numberWithBool:BYTE4(v35) & 1];
    [dictionary setObject:v30 forKey:@"hasAlpha"];

    v31 = [MEMORY[0x1E696AD98] numberWithBool:v38 & 1];
    [dictionary setObject:v31 forKey:@"hasNumber"];

    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v39];
    [dictionary setObject:v32 forKey:@"complexCharactersCount"];

    v33 = [MEMORY[0x1E696AD98] numberWithBool:v13];
    [dictionary setObject:v33 forKey:@"allDigits"];
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

+ (id)characteristicsDictionaryFromPasscodeContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = [MCExtractablePasscodeContextWrapper contextWrapperFromExternalizedContext:context outError:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      mCVerboseDescription = [v5 MCVerboseDescription];
      *buf = 138412290;
      v15 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEFAULT, "Unable to retrieve passcode characteristics. Error: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    passcode = [v4 passcode];
    v9 = [self characteristicsDictionaryFromPasscode:passcode];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)hashForPasscode:(id)passcode usingMethod:(int)method salt:(id)salt customIterations:(unsigned int)iterations
{
  passcodeCopy = passcode;
  saltCopy = salt;
  v10 = 0;
  if (method > 1)
  {
    if (method == 2)
    {
      v13 = [passcodeCopy dataUsingEncoding:4];
      v10 = [MEMORY[0x1E695DF88] dataWithLength:20];
      SecKeyFromPassphraseDataHMACSHA1();
    }

    else if (method == 3)
    {
      v12 = [passcodeCopy dataUsingEncoding:4];
      v10 = [MEMORY[0x1E695DF88] dataWithLength:32];
      SecKeyFromPassphraseDataHMACSHA256();
    }
  }

  else
  {
    if (method)
    {
      if (method != 1)
      {
        goto LABEL_11;
      }

      mCSHA256DigestWithPasscodeSalt = [passcodeCopy MCSHA256DigestWithPasscodeSalt];
    }

    else
    {
      v15 = [passcodeCopy hash];
      mCSHA256DigestWithPasscodeSalt = [MEMORY[0x1E695DEF0] dataWithBytes:&v15 length:8];
    }

    v10 = mCSHA256DigestWithPasscodeSalt;
  }

LABEL_11:

  return v10;
}

@end