@interface CSPairingServer
- (CSPairingServer)init;
- (id)appendPairingCodeToURL:(id)l;
- (id)createNewPassword;
- (id)generateURL;
- (void)activateWithCompletion:(id)completion;
- (void)deactivate;
- (void)dealloc;
@end

@implementation CSPairingServer

- (CSPairingServer)init
{
  v6.receiver = self;
  v6.super_class = CSPairingServer;
  v2 = [(CSPairingServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    createNewPassword = [(CSPairingServer *)v2 createNewPassword];
  }

  return v3;
}

- (void)dealloc
{
  [(CSPairingServer *)self deactivate];
  v3.receiver = self;
  v3.super_class = CSPairingServer;
  [(CSPairingServer *)&v3 dealloc];
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277D441F8]);
  rpServer = self->_rpServer;
  self->_rpServer = v5;

  [(RPServer *)self->_rpServer setControlFlags:[(RPServer *)self->_rpServer controlFlags]| 0x40C];
  [(RPServer *)self->_rpServer setPasswordType:7];
  [(RPServer *)self->_rpServer setPassword:self->_password];
  [(RPServer *)self->_rpServer setServiceType:@"com.apple.ContinuitySingPairing"];
  [(RPServer *)self->_rpServer setErrorHandler:&__block_literal_global_17];
  [(RPServer *)self->_rpServer setAcceptHandler:&__block_literal_global_21];
  [(RPServer *)self->_rpServer setShowPasswordHandler:&__block_literal_global_25];
  [(RPServer *)self->_rpServer activate];
  v7 = objc_alloc_init(CSPairingMessagingClient);
  pairingMessagingClient = self->_pairingMessagingClient;
  self->_pairingMessagingClient = v7;

  v9 = self->_pairingMessagingClient;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__CSPairingServer_activateWithCompletion___block_invoke_27;
  v11[3] = &unk_278E0B048;
  v12 = completionCopy;
  v10 = completionCopy;
  [(CSPairingMessagingClient *)v9 activateWithCompletion:v11];
}

void __42__CSPairingServer_activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[CSPairingServer activateWithCompletion:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: Pairing did error: %@", &v4, 0x16u);
  }
}

void __42__CSPairingServer_activateWithCompletion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = ContinuitySingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSPairingServer activateWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: Pairing did succeed with %@", &v7, 0x16u);
  }

  v5[2](v5, 0);
}

void __42__CSPairingServer_activateWithCompletion___block_invoke_22()
{
  v0 = ContinuitySingLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[CSPairingServer activateWithCompletion:]_block_invoke";
    _os_log_impl(&dword_2441FB000, v0, OS_LOG_TYPE_DEFAULT, "%s: Show password requested. Password should be shown in a QR code, so no implementation here.", &v1, 0xCu);
  }
}

void __42__CSPairingServer_activateWithCompletion___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[CSPairingServer activateWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_INFO, "%s: Activated pairing messaging client with error: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)deactivate
{
  [(RPServer *)self->_rpServer invalidate];
  rpServer = self->_rpServer;
  self->_rpServer = 0;

  [(CSPairingMessagingClient *)self->_pairingMessagingClient invalidate];
  pairingMessagingClient = self->_pairingMessagingClient;
  self->_pairingMessagingClient = 0;
}

- (id)createNewPassword
{
  if (!os_variant_has_internal_diagnostics())
  {
    goto LABEL_6;
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ContinuitySing"];
  v4 = [v3 objectForKey:@"overridePairingCode"];

  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[CSPairingServer createNewPassword]";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: Override password set through internal defaults: %@", &v14, 0x16u);
  }

  if (v4)
  {
    v6 = v4;
    password = self->_password;
    self->_password = v6;
  }

  else
  {
LABEL_6:
    password = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [password UUIDString];
    v9 = [uUIDString substringToIndex:8];
    v10 = self->_password;
    self->_password = v9;

    v6 = 0;
  }

  [(RPServer *)self->_rpServer setPassword:self->_password];
  v11 = self->_password;
  v12 = v11;

  return v11;
}

- (id)appendPairingCodeToURL:(id)l
{
  lCopy = l;
  v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  v5 = objc_alloc(MEMORY[0x277CCAD18]);
  password = [(CSPairingServer *)self password];
  v7 = [v5 initWithName:@"pw" value:password];

  v8 = MEMORY[0x277CBEB18];
  queryItems = [v4 queryItems];
  v10 = [v8 arrayWithCapacity:{objc_msgSend(queryItems, "count") + 1}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = v4;
  queryItems2 = [v4 queryItems];
  v12 = [queryItems2 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(queryItems2);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        name = [v16 name];
        name2 = [v7 name];
        v19 = [name isEqual:name2];

        if ((v19 & 1) == 0)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [queryItems2 countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v13);
  }

  [v10 addObject:v7];
  [v22 setQueryItems:v10];
  v20 = [v22 URL];

  return v20;
}

- (id)generateURL
{
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v3 setScheme:@"ContinuitySing"];
  [v3 setHost:@"connect"];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  localDeviceInfo = [MEMORY[0x277D27990] localDeviceInfo];
  deviceUID = [localDeviceInfo deviceUID];
  if (deviceUID || ([localDeviceInfo identifier], (deviceUID = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = deviceUID;
    v8 = [MEMORY[0x277CCAD18] queryItemWithName:@"h" value:deviceUID];
    [v4 addObject:v8];
  }

  v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"pw" value:self->_password];
  [v4 addObject:v9];

  [v3 setQueryItems:v4];
  v10 = [v3 URL];

  return v10;
}

@end