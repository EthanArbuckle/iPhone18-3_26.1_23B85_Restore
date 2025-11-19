@interface _DDUIRemoteDisplaySessionHandler
+ (id)sharedInstance;
- (BOOL)canEnterSession;
- (BOOL)isWifiStateOn;
- (BOOL)shouldAutoAcceptCCConfirmation;
- (BOOL)shouldByPassConfirmationForRemoteDeviceID:(id)a3;
- (_DDUIRemoteDisplaySessionHandler)init;
- (void)activateWithCompletion:(id)a3;
- (void)cancelCurrentProxCard;
- (void)dealloc;
- (void)enterSessionWithRemoteDeviceID:(id)a3 reason:(id)a4;
- (void)presentProxCardForDevice:(id)a3 completion:(id)a4;
- (void)saveDedicatedDeviceInformation:(id)a3;
@end

@implementation _DDUIRemoteDisplaySessionHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___DDUIRemoteDisplaySessionHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (void)activateWithCompletion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _DDUICoreLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = self;
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
  v7 = v4;
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
  v3 = [(_DDUIRemoteDisplaySessionHandler *)self isWifiStateOn];
  if (v3)
  {

    LOBYTE(v3) = [(_DDUIRemoteDisplaySessionHandler *)self isContinuityCaptureUserPreferenceEnabled];
  }

  return v3;
}

- (void)enterSessionWithRemoteDeviceID:(id)a3 reason:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _DDUICoreLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v15 = self;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "{self: %@} Enter session with remoteDeviceID: %@ reason: %@", buf, 0x20u);
  }

  if ([(_DDUIRemoteDisplaySessionHandler *)self _isActivated])
  {
    [(RPRemoteDisplayDiscovery *)self->_rDiscovery enterDiscoverySessionWithDevice:v6 reason:v7];
  }

  else
  {
    objc_initWeak(buf, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74___DDUIRemoteDisplaySessionHandler_enterSessionWithRemoteDeviceID_reason___block_invoke;
    v10[3] = &unk_2788F5CB8;
    objc_copyWeak(&v13, buf);
    v11 = v6;
    v12 = v7;
    [(_DDUIRemoteDisplaySessionHandler *)self activateWithCompletion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldByPassConfirmationForRemoteDeviceID:(id)a3
{
  v4 = a3;
  v5 = _os_feature_enabled_impl();
  v6 = [(RPRemoteDisplayDiscovery *)self->_rDiscovery dedicatedDevice];
  v7 = [v6 persistentIdentifier];
  v8 = [v7 isEqualToString:v4];

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

- (void)presentProxCardForDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v13 = @"Disabled";
LABEL_10:
    v15 = UnsupportedErrorWithDescription(v13);
    v7[2](v7, v15);

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
  v9 = [v6 name];
  [v8 setDeviceName:v9];

  if (([v6 deviceType] & 0x10) != 0)
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
  v17 = v7;
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

- (void)saveDedicatedDeviceInformation:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D441D8]);
    v6 = [v4 identifier];
    v7 = [v4 name];
    v8 = [v4 model];
    v9 = [v4 accountIdentifier];
    v10 = [v5 initWithIdentifier:v6 name:v7 model:v8 accountID:v9];

    v11 = _DDUICoreLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = self;
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
      v15 = self;
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