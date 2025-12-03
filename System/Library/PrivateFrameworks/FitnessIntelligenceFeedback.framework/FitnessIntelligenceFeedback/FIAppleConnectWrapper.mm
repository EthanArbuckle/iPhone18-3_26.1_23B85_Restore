@interface FIAppleConnectWrapper
+ (void)authenticateWithEnvironment:(int64_t)environment completionHandler:(id)handler;
@end

@implementation FIAppleConnectWrapper

+ (void)authenticateWithEnvironment:(int64_t)environment completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([self isAppleConnectAvailable])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v7 = getACMobileAuthenticationContextClass_softClass;
    v26 = getACMobileAuthenticationContextClass_softClass;
    if (!getACMobileAuthenticationContextClass_softClass)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getACMobileAuthenticationContextClass_block_invoke;
      v21 = &unk_27900CCE8;
      v22 = &v23;
      __getACMobileAuthenticationContextClass_block_invoke(&v18);
      v7 = v24[3];
    }

    v8 = v7;
    _Block_object_dispose(&v23, 8);
    v9 = objc_alloc_init(v7);
    v10 = v9;
    if (environment <= 1)
    {
      [v9 setEnvironment:environment];
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v11 = getACAuthenticationRequestClass_softClass;
    v26 = getACAuthenticationRequestClass_softClass;
    if (!getACAuthenticationRequestClass_softClass)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getACAuthenticationRequestClass_block_invoke;
      v21 = &unk_27900CCE8;
      v22 = &v23;
      __getACAuthenticationRequestClass_block_invoke(&v18);
      v11 = v24[3];
    }

    v12 = v11;
    _Block_object_dispose(&v23, 8);
    v13 = objc_opt_new();
    [v13 setAppID:&unk_285E8E7F0];
    [v13 setAuthType:1];
    [v13 setInteractivityType:0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__FIAppleConnectWrapper_authenticateWithEnvironment_completionHandler___block_invoke;
    v16[3] = &unk_27900CC88;
    v17 = handlerCopy;
    [v10 authenticateWithRequest:v13 completion:v16];
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA068];
    v28[0] = @"AppleConnectClient.framework is unavailable";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v13 = [v14 errorWithDomain:@"com.apple.FitnessIntelligenceFeedback" code:-100 userInfo:v10];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __71__FIAppleConnectWrapper_authenticateWithEnvironment_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__FIAppleConnectWrapper_authenticateWithEnvironment_completionHandler___block_invoke_2;
  v5[3] = &unk_27900CC60;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __71__FIAppleConnectWrapper_authenticateWithEnvironment_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = [v3 error];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v5 = [v3 serviceTicket];
    (*(v4 + 16))(v4, v5, 0);
  }
}

@end