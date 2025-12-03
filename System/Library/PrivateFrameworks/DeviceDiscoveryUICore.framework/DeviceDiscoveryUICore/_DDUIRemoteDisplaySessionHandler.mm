@interface _DDUIRemoteDisplaySessionHandler
+ (id)sharedInstance;
- (BOOL)canEnterSession;
- (BOOL)isWifiStateOn;
- (BOOL)shouldAutoAcceptCCConfirmation;
- (BOOL)shouldByPassConfirmationForRemoteDeviceID:(id)d;
- (_DDUIRemoteDisplaySessionHandler)init;
- (void)activateWithCompletion:(id)completion;
- (void)cancelCurrentProxCard;
- (void)dealloc;
- (void)enterSessionWithRemoteDeviceID:(id)d reason:(id)reason;
- (void)presentProxCardForDevice:(id)device completion:(id)completion;
- (void)saveDedicatedDeviceInformation:(id)information;
@end

@implementation _DDUIRemoteDisplaySessionHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___DDUIRemoteDisplaySessionHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

- (_DDUIRemoteDisplaySessionHandler)init
{
  v6.receiver = self;
  v6.super_class = _DDUIRemoteDisplaySessionHandler;
  v2 = [(_DDUIRemoteDisplaySessionHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D441E0]);
    rDiscovery = v2->_rDiscovery;
    v2->_rDiscovery = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(RPRemoteDisplayDiscovery *)self->_rDiscovery invalidate];
  v3.receiver = self;
  v3.super_class = _DDUIRemoteDisplaySessionHandler;
  [(_DDUIRemoteDisplaySessionHandler *)&v3 dealloc];
}

- (void)activateWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _DDUICoreLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "Starting up _DDUIRemoteDisplaySessionHandler {self: %@}", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  rDiscovery = self->_rDiscovery;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59___DDUIRemoteDisplaySessionHandler_activateWithCompletion___block_invoke;
  v9[3] = &unk_2788F5C90;
  v9[4] = self;
  objc_copyWeak(&v11, buf);
  v7 = completionCopy;
  v10 = v7;
  [(RPRemoteDisplayDiscovery *)rDiscovery activateWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isWifiStateOn
{
  v2 = objc_alloc_init(MEMORY[0x277D02938]);
  v3 = [v2 wifiState] != 10;
  [v2 invalidate];

  return v3;
}

- (BOOL)canEnterSession
{
  isWifiStateOn = [(_DDUIRemoteDisplaySessionHandler *)self isWifiStateOn];
  if (isWifiStateOn)
  {

    LOBYTE(isWifiStateOn) = [(_DDUIRemoteDisplaySessionHandler *)self isContinuityCaptureUserPreferenceEnabled];
  }

  return isWifiStateOn;
}

- (void)enterSessionWithRemoteDeviceID:(id)d reason:(id)reason
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  reasonCopy = reason;
  v8 = _DDUICoreLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v16 = 2112;
    v17 = dCopy;
    v18 = 2112;
    v19 = reasonCopy;
    _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "{self: %@} Enter session with remoteDeviceID: %@ reason: %@", buf, 0x20u);
  }

  if ([(_DDUIRemoteDisplaySessionHandler *)self _isActivated])
  {
    [(RPRemoteDisplayDiscovery *)self->_rDiscovery enterDiscoverySessionWithDevice:dCopy reason:reasonCopy];
  }

  else
  {
    objc_initWeak(buf, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74___DDUIRemoteDisplaySessionHandler_enterSessionWithRemoteDeviceID_reason___block_invoke;
    v10[3] = &unk_2788F5CB8;
    objc_copyWeak(&v13, buf);
    v11 = dCopy;
    v12 = reasonCopy;
    [(_DDUIRemoteDisplaySessionHandler *)self activateWithCompletion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldByPassConfirmationForRemoteDeviceID:(id)d
{
  dCopy = d;
  v5 = _os_feature_enabled_impl();
  dedicatedDevice = [(RPRemoteDisplayDiscovery *)self->_rDiscovery dedicatedDevice];
  persistentIdentifier = [dedicatedDevice persistentIdentifier];
  v8 = [persistentIdentifier isEqualToString:dCopy];

  return [(_DDUIRemoteDisplaySessionHandler *)self canEnterSession]& v5 & v8;
}

- (BOOL)shouldAutoAcceptCCConfirmation
{
  has_internal_content = os_variant_has_internal_content();
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Sharing"];
  v5 = [v4 objectForKey:@"autoAcceptCCConfirmation"];
  if (v5)
  {
    v6 = [v4 BOOLForKey:@"autoAcceptCCConfirmation"];
  }

  else
  {
    v6 = 0;
  }

  if ([(_DDUIRemoteDisplaySessionHandler *)self canEnterSession])
  {
    v7 = has_internal_content & v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)presentProxCardForDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v13 = @"Disabled";
LABEL_10:
    v15 = UnsupportedErrorWithDescription(v13);
    completionCopy[2](completionCopy, v15);

    goto LABEL_11;
  }

  if (SFDeviceClassCodeGet() != 1)
  {
    v14 = _DDUICoreLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_DDUIRemoteDisplaySessionHandler presentProxCardForDevice:v14 completion:?];
    }

    v13 = @"Dedicated cameras can only be setup on iPhones";
    goto LABEL_10;
  }

  v8 = objc_alloc_init(getCPSDedicatedCameraRequestClass());
  name = [deviceCopy name];
  [v8 setDeviceName:name];

  if (([deviceCopy deviceType] & 0x10) != 0)
  {
    [v8 setDeviceType:1];
  }

  [(_DDUIRemoteDisplaySessionHandler *)self cancelCurrentProxCard];
  v10 = [objc_alloc(getCPSAuthenticationSessionClass()) initWithRequest:v8];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72___DDUIRemoteDisplaySessionHandler_presentProxCardForDevice_completion___block_invoke;
  v16[3] = &unk_2788F5CE0;
  objc_copyWeak(&v18, &location);
  v17 = completionCopy;
  [v10 setSessionCompletionHandler:v16];
  [v10 start];
  proxSession = self->_proxSession;
  self->_proxSession = v10;
  v12 = v10;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

LABEL_11:
}

- (void)cancelCurrentProxCard
{
  [(CPSAuthenticationSession *)self->_proxSession cancel];
  proxSession = self->_proxSession;
  self->_proxSession = 0;
}

- (void)saveDedicatedDeviceInformation:(id)information
{
  v18 = *MEMORY[0x277D85DE8];
  informationCopy = information;
  if (informationCopy)
  {
    v5 = objc_alloc(MEMORY[0x277D441D8]);
    identifier = [informationCopy identifier];
    name = [informationCopy name];
    model = [informationCopy model];
    accountIdentifier = [informationCopy accountIdentifier];
    v10 = [v5 initWithIdentifier:identifier name:name model:model accountID:accountIdentifier];

    v11 = _DDUICoreLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      selfCopy2 = self;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_230EF9000, v11, OS_LOG_TYPE_DEFAULT, "{self: %@} Saving dedicated device: %@", &v14, 0x16u);
    }

    [(RPRemoteDisplayDiscovery *)self->_rDiscovery saveDedicatedDevice:v10];
  }

  else
  {
    v12 = _DDUICoreLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_230EF9000, v12, OS_LOG_TYPE_DEFAULT, "{self: %@} Removing dedicated device", &v14, 0xCu);
    }

    [(RPRemoteDisplayDiscovery *)self->_rDiscovery saveDedicatedDevice:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)presentProxCardForDevice:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_230EF9000, a2, OS_LOG_TYPE_ERROR, "{self: %@} ignoring prox card request on device since this is not an iPhone", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end