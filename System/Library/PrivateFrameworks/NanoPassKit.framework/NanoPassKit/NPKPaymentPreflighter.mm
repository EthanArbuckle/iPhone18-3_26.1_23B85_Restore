@interface NPKPaymentPreflighter
+ (BOOL)watchConnected;
- (NPKPaymentPreflighter)initWithWebService:(id)service targetDevice:(id)device companionAgentConnection:(id)connection;
- (PKPaymentWebServiceTargetDeviceProtocol)targetDevice;
- (id)_errorForConnectionIssue;
- (id)_errorForGizmoAccountNeeded;
- (id)_errorForPasscodeNeeded;
- (id)_errorForUnlockNeeded;
- (id)_errorForWristDetectNeeded;
- (void)_checkCompanioniCloudAccount;
- (void)_checkPasscodeEnabledAndUnlockedStateRequiringPasscode:(BOOL)passcode requiringUnlock:(BOOL)unlock;
- (void)_checkSpaceAvailableOnSecureElement;
- (void)_checkWatchConnected;
- (void)_checkWatchiCloudAccount;
- (void)_checkWristDetectEnabledState;
- (void)_setAuthRandomIfNecessary;
- (void)addBiometricPassPreflightWithCompletion:(id)completion;
- (void)addCardPreflightWithCompletion:(id)completion;
- (void)addSecureElementPassPreflightWithCompletion:(id)completion;
- (void)transferToCompanionPreflightWithCompletion:(id)completion;
@end

@implementation NPKPaymentPreflighter

+ (BOOL)watchConnected
{
  v2 = NPKIsRunningInNPKCompanionAgent();
  v3 = objc_alloc(MEMORY[0x277D18778]);
  if (v2)
  {
    v4 = @"com.apple.private.alloy.passbook.maintenance";
  }

  else
  {
    v4 = @"com.apple.private.alloy.passbook.provisioning";
  }

  v5 = [v3 initWithService:v4];
  v6 = NPKIsConnectedToPairedOrPairingDeviceFromService(v5);

  return v6;
}

- (NPKPaymentPreflighter)initWithWebService:(id)service targetDevice:(id)device companionAgentConnection:(id)connection
{
  serviceCopy = service;
  deviceCopy = device;
  connectionCopy = connection;
  v20.receiver = self;
  v20.super_class = NPKPaymentPreflighter;
  v12 = [(NPKPaymentPreflighter *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_webService, service);
    objc_storeWeak(&v13->_targetDevice, deviceCopy);
    objc_storeStrong(&v13->_companionAgentConnection, connection);
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v14 = getPUConnectionClass_softClass;
    v25 = getPUConnectionClass_softClass;
    if (!getPUConnectionClass_softClass)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __getPUConnectionClass_block_invoke;
      v21[3] = &unk_2799457C8;
      v21[4] = &v22;
      __getPUConnectionClass_block_invoke(v21);
      v14 = v23[3];
    }

    v15 = v14;
    _Block_object_dispose(&v22, 8);
    v16 = objc_alloc_init(v14);
    [(NPKPaymentPreflighter *)v13 setPasscodeConnection:v16];
    v17 = objc_alloc(MEMORY[0x277D2BD90]);
    v18 = [v17 initWithQueue:MEMORY[0x277D85CD0]];
    [(NPKPaymentPreflighter *)v13 setSystemSettingsManager:v18];
    v13->_needsSetAuthRandom = 1;
  }

  return v13;
}

- (void)addCardPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__NPKPaymentPreflighter_addCardPreflightWithCompletion___block_invoke;
  v6[3] = &unk_279945530;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __56__NPKPaymentPreflighter_addCardPreflightWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPreflighting:1];
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setPreflightCompletionHandler:v2];

  [*(a1 + 32) _checkSpaceAvailableOnSecureElement];
  [*(a1 + 32) _checkWatchConnected];
  [*(a1 + 32) _checkCompanioniCloudAccount];
  [*(a1 + 32) _checkWatchiCloudAccount];
  [*(a1 + 32) _checkPasscodeEnabledAndUnlockedState];
  [*(a1 + 32) _checkWristDetectEnabledState];
  v3 = *(a1 + 32);

  return [v3 _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
}

- (void)transferToCompanionPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  watchConnected = [objc_opt_class() watchConnected];
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (watchConnected)
  {
    if (v7)
    {
      v8 = pk_Payment_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Transfer to companion preflight: watch is connected", buf, 2u);
      }
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__NPKPaymentPreflighter_transferToCompanionPreflightWithCompletion___block_invoke;
    v17[3] = &unk_279945198;
    v9 = &v18;
    v18 = completionCopy;
    v10 = completionCopy;
    v11 = MEMORY[0x277D85CD0];
    v12 = v17;
  }

  else
  {
    if (v7)
    {
      v13 = pk_Payment_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Transfer to companion preflight: watch is not connected", buf, 2u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__NPKPaymentPreflighter_transferToCompanionPreflightWithCompletion___block_invoke_63;
    block[3] = &unk_279946670;
    v9 = &v16;
    block[4] = self;
    v16 = completionCopy;
    v14 = completionCopy;
    v11 = MEMORY[0x277D85CD0];
    v12 = block;
  }

  dispatch_async(v11, v12);
}

void __68__NPKPaymentPreflighter_transferToCompanionPreflightWithCompletion___block_invoke_63(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _errorForConnectionIssue];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)addSecureElementPassPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__NPKPaymentPreflighter_addSecureElementPassPreflightWithCompletion___block_invoke;
  v6[3] = &unk_279945530;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __69__NPKPaymentPreflighter_addSecureElementPassPreflightWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPreflighting:1];
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setPreflightCompletionHandler:v2];

  [*(a1 + 32) _checkSpaceAvailableOnSecureElement];
  [*(a1 + 32) _checkWatchConnected];
  [*(a1 + 32) _checkCompanioniCloudAccount];
  [*(a1 + 32) _checkWatchiCloudAccount];
  [*(a1 + 32) _checkPasscodeEnabledState];
  [*(a1 + 32) _checkWristDetectEnabledState];
  v3 = *(a1 + 32);

  return [v3 _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
}

- (void)addBiometricPassPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__NPKPaymentPreflighter_addBiometricPassPreflightWithCompletion___block_invoke;
  v6[3] = &unk_279945530;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __65__NPKPaymentPreflighter_addBiometricPassPreflightWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPreflighting:1];
  [*(a1 + 32) setNeedsSetAuthRandom:0];
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setPreflightCompletionHandler:v2];

  [*(a1 + 32) _checkSpaceAvailableOnSecureElement];
  [*(a1 + 32) _checkWatchConnected];
  [*(a1 + 32) _checkCompanioniCloudAccount];
  [*(a1 + 32) _checkWatchiCloudAccount];
  [*(a1 + 32) _checkPasscodeEnabledAndUnlockedState];
  [*(a1 + 32) _checkWristDetectEnabledState];
  v3 = *(a1 + 32);

  return [v3 _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
}

- (void)_checkSpaceAvailableOnSecureElement
{
  if (PKEnableDynamicSEAllocation())
  {
    [(NPKPaymentPreflighter *)self setSpaceAvailableOnSecureElement:1];

    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }

  else
  {
    companionAgentConnection = [(NPKPaymentPreflighter *)self companionAgentConnection];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __60__NPKPaymentPreflighter__checkSpaceAvailableOnSecureElement__block_invoke;
    v4[3] = &unk_279946B08;
    v4[4] = self;
    [companionAgentConnection paymentPassUniqueIDsSynchronous:0 excludingDeactivated:1 reply:v4];
  }
}

void __60__NPKPaymentPreflighter__checkSpaceAvailableOnSecureElement__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__NPKPaymentPreflighter__checkSpaceAvailableOnSecureElement__block_invoke_2;
  v6[3] = &unk_2799454E0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __60__NPKPaymentPreflighter__checkSpaceAvailableOnSecureElement__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = NPKMaxPaymentCards();
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || v2 < v3;
  [*(a1 + 40) setSpaceAvailableOnSecureElement:v6];
  if (v6 == 1)
  {
    v7 = *(a1 + 40);

    [v7 _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }

  else
  {
    v8 = MEMORY[0x277CCABB8];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:NPKMaxPaymentCards()];
    v13 = [v8 localizedStringFromNumber:v9 numberStyle:0];

    v10 = PKLocalizedPaymentString(&cfstr_DeviceProvisio.isa);
    v11 = PKLocalizedPaymentString(&cfstr_DeviceProvisio_0.isa, &stru_286C96FD8.isa, v13);
    v12 = PKDisplayableErrorCustom();
    [*(a1 + 40) _finishPresentingSetupControllerIfReadyWithSuccess:0 error:v12];
  }
}

- (void)_checkWatchConnected
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Checking watch connected state…", buf, 2u);
    }
  }

  watchConnected = [objc_opt_class() watchConnected];
  [(NPKPaymentPreflighter *)self setWatchConnected:watchConnected];
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (watchConnected)
  {
    if (v8)
    {
      v9 = pk_Payment_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: gizmo connected", v13, 2u);
      }
    }

    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }

  else
  {
    if (v8)
    {
      v10 = pk_Payment_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: gizmo not connected", v12, 2u);
      }
    }

    _errorForConnectionIssue = [(NPKPaymentPreflighter *)self _errorForConnectionIssue];
    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:0 error:_errorForConnectionIssue];
  }
}

- (void)_checkCompanioniCloudAccount
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Checking companion iCloud account state…", buf, 2u);
    }
  }

  v6 = PKHasVerifiedPrimaryAppleAccount();
  [(NPKPaymentPreflighter *)self setNeedsCompanioniCloudAccount:v6 == 0];
  [(NPKPaymentPreflighter *)self setCheckedCompanioniCloudStatus:1];
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    if (v8)
    {
      v9 = pk_Payment_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: has companion account", v13, 2u);
      }
    }

    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }

  else
  {
    if (v8)
    {
      v10 = pk_Payment_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: does not have companion account", v12, 2u);
      }
    }

    _errorForCompanionAccountNeeded = [(NPKPaymentPreflighter *)self _errorForCompanionAccountNeeded];
    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:0 error:_errorForCompanionAccountNeeded];
  }
}

- (void)_checkWatchiCloudAccount
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Checking watch iCloud account state…", buf, 2u);
    }
  }

  if (NPKIsCurrentlyPairing())
  {
    v6 = pk_Payment_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_Payment_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Device is pairing", buf, 2u);
      }
    }

    [(NPKPaymentPreflighter *)self setCheckedWatchiCloudStatus:1];
    [(NPKPaymentPreflighter *)self setNeedsWatchiCloudAccount:0];
LABEL_17:
    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
    return;
  }

  if (NPKPairedOrPairingDeviceIsTinker())
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Tinker devices are always signed in to iCloud.", buf, 2u);
      }
    }

    [(NPKPaymentPreflighter *)self setNeedsWatchiCloudAccount:0];
    [(NPKPaymentPreflighter *)self setCheckedWatchiCloudStatus:1];
    goto LABEL_17;
  }

  objc_initWeak(buf, self);
  systemSettingsManager = [(NPKPaymentPreflighter *)self systemSettingsManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__NPKPaymentPreflighter__checkWatchiCloudAccount__block_invoke;
  v13[3] = &unk_279946B30;
  objc_copyWeak(&v14, buf);
  v13[4] = self;
  [systemSettingsManager getiCloudInfo:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __49__NPKPaymentPreflighter__checkWatchiCloudAccount__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = v5;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Got iCloud info: %@ %@", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (!v6)
  {
    v12 = objc_alloc_init(MEMORY[0x277CB8F48]);
    v29 = [v12 aa_primaryAppleAccount];
    v13 = [v29 aa_personID];
    [v5 objectForKeyedSubscript:*MEMORY[0x277D2BDA0]];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v33 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v27 = v12;
      v28 = v5;
      v17 = *v31;
      v18 = *MEMORY[0x277D2BD98];
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = [*(*(&v30 + 1) + 8 * i) objectForKeyedSubscript:v18];
          v21 = pk_Payment_log();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

          if (v22)
          {
            v23 = pk_Payment_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v36 = v20;
              v37 = 2112;
              v38 = v29;
              _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: Person ID: %@ Local account: %@", buf, 0x16u);
            }
          }

          v24 = [v20 isEqualToString:v13];

          if (v24)
          {
            v25 = 0;
            goto LABEL_22;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v25 = 1;
LABEL_22:
      v6 = 0;
      v5 = v28;
      v12 = v27;
    }

    else
    {
      v25 = 1;
    }

    [v11 setNeedsWatchiCloudAccount:v25];
    [v11 setCheckedWatchiCloudStatus:1];
    [v11 _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];

    goto LABEL_25;
  }

  if (([WeakRetained checkedWatchiCloudStatus] & 1) == 0)
  {
    v12 = [*(a1 + 32) _errorForConnectionIssue];
    [v11 _finishPresentingSetupControllerIfReadyWithSuccess:0 error:v12];
LABEL_25:
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_checkPasscodeEnabledAndUnlockedStateRequiringPasscode:(BOOL)passcode requiringUnlock:(BOOL)unlock
{
  v40 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = NPKIsCurrentlyPairing();
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Device is pairing", buf, 2u);
      }
    }

    [(NPKPaymentPreflighter *)self setCheckedWatchPasscodeAndUnlockedStatus:1];
    [(NPKPaymentPreflighter *)self setNeedsPasscode:0];
    [(NPKPaymentPreflighter *)self setNeedsUnlock:0];
    [(NPKPaymentPreflighter *)self setAuthRandomSetIfNecessary:1];
    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }

  else
  {
    if (v10)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = date;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Checking passcode enabled and unlocked state with query date: %@", buf, 0xCu);
      }
    }

    [(NPKPaymentPreflighter *)self setWatchPasscodeAndUnlockedQueryDate:date];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke;
    aBlock[3] = &unk_279946B80;
    aBlock[4] = self;
    passcodeCopy = passcode;
    unlockCopy = unlock;
    v13 = _Block_copy(aBlock);
    IsTinker = NPKPairedOrPairingDeviceIsTinker();
    v15 = pk_Payment_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (IsTinker)
    {
      if (v16)
      {
        v17 = pk_Payment_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Fetching passcode state for tinker device", buf, 2u);
        }
      }

      webService = [(NPKPaymentPreflighter *)self webService];
      targetDevice = [webService targetDevice];
      v20 = targetDevice;
      if (targetDevice)
      {
        targetDevice2 = targetDevice;
      }

      else
      {
        targetDevice2 = [(NPKPaymentPreflighter *)self targetDevice];
      }

      v24 = targetDevice2;

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke_80;
      v33[3] = &unk_279946BA8;
      v34 = v13;
      [v24 fetchRemoteDevicePasscodeStateWithCompletion:v33];
    }

    else
    {
      if (v16)
      {
        v22 = pk_Payment_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Fetching passcode state for classic device", buf, 2u);
        }
      }

      passcodeConnection = [(NPKPaymentPreflighter *)self passcodeConnection];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke_81;
      v31[3] = &unk_279946BD0;
      v32 = v13;
      [passcodeConnection getRemoteDeviceState:v31];

      v24 = v32;
    }

    objc_initWeak(buf, self);
    v25 = dispatch_time(0, 45000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke_2_83;
    block[3] = &unk_279945290;
    objc_copyWeak(&v30, buf);
    v28 = date;
    selfCopy = self;
    dispatch_after(v25, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke_2;
  block[3] = &unk_279946B58;
  v13 = a2;
  v14 = a3;
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v15 = *(a1 + 40);
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 49);
      v7 = *(a1 + 32);
      v16[0] = 67109634;
      v16[1] = v5;
      v17 = 1024;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: passcode enabled %d device passcode locked %d error %@", v16, 0x18u);
    }
  }

  if (*(a1 + 32))
  {
    if (([*(a1 + 40) checkedWatchPasscodeAndUnlockedStatus] & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = [v8 _errorForConnectionIssue];
      [v8 _finishPresentingSetupControllerIfReadyWithSuccess:0 error:v9];
    }
  }

  else
  {
    v10 = *(a1 + 50) == 1 && *(a1 + 48) == 0;
    [*(a1 + 40) setNeedsPasscode:v10];
    if (*(a1 + 51) == 1)
    {
      v11 = *(a1 + 49);
    }

    else
    {
      v11 = 0;
    }

    [*(a1 + 40) setNeedsUnlock:v11];
    [*(a1 + 40) setCheckedWatchPasscodeAndUnlockedStatus:1];
    [*(a1 + 40) _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
    if (([*(a1 + 40) needsPasscode] & 1) == 0 && (objc_msgSend(*(a1 + 40), "needsUnlock") & 1) == 0)
    {
      v12 = pk_Payment_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v13)
      {
        v14 = pk_Payment_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16[0]) = 0;
          _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Setting auth random if necessary…", v16, 2u);
        }
      }

      [*(a1 + 40) _setAuthRandomIfNecessary];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke_2_83(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [WeakRetained watchPasscodeAndUnlockedQueryDate];
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: query date %@ now %@", &v11, 0x16u);
    }
  }

  v8 = [*(a1 + 40) watchPasscodeAndUnlockedQueryDate];
  if (![v8 isEqual:*(a1 + 32)])
  {
    goto LABEL_8;
  }

  v9 = [WeakRetained checkedWatchPasscodeAndUnlockedStatus];

  if ((v9 & 1) == 0)
  {
    v8 = [*(a1 + 40) _errorForConnectionIssue];
    [WeakRetained _finishPresentingSetupControllerIfReadyWithSuccess:0 error:v8];
LABEL_8:
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_checkWristDetectEnabledState
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = NPKPairedOrPairingDevice();
  v4 = [v3 valueForProperty:*MEMORY[0x277D2BB10]];
  bOOLValue = [v4 BOOLValue];

  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = bOOLValue;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Watch has SEP: %d", buf, 8u);
    }
  }

  if (bOOLValue)
  {
    [(NPKPaymentPreflighter *)self setNeedsWristDetection:0];
  }

  else
  {
    v9 = NPKDomainAccessorForDomain(@"com.apple.Carousel");
    -[NPKPaymentPreflighter setNeedsWristDetection:](self, "setNeedsWristDetection:", [v9 BOOLForKey:@"DisableWristDetection"]);
  }

  [(NPKPaymentPreflighter *)self setCheckedWristDetectionStatus:1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NPKPaymentPreflighter__checkWristDetectEnabledState__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setAuthRandomIfNecessary
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Setting auth random if necessary at the beginning of the provisioning flow", buf, 2u);
    }
  }

  if ([(NPKPaymentPreflighter *)self needsSetAuthRandom])
  {
    webService = [(NPKPaymentPreflighter *)self webService];
    targetDevice = [webService targetDevice];
    v8 = targetDevice;
    if (targetDevice)
    {
      targetDevice2 = targetDevice;
    }

    else
    {
      targetDevice2 = [(NPKPaymentPreflighter *)self targetDevice];
    }

    v10 = targetDevice2;

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__NPKPaymentPreflighter__setAuthRandomIfNecessary__block_invoke;
    v11[3] = &unk_279946BF8;
    v11[4] = self;
    [v10 setNewAuthRandomIfNecessaryAtBeginningOfProvisioningFlow:v11];
  }

  else
  {
    [(NPKPaymentPreflighter *)self setAuthRandomSetIfNecessary:1];
    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }
}

void __50__NPKPaymentPreflighter__setAuthRandomIfNecessary__block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = a2;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Auth random set if necessary (success %d)", buf, 8u);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__NPKPaymentPreflighter__setAuthRandomIfNecessary__block_invoke_90;
  v8[3] = &unk_279944FC0;
  v9 = a2;
  v8[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __50__NPKPaymentPreflighter__setAuthRandomIfNecessary__block_invoke_90(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) setAuthRandomSetIfNecessary:1];
    v3 = *(a1 + 32);

    [v3 _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }

  else
  {
    v4 = [*(a1 + 32) _errorForGenericIssue];
    [v1 _finishPresentingSetupControllerIfReadyWithSuccess:0 error:v4];
  }
}

- (id)_errorForWristDetectNeeded
{
  v23[2] = *MEMORY[0x277D85DE8];
  IsTinker = NPKPairedOrPairingDeviceIsTinker();
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D385D8];
  v5 = *MEMORY[0x277CCA470];
  if (IsTinker)
  {
    v22[0] = *MEMORY[0x277CCA470];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"WRIST_DETECT_REQUIRED_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v23[0] = v7;
    v22[1] = *MEMORY[0x277CCA498];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"WRIST_DETECT_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v23[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v11 = [v3 errorWithDomain:v4 code:0 userInfo:v10];
  }

  else
  {
    v20[0] = *MEMORY[0x277CCA470];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = v3;
    v7 = [v6 localizedStringForKey:@"WRIST_DETECT_REQUIRED_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v21[0] = v7;
    v20[1] = *MEMORY[0x277CCA498];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"WRIST_DETECT_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v21[1] = v9;
    v20[2] = *MEMORY[0x277CCA480];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v10 localizedStringForKey:@"WRIST_DETECT_REQUIRED_ALERT_BUTTON" value:&stru_286C934F8 table:@"NanoPassKit"];
    v19 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v21[2] = v13;
    v20[3] = *MEMORY[0x277D38628];
    v14 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=PASSCODE_ID"];
    v21[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
    v11 = [v18 errorWithDomain:v4 code:0 userInfo:v15];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_errorForGizmoAccountNeeded
{
  v23[2] = *MEMORY[0x277D85DE8];
  IsTinker = NPKPairedOrPairingDeviceIsTinker();
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D385D8];
  v5 = *MEMORY[0x277CCA470];
  if (IsTinker)
  {
    v22[0] = *MEMORY[0x277CCA470];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"GIZMO_ACCOUNT_REQUIRED_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v23[0] = v7;
    v22[1] = *MEMORY[0x277CCA498];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"GIZMO_ACCOUNT_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v23[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v11 = [v3 errorWithDomain:v4 code:0 userInfo:v10];
  }

  else
  {
    v20[0] = *MEMORY[0x277CCA470];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = v3;
    v7 = [v6 localizedStringForKey:@"GIZMO_ACCOUNT_REQUIRED_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v21[0] = v7;
    v20[1] = *MEMORY[0x277CCA498];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"GIZMO_ACCOUNT_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v21[1] = v9;
    v20[2] = *MEMORY[0x277CCA480];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v10 localizedStringForKey:@"GIZMO_ACCOUNT_REQUIRED_ALERT_BUTTON" value:&stru_286C934F8 table:@"NanoPassKit"];
    v19 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v21[2] = v13;
    v20[3] = *MEMORY[0x277D38628];
    v14 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=GENERAL_LINK&path=LINK_WITH_ICLOUD_LINK"];
    v21[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
    v11 = [v18 errorWithDomain:v4 code:0 userInfo:v15];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_errorForPasscodeNeeded
{
  v23[2] = *MEMORY[0x277D85DE8];
  IsTinker = NPKPairedOrPairingDeviceIsTinker();
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D385D8];
  v5 = *MEMORY[0x277CCA470];
  if (IsTinker)
  {
    v22[0] = *MEMORY[0x277CCA470];
    v6 = PKLocalizedPaymentString(&cfstr_PasscodeRequir.isa);
    v23[0] = v6;
    v22[1] = *MEMORY[0x277CCA498];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"PASSCODE_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v23[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v10 = [v3 errorWithDomain:v4 code:0 userInfo:v9];
  }

  else
  {
    v20[0] = *MEMORY[0x277CCA470];
    v6 = PKLocalizedPaymentString(&cfstr_PasscodeRequir.isa);
    v21[0] = v6;
    v20[1] = *MEMORY[0x277CCA498];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"PASSCODE_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v21[1] = v8;
    v20[2] = *MEMORY[0x277CCA480];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v9 localizedStringForKey:@"PASSCODE_REQUIRED_ALERT_BUTTON" value:&stru_286C934F8 table:@"NanoPassKit"];
    v19 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v13 = *MEMORY[0x277D385E0];
    v21[2] = v12;
    v21[3] = MEMORY[0x277CBEC38];
    v14 = *MEMORY[0x277D38628];
    v20[3] = v13;
    v20[4] = v14;
    v15 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=PASSCODE_ID"];
    v21[4] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];
    v10 = [v3 errorWithDomain:v4 code:0 userInfo:v16];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_errorForUnlockNeeded
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D385D8];
  v12[0] = *MEMORY[0x277CCA470];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"UNLOCK_REQUIRED_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
  v13[0] = v5;
  v12[1] = *MEMORY[0x277CCA498];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"UNLOCK_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [v2 errorWithDomain:v3 code:0 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_errorForConnectionIssue
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D385D8];
  v12[0] = *MEMORY[0x277CCA470];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"GIZMO_UNREACHABLE_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
  v13[0] = v5;
  v12[1] = *MEMORY[0x277CCA498];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"GIZMO_UNREACHABLE_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [v2 errorWithDomain:v3 code:0 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PKPaymentWebServiceTargetDeviceProtocol)targetDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_targetDevice);

  return WeakRetained;
}

@end