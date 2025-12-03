@interface HLPURLSessionACAuthHandler
+ (BOOL)canAuthenticateWithURLResponse:(id)response;
- (HLPURLSessionACAuthHandler)initWithAuthenticationContext:(id)context;
- (id)customHeaderFields;
- (void)authenticateWithCompletion:(id)completion;
@end

@implementation HLPURLSessionACAuthHandler

+ (BOOL)canAuthenticateWithURLResponse:(id)response
{
  responseCopy = response;
  if (+[HLPCommonDefines isInternalBuild])
  {
    v4 = responseCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (canAuthenticateWithURLResponse__onceToken != -1)
      {
        +[HLPURLSessionACAuthHandler canAuthenticateWithURLResponse:];
      }

      statusCode = [v4 statusCode];
      v6 = canAuthenticateWithURLResponse__supportedStatusCodes;
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:statusCode];
      v8 = [v6 containsObject:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __61__HLPURLSessionACAuthHandler_canAuthenticateWithURLResponse___block_invoke()
{
  canAuthenticateWithURLResponse__supportedStatusCodes = [MEMORY[0x277CBEB98] setWithArray:&unk_28647D188];

  return MEMORY[0x2821F96F8]();
}

- (HLPURLSessionACAuthHandler)initWithAuthenticationContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = HLPURLSessionACAuthHandler;
  v6 = [(HLPURLSessionACAuthHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authContext, context);
    v8 = dispatch_queue_create("com.apple.tips.ACAuthHandler.syncQueue", 0);
    syncQueue = v7->_syncQueue;
    v7->_syncQueue = v8;
  }

  return v7;
}

- (void)authenticateWithCompletion:(id)completion
{
  completionCopy = completion;
  syncQueue = [(HLPURLSessionACAuthHandler *)self syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HLPURLSessionACAuthHandler_authenticateWithCompletion___block_invoke;
  block[3] = &unk_279706B10;
  block[4] = self;
  dispatch_sync(syncQueue, block);

  ssoAuthenticator = [(HLPURLSessionACAuthHandler *)self ssoAuthenticator];

  if (ssoAuthenticator)
  {
    ssoAuthenticator2 = [(HLPURLSessionACAuthHandler *)self ssoAuthenticator];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__HLPURLSessionACAuthHandler_authenticateWithCompletion___block_invoke_2;
    v9[3] = &unk_279706B38;
    v9[4] = self;
    v10 = completionCopy;
    [ssoAuthenticator2 authenticateWithCompletion:v9];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v8);
  }
}

void __57__HLPURLSessionACAuthHandler_authenticateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ssoAuthenticator];
  if (v2)
  {
  }

  else if (PingPongClientLibraryCore())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v3 = getPPCExtensibleSSOAuthenticatorClass_softClass;
    v19 = getPPCExtensibleSSOAuthenticatorClass_softClass;
    if (!getPPCExtensibleSSOAuthenticatorClass_softClass)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __getPPCExtensibleSSOAuthenticatorClass_block_invoke;
      v15[3] = &unk_279706B98;
      v15[4] = &v16;
      __getPPCExtensibleSSOAuthenticatorClass_block_invoke(v15);
      v3 = v17[3];
    }

    v4 = v3;
    _Block_object_dispose(&v16, 8);
    v5 = objc_alloc_init(v3);
    [*(a1 + 32) setSsoAuthenticator:v5];
  }

  v6 = [*(a1 + 32) authContext];
  v7 = [v6 appIdentifier];
  v8 = [*(a1 + 32) ssoAuthenticator];
  [v8 setAppIdentifier:v7];

  v9 = [*(a1 + 32) authContext];
  v10 = [v9 enviromentIdentifier];
  v11 = [*(a1 + 32) ssoAuthenticator];
  [v11 setEnvIdentifier:v10];

  v12 = [*(a1 + 32) authContext];
  v13 = [v12 interactivityMode];
  v14 = [*(a1 + 32) ssoAuthenticator];
  [v14 setInteractivity:v13];
}

void __57__HLPURLSessionACAuthHandler_authenticateWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v7 = getkExtensibleSSOUsernameKeySymbolLoc_ptr;
  v22 = getkExtensibleSSOUsernameKeySymbolLoc_ptr;
  if (!getkExtensibleSSOUsernameKeySymbolLoc_ptr)
  {
    v8 = PingPongClientLibrary();
    v20[3] = dlsym(v8, "kExtensibleSSOUsernameKey");
    getkExtensibleSSOUsernameKeySymbolLoc_ptr = v20[3];
    v7 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v7)
  {
    goto LABEL_15;
  }

  v9 = *v7;
  v10 = [v5 objectForKeyedSubscript:v9];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v11 = getkExtensibleSSOTokenKeySymbolLoc_ptr;
  v22 = getkExtensibleSSOTokenKeySymbolLoc_ptr;
  if (!getkExtensibleSSOTokenKeySymbolLoc_ptr)
  {
    v12 = PingPongClientLibrary();
    v20[3] = dlsym(v12, "kExtensibleSSOTokenKey");
    getkExtensibleSSOTokenKeySymbolLoc_ptr = v20[3];
    v11 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v11)
  {
LABEL_15:
    __57__HLPURLSessionACAuthHandler_authenticateWithCompletion___block_invoke_2_cold_1();
    __break(1u);
  }

  v13 = *v11;
  v14 = [v5 objectForKeyedSubscript:v13];

  v15 = [*(a1 + 32) authContext];
  v16 = [v15 clientIdentifier];

  if ([v10 length] && objc_msgSend(v14, "length"))
  {
    if ([v16 length])
    {
      v25[0] = @"X-AppleConnect-User";
      v25[1] = @"X-AppleConnect-Token";
      v26[0] = v10;
      v26[1] = v14;
      v25[2] = @"X-Client-Id";
      v26[2] = v16;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
    }

    else
    {
      v23[0] = @"X-AppleConnect-User";
      v23[1] = @"X-AppleConnect-Token";
      v24[0] = v10;
      v24[1] = v14;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    }
    v17 = ;
  }

  else
  {
    v17 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v10, v14, v17);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)customHeaderFields
{
  v8[1] = *MEMORY[0x277D85DE8];
  authContext = [(HLPURLSessionACAuthHandler *)self authContext];
  clientIdentifier = [authContext clientIdentifier];

  if ([clientIdentifier length])
  {
    v7 = @"X-Client-Id";
    v8[0] = clientIdentifier;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __57__HLPURLSessionACAuthHandler_authenticateWithCompletion___block_invoke_2_cold_1()
{
  dlerror();
  abort_report_np();
  return __getPPCExtensibleSSOAuthenticatorClass_block_invoke_cold_1();
}

@end