@interface DMTAutomatedDeviceEnroller
- (DMTAutomatedDeviceEnroller)initWithEnrollmentPrimitives:(id)primitives enrollmentInformationPrimitives:(id)informationPrimitives reachabilityPrimitives:(id)reachabilityPrimitives activationPrimitives:(id)activationPrimitives wifiPrimitives:(id)wifiPrimitives profileInstallationPrimitives:(id)installationPrimitives destructiveErasePrimitives:(id)erasePrimitives nonDestructiveErasePrimitives:(id)self0 powerOffPrimitives:(id)self1;
- (DMTErasePrimitives)nonDestructiveErasePrimitives;
- (void)activateDevice;
- (void)activationCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)beginAutomatedDeviceEnrollment;
- (void)checkActivationStatus;
- (void)checkIfAlreadyEnrolled;
- (void)didDisassociateFromNetworkWithSuccess:(BOOL)success error:(id)error;
- (void)didJoinNetworkWithSuccess:(BOOL)success error:(id)error;
- (void)disassociateWiFi;
- (void)enrollDevice;
- (void)enrollmentCompleteWithResponse:(id)response error:(id)error;
- (void)eraseAllContentAndSettingsDidFinishWithError:(id)error;
- (void)eraseAllContentAndSettingsWithExternalError:(id)error;
- (void)eraseAndRestartWithExternalError:(id)error;
- (void)eraseAndShutDownWithExternalError:(id)error;
- (void)eraseCurrentNetworkIfNeeded;
- (void)installProfile;
- (void)joinNetwork;
- (void)joinNetworkUsingCredentials;
- (void)profileInstallationDidFinish:(id)finish;
- (void)profileUninstallDidFinish:(id)finish;
- (void)setNetworkCredential:(id)credential networkPayload:(id)payload enrollmentNonce:(id)nonce postEnrollmentBehavior:(int64_t)behavior organizationName:(id)name organizationType:(int64_t)type mdmServerName:(id)serverName networkConfiguration:(int64_t)self0;
- (void)tearDownWithFatalError:(id)error;
- (void)timeoutOperationDidFinish:(id)finish;
- (void)uninstallProfile;
- (void)verifyProfile;
- (void)waitForReachabilityWithTimeout:(double)timeout;
@end

@implementation DMTAutomatedDeviceEnroller

- (DMTAutomatedDeviceEnroller)initWithEnrollmentPrimitives:(id)primitives enrollmentInformationPrimitives:(id)informationPrimitives reachabilityPrimitives:(id)reachabilityPrimitives activationPrimitives:(id)activationPrimitives wifiPrimitives:(id)wifiPrimitives profileInstallationPrimitives:(id)installationPrimitives destructiveErasePrimitives:(id)erasePrimitives nonDestructiveErasePrimitives:(id)self0 powerOffPrimitives:(id)self1
{
  primitivesCopy = primitives;
  informationPrimitivesCopy = informationPrimitives;
  reachabilityPrimitivesCopy = reachabilityPrimitives;
  activationPrimitivesCopy = activationPrimitives;
  wifiPrimitivesCopy = wifiPrimitives;
  installationPrimitivesCopy = installationPrimitives;
  erasePrimitivesCopy = erasePrimitives;
  destructiveErasePrimitivesCopy = destructiveErasePrimitives;
  offPrimitivesCopy = offPrimitives;
  v32.receiver = self;
  v32.super_class = DMTAutomatedDeviceEnroller;
  v18 = [(DMTAutomatedDeviceEnroller *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_enrollmentPrimitives, primitives);
    objc_storeStrong(&v19->_enrollmentInformationPrimitives, informationPrimitives);
    objc_storeStrong(&v19->_reachabilityPrimitives, reachabilityPrimitives);
    objc_storeStrong(&v19->_activationPrimitives, activationPrimitives);
    objc_storeStrong(&v19->_wifiPrimitives, wifiPrimitives);
    objc_storeStrong(&v19->_profileInstallationPrimitives, installationPrimitives);
    objc_storeStrong(&v19->_destructiveErasePrimitives, erasePrimitives);
    objc_storeStrong(&v19->_nonDestructiveErasePrimitives, destructiveErasePrimitives);
    objc_storeStrong(&v19->_powerOffPrimitives, offPrimitives);
    v20 = objc_opt_new();
    operationQueue = v19->_operationQueue;
    v19->_operationQueue = v20;

    v19->_enrollmentState = 0;
  }

  return v19;
}

- (void)setNetworkCredential:(id)credential networkPayload:(id)payload enrollmentNonce:(id)nonce postEnrollmentBehavior:(int64_t)behavior organizationName:(id)name organizationType:(int64_t)type mdmServerName:(id)serverName networkConfiguration:(int64_t)self0
{
  credentialCopy = credential;
  payloadCopy = payload;
  nonceCopy = nonce;
  nameCopy = name;
  serverNameCopy = serverName;
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
    [(DMTAutomatedDeviceEnroller *)self setOrganizationName:nameCopy];
    [(DMTAutomatedDeviceEnroller *)self setOrganizationType:type];
    [(DMTAutomatedDeviceEnroller *)self setMdmServerName:serverNameCopy];
    [(DMTAutomatedDeviceEnroller *)self setNetworkCredential:credentialCopy];
    networkName = [credentialCopy networkName];
    [(DMTAutomatedDeviceEnroller *)self setNetworkName:networkName];

    [(DMTAutomatedDeviceEnroller *)self setNetworkPayload:payloadCopy];
    [(DMTAutomatedDeviceEnroller *)self setEnrollmentNonce:nonceCopy];
    [(DMTAutomatedDeviceEnroller *)self setPostEnrollmentBehavior:behavior];
    [(DMTAutomatedDeviceEnroller *)self setNetworkConfiguration:configuration];
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
  reachabilityPrimitives = [(DMTAutomatedDeviceEnroller *)self reachabilityPrimitives];
  reachable = [reachabilityPrimitives reachable];

  v8 = _DMTLogEnrollment();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (reachable)
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

- (void)eraseAndRestartWithExternalError:(id)error
{
  errorCopy = error;
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
    [(DMTAutomatedDeviceEnroller *)self eraseAllContentAndSettingsWithExternalError:errorCopy];
  }
}

- (void)eraseAndShutDownWithExternalError:(id)error
{
  errorCopy = error;
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
    [(DMTAutomatedDeviceEnroller *)self eraseAllContentAndSettingsWithExternalError:errorCopy];
  }
}

- (void)eraseCurrentNetworkIfNeeded
{
  installedNetworkPayloadIdentifier = [(DMTAutomatedDeviceEnroller *)self installedNetworkPayloadIdentifier];

  if (installedNetworkPayloadIdentifier)
  {

    [(DMTAutomatedDeviceEnroller *)self uninstallProfile];
  }

  else
  {
    networkCredential = [(DMTAutomatedDeviceEnroller *)self networkCredential];
    if (networkCredential && (v5 = networkCredential, -[DMTAutomatedDeviceEnroller networkName](self, "networkName"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 length], v6, v5, v7))
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

- (void)tearDownWithFatalError:(id)error
{
  [(DMTAutomatedDeviceEnroller *)self setEnrollmentError:error];

  [(DMTAutomatedDeviceEnroller *)self setEnrollmentState:14];
}

- (void)waitForReachabilityWithTimeout:(double)timeout
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [DMTWaitForKVOChangeOperation alloc];
  reachabilityPrimitives = [(DMTAutomatedDeviceEnroller *)self reachabilityPrimitives];
  v7 = [(DMTWaitForKVOChangeOperation *)v5 initWithObservedObject:reachabilityPrimitives keyPath:@"reachable" expectedValue:MEMORY[0x277CBEC38] requireExpectedValue:0];

  v8 = [[DMTTimeoutOperation alloc] initWithOperation:v7 timeout:1 cancelsOnTimeout:timeout];
  [(DMTTimeoutOperation *)v8 addTarget:self selector:sel_timeoutOperationDidFinish_ forOperationEvents:6];
  v9 = _DMTLogEnrollment();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
    *buf = 138543362;
    v16 = v10;
    _os_log_impl(&dword_24891B000, v9, OS_LOG_TYPE_DEFAULT, "Waiting for reachability for %{public}@ seconds", buf, 0xCu);
  }

  operationQueue = [(DMTAutomatedDeviceEnroller *)self operationQueue];
  v14[0] = v7;
  v14[1] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [operationQueue addOperations:v12 waitUntilFinished:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)timeoutOperationDidFinish:(id)finish
{
  reachabilityPrimitives = [(DMTAutomatedDeviceEnroller *)self reachabilityPrimitives];
  reachable = [reachabilityPrimitives reachable];

  if (reachable)
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
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "networkConfiguration")}];
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
  operationQueue = [(DMTAutomatedDeviceEnroller *)self operationQueue];
  [operationQueue addOperation:v4];
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
  profileInstallationPrimitives = [(DMTAutomatedDeviceEnroller *)self profileInstallationPrimitives];
  networkPayload = [(DMTAutomatedDeviceEnroller *)self networkPayload];
  v7 = [(DMTInstallProfileOperation *)v4 initWithProfileInstallationPrimitives:profileInstallationPrimitives profileData:networkPayload];

  [(DMTInstallProfileOperation *)v7 addTarget:self selector:sel_profileInstallationDidFinish_ forOperationEvents:6];
  operationQueue = [(DMTAutomatedDeviceEnroller *)self operationQueue];
  [operationQueue addOperation:v7];
}

- (void)profileInstallationDidFinish:(id)finish
{
  finishCopy = finish;
  error = [finishCopy error];

  if (error)
  {
    error2 = [finishCopy error];

    [(DMTAutomatedDeviceEnroller *)self tearDownWithFatalError:error2];
  }

  else
  {
    resultObject = [finishCopy resultObject];

    [(DMTAutomatedDeviceEnroller *)self setInstalledNetworkPayloadIdentifier:resultObject];
    reachabilityPrimitives = [(DMTAutomatedDeviceEnroller *)self reachabilityPrimitives];
    LODWORD(resultObject) = [reachabilityPrimitives reachable];

    if (resultObject)
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
  profileInstallationPrimitives = [(DMTAutomatedDeviceEnroller *)self profileInstallationPrimitives];
  installedNetworkPayloadIdentifier = [(DMTAutomatedDeviceEnroller *)self installedNetworkPayloadIdentifier];
  v7 = [(DMTUninstallProfileOperation *)v4 initWithProfileInstallationPrimitives:profileInstallationPrimitives profileIdentifier:installedNetworkPayloadIdentifier];

  [(DMTUninstallProfileOperation *)v7 addTarget:self selector:sel_profileUninstallDidFinish_ forOperationEvents:6];
  operationQueue = [(DMTAutomatedDeviceEnroller *)self operationQueue];
  [operationQueue addOperation:v7];
}

- (void)profileUninstallDidFinish:(id)finish
{
  finishCopy = finish;
  error = [finishCopy error];

  if (error)
  {
    v6 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(DMTAutomatedDeviceEnroller *)self profileUninstallDidFinish:finishCopy];
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

  wifiPrimitives = [(DMTAutomatedDeviceEnroller *)self wifiPrimitives];
  networkCredential = [(DMTAutomatedDeviceEnroller *)self networkCredential];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__DMTAutomatedDeviceEnroller_joinNetworkUsingCredentials__block_invoke;
  v6[3] = &unk_278F5E5D8;
  objc_copyWeak(&v7, &location);
  [wifiPrimitives joinWiFiNetworkWithCredential:networkCredential timeout:v6 completion:60.0];

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

- (void)didJoinNetworkWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  if (success)
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

    [(DMTAutomatedDeviceEnroller *)self tearDownWithFatalError:errorCopy];
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
  wifiPrimitives = [(DMTAutomatedDeviceEnroller *)self wifiPrimitives];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__DMTAutomatedDeviceEnroller_disassociateWiFi__block_invoke;
  v5[3] = &unk_278F5E5D8;
  objc_copyWeak(&v6, buf);
  [wifiPrimitives disassociateWiFiNetworkWithCompletion:v5];

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

- (void)didDisassociateFromNetworkWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  if (success)
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
  activationPrimitives = [(DMTAutomatedDeviceEnroller *)self activationPrimitives];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__DMTAutomatedDeviceEnroller_checkActivationStatus__block_invoke;
  v5[3] = &unk_278F5E5D8;
  objc_copyWeak(&v6, buf);
  [activationPrimitives fetchActivationStateWithCompletion:v5];

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
  activationPrimitives = [(DMTAutomatedDeviceEnroller *)self activationPrimitives];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__DMTAutomatedDeviceEnroller_activateDevice__block_invoke;
  v5[3] = &unk_278F5E5D8;
  objc_copyWeak(&v6, buf);
  [activationPrimitives activateWithCompletion:v5];

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

- (void)activationCompleteWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  if (success)
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

    [(DMTAutomatedDeviceEnroller *)self tearDownWithFatalError:errorCopy];
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

  enrollmentInformationPrimitives = [(DMTAutomatedDeviceEnroller *)self enrollmentInformationPrimitives];
  isEnrolled = [enrollmentInformationPrimitives isEnrolled];

  if (isEnrolled)
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
  enrollmentPrimitives = [(DMTAutomatedDeviceEnroller *)self enrollmentPrimitives];
  enrollmentNonce = [(DMTAutomatedDeviceEnroller *)self enrollmentNonce];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__DMTAutomatedDeviceEnroller_enrollDevice__block_invoke;
  v6[3] = &unk_278F5E628;
  v6[4] = self;
  objc_copyWeak(&v7, buf);
  [enrollmentPrimitives enrollWithNonce:enrollmentNonce completionBlock:v6];

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

- (void)enrollmentCompleteWithResponse:(id)response error:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = _DMTLogEnrollment();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (!errorCopy)
    {
      v7 = @"YES";
    }

    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_24891B000, v6, OS_LOG_TYPE_DEFAULT, "Enrollment complete: %{public}@", &v10, 0xCu);
  }

  [(DMTAutomatedDeviceEnroller *)self setEnrollmentError:errorCopy];
  if (errorCopy)
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

- (void)eraseAllContentAndSettingsWithExternalError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    enrollmentError = errorCopy;
  }

  else
  {
    enrollmentError = [(DMTAutomatedDeviceEnroller *)self enrollmentError];
    if (!enrollmentError)
    {
      nonDestructiveErasePrimitives = [(DMTAutomatedDeviceEnroller *)self nonDestructiveErasePrimitives];
      goto LABEL_5;
    }
  }

  nonDestructiveErasePrimitives = [(DMTAutomatedDeviceEnroller *)self destructiveErasePrimitives];
LABEL_5:
  v8 = nonDestructiveErasePrimitives;
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

- (void)eraseAllContentAndSettingsDidFinishWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v5 = _DMTLogGeneral_2();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DMTAutomatedDeviceEnroller eraseAllContentAndSettingsDidFinishWithError:];
    }
  }

  enrollmentState = [(DMTAutomatedDeviceEnroller *)self enrollmentState];
  powerOffPrimitives = [(DMTAutomatedDeviceEnroller *)self powerOffPrimitives];
  v8 = powerOffPrimitives;
  if (enrollmentState == 11)
  {
    [powerOffPrimitives reboot];
  }

  else
  {
    [powerOffPrimitives shutDown];
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