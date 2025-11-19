@interface DMTAutomatedDeviceEnroller
- (DMTAutomatedDeviceEnroller)initWithEnrollmentPrimitives:(id)a3 enrollmentInformationPrimitives:(id)a4 reachabilityPrimitives:(id)a5 activationPrimitives:(id)a6 wifiPrimitives:(id)a7 profileInstallationPrimitives:(id)a8 destructiveErasePrimitives:(id)a9 nonDestructiveErasePrimitives:(id)a10 powerOffPrimitives:(id)a11;
- (DMTErasePrimitives)nonDestructiveErasePrimitives;
- (void)activateDevice;
- (void)activationCompleteWithSuccess:(BOOL)a3 error:(id)a4;
- (void)beginAutomatedDeviceEnrollment;
- (void)checkActivationStatus;
- (void)checkIfAlreadyEnrolled;
- (void)didDisassociateFromNetworkWithSuccess:(BOOL)a3 error:(id)a4;
- (void)didJoinNetworkWithSuccess:(BOOL)a3 error:(id)a4;
- (void)disassociateWiFi;
- (void)enrollDevice;
- (void)enrollmentCompleteWithResponse:(id)a3 error:(id)a4;
- (void)eraseAllContentAndSettingsDidFinishWithError:(id)a3;
- (void)eraseAllContentAndSettingsWithExternalError:(id)a3;
- (void)eraseAndRestartWithExternalError:(id)a3;
- (void)eraseAndShutDownWithExternalError:(id)a3;
- (void)eraseCurrentNetworkIfNeeded;
- (void)installProfile;
- (void)joinNetwork;
- (void)joinNetworkUsingCredentials;
- (void)profileInstallationDidFinish:(id)a3;
- (void)profileUninstallDidFinish:(id)a3;
- (void)setNetworkCredential:(id)a3 networkPayload:(id)a4 enrollmentNonce:(id)a5 postEnrollmentBehavior:(int64_t)a6 organizationName:(id)a7 organizationType:(int64_t)a8 mdmServerName:(id)a9 networkConfiguration:(int64_t)a10;
- (void)tearDownWithFatalError:(id)a3;
- (void)timeoutOperationDidFinish:(id)a3;
- (void)uninstallProfile;
- (void)verifyProfile;
- (void)waitForReachabilityWithTimeout:(double)a3;
@end

@implementation DMTAutomatedDeviceEnroller

- (DMTAutomatedDeviceEnroller)initWithEnrollmentPrimitives:(id)a3 enrollmentInformationPrimitives:(id)a4 reachabilityPrimitives:(id)a5 activationPrimitives:(id)a6 wifiPrimitives:(id)a7 profileInstallationPrimitives:(id)a8 destructiveErasePrimitives:(id)a9 nonDestructiveErasePrimitives:(id)a10 powerOffPrimitives:(id)a11
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v26 = a8;
  v25 = a9;
  v24 = a10;
  v23 = a11;
  v32.receiver = self;
  v32.super_class = DMTAutomatedDeviceEnroller;
  v18 = [(DMTAutomatedDeviceEnroller *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_enrollmentPrimitives, a3);
    objc_storeStrong(&v19->_enrollmentInformationPrimitives, a4);
    objc_storeStrong(&v19->_reachabilityPrimitives, a5);
    objc_storeStrong(&v19->_activationPrimitives, a6);
    objc_storeStrong(&v19->_wifiPrimitives, a7);
    objc_storeStrong(&v19->_profileInstallationPrimitives, a8);
    objc_storeStrong(&v19->_destructiveErasePrimitives, a9);
    objc_storeStrong(&v19->_nonDestructiveErasePrimitives, a10);
    objc_storeStrong(&v19->_powerOffPrimitives, a11);
    v20 = objc_opt_new();
    operationQueue = v19->_operationQueue;
    v19->_operationQueue = v20;

    v19->_enrollmentState = 0;
  }

  return v19;
}

- (void)setNetworkCredential:(id)a3 networkPayload:(id)a4 enrollmentNonce:(id)a5 postEnrollmentBehavior:(int64_t)a6 organizationName:(id)a7 organizationType:(int64_t)a8 mdmServerName:(id)a9 networkConfiguration:(int64_t)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a9;
  if ([(DMTAutomatedDeviceEnroller *)self isFinalized])
  {
    v22 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [DMTAutomatedDeviceEnroller setNetworkCredential:a2 networkPayload:? enrollmentNonce:? postEnrollmentBehavior:? organizationName:? organizationType:? mdmServerName:? networkConfiguration:?];
    }
  }

  else
  {
    v23 = _DMTLogEnrollment();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_24891B000, v23, OS_LOG_TYPE_DEFAULT, "Receiving enrollment prerequisites...", v25, 2u);
    }

    [(DMTAutomatedDeviceEnroller *)self setEnrollmentState:5];
    [(DMTAutomatedDeviceEnroller *)self setOrganizationName:v20];
    [(DMTAutomatedDeviceEnroller *)self setOrganizationType:a8];
    [(DMTAutomatedDeviceEnroller *)self setMdmServerName:v21];
    [(DMTAutomatedDeviceEnroller *)self setNetworkCredential:v17];
    v24 = [v17 networkName];
    [(DMTAutomatedDeviceEnroller *)self setNetworkName:v24];

    [(DMTAutomatedDeviceEnroller *)self setNetworkPayload:v18];
    [(DMTAutomatedDeviceEnroller *)self setEnrollmentNonce:v19];
    [(DMTAutomatedDeviceEnroller *)self setPostEnrollmentBehavior:a6];
    [(DMTAutomatedDeviceEnroller *)self setNetworkConfiguration:a10];
  }
}

- (void)beginAutomatedDeviceEnrollment
{
  if ([(DMTAutomatedDeviceEnroller *)self isFinalized])
  {
    v4 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [DMTAutomatedDeviceEnroller setNetworkCredential:a2 networkPayload:? enrollmentNonce:? postEnrollmentBehavior:? organizationName:? organizationType:? mdmServerName:? networkConfiguration:?];
    }

LABEL_9:

    return;
  }

  v5 = _DMTLogEnrollment();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24891B000, v5, OS_LOG_TYPE_DEFAULT, "Beginning automated device enrollment...", buf, 2u);
  }

  if ([(DMTAutomatedDeviceEnroller *)self enrollmentState]>= 6)
  {
    v4 = _DMTLogEnrollment();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_24891B000, v4, OS_LOG_TYPE_DEFAULT, "Enrollment already in-progress, ignoring call to begin enrollment", v12, 2u);
    }

    goto LABEL_9;
  }

  [(DMTAutomatedDeviceEnroller *)self setEnrollmentState:6];
  v6 = [(DMTAutomatedDeviceEnroller *)self reachabilityPrimitives];
  v7 = [v6 reachable];

  v8 = _DMTLogEnrollment();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *v11 = 0;
      _os_log_impl(&dword_24891B000, v8, OS_LOG_TYPE_DEFAULT, "Already reachable, skipping to enrollment", v11, 2u);
    }

    [(DMTAutomatedDeviceEnroller *)self checkActivationStatus];
  }

  else
  {
    if (v9)
    {
      *v10 = 0;
      _os_log_impl(&dword_24891B000, v8, OS_LOG_TYPE_DEFAULT, "Not yet reachable, joining network...", v10, 2u);
    }

    [(DMTAutomatedDeviceEnroller *)self joinNetwork];
  }
}

- (void)eraseAndRestartWithExternalError:(id)a3
{
  v5 = a3;
  if ([(DMTAutomatedDeviceEnroller *)self isFinalized])
  {
    v6 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DMTAutomatedDeviceEnroller setNetworkCredential:a2 networkPayload:? enrollmentNonce:? postEnrollmentBehavior:? organizationName:? organizationType:? mdmServerName:? networkConfiguration:?];
    }
  }

  else
  {
    [(DMTAutomatedDeviceEnroller *)self setFinalized:1];
    [(DMTAutomatedDeviceEnroller *)self setEnrollmentState:11];
    [(DMTAutomatedDeviceEnroller *)self eraseAllContentAndSettingsWithExternalError:v5];
  }
}

- (void)eraseAndShutDownWithExternalError:(id)a3
{
  v5 = a3;
  if ([(DMTAutomatedDeviceEnroller *)self isFinalized])
  {
    v6 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DMTAutomatedDeviceEnroller setNetworkCredential:a2 networkPayload:? enrollmentNonce:? postEnrollmentBehavior:? organizationName:? organizationType:? mdmServerName:? networkConfiguration:?];
    }
  }

  else
  {
    [(DMTAutomatedDeviceEnroller *)self setFinalized:1];
    [(DMTAutomatedDeviceEnroller *)self setEnrollmentState:12];
    [(DMTAutomatedDeviceEnroller *)self eraseAllContentAndSettingsWithExternalError:v5];
  }
}

- (void)eraseCurrentNetworkIfNeeded
{
  v3 = [(DMTAutomatedDeviceEnroller *)self installedNetworkPayloadIdentifier];

  if (v3)
  {

    [(DMTAutomatedDeviceEnroller *)self uninstallProfile];
  }

  else
  {
    v4 = [(DMTAutomatedDeviceEnroller *)self networkCredential];
    if (v4 && (v5 = v4, -[DMTAutomatedDeviceEnroller networkName](self, "networkName"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 length], v6, v5, v7))
    {

      [(DMTAutomatedDeviceEnroller *)self disassociateWiFi];
    }

    else
    {
      v8 = _DMTLogGeneral_2();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_24891B000, v8, OS_LOG_TYPE_INFO, "No network configuration needs to be erased", v9, 2u);
      }
    }
  }
}

- (DMTErasePrimitives)nonDestructiveErasePrimitives
{
  nonDestructiveErasePrimitives = self->_nonDestructiveErasePrimitives;
  if (!nonDestructiveErasePrimitives)
  {
    v4 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_24891B000, v4, OS_LOG_TYPE_INFO, "non-destructive erase primitives not found, substituting destructive primtives", v7, 2u);
    }

    nonDestructiveErasePrimitives = self->_destructiveErasePrimitives;
  }

  v5 = nonDestructiveErasePrimitives;

  return v5;
}

- (void)tearDownWithFatalError:(id)a3
{
  [(DMTAutomatedDeviceEnroller *)self setEnrollmentError:a3];

  [(DMTAutomatedDeviceEnroller *)self setEnrollmentState:14];
}

- (void)waitForReachabilityWithTimeout:(double)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [DMTWaitForKVOChangeOperation alloc];
  v6 = [(DMTAutomatedDeviceEnroller *)self reachabilityPrimitives];
  v7 = [(DMTWaitForKVOChangeOperation *)v5 initWithObservedObject:v6 keyPath:@"reachable" expectedValue:MEMORY[0x277CBEC38] requireExpectedValue:0];

  v8 = [[DMTTimeoutOperation alloc] initWithOperation:v7 timeout:1 cancelsOnTimeout:a3];
  [(DMTTimeoutOperation *)v8 addTarget:self selector:sel_timeoutOperationDidFinish_ forOperationEvents:6];
  v9 = _DMTLogEnrollment();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    *buf = 138543362;
    v16 = v10;
    _os_log_impl(&dword_24891B000, v9, OS_LOG_TYPE_DEFAULT, "Waiting for reachability for %{public}@ seconds", buf, 0xCu);
  }

  v11 = [(DMTAutomatedDeviceEnroller *)self operationQueue];
  v14[0] = v7;
  v14[1] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [v11 addOperations:v12 waitUntilFinished:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)timeoutOperationDidFinish:(id)a3
{
  v4 = [(DMTAutomatedDeviceEnroller *)self reachabilityPrimitives];
  v5 = [v4 reachable];

  if (v5)
  {
    v6 = _DMTLogEnrollment();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_24891B000, v6, OS_LOG_TYPE_DEFAULT, "Internet connection acquired...", v16, 2u);
    }

    [(DMTAutomatedDeviceEnroller *)self checkActivationStatus];
  }

  else
  {
    v7 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(DMTAutomatedDeviceEnroller *)v7 timeoutOperationDidFinish:v8, v9, v10, v11, v12, v13, v14];
    }

    v15 = DMTEnrollmentTimeoutErrorForNetworkConfiguration([(DMTAutomatedDeviceEnroller *)self networkConfiguration]);
    [(DMTAutomatedDeviceEnroller *)self tearDownWithFatalError:v15];
  }
}

- (void)joinNetwork
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "networkConfiguration")}];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_24891B000, a2, OS_LOG_TYPE_DEBUG, "Unknown network configuration: %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)verifyProfile
{
  v3 = _DMTLogEnrollment();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_DEFAULT, "Validating Profile...", buf, 2u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__DMTAutomatedDeviceEnroller_verifyProfile__block_invoke;
  v6[3] = &unk_278F5DEC8;
  v6[4] = self;
  v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v6];
  v5 = [(DMTAutomatedDeviceEnroller *)self operationQueue];
  [v5 addOperation:v4];
}

void __43__DMTAutomatedDeviceEnroller_verifyProfile__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) networkPayload];
  v16 = 0;
  v3 = [DMTConfigurationProfile configurationProfileWithData:v2 error:&v16];
  v4 = v16;

  objc_initWeak(&location, *(a1 + 32));
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = +[DMTConfigurationProfileValidatorBundles macBuddyNetworkProfileValidators];
  v14 = v4;
  v6 = [v3 validateWithValidators:v5 error:&v14];
  v7 = v14;

  if (!v6)
  {
    v4 = v7;
LABEL_5:
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__DMTAutomatedDeviceEnroller_verifyProfile__block_invoke_3;
    v9[3] = &unk_278F5E368;
    v8 = &v11;
    objc_copyWeak(&v11, &location);
    v7 = v4;
    v10 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v9);

    goto LABEL_6;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DMTAutomatedDeviceEnroller_verifyProfile__block_invoke_2;
  block[3] = &unk_278F5E3E0;
  v8 = &v13;
  objc_copyWeak(&v13, &location);
  dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_6:
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __43__DMTAutomatedDeviceEnroller_verifyProfile__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained installProfile];
}

void __43__DMTAutomatedDeviceEnroller_verifyProfile__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained tearDownWithFatalError:*(a1 + 32)];
}

- (void)installProfile
{
  v3 = _DMTLogEnrollment();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_DEFAULT, "Installing Profile...", v9, 2u);
  }

  v4 = [DMTInstallProfileOperation alloc];
  v5 = [(DMTAutomatedDeviceEnroller *)self profileInstallationPrimitives];
  v6 = [(DMTAutomatedDeviceEnroller *)self networkPayload];
  v7 = [(DMTInstallProfileOperation *)v4 initWithProfileInstallationPrimitives:v5 profileData:v6];

  [(DMTInstallProfileOperation *)v7 addTarget:self selector:sel_profileInstallationDidFinish_ forOperationEvents:6];
  v8 = [(DMTAutomatedDeviceEnroller *)self operationQueue];
  [v8 addOperation:v7];
}

- (void)profileInstallationDidFinish:(id)a3
{
  v4 = a3;
  v5 = [v4 error];

  if (v5)
  {
    v9 = [v4 error];

    [(DMTAutomatedDeviceEnroller *)self tearDownWithFatalError:v9];
  }

  else
  {
    v6 = [v4 resultObject];

    [(DMTAutomatedDeviceEnroller *)self setInstalledNetworkPayloadIdentifier:v6];
    v7 = [(DMTAutomatedDeviceEnroller *)self reachabilityPrimitives];
    LODWORD(v6) = [v7 reachable];

    if (v6)
    {
      v8 = _DMTLogGeneral_2();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24891B000, v8, OS_LOG_TYPE_INFO, "Already reachable, skipping to enrollment", buf, 2u);
      }

      [(DMTAutomatedDeviceEnroller *)self enrollDevice];
    }

    else
    {

      [(DMTAutomatedDeviceEnroller *)self waitForReachabilityWithTimeout:30.0];
    }
  }
}

- (void)uninstallProfile
{
  v3 = _DMTLogEnrollment();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_DEFAULT, "Uninstalling Profile...", v9, 2u);
  }

  v4 = [DMTUninstallProfileOperation alloc];
  v5 = [(DMTAutomatedDeviceEnroller *)self profileInstallationPrimitives];
  v6 = [(DMTAutomatedDeviceEnroller *)self installedNetworkPayloadIdentifier];
  v7 = [(DMTUninstallProfileOperation *)v4 initWithProfileInstallationPrimitives:v5 profileIdentifier:v6];

  [(DMTUninstallProfileOperation *)v7 addTarget:self selector:sel_profileUninstallDidFinish_ forOperationEvents:6];
  v8 = [(DMTAutomatedDeviceEnroller *)self operationQueue];
  [v8 addOperation:v7];
}

- (void)profileUninstallDidFinish:(id)a3
{
  v4 = a3;
  v5 = [v4 error];

  if (v5)
  {
    v6 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(DMTAutomatedDeviceEnroller *)self profileUninstallDidFinish:v4];
    }
  }

  else
  {
    [(DMTAutomatedDeviceEnroller *)self setInstalledNetworkPayloadIdentifier:0];
    v6 = _DMTLogEnrollment();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_24891B000, v6, OS_LOG_TYPE_DEFAULT, "Profile uninstalled successfully", v7, 2u);
    }
  }
}

- (void)joinNetworkUsingCredentials
{
  objc_initWeak(&location, self);
  v3 = _DMTLogEnrollment();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_DEFAULT, "Joining network using provided credentials...", buf, 2u);
  }

  v4 = [(DMTAutomatedDeviceEnroller *)self wifiPrimitives];
  v5 = [(DMTAutomatedDeviceEnroller *)self networkCredential];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__DMTAutomatedDeviceEnroller_joinNetworkUsingCredentials__block_invoke;
  v6[3] = &unk_278F5E5D8;
  objc_copyWeak(&v7, &location);
  [v4 joinWiFiNetworkWithCredential:v5 timeout:v6 completion:60.0];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __57__DMTAutomatedDeviceEnroller_joinNetworkUsingCredentials__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DMTAutomatedDeviceEnroller_joinNetworkUsingCredentials__block_invoke_2;
  block[3] = &unk_278F5E5B0;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __57__DMTAutomatedDeviceEnroller_joinNetworkUsingCredentials__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didJoinNetworkWithSuccess:*(a1 + 48) error:*(a1 + 32)];
}

- (void)didJoinNetworkWithSuccess:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  if (a3)
  {
    [(DMTAutomatedDeviceEnroller *)self waitForReachabilityWithTimeout:30.0];
  }

  else
  {
    v7 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DMTAutomatedDeviceEnroller didJoinNetworkWithSuccess:? error:?];
    }

    [(DMTAutomatedDeviceEnroller *)self tearDownWithFatalError:v6];
  }
}

- (void)disassociateWiFi
{
  v3 = _DMTLogGeneral_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_INFO, "Disassociating current WiFi network...", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [(DMTAutomatedDeviceEnroller *)self wifiPrimitives];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__DMTAutomatedDeviceEnroller_disassociateWiFi__block_invoke;
  v5[3] = &unk_278F5E5D8;
  objc_copyWeak(&v6, buf);
  [v4 disassociateWiFiNetworkWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __46__DMTAutomatedDeviceEnroller_disassociateWiFi__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__DMTAutomatedDeviceEnroller_disassociateWiFi__block_invoke_2;
  block[3] = &unk_278F5E5B0;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __46__DMTAutomatedDeviceEnroller_disassociateWiFi__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didDisassociateFromNetworkWithSuccess:*(a1 + 48) error:*(a1 + 32)];
}

- (void)didDisassociateFromNetworkWithSuccess:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = _DMTLogEnrollment();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_24891B000, v7, OS_LOG_TYPE_DEFAULT, "Disassociated current WiFi network successfully", v8, 2u);
    }
  }

  else
  {
    v7 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DMTAutomatedDeviceEnroller didDisassociateFromNetworkWithSuccess:? error:?];
    }
  }
}

- (void)checkActivationStatus
{
  v3 = _DMTLogEnrollment();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_DEFAULT, "Checking activation status...", buf, 2u);
  }

  [(DMTAutomatedDeviceEnroller *)self setEnrollmentState:8];
  objc_initWeak(buf, self);
  v4 = [(DMTAutomatedDeviceEnroller *)self activationPrimitives];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__DMTAutomatedDeviceEnroller_checkActivationStatus__block_invoke;
  v5[3] = &unk_278F5E5D8;
  objc_copyWeak(&v6, buf);
  [v4 fetchActivationStateWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __51__DMTAutomatedDeviceEnroller_checkActivationStatus__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DMTAutomatedDeviceEnroller_checkActivationStatus__block_invoke_2;
  block[3] = &unk_278F5E5B0;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __51__DMTAutomatedDeviceEnroller_checkActivationStatus__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained activationStatusFetchComplete:*(a1 + 48) error:*(a1 + 32)];
}

- (void)activateDevice
{
  v3 = _DMTLogEnrollment();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_DEFAULT, "Activating device...", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [(DMTAutomatedDeviceEnroller *)self activationPrimitives];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__DMTAutomatedDeviceEnroller_activateDevice__block_invoke;
  v5[3] = &unk_278F5E5D8;
  objc_copyWeak(&v6, buf);
  [v4 activateWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __44__DMTAutomatedDeviceEnroller_activateDevice__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__DMTAutomatedDeviceEnroller_activateDevice__block_invoke_2;
  block[3] = &unk_278F5E5B0;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __44__DMTAutomatedDeviceEnroller_activateDevice__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained activationCompleteWithSuccess:*(a1 + 48) error:*(a1 + 32)];
}

- (void)activationCompleteWithSuccess:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = _DMTLogEnrollment();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_24891B000, v7, OS_LOG_TYPE_DEFAULT, "Device activation successful...", v9, 2u);
    }

    [(DMTAutomatedDeviceEnroller *)self checkIfAlreadyEnrolled];
  }

  else
  {
    v8 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DMTAutomatedDeviceEnroller activationCompleteWithSuccess:error:];
    }

    [(DMTAutomatedDeviceEnroller *)self tearDownWithFatalError:v6];
  }
}

- (void)checkIfAlreadyEnrolled
{
  v3 = _DMTLogEnrollment();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_DEFAULT, "Checking existing enrollment status...", buf, 2u);
  }

  v4 = [(DMTAutomatedDeviceEnroller *)self enrollmentInformationPrimitives];
  v5 = [v4 isEnrolled];

  if (v5)
  {
    v6 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(DMTAutomatedDeviceEnroller *)v6 checkIfAlreadyEnrolled];
    }

    v7 = DMTErrorWithCodeAndUserInfo(100, 0);
    [(DMTAutomatedDeviceEnroller *)self enrollmentCompleteWithResponse:0 error:v7];
  }

  else
  {
    v8 = _DMTLogEnrollment();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_24891B000, v8, OS_LOG_TYPE_DEFAULT, "Device is not already enrolled...", v9, 2u);
    }

    [(DMTAutomatedDeviceEnroller *)self enrollDevice];
  }
}

- (void)enrollDevice
{
  v3 = _DMTLogEnrollment();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_DEFAULT, "Starting enrollment...", buf, 2u);
  }

  [(DMTAutomatedDeviceEnroller *)self setEnrollmentState:9];
  objc_initWeak(buf, self);
  v4 = [(DMTAutomatedDeviceEnroller *)self enrollmentPrimitives];
  v5 = [(DMTAutomatedDeviceEnroller *)self enrollmentNonce];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__DMTAutomatedDeviceEnroller_enrollDevice__block_invoke;
  v6[3] = &unk_278F5E628;
  v6[4] = self;
  objc_copyWeak(&v7, buf);
  [v4 enrollWithNonce:v5 completionBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __42__DMTAutomatedDeviceEnroller_enrollDevice__block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) enrollmentInformationPrimitives];
  v10 = [v9 isEnrolled];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__DMTAutomatedDeviceEnroller_enrollDevice__block_invoke_2;
  v13[3] = &unk_278F5E600;
  objc_copyWeak(&v16, (a1 + 40));
  v17 = a2;
  v18 = v10;
  v14 = v8;
  v15 = v7;
  v11 = v7;
  v12 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v16);
}

void __42__DMTAutomatedDeviceEnroller_enrollDevice__block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(a1 + 56) & 1) != 0 || *(a1 + 57) != 1)
    {
      [WeakRetained enrollmentCompleteWithResponse:*(a1 + 40) error:*(a1 + 32)];
    }

    else
    {
      v4 = *(a1 + 32);
      v8 = *MEMORY[0x277CCA7E8];
      v9[0] = v4;
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      v6 = DMTErrorWithCodeAndUserInfo(100, v5);

      [v3 enrollmentCompleteWithResponse:*(a1 + 40) error:v6];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)enrollmentCompleteWithResponse:(id)a3 error:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _DMTLogEnrollment();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (!v5)
    {
      v7 = @"YES";
    }

    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_24891B000, v6, OS_LOG_TYPE_DEFAULT, "Enrollment complete: %{public}@", &v10, 0xCu);
  }

  [(DMTAutomatedDeviceEnroller *)self setEnrollmentError:v5];
  if (v5)
  {
    v8 = 14;
  }

  else
  {
    v8 = 10;
  }

  [(DMTAutomatedDeviceEnroller *)self setEnrollmentState:v8];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)eraseAllContentAndSettingsWithExternalError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(DMTAutomatedDeviceEnroller *)self enrollmentError];
    if (!v6)
    {
      v7 = [(DMTAutomatedDeviceEnroller *)self nonDestructiveErasePrimitives];
      goto LABEL_5;
    }
  }

  v7 = [(DMTAutomatedDeviceEnroller *)self destructiveErasePrimitives];
LABEL_5:
  v8 = v7;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__DMTAutomatedDeviceEnroller_eraseAllContentAndSettingsWithExternalError___block_invoke;
  v9[3] = &unk_278F5E390;
  objc_copyWeak(&v10, &location);
  [v8 performEraseWithCompletion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __74__DMTAutomatedDeviceEnroller_eraseAllContentAndSettingsWithExternalError___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained performSelectorOnMainThread:sel_eraseAllContentAndSettingsDidFinishWithError_ withObject:v5 waitUntilDone:0];
  }
}

- (void)eraseAllContentAndSettingsDidFinishWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DMTAutomatedDeviceEnroller eraseAllContentAndSettingsDidFinishWithError:];
    }
  }

  v6 = [(DMTAutomatedDeviceEnroller *)self enrollmentState];
  v7 = [(DMTAutomatedDeviceEnroller *)self powerOffPrimitives];
  v8 = v7;
  if (v6 == 11)
  {
    [v7 reboot];
  }

  else
  {
    [v7 shutDown];
  }
}

- (void)setNetworkCredential:(const char *)a1 networkPayload:enrollmentNonce:postEnrollmentBehavior:organizationName:organizationType:mdmServerName:networkConfiguration:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)timeoutOperationDidFinish:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(&dword_24891B000, a1, a3, "Network unreachable after %{public}@ seconds, failing enrollment", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)profileUninstallDidFinish:(void *)a1 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 installedNetworkPayloadIdentifier];
  v10 = [a2 error];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didJoinNetworkWithSuccess:(void *)a1 error:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 networkCredential];
  v2 = [v1 networkName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)didDisassociateFromNetworkWithSuccess:(void *)a1 error:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 networkCredential];
  v2 = [v1 networkName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)activationCompleteWithSuccess:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_24891B000, v0, v1, "Device activation failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)eraseAllContentAndSettingsDidFinishWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_24891B000, v0, v1, "Erase All Content And Settings failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end