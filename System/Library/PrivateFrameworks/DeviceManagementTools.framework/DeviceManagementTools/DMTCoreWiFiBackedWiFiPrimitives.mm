@interface DMTCoreWiFiBackedWiFiPrimitives
- (BOOL)wifiInterfacesAvailable;
- (DMTCoreWiFiBackedWiFiPrimitives)init;
- (NSString)wifiNetworkName;
- (void)cancelJoiningWiFi;
- (void)dealloc;
- (void)didJoinNetworkWithError:(id)error;
- (void)disassociateWiFiNetworkWithCompletion:(id)completion;
- (void)foundNetworks:(id)networks forCredential:(id)credential error:(id)error;
- (void)joinNetworkWithCredential:(id)credential scanRecord:(id)record;
- (void)joinWiFiNetworkWithCredential:(id)credential timeout:(double)timeout completion:(id)completion;
- (void)networkJoinTimeOutDidFire:(id)fire;
- (void)scanForNetworksWithCredentials:(id)credentials;
@end

@implementation DMTCoreWiFiBackedWiFiPrimitives

- (void)dealloc
{
  wiFiInterface = [(DMTCoreWiFiBackedWiFiPrimitives *)self wiFiInterface];
  [wiFiInterface invalidate];

  v4.receiver = self;
  v4.super_class = DMTCoreWiFiBackedWiFiPrimitives;
  [(DMTCoreWiFiBackedWiFiPrimitives *)&v4 dealloc];
}

- (DMTCoreWiFiBackedWiFiPrimitives)init
{
  v6.receiver = self;
  v6.super_class = DMTCoreWiFiBackedWiFiPrimitives;
  v2 = [(DMTCoreWiFiBackedWiFiPrimitives *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:2];
    wiFiInterface = v2->_wiFiInterface;
    v2->_wiFiInterface = v3;

    [(CWFInterface *)v2->_wiFiInterface activate];
    [(CWFInterface *)v2->_wiFiInterface setInvalidationHandler:&__block_literal_global_0];
  }

  return v2;
}

void __39__DMTCoreWiFiBackedWiFiPrimitives_init__block_invoke()
{
  v0 = _DMTLogGeneral();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __39__DMTCoreWiFiBackedWiFiPrimitives_init__block_invoke_cold_1(v0);
  }
}

- (BOOL)wifiInterfacesAvailable
{
  wiFiInterface = [(DMTCoreWiFiBackedWiFiPrimitives *)self wiFiInterface];
  v3 = wiFiInterface != 0;

  return v3;
}

- (NSString)wifiNetworkName
{
  wiFiInterface = [(DMTCoreWiFiBackedWiFiPrimitives *)self wiFiInterface];
  networkName = [wiFiInterface networkName];

  return networkName;
}

- (void)joinWiFiNetworkWithCredential:(id)credential timeout:(double)timeout completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  if (![(DMTCoreWiFiBackedWiFiPrimitives *)self isCancelled])
  {
    joinNetworkTimeout = [(DMTCoreWiFiBackedWiFiPrimitives *)self joinNetworkTimeout];

    if (!joinNetworkTimeout)
    {
      if ([(DMTCoreWiFiBackedWiFiPrimitives *)self wifiInterfacesAvailable])
      {
        [(DMTCoreWiFiBackedWiFiPrimitives *)self setJoinNetworkCompletion:completionCopy];
        [(DMTCoreWiFiBackedWiFiPrimitives *)self scanForNetworksWithCredentials:credentialCopy];
        v11 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_networkJoinTimeOutDidFire_ selector:0 userInfo:0 repeats:timeout];
        [(DMTCoreWiFiBackedWiFiPrimitives *)self setJoinNetworkTimeout:v11];
      }

      else
      {
        v12 = _DMTLogGeneral();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [DMTCoreWiFiBackedWiFiPrimitives joinWiFiNetworkWithCredential:v12 timeout:? completion:?];
        }

        v13 = DMTErrorWithCodeAndUserInfo(50, 0);
        completionCopy[2](completionCopy, 0, v13);
      }
    }
  }
}

- (void)disassociateWiFiNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  wifiNetworkName = [(DMTCoreWiFiBackedWiFiPrimitives *)self wifiNetworkName];

  v6 = _DMTLogGeneral();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (wifiNetworkName)
  {
    if (v7)
    {
      *v9 = 0;
      _os_log_impl(&dword_24891B000, v6, OS_LOG_TYPE_INFO, "Disassociating from network…", v9, 2u);
    }

    wiFiInterface = [(DMTCoreWiFiBackedWiFiPrimitives *)self wiFiInterface];
    [wiFiInterface disassociateWithReason:0];

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_24891B000, v6, OS_LOG_TYPE_INFO, "Network is not currently associated, disassociation not necessary", buf, 2u);
    }
  }
}

- (void)cancelJoiningWiFi
{
  v13 = *MEMORY[0x277D85DE8];
  isCancelled = [(DMTCoreWiFiBackedWiFiPrimitives *)self isCancelled];
  v5 = _DMTLogGeneral();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (isCancelled)
  {
    if (v6)
    {
      v7 = NSStringFromSelector(a2);
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_24891B000, v5, OS_LOG_TYPE_INFO, "%{public}@ called again while already cancelled", &v11, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_24891B000, v5, OS_LOG_TYPE_INFO, "Cancelling Wi-Fi join", &v11, 2u);
    }

    [(DMTCoreWiFiBackedWiFiPrimitives *)self setCancelled:1];
    joinNetworkTimeout = [(DMTCoreWiFiBackedWiFiPrimitives *)self joinNetworkTimeout];

    if (joinNetworkTimeout)
    {
      joinNetworkTimeout2 = [(DMTCoreWiFiBackedWiFiPrimitives *)self joinNetworkTimeout];
      [joinNetworkTimeout2 invalidate];

      [(DMTCoreWiFiBackedWiFiPrimitives *)self setJoinNetworkTimeout:0];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)networkJoinTimeOutDidFire:(id)fire
{
  v4 = _DMTLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_24891B000, v4, OS_LOG_TYPE_INFO, "Network join timeout has fired.", v9, 2u);
  }

  joinNetworkTimeout = [(DMTCoreWiFiBackedWiFiPrimitives *)self joinNetworkTimeout];
  [joinNetworkTimeout invalidate];

  [(DMTCoreWiFiBackedWiFiPrimitives *)self setJoinNetworkTimeout:0];
  joinNetworkCompletion = [(DMTCoreWiFiBackedWiFiPrimitives *)self joinNetworkCompletion];

  if (joinNetworkCompletion)
  {
    joinNetworkCompletion2 = [(DMTCoreWiFiBackedWiFiPrimitives *)self joinNetworkCompletion];
    v8 = DMTErrorWithCodeAndUserInfo(54, 0);
    (joinNetworkCompletion2)[2](joinNetworkCompletion2, 0, v8);

    [(DMTCoreWiFiBackedWiFiPrimitives *)self setJoinNetworkCompletion:0];
  }
}

- (void)scanForNetworksWithCredentials:(id)credentials
{
  credentialsCopy = credentials;
  v5 = objc_opt_new();
  networkName = [credentialsCopy networkName];
  [v5 setSSID:networkName];

  [v5 setNumberOfScans:2];
  [v5 setMergeScanResults:1];
  objc_initWeak(&location, self);
  wiFiInterface = [(DMTCoreWiFiBackedWiFiPrimitives *)self wiFiInterface];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__DMTCoreWiFiBackedWiFiPrimitives_scanForNetworksWithCredentials___block_invoke;
  v9[3] = &unk_278F5E340;
  objc_copyWeak(&v11, &location);
  v8 = credentialsCopy;
  v10 = v8;
  [wiFiInterface performScanWithParameters:v5 reply:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __66__DMTCoreWiFiBackedWiFiPrimitives_scanForNetworksWithCredentials___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__DMTCoreWiFiBackedWiFiPrimitives_scanForNetworksWithCredentials___block_invoke_2;
  v9[3] = &unk_278F5E318;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v6;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __66__DMTCoreWiFiBackedWiFiPrimitives_scanForNetworksWithCredentials___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained foundNetworks:*(a1 + 32) forCredential:*(a1 + 40) error:*(a1 + 48)];
}

- (void)foundNetworks:(id)networks forCredential:(id)credential error:(id)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  networksCopy = networks;
  credentialCopy = credential;
  errorCopy = error;
  if ([(DMTCoreWiFiBackedWiFiPrimitives *)self isCancelled])
  {
    v11 = _DMTLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      v12 = "Found networks after being cancelled, bailing out.";
LABEL_11:
      _os_log_impl(&dword_24891B000, v11, OS_LOG_TYPE_INFO, v12, &v25, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  joinNetworkTimeout = [(DMTCoreWiFiBackedWiFiPrimitives *)self joinNetworkTimeout];

  if (!joinNetworkTimeout)
  {
    v11 = _DMTLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      v12 = "Found networks after timeout has occurred, bailing out.";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (errorCopy)
  {
    v14 = _DMTLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [DMTCoreWiFiBackedWiFiPrimitives foundNetworks:errorCopy forCredential:v14 error:?];
    }

    joinNetworkCompletion = [(DMTCoreWiFiBackedWiFiPrimitives *)self joinNetworkCompletion];
    v27 = *MEMORY[0x277CCA7E8];
    v28[0] = errorCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v17 = DMTErrorWithCodeAndUserInfo(55, v16);
    (joinNetworkCompletion)[2](joinNetworkCompletion, 0, v17);

    [(DMTCoreWiFiBackedWiFiPrimitives *)self setJoinNetworkCompletion:0];
  }

  else
  {
    v19 = [networksCopy count];
    v20 = _DMTLogGeneral();
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [DMTCoreWiFiBackedWiFiPrimitives foundNetworks:networksCopy forCredential:v21 error:?];
      }

      firstObject = [networksCopy firstObject];
      [(DMTCoreWiFiBackedWiFiPrimitives *)self joinNetworkWithCredential:credentialCopy scanRecord:firstObject];
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        networkName = [credentialCopy networkName];
        v25 = 138477827;
        v26 = networkName;
        _os_log_impl(&dword_24891B000, v21, OS_LOG_TYPE_INFO, "No network matching %{private}@ were found", &v25, 0xCu);
      }

      firstObject = DMTErrorWithCodeAndUserInfo(53, 0);
      joinNetworkCompletion2 = [(DMTCoreWiFiBackedWiFiPrimitives *)self joinNetworkCompletion];
      (joinNetworkCompletion2)[2](joinNetworkCompletion2, 0, firstObject);

      [(DMTCoreWiFiBackedWiFiPrimitives *)self setJoinNetworkCompletion:0];
    }
  }

LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)joinNetworkWithCredential:(id)credential scanRecord:(id)record
{
  credentialCopy = credential;
  recordCopy = record;
  v8 = objc_opt_new();
  [v8 setScanResult:recordCopy];
  credential = [credentialCopy credential];
  [v8 setPassword:credential];

  [v8 setRememberUponSuccessfulAssociation:0];
  objc_initWeak(&location, self);
  wiFiInterface = [(DMTCoreWiFiBackedWiFiPrimitives *)self wiFiInterface];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__DMTCoreWiFiBackedWiFiPrimitives_joinNetworkWithCredential_scanRecord___block_invoke;
  v11[3] = &unk_278F5E390;
  objc_copyWeak(&v12, &location);
  [wiFiInterface associateWithParameters:v8 reply:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __72__DMTCoreWiFiBackedWiFiPrimitives_joinNetworkWithCredential_scanRecord___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__DMTCoreWiFiBackedWiFiPrimitives_joinNetworkWithCredential_scanRecord___block_invoke_2;
  v5[3] = &unk_278F5E368;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __72__DMTCoreWiFiBackedWiFiPrimitives_joinNetworkWithCredential_scanRecord___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didJoinNetworkWithError:*(a1 + 32)];
}

- (void)didJoinNetworkWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([(DMTCoreWiFiBackedWiFiPrimitives *)self isCancelled])
  {
    v5 = _DMTLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v15 = errorCopy;
      v6 = "Associate network returned after being cancelled with error: %{public}@";
LABEL_9:
      _os_log_impl(&dword_24891B000, v5, OS_LOG_TYPE_INFO, v6, buf, 0xCu);
    }
  }

  else
  {
    joinNetworkTimeout = [(DMTCoreWiFiBackedWiFiPrimitives *)self joinNetworkTimeout];

    if (joinNetworkTimeout)
    {
      if (errorCopy)
      {
        v12 = *MEMORY[0x277CCA7E8];
        v13 = errorCopy;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        v5 = DMTErrorWithCodeAndUserInfo(55, v8);
      }

      else
      {
        v5 = 0;
      }

      joinNetworkTimeout2 = [(DMTCoreWiFiBackedWiFiPrimitives *)self joinNetworkTimeout];
      [joinNetworkTimeout2 invalidate];

      joinNetworkCompletion = [(DMTCoreWiFiBackedWiFiPrimitives *)self joinNetworkCompletion];
      (joinNetworkCompletion)[2](joinNetworkCompletion, v5 == 0, v5);

      [(DMTCoreWiFiBackedWiFiPrimitives *)self setJoinNetworkCompletion:0];
      [(DMTCoreWiFiBackedWiFiPrimitives *)self setJoinNetworkTimeout:0];
    }

    else
    {
      v5 = _DMTLogGeneral();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v15 = errorCopy;
        v6 = "Associate network returned after the timeout occurred with error: %{public}@";
        goto LABEL_9;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)foundNetworks:(uint64_t)a1 forCredential:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24891B000, a2, OS_LOG_TYPE_ERROR, "Error scanning for networks: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)foundNetworks:(uint64_t)a1 forCredential:(NSObject *)a2 error:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_24891B000, a2, OS_LOG_TYPE_DEBUG, "Network(s) found: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end