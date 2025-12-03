@interface FMDFMIPManager
+ (id)sharedInstance;
- (BOOL)_checkLostModeInSharedContainer;
- (BOOL)_isRunningAsMobileUser;
- (BOOL)_quickFetchFMIPEnabledstate;
- (BOOL)isLostModeActive;
- (BOOL)isManagedLostModeActive;
- (BOOL)lockdownShouldDisableDevicePairing;
- (BOOL)lockdownShouldDisableDeviceRestore;
- (BOOL)lostModeIsActive;
- (BOOL)needsLostModeExitAuth;
- (FMDFMIPManager)init;
- (id)_postWipePrefPath;
- (id)disableFMIPUsingToken:(id)token inContext:(unint64_t)context;
- (id)enableFMIPInContext:(unint64_t)context;
- (id)enableLostModeWithInfo:(id)info;
- (id)fmipAccount;
- (id)getManagedLostModeFileURL;
- (id)getNeedsLocateAckLostModeFileURL;
- (id)lostModeInfo;
- (id)newErrorForCode:(int)code message:(id)message;
- (id)pathsToPreserveAcrossWipe;
- (unint64_t)_managedLostModeType;
- (unint64_t)_needsAckLostModeType;
- (void)_disableFMIPUsingToken:(id)token inContext:(unint64_t)context completion:(id)completion;
- (void)_forceFMWUpgradeAlertWithCompletion:(id)completion;
- (void)_getAccessoriesWithFilter:(id)filter completion:(id)completion;
- (void)_initiateLostModeExitAuthForIDSDeviceID:(id)d withCompletion:(id)completion;
- (void)_managedLostModeType;
- (void)_needsAckLostModeType;
- (void)_stopAlarm;
- (void)_updateManagedLostModeWithInfo:(id)info completion:(id)completion;
- (void)_updateNeedsLocateAckLostModeWithInfo:(id)info completion:(id)completion;
- (void)activationLockAuthInfoWithCompletion:(id)completion;
- (void)activationLockInfoFromDeviceWithCompletion:(id)completion;
- (void)activationLockVersionWithCompletion:(id)completion;
- (void)addNotificationRequest:(id)request completion:(id)completion;
- (void)attemptUCRTHealing:(id)healing completion:(id)completion;
- (void)audioAccessorySerialNumbersWithCompletion:(id)completion;
- (void)clearData:(unint64_t)data completion:(id)completion;
- (void)clearMaskedAppleIDWithCompletion:(id)completion;
- (void)clearOfflineFindingInfoWithCompletion:(id)completion;
- (void)deviceActivationDidSucceed;
- (void)deviceEligibleForRepairWithContext:(id)context completion:(id)completion;
- (void)didAddLocalFindableAccessory:(id)accessory completion:(id)completion;
- (void)didChangeFMIPAccountInfo:(id)info;
- (void)didReceiveLostModeExitAuthToken:(id)token;
- (void)didRemoveLocalFindableAccessory:(id)accessory completion:(id)completion;
- (void)disableBiometricIDForLostModeWithCompletion:(id)completion;
- (void)disableFMIPForAccount:(id)account pairedDeviceWithUDID:(id)d withCompletion:(id)completion;
- (void)disableFMIPUsingToken:(id)token forPairedDeviceWithUDID:(id)d withCompletion:(id)completion;
- (void)disableFMIPUsingToken:(id)token inContext:(unint64_t)context completion:(id)completion;
- (void)disableLocationDisplayWithCompletion:(id)completion;
- (void)disableLostMode;
- (void)disableManagedLostModeWithLocatedMessage:(id)message completion:(id)completion;
- (void)enableActivationLockWithCompletion:(id)completion;
- (void)enableManagedLostModeWithInfo:(id)info completion:(id)completion;
- (void)enableRepairWithContext:(id)context completion:(id)completion;
- (void)fetchAPNSTokenWithCompletion:(id)completion;
- (void)fetchAccessoryConfigurations:(id)configurations;
- (void)fetchOfflineFindingInfoWithCompletion:(id)completion;
- (void)fmipAccount;
- (void)fmipAccountWithCompletion:(id)completion;
- (void)fmipStateWithCompletion:(id)completion;
- (void)getConnectedAccessoriesDiscoveryIds:(id)ids;
- (void)initiateLostModeExitAuthForIDSDeviceID:(id)d withCompletion:(id)completion;
- (void)initiateLostModeExitAuthWithCompletion:(id)completion;
- (void)isActivationLockAllowedWithCompletion:(id)completion;
- (void)isActivationLockEnabledWithCompletion:(id)completion;
- (void)isActivationLockedWithCompletion:(id)completion;
- (void)lostModeInfo;
- (void)lowBatteryLocateEnabledWithCompletion:(id)completion;
- (void)markAsMissingSupportedForPairedDeviceWithUDID:(id)d withCompletion:(id)completion;
- (void)markPairedDeviceWithUDID:(id)d asMissingUsingToken:(id)token withCompletion:(id)completion;
- (void)pairingCheckWith:(id)with completion:(id)completion;
- (void)playSoundWithMessage:(id)message completion:(id)completion;
- (void)playSoundWithOptions:(id)options completion:(id)completion;
- (void)primaryAppleAccountRemoved;
- (void)registerDeviceForPairingLock:(id)lock completion:(id)completion;
- (void)removeAccessoryWithDiscoveryId:(id)id completion:(id)completion;
- (void)removeNotificationWithIdentifier:(id)identifier completion:(id)completion;
- (void)requireDisableLocationWithCompletion:(id)completion;
- (void)setPhoneNumber:(id)number toAccessoryWithDiscoveryId:(id)id completion:(id)completion;
- (void)showDailyLocateReport;
- (void)signatureHeadersWithData:(id)data completion:(id)completion;
- (void)simulatePushWithPayload:(id)payload completion:(id)completion;
- (void)soundStoppedForAccessoryIdentifier:(id)identifier;
- (void)startLocationMonitoring:(id)monitoring;
- (void)startLocationMonitoringWithContext:(id)context completion:(id)completion;
- (void)startLocationMonitoringWithOptions:(id)options completion:(id)completion;
- (void)startPlayingSoundForAccessory:(id)accessory duration:(double)duration rampUpDuration:(double)upDuration channels:(id)channels completion:(id)completion;
- (void)stopLocationMonitoring:(id)monitoring;
- (void)stopLocationMonitoringWithContext:(id)context completion:(id)completion;
- (void)stopLocationMonitoringWithOptions:(id)options completion:(id)completion;
- (void)stopPlayingSoundForAccessory:(id)accessory rampDownDuration:(double)duration completion:(id)completion;
- (void)stopSoundMessageWithCompletion:(id)completion;
- (void)storeOfflineFindingInfo:(id)info completion:(id)completion;
- (void)updateMaskedAppleIDWith:(id)with completion:(id)completion;
- (void)updatePairingLockInfo:(id)info completion:(id)completion;
- (void)updatedConfigReceived:(id)received completion:(id)completion;
- (void)userDidAckManagedLostModeLocateWithCompletion:(id)completion;
- (void)userNotifiedOfActivationLockForAllPairedDevices;
- (void)userNotifiedOfActivationLockForPairedDevices:(id)devices;
- (void)waitForRoutableAccessory:(id)accessory timeout:(double)timeout completion:(id)completion;
@end

@implementation FMDFMIPManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FMDFMIPManager sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

uint64_t __32__FMDFMIPManager_sharedInstance__block_invoke()
{
  sharedInstance__instance = objc_alloc_init(FMDFMIPManager);

  return MEMORY[0x1EEE66BB8]();
}

- (FMDFMIPManager)init
{
  v6.receiver = self;
  v6.super_class = FMDFMIPManager;
  v2 = [(FMDFMIPManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.icloud.FindMyDevice.FMDFMIPManager", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;
  }

  return v2;
}

- (BOOL)lostModeIsActive
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315138;
    v22 = "[FMDFMIPManager lostModeIsActive]";
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v21, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  if ([(FMDFMIPManager *)self _isRunningAsMobileUser])
  {
    [MEMORY[0x1E699BE00] synchronizeDomain:kFMDPublicNotBackedUpPrefDomain];
    v5 = [MEMORY[0x1E699BE00] dictionaryForKey:@"FMIPLostModeInfo" inDomain:kFMDPublicNotBackedUpPrefDomain];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKey:@"lostModeEnabled"];
      bOOLValue = [v7 BOOLValue];

      if (bOOLValue)
      {
        goto LABEL_11;
      }
    }

    v9 = [MEMORY[0x1E699BE00] dictionaryForKey:@"ClientLostModeInfo" inDomain:kFMDPublicNotBackedUpPrefDomain];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 objectForKey:@"lostModeEnabled"];
      bOOLValue2 = [v11 BOOLValue];

      if (bOOLValue2)
      {
        goto LABEL_11;
      }
    }

    [MEMORY[0x1E699BE00] synchronizeDomain:kFMDPostWipePrefDomain];
    v13 = [MEMORY[0x1E699BE00] dictionaryForKey:@"FMIPWipeLostModeInfo" inDomain:kFMDPostWipePrefDomain];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 objectForKey:@"lostModeEnabled"];
      bOOLValue3 = [v15 BOOLValue];

      if (bOOLValue3)
      {
        goto LABEL_11;
      }
    }

    if ([(FMDFMIPManager *)self _managedLostModeType])
    {
LABEL_11:
      v17 = 1;
    }

    else
    {
      v17 = [(FMDFMIPManager *)self _needsAckLostModeType]!= 0;
    }

    v18 = LogCategory_Unspecified();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109120;
      LODWORD(v22) = v17;
      _os_log_impl(&dword_1DF650000, v18, OS_LOG_TYPE_DEFAULT, "lostModeIsActive = %d", &v21, 8u);
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  objc_autoreleasePoolPop(v3);
  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)isManagedLostModeActive
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[FMDFMIPManager isManagedLostModeActive]";
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v5 = [(FMDFMIPManager *)self _managedLostModeType]== 3;
  objc_autoreleasePoolPop(v3);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isLostModeActive
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[FMDFMIPManager isLostModeActive]";
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  _checkLostModeInSharedContainer = [(FMDFMIPManager *)self _checkLostModeInSharedContainer];
  v6 = LogCategory_Unspecified();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (_checkLostModeInSharedContainer)
    {
      v7 = @"YES";
    }

    v10 = 136315394;
    v11 = "[FMDFMIPManager isLostModeActive]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, "%s : %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x1E69E9840];
  return _checkLostModeInSharedContainer;
}

- (unint64_t)_managedLostModeType
{
  v19 = *MEMORY[0x1E69E9840];
  getManagedLostModeFileURL = [(FMDFMIPManager *)self getManagedLostModeFileURL];
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [FMDFMIPManager _managedLostModeType];
  }

  v16 = 0;
  v4 = [MEMORY[0x1E695DF20] fm_dictionaryWithContentsOfURL:getManagedLostModeFileURL error:&v16];
  v5 = v16;
  v6 = v5;
  if (v5)
  {
    if (([v5 fm_isFileNotFoundError] & 1) == 0)
    {
      v7 = LogCategory_Unspecified();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v6;
        _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "Could not read managed lost mode file %@", buf, 0xCu);
      }

      integerValue = 0;
LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {
    v9 = LogCategory_Unspecified();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [FMDFMIPManager _managedLostModeType];
    }

    v10 = [v4 objectForKey:@"lostModeEnabled"];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      v12 = [v4 objectForKey:@"lostModeType"];
      v7 = v12;
      if (v12)
      {
        integerValue = [v12 integerValue];
      }

      else
      {
        integerValue = 3;
      }

      v13 = LogCategory_Unspecified();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v18 = integerValue;
        _os_log_impl(&dword_1DF650000, v13, OS_LOG_TYPE_DEFAULT, "Managed lost mode type? %lu", buf, 0xCu);
      }

      goto LABEL_18;
    }
  }

  integerValue = 0;
LABEL_19:

  v14 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (unint64_t)_needsAckLostModeType
{
  v18 = *MEMORY[0x1E69E9840];
  getNeedsLocateAckLostModeFileURL = [(FMDFMIPManager *)self getNeedsLocateAckLostModeFileURL];
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [FMDFMIPManager _needsAckLostModeType];
  }

  v15 = 0;
  v4 = [MEMORY[0x1E695DF20] fm_dictionaryWithContentsOfURL:getNeedsLocateAckLostModeFileURL error:&v15];
  v5 = v15;
  v6 = v5;
  if (!v5)
  {
    v9 = LogCategory_Unspecified();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [FMDFMIPManager _needsAckLostModeType];
    }

    v10 = [v4 objectForKey:@"lostModeEnabled"];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      v12 = [v4 objectForKey:@"lostModeType"];
      integerValue = [v12 integerValue];

      v7 = LogCategory_Unspecified();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v17 = integerValue;
        _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "NeedsLocateAck lost mode type? %lu", buf, 0xCu);
      }

      goto LABEL_13;
    }

LABEL_14:
    integerValue = 0;
    goto LABEL_15;
  }

  if ([v5 fm_isFileNotFoundError])
  {
    goto LABEL_14;
  }

  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "Could not read NeedsLocateAck lost mode file %@", buf, 0xCu);
  }

  integerValue = 0;
LABEL_13:

LABEL_15:
  v13 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (id)lostModeInfo
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v47 = "[FMDFMIPManager lostModeInfo]";
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v5 = 0;
  if ([(FMDFMIPManager *)self _isRunningAsMobileUser])
  {
    getManagedLostModeFileURL = [(FMDFMIPManager *)self getManagedLostModeFileURL];
    v45 = 0;
    v7 = [MEMORY[0x1E695DF20] fm_dictionaryWithContentsOfURL:getManagedLostModeFileURL error:&v45];
    v8 = v45;
    v9 = v8;
    if (v7)
    {
      v10 = LogCategory_Unspecified();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF650000, v10, OS_LOG_TYPE_DEFAULT, "Checking if device is in managed lost mode", buf, 2u);
      }

      v11 = [v7 objectForKey:@"lostModeEnabled"];
      bOOLValue = [v11 BOOLValue];

      if (bOOLValue)
      {
        v13 = [v7 objectForKey:@"lostModeType"];
        integerValue = [v13 integerValue];

        if (integerValue)
        {
          integerValue2 = integerValue;
        }

        else
        {
          integerValue2 = 3;
        }

        goto LABEL_36;
      }
    }

    else if (v8 && ([v8 fm_isFileNotFoundError] & 1) == 0)
    {
      v16 = LogCategory_Unspecified();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v9;
        _os_log_impl(&dword_1DF650000, v16, OS_LOG_TYPE_DEFAULT, "Could not read managed lost mode file %@", buf, 0xCu);
      }
    }

    v17 = LogCategory_Unspecified();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF650000, v17, OS_LOG_TYPE_DEFAULT, "Checking if device is in fmip lost mode", buf, 2u);
    }

    [MEMORY[0x1E699BE00] synchronizeDomain:kFMDPublicNotBackedUpPrefDomain];
    v18 = [MEMORY[0x1E699BE00] dictionaryForKey:@"FMIPLostModeInfo" inDomain:kFMDPublicNotBackedUpPrefDomain];

    if (v18)
    {
      v19 = [v18 objectForKey:@"lostModeEnabled"];
      bOOLValue2 = [v19 BOOLValue];

      if (bOOLValue2)
      {
        integerValue2 = 1;
        v7 = v18;
LABEL_36:
        v34 = LogCategory_Unspecified();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DF650000, v34, OS_LOG_TYPE_DEFAULT, "Device is in lost mode", buf, 2u);
        }

        v5 = objc_alloc_init(FMDLostModeInfo);
        [(FMDLostModeInfo *)v5 setLostModeEnabled:1];
        v35 = [v7 objectForKey:@"lostModeMessage"];
        [(FMDLostModeInfo *)v5 setMessage:v35];

        v36 = [v7 objectForKey:@"lostModeOwnerNumber"];
        [(FMDLostModeInfo *)v5 setPhoneNumber:v36];

        v37 = [v7 objectForKey:@"lostModeFacetimeCapable"];
        -[FMDLostModeInfo setFacetimeCapable:](v5, "setFacetimeCapable:", [v37 BOOLValue]);

        v38 = [v7 objectForKey:@"lostModeFootnoteTextPrefKey"];
        [(FMDLostModeInfo *)v5 setFootnoteText:v38];

        v39 = [v7 objectForKey:@"disableSlideToUnlock"];
        -[FMDLostModeInfo setDisableSlideToUnlock:](v5, "setDisableSlideToUnlock:", [v39 BOOLValue]);

        [(FMDLostModeInfo *)v5 setLostModeType:integerValue2];
        goto LABEL_39;
      }
    }

    v21 = LogCategory_Unspecified();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF650000, v21, OS_LOG_TYPE_DEFAULT, "Checking if device is in client lost mode", buf, 2u);
    }

    v7 = [MEMORY[0x1E699BE00] dictionaryForKey:@"ClientLostModeInfo" inDomain:kFMDPublicNotBackedUpPrefDomain];

    if (v7)
    {
      v22 = [v7 objectForKey:@"lostModeEnabled"];
      bOOLValue3 = [v22 BOOLValue];

      if (bOOLValue3)
      {
        integerValue2 = 2;
        goto LABEL_36;
      }
    }

    v24 = LogCategory_Unspecified();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF650000, v24, OS_LOG_TYPE_DEFAULT, "Checking if device is in wipe lost mode", buf, 2u);
    }

    [MEMORY[0x1E699BE00] synchronizeDomain:kFMDPostWipePrefDomain];
    v25 = [MEMORY[0x1E699BE00] dictionaryForKey:@"FMIPWipeLostModeInfo" inDomain:kFMDPostWipePrefDomain];

    if (v25)
    {
      v26 = [v25 objectForKey:@"lostModeEnabled"];
      bOOLValue4 = [v26 BOOLValue];

      if (bOOLValue4)
      {
        integerValue2 = 4;
        v7 = v25;
        goto LABEL_36;
      }
    }

    getNeedsLocateAckLostModeFileURL = [(FMDFMIPManager *)self getNeedsLocateAckLostModeFileURL];
    v44 = 0;
    v7 = [MEMORY[0x1E695DF20] fm_dictionaryWithContentsOfURL:getNeedsLocateAckLostModeFileURL error:&v44];
    v29 = v44;

    if (v7)
    {
      v30 = LogCategory_Unspecified();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF650000, v30, OS_LOG_TYPE_DEFAULT, "Checking if device is in needsLocateAck lost mode", buf, 2u);
      }

      v31 = [v7 objectForKey:@"lostModeEnabled"];
      bOOLValue5 = [v31 BOOLValue];

      if (bOOLValue5)
      {
        v33 = [v7 objectForKey:@"lostModeType"];
        integerValue2 = [v33 integerValue];

        if (integerValue2)
        {
          goto LABEL_36;
        }

LABEL_51:
        v5 = 0;
LABEL_39:
        v40 = LogCategory_Unspecified();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          [(FMDFMIPManager *)v5 lostModeInfo];
        }

        goto LABEL_42;
      }
    }

    else if (v29 && ([v29 fm_isFileNotFoundError] & 1) == 0)
    {
      v43 = LogCategory_Unspecified();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v29;
        _os_log_impl(&dword_1DF650000, v43, OS_LOG_TYPE_DEFAULT, "Could not read needsLocateAck lost mode file %@", buf, 0xCu);
      }
    }

    goto LABEL_51;
  }

LABEL_42:
  objc_autoreleasePoolPop(v3);
  v41 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)enableLostModeWithInfo:(id)info
{
  v33 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = objc_autoreleasePoolPush();
  v6 = LogCategory_Unspecified();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [infoCopy description];
    *buf = 136315394;
    *&buf[4] = "[FMDFMIPManager enableLostModeWithInfo:]";
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, "%s with lost mode info %@", buf, 0x16u);
  }

  fmdFMIPLastOperationResult = 0;
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FMDFMIPManager enableLostModeWithInfo:]"];
  v9 = [objc_alloc(MEMORY[0x1E699BE10]) initWithDescription:v8 andTimeout:5.0];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v10 = +[FMNSXPCConnectionCache sharedCache];
  v11 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v12 = [v10 resumeConnectionWithConfiguration:v11];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __41__FMDFMIPManager_enableLostModeWithInfo___block_invoke;
  v26[3] = &unk_1E86BD238;
  v28 = buf;
  v13 = v9;
  v27 = v13;
  [v12 addFailureBlock:v26];
  remoteObjectProxy = [v12 remoteObjectProxy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __41__FMDFMIPManager_enableLostModeWithInfo___block_invoke_21;
  v22[3] = &unk_1E86BD260;
  v25 = buf;
  v15 = v13;
  v23 = v15;
  v16 = v12;
  v24 = v16;
  [remoteObjectProxy enableLostModeWithInfo:infoCopy usingCallback:v22];
  [v15 wait];
  if ([v15 timeoutOccurred])
  {
    v17 = [(FMDFMIPManager *)self newErrorForCode:4 message:@"timed out"];
  }

  else
  {
    v17 = *(*&buf[8] + 40);
  }

  v18 = v17;
  if (v17)
  {
    fmdFMIPLastOperationResult = [v17 code];
    v19 = LogCategory_Unspecified();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FMDFMIPManager enableLostModeWithInfo:];
    }
  }

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v5);

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

void __41__FMDFMIPManager_enableLostModeWithInfo___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __41__FMDFMIPManager_enableLostModeWithInfo___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  [*(a1 + 32) signal];
}

void __41__FMDFMIPManager_enableLostModeWithInfo___block_invoke_21(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) signal];
  [*(a1 + 40) invalidate];
}

- (void)disableLostMode
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[FMDFMIPManager disableLostMode]";
    _os_log_impl(&dword_1DF650000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = +[FMNSXPCConnectionCache sharedCache];
  v5 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v6 = [v4 resumeConnectionWithConfiguration:v5];

  [v6 addFailureBlock:&__block_literal_global_27];
  remoteObjectProxy = [v6 remoteObjectProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__FMDFMIPManager_disableLostMode__block_invoke_28;
  v10[3] = &unk_1E86BD2A8;
  v11 = v6;
  v8 = v6;
  [remoteObjectProxy disableLostModeUsingCallback:v10];

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
}

void __33__FMDFMIPManager_disableLostMode__block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __33__FMDFMIPManager_disableLostMode__block_invoke_cold_1();
  }
}

void __33__FMDFMIPManager_disableLostMode__block_invoke_28(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "disableLostMode completed. Error : %@", &v6, 0xCu);
  }

  [*(a1 + 32) invalidate];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)enableManagedLostModeWithInfo:(id)info completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  completionCopy = completion;
  v8 = LogCategory_Unspecified();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[FMDFMIPManager enableManagedLostModeWithInfo:completion:]";
    _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([infoCopy lostModeEnabled])
  {
    [infoCopy setDisableSlideToUnlock:1];
    [infoCopy setLostModeType:3];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __59__FMDFMIPManager_enableManagedLostModeWithInfo_completion___block_invoke;
    v22[3] = &unk_1E86BD2D0;
    v23 = completionCopy;
    [(FMDFMIPManager *)self _updateManagedLostModeWithInfo:infoCopy completion:v22];
    v9 = v23;
LABEL_9:

    goto LABEL_10;
  }

  v10 = LogCategory_Unspecified();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(FMDFMIPManager *)v10 enableManagedLostModeWithInfo:v11 completion:v12, v13, v14, v15, v16, v17];
  }

  if (completionCopy)
  {
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = kFMDErrorDomain;
    v24 = *MEMORY[0x1E696A588];
    v25 = @"You have passed in lostModeEnabled as NO. This is invalid";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v20 = [v18 initWithDomain:v19 code:0 userInfo:v9];
    (*(completionCopy + 2))(completionCopy, v20);

    goto LABEL_9;
  }

LABEL_10:

  v21 = *MEMORY[0x1E69E9840];
}

void __59__FMDFMIPManager_enableManagedLostModeWithInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__FMDFMIPManager_enableManagedLostModeWithInfo_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_INFO, "Managed lost mode info updated", v8, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.private.restrict-post.fmip.lostmode.enable", 0, 0, 1u);
}

- (void)disableManagedLostModeWithLocatedMessage:(id)message completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  completionCopy = completion;
  v8 = LogCategory_Unspecified();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[FMDFMIPManager disableManagedLostModeWithLocatedMessage:completion:]";
    _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  lostModeInfo = [(FMDFMIPManager *)self lostModeInfo];
  if ([lostModeInfo lostModeType] == 3)
  {
    [(FMDFMIPManager *)self _stopAlarm];
    if (messageCopy)
    {
      v10 = objc_alloc_init(FMDLostModeInfo);
      [(FMDLostModeInfo *)v10 setMessage:messageCopy];
      [(FMDLostModeInfo *)v10 setLostModeType:5];
      [(FMDLostModeInfo *)v10 setLostModeEnabled:1];
      [(FMDLostModeInfo *)v10 setDisableSlideToUnlock:1];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __70__FMDFMIPManager_disableManagedLostModeWithLocatedMessage_completion___block_invoke;
      v25[3] = &unk_1E86BD2F8;
      v28 = completionCopy;
      v26 = lostModeInfo;
      selfCopy = self;
      [(FMDFMIPManager *)self _updateNeedsLocateAckLostModeWithInfo:v10 completion:v25];
    }

    else
    {
      [lostModeInfo setLostModeEnabled:0];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __70__FMDFMIPManager_disableManagedLostModeWithLocatedMessage_completion___block_invoke_38;
      v23[3] = &unk_1E86BD2D0;
      v24 = completionCopy;
      [(FMDFMIPManager *)self _updateManagedLostModeWithInfo:lostModeInfo completion:v23];
      v10 = v24;
    }

    goto LABEL_11;
  }

  v11 = LogCategory_Unspecified();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(FMDFMIPManager *)v11 disableManagedLostModeWithLocatedMessage:v12 completion:v13, v14, v15, v16, v17, v18];
  }

  if (completionCopy)
  {
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = kFMDErrorDomain;
    v29 = *MEMORY[0x1E696A588];
    v30 = @"Device is not in managed lost mode. Cannot disable it.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
    (*(completionCopy + 2))(completionCopy, v21);

LABEL_11:
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __70__FMDFMIPManager_disableManagedLostModeWithLocatedMessage_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    [*(a1 + 32) setLostModeEnabled:0];
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__FMDFMIPManager_disableManagedLostModeWithLocatedMessage_completion___block_invoke_2;
    v7[3] = &unk_1E86BD2D0;
    v8 = *(a1 + 48);
    [v5 _updateManagedLostModeWithInfo:v6 completion:v7];
  }
}

void __70__FMDFMIPManager_disableManagedLostModeWithLocatedMessage_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__FMDFMIPManager_disableManagedLostModeWithLocatedMessage_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_INFO, "Managed lost mode info updated to disabled", v8, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.private.restrict-post.fmip.lostmode.enable", 0, 0, 1u);
}

void __70__FMDFMIPManager_disableManagedLostModeWithLocatedMessage_completion___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__FMDFMIPManager_disableManagedLostModeWithLocatedMessage_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_INFO, "Managed lost mode info updated to disabled", v8, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.private.restrict-post.fmip.lostmode.enable", 0, 0, 1u);
}

- (void)userDidAckManagedLostModeLocateWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[FMDFMIPManager userDidAckManagedLostModeLocateWithCompletion:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  lostModeInfo = [(FMDFMIPManager *)self lostModeInfo];
  if ([lostModeInfo lostModeType] == 5)
  {
    [(FMDFMIPManager *)self _stopAlarm];
    [lostModeInfo setLostModeEnabled:0];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __64__FMDFMIPManager_userDidAckManagedLostModeLocateWithCompletion___block_invoke;
    v20[3] = &unk_1E86BD2D0;
    v21 = completionCopy;
    [(FMDFMIPManager *)self _updateNeedsLocateAckLostModeWithInfo:lostModeInfo completion:v20];
    v7 = v21;
LABEL_9:

    goto LABEL_10;
  }

  v8 = LogCategory_Unspecified();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(FMDFMIPManager *)v8 userDidAckManagedLostModeLocateWithCompletion:v9, v10, v11, v12, v13, v14, v15];
  }

  if (completionCopy)
  {
    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = kFMDErrorDomain;
    v22 = *MEMORY[0x1E696A588];
    v23 = @"Device is not waiting for locate ack. Invalid state.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v18 = [v16 initWithDomain:v17 code:2 userInfo:v7];
    (*(completionCopy + 2))(completionCopy, v18);

    goto LABEL_9;
  }

LABEL_10:

  v19 = *MEMORY[0x1E69E9840];
}

void __64__FMDFMIPManager_userDidAckManagedLostModeLocateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__FMDFMIPManager_userDidAckManagedLostModeLocateWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_INFO, "NeedsLocateAck lost mode info updated to disabled", v8, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.private.restrict-post.fmip.lostmode.enable", 0, 0, 1u);
}

- (void)playSoundWithOptions:(id)options completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  v8 = LogCategory_Unspecified();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[FMDFMIPManager playSoundWithOptions:completion:]";
    _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = +[FMNSXPCConnectionCache sharedCache];
  v10 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v11 = [v9 resumeConnectionWithConfiguration:v10];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__FMDFMIPManager_playSoundWithOptions_completion___block_invoke;
  v20[3] = &unk_1E86BD0E0;
  v12 = completionCopy;
  v21 = v12;
  [v11 addFailureBlock:v20];
  remoteObjectProxy = [v11 remoteObjectProxy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50__FMDFMIPManager_playSoundWithOptions_completion___block_invoke_42;
  v17[3] = &unk_1E86BD320;
  v14 = v12;
  v18 = v11;
  v19 = v14;
  v15 = v11;
  [remoteObjectProxy playSoundWithOptions:optionsCopy completion:v17];

  objc_autoreleasePoolPop(v7);
  v16 = *MEMORY[0x1E69E9840];
}

void __50__FMDFMIPManager_playSoundWithOptions_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__FMDFMIPManager_playSoundWithOptions_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

uint64_t __50__FMDFMIPManager_playSoundWithOptions_completion___block_invoke_42(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

- (void)deviceActivationDidSucceed
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[FMDFMIPManager deviceActivationDidSucceed]";
    _os_log_impl(&dword_1DF650000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = +[FMNSXPCConnectionCache sharedCache];
  v5 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v6 = [v4 resumeConnectionWithConfiguration:v5];

  [v6 addFailureBlock:&__block_literal_global_44];
  remoteObjectProxy = [v6 remoteObjectProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__FMDFMIPManager_deviceActivationDidSucceed__block_invoke_45;
  v10[3] = &unk_1E86BD2A8;
  v11 = v6;
  v8 = v6;
  [remoteObjectProxy deviceActivationDidSucceedUsingCallback:v10];

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
}

void __44__FMDFMIPManager_deviceActivationDidSucceed__block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __44__FMDFMIPManager_deviceActivationDidSucceed__block_invoke_cold_1();
  }
}

void __44__FMDFMIPManager_deviceActivationDidSucceed__block_invoke_45(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "deviceActivationDidSucceed completed. Error : %@", &v6, 0xCu);
  }

  [*(a1 + 32) invalidate];
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)lockdownShouldDisableDeviceRestore
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[FMDFMIPManager lockdownShouldDisableDeviceRestore]";
    _os_log_impl(&dword_1DF650000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v4 = +[FMDFMIPSharedStateManager sharedInstance];
  fmipActive = [v4 fmipActive];

  v6 = LogCategory_Unspecified();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (fmipActive)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    LOWORD(v13) = 0;
    v8 = "FMiP is active. Returning YES to block restore.";
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    LOWORD(v13) = 0;
    v8 = "FMiP inactive. Returning NO to allow restore.";
  }

  _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, v8, &v13, 2u);
LABEL_9:

  v9 = LogCategory_Unspecified();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (fmipActive)
    {
      v10 = @"YES";
    }

    v13 = 136315394;
    v14 = "[FMDFMIPManager lockdownShouldDisableDeviceRestore]";
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_1DF650000, v9, OS_LOG_TYPE_DEFAULT, "%s : %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x1E69E9840];
  return fmipActive;
}

- (BOOL)lockdownShouldDisableDevicePairing
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[FMDFMIPManager lockdownShouldDisableDevicePairing]";
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  _checkLostModeInSharedContainer = [(FMDFMIPManager *)self _checkLostModeInSharedContainer];
  v6 = LogCategory_Unspecified();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (_checkLostModeInSharedContainer)
    {
      v7 = @"YES";
    }

    v10 = 136315394;
    v11 = "[FMDFMIPManager lockdownShouldDisableDevicePairing]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, "%s : %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x1E69E9840];
  return _checkLostModeInSharedContainer;
}

- (BOOL)_checkLostModeInSharedContainer
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[FMDFMIPSharedStateManager sharedInstance];
  lostModeType = [v2 lostModeType];

  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = lostModeType;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "FMiP shared info has lost mode type - %lu", &v7, 0xCu);
  }

  result = (lostModeType - 1) < 3;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)fmipStateWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FMDFMIPManager fmipStateWithCompletion:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__FMDFMIPManager_fmipStateWithCompletion___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v9 = completionCopy;
  v18 = v9;
  [v8 addFailureBlock:v17];
  remoteObjectProxy = [v8 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__FMDFMIPManager_fmipStateWithCompletion___block_invoke_47;
  v14[3] = &unk_1E86BD348;
  v11 = v9;
  v15 = v8;
  v16 = v11;
  v12 = v8;
  [remoteObjectProxy getFMIPStateUsingCallback:v14];

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x1E69E9840];
}

void __42__FMDFMIPManager_fmipStateWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42__FMDFMIPManager_fmipStateWithCompletion___block_invoke_cold_1();
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    if (a2 == 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }

    (*(v6 + 16))(v6, v7, v5);
  }
}

void __42__FMDFMIPManager_fmipStateWithCompletion___block_invoke_47(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LogCategory_Unspecified();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __42__FMDFMIPManager_fmipStateWithCompletion___block_invoke_47_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a2;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "FMIP state : %ld", &v10, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  [*(a1 + 32) invalidate];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)fmipAccountWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FMDFMIPManager fmipAccountWithCompletion:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  objc_initWeak(buf, completionCopy);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __44__FMDFMIPManager_fmipAccountWithCompletion___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v9 = completionCopy;
  v18 = v9;
  [v8 addFailureBlock:v17];
  remoteObjectProxy = [v8 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__FMDFMIPManager_fmipAccountWithCompletion___block_invoke_49;
  v14[3] = &unk_1E86BD370;
  v11 = v9;
  v16 = v11;
  v12 = v8;
  v15 = v12;
  [remoteObjectProxy getFmipAccountUsingCallback:v14];

  objc_destroyWeak(buf);
  objc_autoreleasePoolPop(v4);

  v13 = *MEMORY[0x1E69E9840];
}

void __44__FMDFMIPManager_fmipAccountWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __44__FMDFMIPManager_fmipAccountWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = MEMORY[0x1E12DA360](*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, 0, 0, v3);
  }
}

void __44__FMDFMIPManager_fmipAccountWithCompletion___block_invoke_49(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = LogCategory_Unspecified();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __44__FMDFMIPManager_fmipAccountWithCompletion___block_invoke_49_cold_1();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1DF650000, v11, OS_LOG_TYPE_DEFAULT, "FMIP account name : %@, dsid: %@", &v14, 0x16u);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, v9);
  }

  [*(a1 + 32) invalidate];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)fmipAccount
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[FMDFMIPManager fmipAccount]";
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = 0;
  v29 = 0;
  v30[0] = &v29;
  v30[1] = 0x3032000000;
  v30[2] = __Block_byref_object_copy__0;
  v30[3] = __Block_byref_object_dispose__0;
  v31 = 0;
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FMDFMIPManager fmipAccount]"];
  v6 = [objc_alloc(MEMORY[0x1E699BE10]) initWithDescription:v5 andTimeout:5.0];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __29__FMDFMIPManager_fmipAccount__block_invoke;
  v18 = &unk_1E86BD398;
  v20 = &v23;
  p_buf = &buf;
  v22 = &v29;
  v7 = v6;
  v19 = v7;
  [(FMDFMIPManager *)self fmipAccountWithCompletion:&v15];
  [v7 wait];
  if ([v7 timeoutOccurred])
  {
    v8 = [(FMDFMIPManager *)self newErrorForCode:4 message:@"timed out"];
  }

  else
  {
    v8 = v24[5];
  }

  v9 = v8;
  if (v8)
  {
    fmdFMIPLastOperationResult = [v8 code];
    v10 = LogCategory_Unspecified();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FMDFMIPManager fmipAccount];
    }
  }

  else
  {
    v10 = LogCategory_Unspecified();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(FMDFMIPManager *)&buf + 8 fmipAccount];
    }
  }

  if (*(*(&buf + 1) + 40) && *(v30[0] + 40))
  {
    v11 = objc_alloc(MEMORY[0x1E695DF20]);
    v12 = [v11 initWithObjectsAndKeys:{*(*(&buf + 1) + 40), @"username", *(v30[0] + 40), @"personID", 0, v15, v16, v17, v18}];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&buf, 8);
  objc_autoreleasePoolPop(v3);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void __29__FMDFMIPManager_fmipAccount__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  v15 = a4;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v11 = v7;

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  [*(a1 + 32) signal];
}

- (void)didChangeFMIPAccountInfo:(id)info
{
  v16 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[FMDFMIPManager didChangeFMIPAccountInfo:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  [v8 addFailureBlock:&__block_literal_global_52];
  remoteObjectProxy = [v8 remoteObjectProxy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__FMDFMIPManager_didChangeFMIPAccountInfo___block_invoke_53;
  v12[3] = &unk_1E86BD2A8;
  v13 = v8;
  v10 = v8;
  [remoteObjectProxy didChangeFMIPAccountInfo:infoCopy usingCallback:v12];

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x1E69E9840];
}

void __43__FMDFMIPManager_didChangeFMIPAccountInfo___block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __43__FMDFMIPManager_didChangeFMIPAccountInfo___block_invoke_cold_1();
  }
}

void __43__FMDFMIPManager_didChangeFMIPAccountInfo___block_invoke_53(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "didChangeFMIPAccountInfo completed. Error : %@", &v6, 0xCu);
  }

  [*(a1 + 32) invalidate];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)enableFMIPInContext:(unint64_t)context
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = LogCategory_Unspecified();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[FMDFMIPManager enableFMIPInContext:]";
    *&buf[12] = 2048;
    *&buf[14] = context;
    _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, "%s in context %lu", buf, 0x16u);
  }

  fmdFMIPLastOperationResult = 0;
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FMDFMIPManager enableFMIPInContext:]"];
  v8 = [objc_alloc(MEMORY[0x1E699BE10]) initWithDescription:v7 andTimeout:5.0];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v9 = +[FMNSXPCConnectionCache sharedCache];
  v10 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v11 = [v9 resumeConnectionWithConfiguration:v10];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __38__FMDFMIPManager_enableFMIPInContext___block_invoke;
  v25[3] = &unk_1E86BD238;
  v27 = buf;
  v12 = v8;
  v26 = v12;
  [v11 addFailureBlock:v25];
  remoteObjectProxy = [v11 remoteObjectProxy];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __38__FMDFMIPManager_enableFMIPInContext___block_invoke_54;
  v21[3] = &unk_1E86BD260;
  v24 = buf;
  v14 = v12;
  v22 = v14;
  v15 = v11;
  v23 = v15;
  [remoteObjectProxy enableFMIPInContext:context usingCallback:v21];
  [v14 wait];
  if ([v14 timeoutOccurred])
  {
    v16 = [(FMDFMIPManager *)self newErrorForCode:4 message:@"timed out"];
  }

  else
  {
    v16 = *(*&buf[8] + 40);
  }

  v17 = v16;
  if (v16)
  {
    fmdFMIPLastOperationResult = [v16 code];
    v18 = LogCategory_Unspecified();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FMDFMIPManager enableFMIPInContext:];
    }
  }

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v5);
  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

void __38__FMDFMIPManager_enableFMIPInContext___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __38__FMDFMIPManager_enableFMIPInContext___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  [*(a1 + 32) signal];
}

void __38__FMDFMIPManager_enableFMIPInContext___block_invoke_54(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) signal];
  [*(a1 + 40) invalidate];
}

- (id)disableFMIPUsingToken:(id)token inContext:(unint64_t)context
{
  v29 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "non-nil";
    if (!tokenCopy)
    {
      v8 = "nil";
    }

    *buf = 136315394;
    *&buf[4] = "[FMDFMIPManager disableFMIPUsingToken:inContext:]";
    *&buf[12] = 2080;
    *&buf[14] = v8;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "%s with %s token", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v9 = [objc_alloc(MEMORY[0x1E699BE10]) initWithDescription:@"disableFMIPUsingToken:inContext:" andTimeout:20.0];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __50__FMDFMIPManager_disableFMIPUsingToken_inContext___block_invoke;
  v22 = &unk_1E86BD3C0;
  v24 = buf;
  v10 = v9;
  v23 = v10;
  [(FMDFMIPManager *)self _disableFMIPUsingToken:tokenCopy inContext:context completion:&v19];
  [v10 wait];
  if ([v10 timeoutOccurred])
  {
    v11 = [(FMDFMIPManager *)self newErrorForCode:4 message:@"timed out"];
    v12 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v11;
  }

  else
  {
    v13 = *&buf[8];
    v14 = *(*&buf[8] + 40);
    v12 = *(v13 + 40);
    *(v13 + 40) = v14;
  }

  v15 = *(*&buf[8] + 40);
  if (v15)
  {
    fmdFMIPLastOperationResult = 12;
  }

  v16 = v15;

  _Block_object_dispose(buf, 8);
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __50__FMDFMIPManager_disableFMIPUsingToken_inContext___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) signal];
}

- (void)disableFMIPUsingToken:(id)token inContext:(unint64_t)context completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  tokenCopy = token;
  v10 = LogCategory_Unspecified();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "non-nil";
    if (!tokenCopy)
    {
      v11 = "nil";
    }

    v13 = 136315394;
    v14 = "[FMDFMIPManager disableFMIPUsingToken:inContext:completion:]";
    v15 = 2080;
    v16 = v11;
    _os_log_impl(&dword_1DF650000, v10, OS_LOG_TYPE_DEFAULT, "%s with %s token", &v13, 0x16u);
  }

  [(FMDFMIPManager *)self _disableFMIPUsingToken:tokenCopy inContext:context completion:completionCopy];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)disableFMIPUsingToken:(id)token forPairedDeviceWithUDID:(id)d withCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  dCopy = d;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  v11 = LogCategory_Unspecified();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "non-nil";
    v28 = "[FMDFMIPManager disableFMIPUsingToken:forPairedDeviceWithUDID:withCompletion:]";
    *buf = 136315650;
    if (!tokenCopy)
    {
      v12 = "nil";
    }

    v29 = 2112;
    v30 = dCopy;
    v31 = 2080;
    v32 = v12;
    _os_log_impl(&dword_1DF650000, v11, OS_LOG_TYPE_DEFAULT, "%s for paired device %@ with %s token", buf, 0x20u);
  }

  fmdFMIPLastOperationResult = 0;
  v13 = LogCategory_Unspecified();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v28) = tokenCopy != 0;
    _os_log_impl(&dword_1DF650000, v13, OS_LOG_TYPE_DEFAULT, "disableFMIPUsingToken: token present: %i", buf, 8u);
  }

  v14 = +[FMNSXPCConnectionCache sharedCache];
  v15 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v16 = [v14 resumeConnectionWithConfiguration:v15];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __79__FMDFMIPManager_disableFMIPUsingToken_forPairedDeviceWithUDID_withCompletion___block_invoke;
  v25[3] = &unk_1E86BD0E0;
  v17 = completionCopy;
  v26 = v17;
  [v16 addFailureBlock:v25];
  remoteObjectProxy = [v16 remoteObjectProxy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __79__FMDFMIPManager_disableFMIPUsingToken_forPairedDeviceWithUDID_withCompletion___block_invoke_60;
  v22[3] = &unk_1E86BD320;
  v19 = v17;
  v23 = v16;
  v24 = v19;
  v20 = v16;
  [remoteObjectProxy disableFMIPUsingToken:tokenCopy forPairedDeviceWithUDID:dCopy usingCallback:v22];

  objc_autoreleasePoolPop(v10);
  v21 = *MEMORY[0x1E69E9840];
}

void __79__FMDFMIPManager_disableFMIPUsingToken_forPairedDeviceWithUDID_withCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __79__FMDFMIPManager_disableFMIPUsingToken_forPairedDeviceWithUDID_withCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __79__FMDFMIPManager_disableFMIPUsingToken_forPairedDeviceWithUDID_withCompletion___block_invoke_60(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__FMDFMIPManager_disableFMIPUsingToken_forPairedDeviceWithUDID_withCompletion___block_invoke_60_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[FMDFMIPManager disableFMIPUsingToken:forPairedDeviceWithUDID:withCompletion:]_block_invoke";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s completed", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)disableFMIPForAccount:(id)account pairedDeviceWithUDID:(id)d withCompletion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dCopy = d;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  v11 = LogCategory_Unspecified();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    oneTimeRemoveAuthToken = [accountCopy oneTimeRemoveAuthToken];
    v13 = "non-nil";
    v29 = "[FMDFMIPManager disableFMIPForAccount:pairedDeviceWithUDID:withCompletion:]";
    *buf = 136315650;
    if (!oneTimeRemoveAuthToken)
    {
      v13 = "nil";
    }

    v30 = 2112;
    v31 = dCopy;
    v32 = 2080;
    v33 = v13;
    _os_log_impl(&dword_1DF650000, v11, OS_LOG_TYPE_DEFAULT, "%s for paired device %@ with %s token", buf, 0x20u);
  }

  fmdFMIPLastOperationResult = 0;
  v14 = LogCategory_Unspecified();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v29) = accountCopy != 0;
    _os_log_impl(&dword_1DF650000, v14, OS_LOG_TYPE_DEFAULT, "disableFMIPForAccount: Account present: %i", buf, 8u);
  }

  v15 = +[FMNSXPCConnectionCache sharedCache];
  v16 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v17 = [v15 resumeConnectionWithConfiguration:v16];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __76__FMDFMIPManager_disableFMIPForAccount_pairedDeviceWithUDID_withCompletion___block_invoke;
  v26[3] = &unk_1E86BD0E0;
  v18 = completionCopy;
  v27 = v18;
  [v17 addFailureBlock:v26];
  remoteObjectProxy = [v17 remoteObjectProxy];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __76__FMDFMIPManager_disableFMIPForAccount_pairedDeviceWithUDID_withCompletion___block_invoke_61;
  v23[3] = &unk_1E86BD320;
  v20 = v18;
  v24 = v17;
  v25 = v20;
  v21 = v17;
  [remoteObjectProxy disableFMIPForAccount:accountCopy pairedDeviceWithUDID:dCopy usingCallback:v23];

  objc_autoreleasePoolPop(v10);
  v22 = *MEMORY[0x1E69E9840];
}

void __76__FMDFMIPManager_disableFMIPForAccount_pairedDeviceWithUDID_withCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __76__FMDFMIPManager_disableFMIPForAccount_pairedDeviceWithUDID_withCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __76__FMDFMIPManager_disableFMIPForAccount_pairedDeviceWithUDID_withCompletion___block_invoke_61(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __76__FMDFMIPManager_disableFMIPForAccount_pairedDeviceWithUDID_withCompletion___block_invoke_61_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[FMDFMIPManager disableFMIPForAccount:pairedDeviceWithUDID:withCompletion:]_block_invoke";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s completed", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)markAsMissingSupportedForPairedDeviceWithUDID:(id)d withCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  v8 = LogCategory_Unspecified();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[FMDFMIPManager markAsMissingSupportedForPairedDeviceWithUDID:withCompletion:]";
    v24 = 2112;
    v25 = dCopy;
    _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "%s for paired device %@", buf, 0x16u);
  }

  fmdFMIPLastOperationResult = 0;
  v9 = +[FMNSXPCConnectionCache sharedCache];
  v10 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v11 = [v9 resumeConnectionWithConfiguration:v10];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__FMDFMIPManager_markAsMissingSupportedForPairedDeviceWithUDID_withCompletion___block_invoke;
  v20[3] = &unk_1E86BD0E0;
  v12 = completionCopy;
  v21 = v12;
  [v11 addFailureBlock:v20];
  remoteObjectProxy = [v11 remoteObjectProxy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__FMDFMIPManager_markAsMissingSupportedForPairedDeviceWithUDID_withCompletion___block_invoke_62;
  v17[3] = &unk_1E86BD3E8;
  v14 = v12;
  v18 = v11;
  v19 = v14;
  v15 = v11;
  [remoteObjectProxy markAsMissingSupportedForPairedDeviceWithUDID:dCopy usingCallback:v17];

  objc_autoreleasePoolPop(v7);
  v16 = *MEMORY[0x1E69E9840];
}

void __79__FMDFMIPManager_markAsMissingSupportedForPairedDeviceWithUDID_withCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __79__FMDFMIPManager_markAsMissingSupportedForPairedDeviceWithUDID_withCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

void __79__FMDFMIPManager_markAsMissingSupportedForPairedDeviceWithUDID_withCompletion___block_invoke_62(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LogCategory_Unspecified();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __79__FMDFMIPManager_markAsMissingSupportedForPairedDeviceWithUDID_withCompletion___block_invoke_62_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[FMDFMIPManager markAsMissingSupportedForPairedDeviceWithUDID:withCompletion:]_block_invoke";
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "%s completed", &v10, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  [*(a1 + 32) invalidate];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)markPairedDeviceWithUDID:(id)d asMissingUsingToken:(id)token withCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  tokenCopy = token;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  v11 = LogCategory_Unspecified();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "non-nil";
    v28 = "[FMDFMIPManager markPairedDeviceWithUDID:asMissingUsingToken:withCompletion:]";
    *buf = 136315650;
    if (!tokenCopy)
    {
      v12 = "nil";
    }

    v29 = 2112;
    v30 = dCopy;
    v31 = 2080;
    v32 = v12;
    _os_log_impl(&dword_1DF650000, v11, OS_LOG_TYPE_DEFAULT, "%s for paired device %@ with %s token", buf, 0x20u);
  }

  fmdFMIPLastOperationResult = 0;
  v13 = LogCategory_Unspecified();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v28) = tokenCopy != 0;
    _os_log_impl(&dword_1DF650000, v13, OS_LOG_TYPE_DEFAULT, "markPairedDeviceWithUDID: token present: %i", buf, 8u);
  }

  v14 = +[FMNSXPCConnectionCache sharedCache];
  v15 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v16 = [v14 resumeConnectionWithConfiguration:v15];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __78__FMDFMIPManager_markPairedDeviceWithUDID_asMissingUsingToken_withCompletion___block_invoke;
  v25[3] = &unk_1E86BD0E0;
  v17 = completionCopy;
  v26 = v17;
  [v16 addFailureBlock:v25];
  remoteObjectProxy = [v16 remoteObjectProxy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __78__FMDFMIPManager_markPairedDeviceWithUDID_asMissingUsingToken_withCompletion___block_invoke_64;
  v22[3] = &unk_1E86BD320;
  v19 = v17;
  v23 = v16;
  v24 = v19;
  v20 = v16;
  [remoteObjectProxy markPairedDeviceWithUDID:dCopy asMissingUsingToken:tokenCopy callback:v22];

  objc_autoreleasePoolPop(v10);
  v21 = *MEMORY[0x1E69E9840];
}

void __78__FMDFMIPManager_markPairedDeviceWithUDID_asMissingUsingToken_withCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __78__FMDFMIPManager_markPairedDeviceWithUDID_asMissingUsingToken_withCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __78__FMDFMIPManager_markPairedDeviceWithUDID_asMissingUsingToken_withCompletion___block_invoke_64(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__FMDFMIPManager_markPairedDeviceWithUDID_asMissingUsingToken_withCompletion___block_invoke_64_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[FMDFMIPManager markPairedDeviceWithUDID:asMissingUsingToken:withCompletion:]_block_invoke";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s completed", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)isActivationLockAllowedWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FMDFMIPManager isActivationLockAllowedWithCompletion:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__FMDFMIPManager_isActivationLockAllowedWithCompletion___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v9 = completionCopy;
  v18 = v9;
  [v8 addFailureBlock:v17];
  remoteObjectProxy = [v8 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__FMDFMIPManager_isActivationLockAllowedWithCompletion___block_invoke_65;
  v14[3] = &unk_1E86BD3E8;
  v11 = v9;
  v15 = v8;
  v16 = v11;
  v12 = v8;
  [remoteObjectProxy isActivationLockAllowedUsingCallback:v14];

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x1E69E9840];
}

void __56__FMDFMIPManager_isActivationLockAllowedWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__FMDFMIPManager_isActivationLockAllowedWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

void __56__FMDFMIPManager_isActivationLockAllowedWithCompletion___block_invoke_65(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LogCategory_Unspecified();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __56__FMDFMIPManager_isActivationLockAllowedWithCompletion___block_invoke_65_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "ActivationLockAllowed : %d", v10, 8u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  [*(a1 + 32) invalidate];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)isActivationLockEnabledWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FMDFMIPManager isActivationLockEnabledWithCompletion:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__FMDFMIPManager_isActivationLockEnabledWithCompletion___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v9 = completionCopy;
  v18 = v9;
  [v8 addFailureBlock:v17];
  remoteObjectProxy = [v8 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__FMDFMIPManager_isActivationLockEnabledWithCompletion___block_invoke_66;
  v14[3] = &unk_1E86BD3E8;
  v11 = v9;
  v15 = v8;
  v16 = v11;
  v12 = v8;
  [remoteObjectProxy isActivationLockEnabledUsingCallback:v14];

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x1E69E9840];
}

void __56__FMDFMIPManager_isActivationLockEnabledWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__FMDFMIPManager_isActivationLockEnabledWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

void __56__FMDFMIPManager_isActivationLockEnabledWithCompletion___block_invoke_66(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LogCategory_Unspecified();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __56__FMDFMIPManager_isActivationLockEnabledWithCompletion___block_invoke_66_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "ActivationLockEnabled : %d", v10, 8u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  [*(a1 + 32) invalidate];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)isActivationLockedWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FMDFMIPManager isActivationLockedWithCompletion:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__FMDFMIPManager_isActivationLockedWithCompletion___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v9 = completionCopy;
  v18 = v9;
  [v8 addFailureBlock:v17];
  remoteObjectProxy = [v8 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__FMDFMIPManager_isActivationLockedWithCompletion___block_invoke_67;
  v14[3] = &unk_1E86BD3E8;
  v11 = v9;
  v15 = v8;
  v16 = v11;
  v12 = v8;
  [remoteObjectProxy isActivationLockedUsingCallback:v14];

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x1E69E9840];
}

void __51__FMDFMIPManager_isActivationLockedWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __51__FMDFMIPManager_isActivationLockedWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

void __51__FMDFMIPManager_isActivationLockedWithCompletion___block_invoke_67(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LogCategory_Unspecified();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __51__FMDFMIPManager_isActivationLockedWithCompletion___block_invoke_67_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "ActivationLocked : %d", v10, 8u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  [*(a1 + 32) invalidate];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)enableActivationLockWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FMDFMIPManager enableActivationLockWithCompletion:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__FMDFMIPManager_enableActivationLockWithCompletion___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v9 = completionCopy;
  v18 = v9;
  [v8 addFailureBlock:v17];
  remoteObjectProxy = [v8 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__FMDFMIPManager_enableActivationLockWithCompletion___block_invoke_68;
  v14[3] = &unk_1E86BD320;
  v11 = v9;
  v15 = v8;
  v16 = v11;
  v12 = v8;
  [remoteObjectProxy enableActivationLockUsingCallback:v14];

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x1E69E9840];
}

void __53__FMDFMIPManager_enableActivationLockWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __53__FMDFMIPManager_enableActivationLockWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __53__FMDFMIPManager_enableActivationLockWithCompletion___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = LogCategory_Unspecified();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__FMDFMIPManager_enableActivationLockWithCompletion___block_invoke_68_cold_1();
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  [*(a1 + 32) invalidate];
}

- (BOOL)needsLostModeExitAuth
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[FMDFMIPManager needsLostModeExitAuth]";
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  if ([(FMDFMIPManager *)self _isRunningAsMobileUser])
  {
    [MEMORY[0x1E699BE00] synchronizeDomain:kFMDNotBackedUpPrefDomain];
    v5 = [MEMORY[0x1E699BE00] BOOLForKey:@"needsLostModeExitAuth" inDomain:kFMDNotBackedUpPrefDomain];
    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      LODWORD(v10) = v5;
      _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, "needsLostModeExitAuth = %d", &v9, 8u);
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)didReceiveLostModeExitAuthToken:(id)token
{
  v20 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "non-nil";
    if (!tokenCopy)
    {
      v6 = "nil";
    }

    *buf = 136315394;
    v17 = "[FMDFMIPManager didReceiveLostModeExitAuthToken:]";
    v18 = 2080;
    v19 = v6;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s with %s token", buf, 0x16u);
  }

  fmdFMIPLastOperationResult = 0;
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v17) = tokenCopy != 0;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "didReceiveLostModeExitAuthToken: token present: %i", buf, 8u);
  }

  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  [v10 addFailureBlock:&__block_literal_global_70];
  remoteObjectProxy = [v10 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__FMDFMIPManager_didReceiveLostModeExitAuthToken___block_invoke_71;
  v14[3] = &unk_1E86BD2A8;
  v15 = v10;
  v12 = v10;
  [remoteObjectProxy didReceiveLostModeExitAuthToken:tokenCopy usingCallback:v14];

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x1E69E9840];
}

void __50__FMDFMIPManager_didReceiveLostModeExitAuthToken___block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __50__FMDFMIPManager_didReceiveLostModeExitAuthToken___block_invoke_cold_1();
  }
}

void __50__FMDFMIPManager_didReceiveLostModeExitAuthToken___block_invoke_71(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "didReceiveLostModeExitAuthToken completed. Error : %@", &v6, 0xCu);
  }

  [*(a1 + 32) invalidate];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initiateLostModeExitAuthWithCompletion:(id)completion
{
  v10 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  v6 = LogCategory_Unspecified();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[FMDFMIPManager initiateLostModeExitAuthWithCompletion:]";
    _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  [(FMDFMIPManager *)self _initiateLostModeExitAuthForIDSDeviceID:0 withCompletion:completionCopy];
  objc_autoreleasePoolPop(v5);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)initiateLostModeExitAuthForIDSDeviceID:(id)d withCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  v9 = LogCategory_Unspecified();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[FMDFMIPManager initiateLostModeExitAuthForIDSDeviceID:withCompletion:]";
    _os_log_impl(&dword_1DF650000, v9, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  [(FMDFMIPManager *)self _initiateLostModeExitAuthForIDSDeviceID:dCopy withCompletion:completionCopy];
  objc_autoreleasePoolPop(v8);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)lowBatteryLocateEnabledWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FMDFMIPManager lowBatteryLocateEnabledWithCompletion:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__FMDFMIPManager_lowBatteryLocateEnabledWithCompletion___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v9 = completionCopy;
  v18 = v9;
  [v8 addFailureBlock:v17];
  remoteObjectProxy = [v8 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__FMDFMIPManager_lowBatteryLocateEnabledWithCompletion___block_invoke_72;
  v14[3] = &unk_1E86BD3E8;
  v11 = v9;
  v15 = v8;
  v16 = v11;
  v12 = v8;
  [remoteObjectProxy lowBatteryLocateEnabledUsingCallback:v14];

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x1E69E9840];
}

void __56__FMDFMIPManager_lowBatteryLocateEnabledWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__FMDFMIPManager_lowBatteryLocateEnabledWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

void __56__FMDFMIPManager_lowBatteryLocateEnabledWithCompletion___block_invoke_72(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LogCategory_Unspecified();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    if (a2)
    {
      v7 = "YES";
    }

    v10 = 136315394;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, "lowBatteryLocateEnabled : %s, Error : %@", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  [*(a1 + 32) invalidate];

  v9 = *MEMORY[0x1E69E9840];
}

void __60__FMDFMIPManager_setLowBatteryLocateEnabled_withCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __60__FMDFMIPManager_setLowBatteryLocateEnabled_withCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __60__FMDFMIPManager_setLowBatteryLocateEnabled_withCompletion___block_invoke_75(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "setLowBatteryLocateEnabled completed. Error : %@", &v7, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  [*(a1 + 32) invalidate];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)userNotifiedOfActivationLockForAllPairedDevices
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[FMDFMIPManager userNotifiedOfActivationLockForAllPairedDevices]";
    _os_log_impl(&dword_1DF650000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  objc_autoreleasePoolPop(v2);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)userNotifiedOfActivationLockForPairedDevices:(id)devices
{
  v11 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[FMDFMIPManager userNotifiedOfActivationLockForPairedDevices:]";
    v9 = 2112;
    v10 = devicesCopy;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s for paired devices %@", &v7, 0x16u);
  }

  fmdFMIPLastOperationResult = 0;
  objc_autoreleasePoolPop(v4);

  v6 = *MEMORY[0x1E69E9840];
}

- (id)pathsToPreserveAcrossWipe
{
  v7[1] = *MEMORY[0x1E69E9840];
  _postWipePrefPath = [(FMDFMIPManager *)self _postWipePrefPath];
  v3 = _postWipePrefPath;
  if (_postWipePrefPath)
  {
    v7[0] = _postWipePrefPath;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)signatureHeadersWithData:(id)data completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  v8 = LogCategory_Unspecified();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[FMDFMIPManager signatureHeadersWithData:completion:]";
    _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v9 = +[FMNSXPCConnectionCache sharedCache];
  v10 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v11 = [v9 resumeConnectionWithConfiguration:v10];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__FMDFMIPManager_signatureHeadersWithData_completion___block_invoke;
  v20[3] = &unk_1E86BD0E0;
  v12 = completionCopy;
  v21 = v12;
  [v11 addFailureBlock:v20];
  remoteObjectProxy = [v11 remoteObjectProxy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__FMDFMIPManager_signatureHeadersWithData_completion___block_invoke_77;
  v17[3] = &unk_1E86BD410;
  v14 = v12;
  v18 = v11;
  v19 = v14;
  v15 = v11;
  [remoteObjectProxy signatureHeadersWithData:dataCopy completion:v17];

  objc_autoreleasePoolPop(v7);
  v16 = *MEMORY[0x1E69E9840];
}

void __54__FMDFMIPManager_signatureHeadersWithData_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __54__FMDFMIPManager_signatureHeadersWithData_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

void __54__FMDFMIPManager_signatureHeadersWithData_completion___block_invoke_77(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = LogCategory_Unspecified();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__FMDFMIPManager_signatureHeadersWithData_completion___block_invoke_77_cold_1();
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  [*(a1 + 32) invalidate];
}

- (void)startPlayingSoundForAccessory:(id)accessory duration:(double)duration rampUpDuration:(double)upDuration channels:(id)channels completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  completionCopy = completion;
  channelsCopy = channels;
  v14 = +[FMNSXPCConnectionCache sharedCache];
  v15 = +[FMNSXPCConnectionConfiguration helperConfiguration];
  v16 = [v14 resumeConnectionWithConfiguration:v15];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __92__FMDFMIPManager_startPlayingSoundForAccessory_duration_rampUpDuration_channels_completion___block_invoke;
  v28[3] = &unk_1E86BD0E0;
  v17 = completionCopy;
  v29 = v17;
  [v16 addFailureBlock:v28];
  remoteObjectProxy = [v16 remoteObjectProxy];
  v19 = LogCategory_Unspecified();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    *buf = 138412290;
    v31 = v20;
    _os_log_impl(&dword_1DF650000, v19, OS_LOG_TYPE_DEFAULT, "accessory %@", buf, 0xCu);
  }

  v21 = [FMDGenericAudioAccessory copyAccessory:accessoryCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __92__FMDFMIPManager_startPlayingSoundForAccessory_duration_rampUpDuration_channels_completion___block_invoke_80;
  v25[3] = &unk_1E86BD320;
  v26 = v16;
  v27 = v17;
  v22 = v16;
  v23 = v17;
  [remoteObjectProxy startPlayingSoundForAccessory:v21 duration:channelsCopy rampUpDuration:v25 channels:duration completion:upDuration];

  v24 = *MEMORY[0x1E69E9840];
}

void __92__FMDFMIPManager_startPlayingSoundForAccessory_duration_rampUpDuration_channels_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __92__FMDFMIPManager_startPlayingSoundForAccessory_duration_rampUpDuration_channels_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __92__FMDFMIPManager_startPlayingSoundForAccessory_duration_rampUpDuration_channels_completion___block_invoke_80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __92__FMDFMIPManager_startPlayingSoundForAccessory_duration_rampUpDuration_channels_completion___block_invoke_80_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "playSoundForAccessory sound started", v7, 2u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];
}

- (void)stopPlayingSoundForAccessory:(id)accessory rampDownDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  accessoryCopy = accessory;
  v9 = +[FMNSXPCConnectionCache sharedCache];
  v10 = +[FMNSXPCConnectionConfiguration helperConfiguration];
  v11 = [v9 resumeConnectionWithConfiguration:v10];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__FMDFMIPManager_stopPlayingSoundForAccessory_rampDownDuration_completion___block_invoke;
  v20[3] = &unk_1E86BD0E0;
  v12 = completionCopy;
  v21 = v12;
  [v11 addFailureBlock:v20];
  remoteObjectProxy = [v11 remoteObjectProxy];
  v14 = [FMDGenericAudioAccessory copyAccessory:accessoryCopy];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__FMDFMIPManager_stopPlayingSoundForAccessory_rampDownDuration_completion___block_invoke_81;
  v17[3] = &unk_1E86BD320;
  v18 = v11;
  v19 = v12;
  v15 = v11;
  v16 = v12;
  [remoteObjectProxy stopPlayingForAccessory:v14 rampDownDuration:v17 completion:duration];
}

void __75__FMDFMIPManager_stopPlayingSoundForAccessory_rampDownDuration_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__FMDFMIPManager_stopPlayingSoundForAccessory_rampDownDuration_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __75__FMDFMIPManager_stopPlayingSoundForAccessory_rampDownDuration_completion___block_invoke_81(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75__FMDFMIPManager_stopPlayingSoundForAccessory_rampDownDuration_completion___block_invoke_81_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "stopSoundForAccessory sound did stop", v7, 2u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];
}

- (void)waitForRoutableAccessory:(id)accessory timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  accessoryCopy = accessory;
  v9 = +[FMNSXPCConnectionCache sharedCache];
  v10 = +[FMNSXPCConnectionConfiguration helperConfiguration];
  v11 = [v9 resumeConnectionWithConfiguration:v10];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__FMDFMIPManager_waitForRoutableAccessory_timeout_completion___block_invoke;
  v22[3] = &unk_1E86BD0E0;
  v12 = completionCopy;
  v23 = v12;
  [v11 addFailureBlock:v22];
  remoteObjectProxy = [v11 remoteObjectProxy];
  v14 = [FMDGenericAudioAccessory copyAccessory:accessoryCopy];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__FMDFMIPManager_waitForRoutableAccessory_timeout_completion___block_invoke_82;
  v18[3] = &unk_1E86BD438;
  v20 = v11;
  v21 = v12;
  v19 = v14;
  v15 = v11;
  v16 = v12;
  v17 = v14;
  [remoteObjectProxy waitForRoutableAccessory:v17 timeout:v18 completion:timeout];
}

void __62__FMDFMIPManager_waitForRoutableAccessory_timeout_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __62__FMDFMIPManager_waitForRoutableAccessory_timeout_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __62__FMDFMIPManager_waitForRoutableAccessory_timeout_completion___block_invoke_82(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__FMDFMIPManager_waitForRoutableAccessory_timeout_completion___block_invoke_82_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "Accessory became routable %@", &v9, 0xCu);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  [*(a1 + 40) invalidate];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)soundStoppedForAccessoryIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[FMDFMIPManager soundStoppedForAccessoryIdentifier:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  [v8 addFailureBlock:&__block_literal_global_84];
  remoteObjectProxy = [v8 remoteObjectProxy];
  [remoteObjectProxy soundStoppedForAccessoryIdentifier:identifierCopy];
  [v8 invalidate];

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x1E69E9840];
}

void __53__FMDFMIPManager_soundStoppedForAccessoryIdentifier___block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __53__FMDFMIPManager_soundStoppedForAccessoryIdentifier___block_invoke_cold_1();
  }
}

- (void)clearData:(unint64_t)data completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = objc_autoreleasePoolPush();
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[FMDFMIPManager clearData:completion:]";
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  [v10 addFailureBlock:&__block_literal_global_86];
  remoteObjectProxy = [v10 remoteObjectProxy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__FMDFMIPManager_clearData_completion___block_invoke_87;
  v15[3] = &unk_1E86BD320;
  v12 = completionCopy;
  v16 = v10;
  v17 = v12;
  v13 = v10;
  [remoteObjectProxy clearData:data completion:v15];

  objc_autoreleasePoolPop(v6);
  v14 = *MEMORY[0x1E69E9840];
}

void __39__FMDFMIPManager_clearData_completion___block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __39__FMDFMIPManager_clearData_completion___block_invoke_cold_1();
  }
}

uint64_t __39__FMDFMIPManager_clearData_completion___block_invoke_87(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

- (void)audioAccessorySerialNumbersWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__FMDFMIPManager_audioAccessorySerialNumbersWithCompletion___block_invoke_2;
  v6[3] = &unk_1E86BD4A0;
  v7 = completionCopy;
  v5 = completionCopy;
  [(FMDFMIPManager *)self _getAccessoriesWithFilter:&__block_literal_global_90 completion:v6];
}

void __60__FMDFMIPManager_audioAccessorySerialNumbersWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 fm_map:&__block_literal_global_159];
  (*(*(a1 + 32) + 16))();
}

- (void)attemptUCRTHealing:(id)healing completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  healingCopy = healing;
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[FMDFMIPManager attemptUCRTHealing:completion:]";
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__FMDFMIPManager_attemptUCRTHealing_completion___block_invoke;
  v14[3] = &unk_1E86BD0E0;
  v15 = completionCopy;
  v11 = completionCopy;
  [v10 addFailureBlock:v14];
  remoteObjectProxy = [v10 remoteObjectProxy];
  [remoteObjectProxy attemptUCRTHealing:healingCopy completion:v11];

  v13 = *MEMORY[0x1E69E9840];
}

void __48__FMDFMIPManager_attemptUCRTHealing_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48__FMDFMIPManager_attemptUCRTHealing_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

- (void)fetchAccessoryConfigurations:(id)configurations
{
  v21 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FMDFMIPManager fetchAccessoryConfigurations:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__FMDFMIPManager_fetchAccessoryConfigurations___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v9 = configurationsCopy;
  v18 = v9;
  [v8 addFailureBlock:v17];
  remoteObjectProxy = [v8 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__FMDFMIPManager_fetchAccessoryConfigurations___block_invoke_164;
  v14[3] = &unk_1E86BD320;
  v11 = v9;
  v15 = v8;
  v16 = v11;
  v12 = v8;
  [remoteObjectProxy fetchAccessoryConfigurations:v14];

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x1E69E9840];
}

void __47__FMDFMIPManager_fetchAccessoryConfigurations___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __47__FMDFMIPManager_fetchAccessoryConfigurations___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

uint64_t __47__FMDFMIPManager_fetchAccessoryConfigurations___block_invoke_164(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

- (void)removeAccessoryWithDiscoveryId:(id)id completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  idCopy = id;
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  v8 = LogCategory_Unspecified();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[FMDFMIPManager removeAccessoryWithDiscoveryId:completion:]";
    _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v9 = +[FMNSXPCConnectionCache sharedCache];
  v10 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v11 = [v9 resumeConnectionWithConfiguration:v10];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60__FMDFMIPManager_removeAccessoryWithDiscoveryId_completion___block_invoke;
  v20[3] = &unk_1E86BD0E0;
  v12 = completionCopy;
  v21 = v12;
  [v11 addFailureBlock:v20];
  remoteObjectProxy = [v11 remoteObjectProxy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__FMDFMIPManager_removeAccessoryWithDiscoveryId_completion___block_invoke_165;
  v17[3] = &unk_1E86BD320;
  v14 = v12;
  v18 = v11;
  v19 = v14;
  v15 = v11;
  [remoteObjectProxy removeAccessoryWithDiscoveryId:idCopy completion:v17];

  objc_autoreleasePoolPop(v7);
  v16 = *MEMORY[0x1E69E9840];
}

void __60__FMDFMIPManager_removeAccessoryWithDiscoveryId_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __60__FMDFMIPManager_removeAccessoryWithDiscoveryId_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

uint64_t __60__FMDFMIPManager_removeAccessoryWithDiscoveryId_completion___block_invoke_165(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

- (void)setPhoneNumber:(id)number toAccessoryWithDiscoveryId:(id)id completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  idCopy = id;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  v11 = LogCategory_Unspecified();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[FMDFMIPManager setPhoneNumber:toAccessoryWithDiscoveryId:completion:]";
    _os_log_impl(&dword_1DF650000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v12 = +[FMNSXPCConnectionCache sharedCache];
  v13 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v14 = [v12 resumeConnectionWithConfiguration:v13];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __71__FMDFMIPManager_setPhoneNumber_toAccessoryWithDiscoveryId_completion___block_invoke;
  v23[3] = &unk_1E86BD0E0;
  v15 = completionCopy;
  v24 = v15;
  [v14 addFailureBlock:v23];
  remoteObjectProxy = [v14 remoteObjectProxy];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__FMDFMIPManager_setPhoneNumber_toAccessoryWithDiscoveryId_completion___block_invoke_166;
  v20[3] = &unk_1E86BD320;
  v17 = v15;
  v21 = v14;
  v22 = v17;
  v18 = v14;
  [remoteObjectProxy setPhoneNumber:numberCopy toAccessoryWithDiscoveryId:idCopy completion:v20];

  objc_autoreleasePoolPop(v10);
  v19 = *MEMORY[0x1E69E9840];
}

void __71__FMDFMIPManager_setPhoneNumber_toAccessoryWithDiscoveryId_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__FMDFMIPManager_setPhoneNumber_toAccessoryWithDiscoveryId_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

uint64_t __71__FMDFMIPManager_setPhoneNumber_toAccessoryWithDiscoveryId_completion___block_invoke_166(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

- (void)getConnectedAccessoriesDiscoveryIds:(id)ids
{
  v21 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FMDFMIPManager getConnectedAccessoriesDiscoveryIds:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__FMDFMIPManager_getConnectedAccessoriesDiscoveryIds___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v9 = idsCopy;
  v18 = v9;
  [v8 addFailureBlock:v17];
  remoteObjectProxy = [v8 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__FMDFMIPManager_getConnectedAccessoriesDiscoveryIds___block_invoke_167;
  v14[3] = &unk_1E86BD4E8;
  v11 = v9;
  v15 = v8;
  v16 = v11;
  v12 = v8;
  [remoteObjectProxy getConnectedAccessoriesDiscoveryIds:v14];

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x1E69E9840];
}

void __54__FMDFMIPManager_getConnectedAccessoriesDiscoveryIds___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __54__FMDFMIPManager_getConnectedAccessoriesDiscoveryIds___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, MEMORY[0x1E695E0F0], v3);
  }
}

uint64_t __54__FMDFMIPManager_getConnectedAccessoriesDiscoveryIds___block_invoke_167(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

- (void)registerDeviceForPairingLock:(id)lock completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  lockCopy = lock;
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[FMDFMIPManager registerDeviceForPairingLock:completion:]";
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__FMDFMIPManager_registerDeviceForPairingLock_completion___block_invoke;
  v19[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v20 = v11;
  [v10 addFailureBlock:v19];
  remoteObjectProxy = [v10 remoteObjectProxy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__FMDFMIPManager_registerDeviceForPairingLock_completion___block_invoke_169;
  v16[3] = &unk_1E86BD510;
  v17 = v10;
  v18 = v11;
  v13 = v10;
  v14 = v11;
  [remoteObjectProxy registerDeviceForPairingLock:lockCopy completion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __58__FMDFMIPManager_registerDeviceForPairingLock_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __58__FMDFMIPManager_registerDeviceForPairingLock_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3, 0);
  }
}

uint64_t __58__FMDFMIPManager_registerDeviceForPairingLock_completion___block_invoke_169(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

- (void)updatePairingLockInfo:(id)info completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  infoCopy = info;
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[FMDFMIPManager updatePairingLockInfo:completion:]";
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__FMDFMIPManager_updatePairingLockInfo_completion___block_invoke;
  v19[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v20 = v11;
  [v10 addFailureBlock:v19];
  remoteObjectProxy = [v10 remoteObjectProxy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__FMDFMIPManager_updatePairingLockInfo_completion___block_invoke_171;
  v16[3] = &unk_1E86BD320;
  v17 = v10;
  v18 = v11;
  v13 = v10;
  v14 = v11;
  [remoteObjectProxy updatePairingLockInfo:infoCopy completion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __51__FMDFMIPManager_updatePairingLockInfo_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __51__FMDFMIPManager_updatePairingLockInfo_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

uint64_t __51__FMDFMIPManager_updatePairingLockInfo_completion___block_invoke_171(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

- (void)pairingCheckWith:(id)with completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  withCopy = with;
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[FMDFMIPManager pairingCheckWith:completion:]";
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __46__FMDFMIPManager_pairingCheckWith_completion___block_invoke;
  v19[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v20 = v11;
  [v10 addFailureBlock:v19];
  remoteObjectProxy = [v10 remoteObjectProxy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__FMDFMIPManager_pairingCheckWith_completion___block_invoke_172;
  v16[3] = &unk_1E86BD538;
  v17 = v10;
  v18 = v11;
  v13 = v10;
  v14 = v11;
  [remoteObjectProxy pairingCheckWith:withCopy completion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __46__FMDFMIPManager_pairingCheckWith_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__FMDFMIPManager_pairingCheckWith_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3, 0);
  }
}

uint64_t __46__FMDFMIPManager_pairingCheckWith_completion___block_invoke_172(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

- (void)_getAccessoriesWithFilter:(id)filter completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  v8 = LogCategory_Unspecified();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[FMDFMIPManager _getAccessoriesWithFilter:completion:]";
    _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v9 = +[FMNSXPCConnectionCache sharedCache];
  v10 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v11 = [v9 resumeConnectionWithConfiguration:v10];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__FMDFMIPManager__getAccessoriesWithFilter_completion___block_invoke;
  v22[3] = &unk_1E86BD0E0;
  v12 = completionCopy;
  v23 = v12;
  [v11 addFailureBlock:v22];
  remoteObjectProxy = [v11 remoteObjectProxy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__FMDFMIPManager__getAccessoriesWithFilter_completion___block_invoke_174;
  v18[3] = &unk_1E86BD560;
  v14 = filterCopy;
  v20 = v14;
  v15 = v12;
  v21 = v15;
  v19 = v11;
  v16 = v11;
  [remoteObjectProxy getAccessoriesWithCompletion:v18];

  objc_autoreleasePoolPop(v7);
  v17 = *MEMORY[0x1E69E9840];
}

void __55__FMDFMIPManager__getAccessoriesWithFilter_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __55__FMDFMIPManager__getAccessoriesWithFilter_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3, MEMORY[0x1E695E0F0]);
  }
}

void __55__FMDFMIPManager__getAccessoriesWithFilter_completion___block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LogCategory_Unspecified();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__FMDFMIPManager__getAccessoriesWithFilter_completion___block_invoke_174_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "Accessories %@", &v12, 0xCu);
  }

  v9 = [v6 fm_filter:*(a1 + 40)];
  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v9);
  }

  [*(a1 + 32) invalidate];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_forceFMWUpgradeAlertWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[FMDFMIPManager _forceFMWUpgradeAlertWithCompletion:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  [v8 addFailureBlock:&__block_literal_global_176];
  remoteObjectProxy = [v8 remoteObjectProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__FMDFMIPManager__forceFMWUpgradeAlertWithCompletion___block_invoke_177;
  v13[3] = &unk_1E86BD320;
  v10 = completionCopy;
  v14 = v8;
  v15 = v10;
  v11 = v8;
  [remoteObjectProxy _forceFMWUpgradeAlertUsingCallback:v13];

  objc_autoreleasePoolPop(v4);
  v12 = *MEMORY[0x1E69E9840];
}

void __54__FMDFMIPManager__forceFMWUpgradeAlertWithCompletion___block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __54__FMDFMIPManager__forceFMWUpgradeAlertWithCompletion___block_invoke_cold_1();
  }
}

uint64_t __54__FMDFMIPManager__forceFMWUpgradeAlertWithCompletion___block_invoke_177(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

- (void)_stopAlarm
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF650000, v2, OS_LOG_TYPE_DEFAULT, "Exiting Lost Mode, request to stop the Play Sound.", v4, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.icloud.fmip.lostmode.stopAlarm", 0, 0, 1u);
}

- (id)newErrorForCode:(int)code message:(id)message
{
  v5 = MEMORY[0x1E696ABC0];
  messageCopy = message;
  v7 = [v5 alloc];
  v8 = kFMDErrorDomain;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:messageCopy forKey:*MEMORY[0x1E696A588]];

  v10 = [v7 initWithDomain:v8 code:code userInfo:v9];
  return v10;
}

- (BOOL)_isRunningAsMobileUser
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = geteuid();
  v3 = getpwnam([@"mobile" cStringUsingEncoding:4]);
  if (v3)
  {
    pw_uid = v3->pw_uid;
  }

  else
  {
    pw_uid = 501;
  }

  if (v2 != pw_uid)
  {
    fmdFMIPLastOperationResult = 10;
    v5 = LogCategory_Unspecified();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 134218498;
      v9 = v2;
      v10 = 2112;
      v11 = @"mobile";
      v12 = 2048;
      v13 = pw_uid;
      _os_log_error_impl(&dword_1DF650000, v5, OS_LOG_TYPE_ERROR, "Called from unsupported user (%lu). This can only be called from user %@(%lu)", &v8, 0x20u);
    }
  }

  result = v2 == pw_uid;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_updateManagedLostModeWithInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  v7 = +[FMNSXPCConnectionCache sharedCache];
  v8 = +[FMNSXPCConnectionConfiguration helperConfiguration];
  v9 = [v7 resumeConnectionWithConfiguration:v8];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__FMDFMIPManager__updateManagedLostModeWithInfo_completion___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v10 = completionCopy;
  v18 = v10;
  [v9 addFailureBlock:v17];
  remoteObjectProxy = [v9 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__FMDFMIPManager__updateManagedLostModeWithInfo_completion___block_invoke_178;
  v14[3] = &unk_1E86BD320;
  v15 = v9;
  v16 = v10;
  v12 = v9;
  v13 = v10;
  [remoteObjectProxy updateManagedLostModeInfo:infoCopy completion:v14];
}

void __60__FMDFMIPManager__updateManagedLostModeWithInfo_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __60__FMDFMIPManager__updateManagedLostModeWithInfo_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __60__FMDFMIPManager__updateManagedLostModeWithInfo_completion___block_invoke_178(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__FMDFMIPManager__updateManagedLostModeWithInfo_completion___block_invoke_178_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "updateManagedLostModeInfo completed", v7, 2u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];
}

- (void)_updateNeedsLocateAckLostModeWithInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  v7 = +[FMNSXPCConnectionCache sharedCache];
  v8 = +[FMNSXPCConnectionConfiguration helperConfiguration];
  v9 = [v7 resumeConnectionWithConfiguration:v8];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__FMDFMIPManager__updateNeedsLocateAckLostModeWithInfo_completion___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v10 = completionCopy;
  v18 = v10;
  [v9 addFailureBlock:v17];
  remoteObjectProxy = [v9 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__FMDFMIPManager__updateNeedsLocateAckLostModeWithInfo_completion___block_invoke_179;
  v14[3] = &unk_1E86BD320;
  v15 = v9;
  v16 = v10;
  v12 = v9;
  v13 = v10;
  [remoteObjectProxy updateNeedsLocateAckLostModeInfo:infoCopy completion:v14];
}

void __67__FMDFMIPManager__updateNeedsLocateAckLostModeWithInfo_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __67__FMDFMIPManager__updateNeedsLocateAckLostModeWithInfo_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __67__FMDFMIPManager__updateNeedsLocateAckLostModeWithInfo_completion___block_invoke_179(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__FMDFMIPManager__updateNeedsLocateAckLostModeWithInfo_completion___block_invoke_179_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "updateNeedsLocateAckLostModeInfo completed", v7, 2u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];
}

- (void)_initiateLostModeExitAuthForIDSDeviceID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  fmdFMIPLastOperationResult = 0;
  dCopy = d;
  v7 = +[FMNSXPCConnectionCache sharedCache];
  v8 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v9 = [v7 resumeConnectionWithConfiguration:v8];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __73__FMDFMIPManager__initiateLostModeExitAuthForIDSDeviceID_withCompletion___block_invoke;
  v20[3] = &unk_1E86BD0E0;
  v10 = completionCopy;
  v21 = v10;
  [v9 addFailureBlock:v20];
  remoteObjectProxy = [v9 remoteObjectProxy];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__FMDFMIPManager__initiateLostModeExitAuthForIDSDeviceID_withCompletion___block_invoke_181;
  v17[3] = &unk_1E86BD320;
  v18 = v9;
  v19 = v10;
  v14 = v9;
  v15 = v10;
  v16 = MEMORY[0x1E12DA360](v17);
  [remoteObjectProxy initiateLostModeExitAuthForApp:bundleIdentifier idsDeviceID:dCopy usingCallback:v16];
}

void __73__FMDFMIPManager__initiateLostModeExitAuthForIDSDeviceID_withCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __73__FMDFMIPManager__initiateLostModeExitAuthForIDSDeviceID_withCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __73__FMDFMIPManager__initiateLostModeExitAuthForIDSDeviceID_withCompletion___block_invoke_181(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "initiateLostModeExitAuth completed. Error : %@", &v7, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  [*(a1 + 32) invalidate];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_disableFMIPUsingToken:(id)token inContext:(unint64_t)context completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  v9 = objc_autoreleasePoolPush();
  fmdFMIPLastOperationResult = 0;
  v10 = LogCategory_Unspecified();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v10, OS_LOG_TYPE_DEFAULT, "Disabling FMIP...", buf, 2u);
  }

  if ([tokenCopy length])
  {
    v11 = +[FMNSXPCConnectionCache sharedCache];
    v12 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
    v13 = [v11 resumeConnectionWithConfiguration:v12];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __62__FMDFMIPManager__disableFMIPUsingToken_inContext_completion___block_invoke;
    v21[3] = &unk_1E86BD0E0;
    v14 = completionCopy;
    v22 = v14;
    [v13 addFailureBlock:v21];
    remoteObjectProxy = [v13 remoteObjectProxy];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__FMDFMIPManager__disableFMIPUsingToken_inContext_completion___block_invoke_182;
    v18[3] = &unk_1E86BD320;
    v19 = v13;
    v20 = v14;
    v16 = v13;
    [remoteObjectProxy disableFMIPUsingToken:tokenCopy inContext:context usingCallback:v18];
  }

  else
  {
    v17 = LogCategory_Unspecified();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FMDFMIPManager _disableFMIPUsingToken:inContext:completion:];
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:1 userInfo:0];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v16);
    }
  }

  objc_autoreleasePoolPop(v9);
}

void __62__FMDFMIPManager__disableFMIPUsingToken_inContext_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __62__FMDFMIPManager__disableFMIPUsingToken_inContext_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __62__FMDFMIPManager__disableFMIPUsingToken_inContext_completion___block_invoke_182(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = LogCategory_Unspecified();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__FMDFMIPManager__disableFMIPUsingToken_inContext_completion___block_invoke_182_cold_1();
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  [*(a1 + 32) invalidate];
}

- (id)getManagedLostModeFileURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__FMDFMIPManager_getManagedLostModeFileURL__block_invoke;
  v5[3] = &unk_1E86BD588;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__FMDFMIPManager_getManagedLostModeFileURL__block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __43__FMDFMIPManager_getManagedLostModeFileURL__block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) managedLostModeFileURL];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E699BE08]);
    v5 = [v4 initWithIdentifier:FMDManagedSystemGroupContainerIdentifier];
    v6 = [v5 url];
    v7 = [v6 fm_preferencesPathURLForDomain:kFMDManagedLostModePrefDomain];
    [*(a1 + 32) setManagedLostModeFileURL:v7];
  }

  v8 = [*(a1 + 32) managedLostModeFileURL];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)getNeedsLocateAckLostModeFileURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__FMDFMIPManager_getNeedsLocateAckLostModeFileURL__block_invoke;
  v5[3] = &unk_1E86BD588;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__FMDFMIPManager_getNeedsLocateAckLostModeFileURL__block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __50__FMDFMIPManager_getNeedsLocateAckLostModeFileURL__block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) needsLocateAckLostModeFileURL];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E699BE08]);
    v5 = [v4 initWithIdentifier:FMDManagedSystemGroupContainerIdentifier];
    v6 = [v5 url];
    v7 = [v6 fm_preferencesPathURLForDomain:kFMDNeedsLocateAckLostModePrefDomain];
    [*(a1 + 32) setNeedsLocateAckLostModeFileURL:v7];
  }

  v8 = [*(a1 + 32) needsLocateAckLostModeFileURL];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)playSoundWithMessage:(id)message completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  completionCopy = completion;
  v7 = +[FMNSXPCConnectionCache sharedCache];
  v8 = +[FMNSXPCConnectionConfiguration helperConfiguration];
  v9 = [v7 resumeConnectionWithConfiguration:v8];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__FMDFMIPManager_playSoundWithMessage_completion___block_invoke;
  v20[3] = &unk_1E86BD0E0;
  v10 = completionCopy;
  v21 = v10;
  [v9 addFailureBlock:v20];
  remoteObjectProxy = [v9 remoteObjectProxy];
  v12 = LogCategory_Unspecified();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    *buf = 138412290;
    v23 = v13;
    _os_log_impl(&dword_1DF650000, v12, OS_LOG_TYPE_DEFAULT, "message %@", buf, 0xCu);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50__FMDFMIPManager_playSoundWithMessage_completion___block_invoke_184;
  v17[3] = &unk_1E86BD320;
  v18 = v9;
  v19 = v10;
  v14 = v9;
  v15 = v10;
  [remoteObjectProxy startPlayingSoundForMessage:messageCopy completion:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __50__FMDFMIPManager_playSoundWithMessage_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__FMDFMIPManager_playSoundWithMessage_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __50__FMDFMIPManager_playSoundWithMessage_completion___block_invoke_184(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__FMDFMIPManager_playSoundWithMessage_completion___block_invoke_184_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "playSoundWithMessage sound started", v7, 2u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];
}

- (void)stopSoundMessageWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[FMNSXPCConnectionCache sharedCache];
  v5 = +[FMNSXPCConnectionConfiguration helperConfiguration];
  v6 = [v4 resumeConnectionWithConfiguration:v5];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__FMDFMIPManager_stopSoundMessageWithCompletion___block_invoke;
  v16[3] = &unk_1E86BD0E0;
  v7 = completionCopy;
  v17 = v7;
  [v6 addFailureBlock:v16];
  remoteObjectProxy = [v6 remoteObjectProxy];
  v9 = LogCategory_Unspecified();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v9, OS_LOG_TYPE_DEFAULT, "stop message sound", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__FMDFMIPManager_stopSoundMessageWithCompletion___block_invoke_185;
  v12[3] = &unk_1E86BD320;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [remoteObjectProxy stopSoundMessageWithCompletion:v12];
}

void __49__FMDFMIPManager_stopSoundMessageWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__FMDFMIPManager_stopSoundMessageWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __49__FMDFMIPManager_stopSoundMessageWithCompletion___block_invoke_185(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__FMDFMIPManager_stopSoundMessageWithCompletion___block_invoke_185_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "stopSoundMessageWithCompletion sound stopped", v7, 2u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];
}

- (void)deviceEligibleForRepairWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v7 = +[FMNSXPCConnectionCache sharedCache];
  v8 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v9 = [v7 resumeConnectionWithConfiguration:v8];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__FMDFMIPManager_deviceEligibleForRepairWithContext_completion___block_invoke;
  v12[3] = &unk_1E86BD0E0;
  v13 = completionCopy;
  v10 = completionCopy;
  [v9 addFailureBlock:v12];
  remoteObjectProxy = [v9 remoteObjectProxy];
  [remoteObjectProxy deviceEligibleForRepairWithContext:contextCopy completion:v10];
}

void __64__FMDFMIPManager_deviceEligibleForRepairWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __64__FMDFMIPManager_deviceEligibleForRepairWithContext_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

- (void)enableRepairWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v7 = +[FMNSXPCConnectionCache sharedCache];
  v8 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v9 = [v7 resumeConnectionWithConfiguration:v8];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__FMDFMIPManager_enableRepairWithContext_completion___block_invoke;
  v12[3] = &unk_1E86BD0E0;
  v13 = completionCopy;
  v10 = completionCopy;
  [v9 addFailureBlock:v12];
  remoteObjectProxy = [v9 remoteObjectProxy];
  [remoteObjectProxy enableRepairWithContext:contextCopy completion:v10];
}

void __53__FMDFMIPManager_enableRepairWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __53__FMDFMIPManager_enableRepairWithContext_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

- (void)activationLockInfoFromDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "Framework API: activationLockInfoWithCompletion", buf, 2u);
  }

  v5 = +[FMNSXPCConnectionCache sharedCache];
  v6 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v7 = [v5 resumeConnectionWithConfiguration:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__FMDFMIPManager_activationLockInfoFromDeviceWithCompletion___block_invoke;
  v10[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v8 = completionCopy;
  [v7 addFailureBlock:v10];
  remoteObjectProxy = [v7 remoteObjectProxy];
  [remoteObjectProxy activationLockInfoFromDeviceWithCompletion:v8];
}

void __61__FMDFMIPManager_activationLockInfoFromDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__FMDFMIPManager_activationLockInfoFromDeviceWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

- (void)storeOfflineFindingInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  v7 = +[FMNSXPCConnectionCache sharedCache];
  v8 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v9 = [v7 resumeConnectionWithConfiguration:v8];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__FMDFMIPManager_storeOfflineFindingInfo_completion___block_invoke;
  v12[3] = &unk_1E86BD0E0;
  v13 = completionCopy;
  v10 = completionCopy;
  [v9 addFailureBlock:v12];
  remoteObjectProxy = [v9 remoteObjectProxy];
  [remoteObjectProxy storeOfflineFindingInfo:infoCopy completion:v10];
}

void __53__FMDFMIPManager_storeOfflineFindingInfo_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __53__FMDFMIPManager_storeOfflineFindingInfo_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)fetchOfflineFindingInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "Framework API: fetchOfflineFindingInfoWithCompletion", buf, 2u);
  }

  v5 = +[FMNSXPCConnectionCache sharedCache];
  v6 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v7 = [v5 resumeConnectionWithConfiguration:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__FMDFMIPManager_fetchOfflineFindingInfoWithCompletion___block_invoke;
  v10[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v8 = completionCopy;
  [v7 addFailureBlock:v10];
  remoteObjectProxy = [v7 remoteObjectProxy];
  [remoteObjectProxy fetchOfflineFindingInfoWithCompletion:v8];
}

void __56__FMDFMIPManager_fetchOfflineFindingInfoWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__FMDFMIPManager_fetchOfflineFindingInfoWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

- (void)clearOfflineFindingInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[FMNSXPCConnectionCache sharedCache];
  v5 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v6 = [v4 resumeConnectionWithConfiguration:v5];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__FMDFMIPManager_clearOfflineFindingInfoWithCompletion___block_invoke;
  v9[3] = &unk_1E86BD0E0;
  v10 = completionCopy;
  v7 = completionCopy;
  [v6 addFailureBlock:v9];
  remoteObjectProxy = [v6 remoteObjectProxy];
  [remoteObjectProxy clearOfflineFindingInfoWithCompletion:v7];
}

void __56__FMDFMIPManager_clearOfflineFindingInfoWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__FMDFMIPManager_clearOfflineFindingInfoWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)activationLockAuthInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "Framework API: activationLockAuthInfo", buf, 2u);
  }

  v5 = +[FMNSXPCConnectionCache sharedCache];
  v6 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v7 = [v5 resumeConnectionWithConfiguration:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__FMDFMIPManager_activationLockAuthInfoWithCompletion___block_invoke;
  v10[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v8 = completionCopy;
  [v7 addFailureBlock:v10];
  remoteObjectProxy = [v7 remoteObjectProxy];
  [remoteObjectProxy activationLockAuthInfoWithCompletion:v8];
}

void __55__FMDFMIPManager_activationLockAuthInfoWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__FMDFMIPManager_activationLockInfoFromDeviceWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

- (void)fetchAPNSTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "Framework: fetchAPNSTokenWithCompletion", buf, 2u);
  }

  v5 = +[FMNSXPCConnectionCache sharedCache];
  v6 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v7 = [v5 resumeConnectionWithConfiguration:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__FMDFMIPManager_fetchAPNSTokenWithCompletion___block_invoke;
  v10[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v8 = completionCopy;
  [v7 addFailureBlock:v10];
  remoteObjectProxy = [v7 remoteObjectProxy];
  [remoteObjectProxy fetchAPNSTokenWithCompletion:v8];
}

void __47__FMDFMIPManager_fetchAPNSTokenWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __47__FMDFMIPManager_fetchAPNSTokenWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

- (void)startLocationMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  v4 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "Framework: startLocationMonitoring", buf, 2u);
  }

  v5 = +[FMNSXPCConnectionCache sharedCache];
  v6 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v7 = [v5 resumeConnectionWithConfiguration:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__FMDFMIPManager_startLocationMonitoring___block_invoke;
  v10[3] = &unk_1E86BD0E0;
  v11 = monitoringCopy;
  v8 = monitoringCopy;
  [v7 addFailureBlock:v10];
  remoteObjectProxy = [v7 remoteObjectProxy];
  [remoteObjectProxy startLocationMonitoring:v8];
}

void __42__FMDFMIPManager_startLocationMonitoring___block_invoke(uint64_t a1)
{
  v2 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __42__FMDFMIPManager_startLocationMonitoring___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)stopLocationMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  v4 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "Framework: stopLocationMonitoring", buf, 2u);
  }

  v5 = +[FMNSXPCConnectionCache sharedCache];
  v6 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v7 = [v5 resumeConnectionWithConfiguration:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__FMDFMIPManager_stopLocationMonitoring___block_invoke;
  v10[3] = &unk_1E86BD0E0;
  v11 = monitoringCopy;
  v8 = monitoringCopy;
  [v7 addFailureBlock:v10];
  remoteObjectProxy = [v7 remoteObjectProxy];
  [remoteObjectProxy stopLocationMonitoring:v8];
}

void __41__FMDFMIPManager_stopLocationMonitoring___block_invoke(uint64_t a1)
{
  v2 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __41__FMDFMIPManager_stopLocationMonitoring___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)updatedConfigReceived:(id)received completion:(id)completion
{
  completionCopy = completion;
  receivedCopy = received;
  v7 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "Framework: updatedConfigReceived", buf, 2u);
  }

  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__FMDFMIPManager_updatedConfigReceived_completion___block_invoke;
  v13[3] = &unk_1E86BD0E0;
  v14 = completionCopy;
  v11 = completionCopy;
  [v10 addFailureBlock:v13];
  remoteObjectProxy = [v10 remoteObjectProxy];
  [remoteObjectProxy updatedConfigReceived:receivedCopy completion:v11];
}

void __51__FMDFMIPManager_updatedConfigReceived_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __51__FMDFMIPManager_updatedConfigReceived_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)startLocationMonitoringWithContext:(id)context completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v7 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = contextCopy;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "Framework: startLocationMonitoringWith %@", buf, 0xCu);
  }

  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__FMDFMIPManager_startLocationMonitoringWithContext_completion___block_invoke;
  v14[3] = &unk_1E86BD0E0;
  v15 = completionCopy;
  v11 = completionCopy;
  [v10 addFailureBlock:v14];
  remoteObjectProxy = [v10 remoteObjectProxy];
  [remoteObjectProxy startLocationMonitoringWithContext:contextCopy completion:v11];

  v13 = *MEMORY[0x1E69E9840];
}

void __64__FMDFMIPManager_startLocationMonitoringWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __64__FMDFMIPManager_startLocationMonitoringWithContext_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __77__FMDFMIPManager_startLocationMonitoringWithContext_forcePublish_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __64__FMDFMIPManager_startLocationMonitoringWithContext_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)stopLocationMonitoringWithContext:(id)context completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v7 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = contextCopy;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "Framework: stopLocationMonitoringWith %@", buf, 0xCu);
  }

  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__FMDFMIPManager_stopLocationMonitoringWithContext_completion___block_invoke;
  v14[3] = &unk_1E86BD0E0;
  v15 = completionCopy;
  v11 = completionCopy;
  [v10 addFailureBlock:v14];
  remoteObjectProxy = [v10 remoteObjectProxy];
  [remoteObjectProxy stopLocationMonitoringWithContext:contextCopy completion:v11];

  v13 = *MEMORY[0x1E69E9840];
}

void __63__FMDFMIPManager_stopLocationMonitoringWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __63__FMDFMIPManager_stopLocationMonitoringWithContext_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)startLocationMonitoringWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  v10 = objc_alloc_init(FMDSecureLocationContext);
  v8 = [optionsCopy objectForKeyedSubscript:@"mode"];
  [(FMDSecureLocationContext *)v10 setMode:v8];

  v9 = [optionsCopy objectForKeyedSubscript:@"findMyId"];

  [(FMDSecureLocationContext *)v10 setFindMyId:v9];
  [(FMDFMIPManager *)self startLocationMonitoringWithContext:v10 completion:completionCopy];
}

- (void)stopLocationMonitoringWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  v10 = objc_alloc_init(FMDSecureLocationContext);
  v8 = [optionsCopy objectForKeyedSubscript:@"mode"];
  [(FMDSecureLocationContext *)v10 setMode:v8];

  v9 = [optionsCopy objectForKeyedSubscript:@"findMyId"];

  [(FMDSecureLocationContext *)v10 setFindMyId:v9];
  [(FMDFMIPManager *)self stopLocationMonitoringWithContext:v10 completion:completionCopy];
}

- (void)didAddLocalFindableAccessory:(id)accessory completion:(id)completion
{
  completionCopy = completion;
  accessoryCopy = accessory;
  v7 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "Framework: didAddLocalFindableAccessory", buf, 2u);
  }

  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__FMDFMIPManager_didAddLocalFindableAccessory_completion___block_invoke;
  v13[3] = &unk_1E86BD0E0;
  v14 = completionCopy;
  v11 = completionCopy;
  [v10 addFailureBlock:v13];
  remoteObjectProxy = [v10 remoteObjectProxy];
  [remoteObjectProxy didAddLocalFindableAccessory:accessoryCopy completion:v11];
}

void __58__FMDFMIPManager_didAddLocalFindableAccessory_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __58__FMDFMIPManager_didAddLocalFindableAccessory_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)didRemoveLocalFindableAccessory:(id)accessory completion:(id)completion
{
  completionCopy = completion;
  accessoryCopy = accessory;
  v7 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "Framework: didRemoveLocalFindableAccessory", buf, 2u);
  }

  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__FMDFMIPManager_didRemoveLocalFindableAccessory_completion___block_invoke;
  v13[3] = &unk_1E86BD0E0;
  v14 = completionCopy;
  v11 = completionCopy;
  [v10 addFailureBlock:v13];
  remoteObjectProxy = [v10 remoteObjectProxy];
  [remoteObjectProxy didRemoveLocalFindableAccessory:accessoryCopy completion:v11];
}

void __61__FMDFMIPManager_didRemoveLocalFindableAccessory_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__FMDFMIPManager_didRemoveLocalFindableAccessory_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)requireDisableLocationWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = LogCategory_DisableLocationDisplay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "Framework: requireDisableLocationWithCompletion", buf, 2u);
  }

  v5 = +[FMNSXPCConnectionCache sharedCache];
  v6 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v7 = [v5 resumeConnectionWithConfiguration:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__FMDFMIPManager_requireDisableLocationWithCompletion___block_invoke;
  v10[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v8 = completionCopy;
  [v7 addFailureBlock:v10];
  remoteObjectProxy = [v7 remoteObjectProxy];
  [remoteObjectProxy requireDisableLocationWithCompletion:v8];
}

void __55__FMDFMIPManager_requireDisableLocationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_DisableLocationDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __55__FMDFMIPManager_requireDisableLocationWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, -1, v3);
  }
}

- (void)disableLocationDisplayWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = LogCategory_DisableLocationDisplay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "Framework: disableLocationDisplayWithCompletion", buf, 2u);
  }

  v5 = +[FMNSXPCConnectionCache sharedCache];
  v6 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v7 = [v5 resumeConnectionWithConfiguration:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__FMDFMIPManager_disableLocationDisplayWithCompletion___block_invoke;
  v10[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v8 = completionCopy;
  [v7 addFailureBlock:v10];
  remoteObjectProxy = [v7 remoteObjectProxy];
  [remoteObjectProxy disableLocationDisplayWithCompletion:v8];
}

void __55__FMDFMIPManager_disableLocationDisplayWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_DisableLocationDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __55__FMDFMIPManager_disableLocationDisplayWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)simulatePushWithPayload:(id)payload completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  payloadCopy = payload;
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[FMDFMIPManager simulatePushWithPayload:completion:]";
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__FMDFMIPManager_simulatePushWithPayload_completion___block_invoke;
  v19[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v20 = v11;
  [v10 addFailureBlock:v19];
  remoteObjectProxy = [v10 remoteObjectProxy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__FMDFMIPManager_simulatePushWithPayload_completion___block_invoke_193;
  v16[3] = &unk_1E86BD320;
  v17 = v10;
  v18 = v11;
  v13 = v10;
  v14 = v11;
  [remoteObjectProxy simulatePushWithPayload:payloadCopy completion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __53__FMDFMIPManager_simulatePushWithPayload_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __53__FMDFMIPManager_simulatePushWithPayload_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

uint64_t __53__FMDFMIPManager_simulatePushWithPayload_completion___block_invoke_193(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

- (BOOL)_quickFetchFMIPEnabledstate
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.plist"];

  return v3;
}

- (id)_postWipePrefPath
{
  v2 = NSHomeDirectoryForUser(&cfstr_Mobile.isa);
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2 isDirectory:1];
    v4 = [v3 fm_preferencesPathURLForDomain:kFMDPostWipePrefDomain];
    path = [v4 path];
  }

  else
  {
    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(FMDFMIPManager(Private) *)v6 _postWipePrefPath];
    }

    path = 0;
  }

  return path;
}

- (void)disableBiometricIDForLostModeWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FMDFMIPManager(Private) disableBiometricIDForLostModeWithCompletion:]";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration helperConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__FMDFMIPManager_Private__disableBiometricIDForLostModeWithCompletion___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v9 = completionCopy;
  v18 = v9;
  [v8 addFailureBlock:v17];
  remoteObjectProxy = [v8 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__FMDFMIPManager_Private__disableBiometricIDForLostModeWithCompletion___block_invoke_12;
  v14[3] = &unk_1E86BD320;
  v11 = v9;
  v15 = v8;
  v16 = v11;
  v12 = v8;
  [remoteObjectProxy disableBiometricIDWithCompletion:v14];

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x1E69E9840];
}

void __71__FMDFMIPManager_Private__disableBiometricIDForLostModeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__FMDFMIPManager_Private__disableBiometricIDForLostModeWithCompletion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __71__FMDFMIPManager_Private__disableBiometricIDForLostModeWithCompletion___block_invoke_12(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__FMDFMIPManager_Private__disableBiometricIDForLostModeWithCompletion___block_invoke_12_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[FMDFMIPManager(Private) disableBiometricIDForLostModeWithCompletion:]_block_invoke";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s completed", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];

  v7 = *MEMORY[0x1E69E9840];
}

void __55__FMDFMIPManager_Private__setDailyLocateReportEnabled___block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __55__FMDFMIPManager_Private__setDailyLocateReportEnabled___block_invoke_cold_1();
  }
}

- (void)showDailyLocateReport
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[FMDFMIPManager(Private) showDailyLocateReport]";
    _os_log_impl(&dword_1DF650000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  fmdFMIPLastOperationResult = 0;
  v4 = +[FMNSXPCConnectionCache sharedCache];
  v5 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v6 = [v4 resumeConnectionWithConfiguration:v5];

  [v6 addFailureBlock:&__block_literal_global_15];
  remoteObjectProxy = [v6 remoteObjectProxy];
  [remoteObjectProxy showDailyLocateReport];

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x1E69E9840];
}

void __48__FMDFMIPManager_Private__showDailyLocateReport__block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __48__FMDFMIPManager_Private__showDailyLocateReport__block_invoke_cold_1();
  }
}

- (void)addNotificationRequest:(id)request completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  requestCopy = request;
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[FMDFMIPManager(Private) addNotificationRequest:completion:]";
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration userNotificationConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__FMDFMIPManager_Private__addNotificationRequest_completion___block_invoke;
  v19[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v20 = v11;
  [v10 addFailureBlock:v19];
  remoteObjectProxy = [v10 remoteObjectProxy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__FMDFMIPManager_Private__addNotificationRequest_completion___block_invoke_16;
  v16[3] = &unk_1E86BD320;
  v17 = v10;
  v18 = v11;
  v13 = v10;
  v14 = v11;
  [remoteObjectProxy addNotificationRequest:requestCopy completion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __61__FMDFMIPManager_Private__addNotificationRequest_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__FMDFMIPManager_Private__addNotificationRequest_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __61__FMDFMIPManager_Private__addNotificationRequest_completion___block_invoke_16(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__FMDFMIPManager_Private__addNotificationRequest_completion___block_invoke_16_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[FMDFMIPManager(Private) addNotificationRequest:completion:]_block_invoke";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s completed", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeNotificationWithIdentifier:(id)identifier completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  identifierCopy = identifier;
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[FMDFMIPManager(Private) removeNotificationWithIdentifier:completion:]";
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration userNotificationConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__FMDFMIPManager_Private__removeNotificationWithIdentifier_completion___block_invoke;
  v19[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v20 = v11;
  [v10 addFailureBlock:v19];
  remoteObjectProxy = [v10 remoteObjectProxy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__FMDFMIPManager_Private__removeNotificationWithIdentifier_completion___block_invoke_17;
  v16[3] = &unk_1E86BD320;
  v17 = v10;
  v18 = v11;
  v13 = v10;
  v14 = v11;
  [remoteObjectProxy removeNotificationWithIdentifier:identifierCopy completion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __71__FMDFMIPManager_Private__removeNotificationWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__FMDFMIPManager_Private__removeNotificationWithIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __71__FMDFMIPManager_Private__removeNotificationWithIdentifier_completion___block_invoke_17(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__FMDFMIPManager_Private__removeNotificationWithIdentifier_completion___block_invoke_17_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[FMDFMIPManager(Private) removeNotificationWithIdentifier:completion:]_block_invoke";
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "%s completed", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)activationLockVersionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "Framework (Private) : activationLockVersionWithCompletion", v10, 2u);
  }

  fmdFMIPLastOperationResult = 0;
  v6 = +[FMNSXPCConnectionCache sharedCache];
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = [v6 resumeConnectionWithConfiguration:v7];

  [v8 addFailureBlock:&__block_literal_global_19];
  remoteObjectProxy = [v8 remoteObjectProxy];
  [remoteObjectProxy activationLockVersionWithCompletion:completionCopy];

  objc_autoreleasePoolPop(v4);
}

void __63__FMDFMIPManager_Private__activationLockVersionWithCompletion___block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __63__FMDFMIPManager_Private__activationLockVersionWithCompletion___block_invoke_cold_1();
  }
}

- (void)updateMaskedAppleIDWith:(id)with completion:(id)completion
{
  completionCopy = completion;
  withCopy = with;
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "Framework (Private) : updateMaskedAppleID", v12, 2u);
  }

  fmdFMIPLastOperationResult = 0;
  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  [v10 addFailureBlock:&__block_literal_global_21];
  remoteObjectProxy = [v10 remoteObjectProxy];
  [remoteObjectProxy updateMaskedAppleIDWith:withCopy completion:completionCopy];
}

void __62__FMDFMIPManager_Private__updateMaskedAppleIDWith_completion___block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __62__FMDFMIPManager_Private__updateMaskedAppleIDWith_completion___block_invoke_cold_1();
  }
}

- (void)clearMaskedAppleIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1DF650000, v4, OS_LOG_TYPE_DEFAULT, "Framework (Private) : clearMaskedAppleID", v9, 2u);
  }

  fmdFMIPLastOperationResult = 0;
  v5 = +[FMNSXPCConnectionCache sharedCache];
  v6 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v7 = [v5 resumeConnectionWithConfiguration:v6];

  [v7 addFailureBlock:&__block_literal_global_23_0];
  remoteObjectProxy = [v7 remoteObjectProxy];
  [remoteObjectProxy clearMaskedAppleIDWithCompletion:completionCopy];
}

void __60__FMDFMIPManager_Private__clearMaskedAppleIDWithCompletion___block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __60__FMDFMIPManager_Private__clearMaskedAppleIDWithCompletion___block_invoke_cold_1();
  }
}

- (void)primaryAppleAccountRemoved
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DF650000, v2, OS_LOG_TYPE_DEFAULT, "Framework (Private) : primaryAppleAccountRemoved", v7, 2u);
  }

  fmdFMIPLastOperationResult = 0;
  v3 = +[FMNSXPCConnectionCache sharedCache];
  v4 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v5 = [v3 resumeConnectionWithConfiguration:v4];

  [v5 addFailureBlock:&__block_literal_global_25];
  remoteObjectProxy = [v5 remoteObjectProxy];
  [remoteObjectProxy primaryAppleAccountRemoved];
}

void __53__FMDFMIPManager_Private__primaryAppleAccountRemoved__block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __53__FMDFMIPManager_Private__primaryAppleAccountRemoved__block_invoke_cold_1();
  }
}

- (void)_managedLostModeType
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1DF650000, v0, v1, "managedLostModeDict %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_needsAckLostModeType
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1DF650000, v0, v1, "needsLocateAckLostModeDict %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)lostModeInfo
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [self description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_1DF650000, v2, v3, "lostModeInfo = %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)enableLostModeWithInfo:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __41__FMDFMIPManager_enableLostModeWithInfo___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for enableLostModeWithInfo: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __33__FMDFMIPManager_disableLostMode__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for disableLostMode %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)enableManagedLostModeWithInfo:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_1DF650000, a1, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __59__FMDFMIPManager_enableManagedLostModeWithInfo_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "Error updating managed lost mode info : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)disableManagedLostModeWithLocatedMessage:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_1DF650000, a1, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __70__FMDFMIPManager_disableManagedLostModeWithLocatedMessage_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "Error updating managed lost mode info to disabled : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)userDidAckManagedLostModeLocateWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_1DF650000, a1, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __64__FMDFMIPManager_userDidAckManagedLostModeLocateWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "Error updating NeedsLocateAck lost mode into to disabled : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __50__FMDFMIPManager_playSoundWithOptions_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for playSoundWithOptions:completion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__FMDFMIPManager_deviceActivationDidSucceed__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for deviceActivationDidSucceed %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__FMDFMIPManager_fmipStateWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for fmipStateWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__FMDFMIPManager_fmipStateWithCompletion___block_invoke_47_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "Error fetching the FMIP state : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__FMDFMIPManager_fmipAccountWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for fmipAccountWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__FMDFMIPManager_fmipAccountWithCompletion___block_invoke_49_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "Error fetching the FMIP account : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fmipAccount
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(*self + 40);
  v4 = *(*a2 + 40);
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_1DF650000, log, OS_LOG_TYPE_DEBUG, "Username : %@, personID : %@", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __43__FMDFMIPManager_didChangeFMIPAccountInfo___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for didChangeFMIPAccountInfo: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)enableFMIPInContext:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __38__FMDFMIPManager_enableFMIPInContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for enableFMIPInContext: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __79__FMDFMIPManager_disableFMIPUsingToken_forPairedDeviceWithUDID_withCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for disableFMIPUsingToken:forPairedDeviceWithUDID:withCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __79__FMDFMIPManager_disableFMIPUsingToken_forPairedDeviceWithUDID_withCompletion___block_invoke_60_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __76__FMDFMIPManager_disableFMIPForAccount_pairedDeviceWithUDID_withCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for disableFMIPForAccount:pairedDeviceWithUDID:withCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __76__FMDFMIPManager_disableFMIPForAccount_pairedDeviceWithUDID_withCompletion___block_invoke_61_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __79__FMDFMIPManager_markAsMissingSupportedForPairedDeviceWithUDID_withCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for markAsMissingSupportedForPairedDeviceWithUDID:withCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __79__FMDFMIPManager_markAsMissingSupportedForPairedDeviceWithUDID_withCompletion___block_invoke_62_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __78__FMDFMIPManager_markPairedDeviceWithUDID_asMissingUsingToken_withCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for markPairedDeviceWithUDID:asMissingUsingToken:withCompletion:completion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __78__FMDFMIPManager_markPairedDeviceWithUDID_asMissingUsingToken_withCompletion___block_invoke_64_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __56__FMDFMIPManager_isActivationLockAllowedWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for isActivationLockAllowedWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__FMDFMIPManager_isActivationLockAllowedWithCompletion___block_invoke_65_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "Error fetching ActivationLockAllowed : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__FMDFMIPManager_isActivationLockEnabledWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for isActivationLockEnabledWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__FMDFMIPManager_isActivationLockEnabledWithCompletion___block_invoke_66_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "Error fetching ActivationLockEnabled : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__FMDFMIPManager_isActivationLockedWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for isActivationLockedWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__FMDFMIPManager_isActivationLockedWithCompletion___block_invoke_67_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "Error fetching the ActivationLocked : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__FMDFMIPManager_enableActivationLockWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for enableActivationLockWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__FMDFMIPManager_enableActivationLockWithCompletion___block_invoke_68_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "Error enabling activaton lock : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __50__FMDFMIPManager_didReceiveLostModeExitAuthToken___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for didReceiveLostModeExitAuthToken: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__FMDFMIPManager_lowBatteryLocateEnabledWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for lowBatteryLocateEnabledWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__FMDFMIPManager_setLowBatteryLocateEnabled_withCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for setLowBatteryLocateEnabled:withCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__FMDFMIPManager_signatureHeadersWithData_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for signatureHeadersWithData:completion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__FMDFMIPManager_signatureHeadersWithData_completion___block_invoke_77_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "Error completing signature generation : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __92__FMDFMIPManager_startPlayingSoundForAccessory_duration_rampUpDuration_channels_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for startPlayingSoundForAccessory:duration:rampUpDuration:channels:completion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __92__FMDFMIPManager_startPlayingSoundForAccessory_duration_rampUpDuration_channels_completion___block_invoke_80_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "playSoundForAccessory encountered an error : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __75__FMDFMIPManager_stopPlayingSoundForAccessory_rampDownDuration_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for stopPlayingSoundForAccessory:rampDownDuration:completion %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __75__FMDFMIPManager_stopPlayingSoundForAccessory_rampDownDuration_completion___block_invoke_81_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "stopSoundForAccessory encountered an error : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__FMDFMIPManager_waitForRoutableAccessory_timeout_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for waitForRoutableAccessory:timeout:completion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__FMDFMIPManager_waitForRoutableAccessory_timeout_completion___block_invoke_82_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "waitForRoutableAccessory encountered an error : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__FMDFMIPManager_soundStoppedForAccessoryIdentifier___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for soundStoppedForAccessoryIdentifier: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __39__FMDFMIPManager_clearData_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for clearData:completion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __48__FMDFMIPManager_attemptUCRTHealing_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for attemptUCRTHealing: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__FMDFMIPManager_fetchAccessoryConfigurations___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for fetchAccessoryConfigurations: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__FMDFMIPManager_removeAccessoryWithDiscoveryId_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for removeAccessoryWithDiscoveryId: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__FMDFMIPManager_setPhoneNumber_toAccessoryWithDiscoveryId_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for setPhoneNumber: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__FMDFMIPManager_getConnectedAccessoriesDiscoveryIds___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error whle trying to get connected accessories %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__FMDFMIPManager_registerDeviceForPairingLock_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __51__FMDFMIPManager_updatePairingLockInfo_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __46__FMDFMIPManager_pairingCheckWith_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __55__FMDFMIPManager__getAccessoriesWithFilter_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for getAccessoriesWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__FMDFMIPManager__getAccessoriesWithFilter_completion___block_invoke_174_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "Error getting the accessory list : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__FMDFMIPManager__forceFMWUpgradeAlertWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for _forceFMWUpgradeAlertWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__FMDFMIPManager__updateManagedLostModeWithInfo_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for _updateManagedLostModeWithInfo: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__FMDFMIPManager__updateManagedLostModeWithInfo_completion___block_invoke_178_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "updateManagedLostModeInfo encountered an error : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __67__FMDFMIPManager__updateNeedsLocateAckLostModeWithInfo_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for _updateNeedsLocateAckLostModeWithInfo: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __67__FMDFMIPManager__updateNeedsLocateAckLostModeWithInfo_completion___block_invoke_179_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "updateNeedsLocateAckLostModeInfo encountered an error : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__FMDFMIPManager__initiateLostModeExitAuthForIDSDeviceID_withCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for _initiateLostModeExitAuthForIDSDeviceID:withCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__FMDFMIPManager__disableFMIPUsingToken_inContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for _disableFMIPUsingToken:inContext:completion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__FMDFMIPManager__disableFMIPUsingToken_inContext_completion___block_invoke_182_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "_disableFMIPUsingToken:inContext:completion: encountered an error : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__FMDFMIPManager_getManagedLostModeFileURL__block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) managedLostModeFileURL];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_1DF650000, v2, v3, "Static URL %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __50__FMDFMIPManager_getNeedsLocateAckLostModeFileURL__block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) needsLocateAckLostModeFileURL];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_1DF650000, v2, v3, "Static URL %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __50__FMDFMIPManager_playSoundWithMessage_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for playSoundWithMessage:completion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __50__FMDFMIPManager_playSoundWithMessage_completion___block_invoke_184_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "playSoundWithMessage encountered an error : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __49__FMDFMIPManager_stopSoundMessageWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for stopSoundMessageWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __49__FMDFMIPManager_stopSoundMessageWithCompletion___block_invoke_185_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "stopSoundMessageWithCompletion encountered an error : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__FMDFMIPManager_deviceEligibleForRepairWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for deviceEligibleForRepairWithContext:completion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__FMDFMIPManager_enableRepairWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for enableRepairWithContext:completion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__FMDFMIPManager_activationLockInfoFromDeviceWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for activationLockInfoWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__FMDFMIPManager_storeOfflineFindingInfo_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for storeOfflineFindingInfo: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__FMDFMIPManager_fetchOfflineFindingInfoWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for fetchOfflineFindingInfoWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__FMDFMIPManager_clearOfflineFindingInfoWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for clearOfflineFindingInfoWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__FMDFMIPManager_fetchAPNSTokenWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for fetchAPNSTokenWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__FMDFMIPManager_startLocationMonitoring___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for startLocationMonitoring: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __41__FMDFMIPManager_stopLocationMonitoring___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for stopLocationMonitoring: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__FMDFMIPManager_updatedConfigReceived_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for updatedConfigReceived: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__FMDFMIPManager_startLocationMonitoringWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for startLocationMonitoringWithContext: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__FMDFMIPManager_stopLocationMonitoringWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for stopLocationMonitoringWithContext: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__FMDFMIPManager_didAddLocalFindableAccessory_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for didAddLocalFindableAccessory: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__FMDFMIPManager_didRemoveLocalFindableAccessory_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for didRemoveLocalFindableAccessory: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__FMDFMIPManager_requireDisableLocationWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for requireDisableLocationWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__FMDFMIPManager_disableLocationDisplayWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for disableLocationDisplayWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__FMDFMIPManager_simulatePushWithPayload_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for simulatePushWithOptions: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__FMDFMIPManager_Private__disableBiometricIDForLostModeWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for disableBiometricIDForLostModeWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__FMDFMIPManager_Private__disableBiometricIDForLostModeWithCompletion___block_invoke_12_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1DF650000, v0, v1, "%s encountered an error : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__FMDFMIPManager_Private__setDailyLocateReportEnabled___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for setDailyLocateReportEnabled: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __48__FMDFMIPManager_Private__showDailyLocateReport__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for showDailyLocateReport: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__FMDFMIPManager_Private__addNotificationRequest_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for addNotificationRequest: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__FMDFMIPManager_Private__addNotificationRequest_completion___block_invoke_16_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1DF650000, v0, v1, "%s encountered an error : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__FMDFMIPManager_Private__removeNotificationWithIdentifier_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for removeNotificationWithIdentifier: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__FMDFMIPManager_Private__removeNotificationWithIdentifier_completion___block_invoke_17_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_1DF650000, v0, v1, "%s encountered an error : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__FMDFMIPManager_Private__activationLockVersionWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for activationLockVersionWithCompletion: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__FMDFMIPManager_Private__updateMaskedAppleIDWith_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for updateMaskedAppleID: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__FMDFMIPManager_Private__clearMaskedAppleIDWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for clearMaskedAppleID: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__FMDFMIPManager_Private__primaryAppleAccountRemoved__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_1DF650000, v0, v1, "XPC error for primaryAppleAccountRemoved: %li", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end