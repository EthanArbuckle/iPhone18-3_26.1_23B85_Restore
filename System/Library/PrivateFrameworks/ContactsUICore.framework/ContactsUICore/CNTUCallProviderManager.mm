@interface CNTUCallProviderManager
- (BOOL)hasDefaultCallProvider;
- (BOOL)isActionType:(id)type supportedByProvider:(id)provider;
- (BOOL)isFirstPartyCallProvider:(id)provider;
- (CNTUCallProviderManager)init;
- (NSDictionary)defaultVideoAppsBundleIdentifierScorer;
- (id)defaultVideoAppsBundleIdentifierScorerImpl;
- (id)hasDefaultCallProviderImpl;
- (id)observableForCallProvidersChangedWithSchedulerProvider:(id)provider;
- (id)otherThirdPartyCallProviders;
- (id)otherThirdPartyCallProvidersImpl;
- (id)providerManagerQueue;
- (id)thirdPartyCallProviderWithBundleIdentifier:(id)identifier;
- (id)thirdPartyCallProvidersForActionType:(id)type;
- (id)thirdPartyDefaultAppCallProviders;
- (id)thirdPartyDefaultAppCallProvidersImpl;
- (void)createDefaultCallingAppsBundleIdentifierScorer:(id)scorer;
- (void)emptyDefaultAppsCaches;
@end

@implementation CNTUCallProviderManager

- (CNTUCallProviderManager)init
{
  v13.receiver = self;
  v13.super_class = CNTUCallProviderManager;
  v2 = [(CNTUCallProviderManager *)&v13 init];
  if (v2)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v3 = getTUCallProviderManagerClass_softClass_0;
    v18 = getTUCallProviderManagerClass_softClass_0;
    if (!getTUCallProviderManagerClass_softClass_0)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __getTUCallProviderManagerClass_block_invoke_0;
      v14[3] = &unk_1E76E79E0;
      v14[4] = &v15;
      __getTUCallProviderManagerClass_block_invoke_0(v14);
      v3 = v16[3];
    }

    v4 = v3;
    _Block_object_dispose(&v15, 8);
    v5 = objc_alloc_init(v3);
    callProviderManager = v2->_callProviderManager;
    v2->_callProviderManager = v5;

    v7 = objc_alloc(MEMORY[0x1E6996748]);
    v8 = objc_alloc_init(MEMORY[0x1E695CEE8]);
    v9 = [v7 initWithAdapter:v8];
    launchServices = v2->_launchServices;
    v2->_launchServices = v9;

    v11 = v2;
  }

  return v2;
}

- (id)thirdPartyDefaultAppCallProviders
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __60__CNTUCallProviderManager_thirdPartyDefaultAppCallProviders__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (!v3)
  {
    v4 = [v2 thirdPartyDefaultAppCallProvidersImpl];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;

    v3 = *(*(a1 + 32) + 24);
  }

  return v3;
}

- (id)thirdPartyDefaultAppCallProvidersImpl
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  callProviderManager = [(CNTUCallProviderManager *)self callProviderManager];
  sortedProviders = [callProviderManager sortedProviders];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__CNTUCallProviderManager_thirdPartyDefaultAppCallProvidersImpl__block_invoke;
  v9[3] = &unk_1E76E9618;
  v9[4] = self;
  v9[5] = &v10;
  v5 = [sortedProviders _cn_filter:v9];

  v6 = [MEMORY[0x1E695DFD8] setWithArray:v11[5]];
  [(CNTUCallProviderManager *)self setDefaultCallingAppsBundleIdentifiersCache:v6];

  [(CNTUCallProviderManager *)self createDefaultCallingAppsBundleIdentifierScorer:v11[5]];
  v7 = [v5 _cn_map:&__block_literal_global_52];

  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __64__CNTUCallProviderManager_thirdPartyDefaultAppCallProvidersImpl__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E6996570];
  v5 = [v3 bundleIdentifier];
  LODWORD(v4) = (*(v4 + 16))(v4, v5);

  if (v4)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [v3 bundleIdentifier];
    [v6 addObject:v7];

    v8 = [*(a1 + 32) isFirstPartyCallProvider:v3] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

CNTUCallProvider *__64__CNTUCallProviderManager_thirdPartyDefaultAppCallProvidersImpl__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNTUCallProvider alloc] initWithCallProvider:v2];

  [(CNTUCallProvider *)v3 setIsEligibleDefaultApp:1];

  return v3;
}

- (id)otherThirdPartyCallProviders
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __55__CNTUCallProviderManager_otherThirdPartyCallProviders__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4];
  if (!v3)
  {
    v4 = [v2 otherThirdPartyCallProvidersImpl];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    v3 = *(*(a1 + 32) + 32);
  }

  return v3;
}

- (id)otherThirdPartyCallProvidersImpl
{
  callProviderManager = [(CNTUCallProviderManager *)self callProviderManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CNTUCallProviderManager_otherThirdPartyCallProvidersImpl__block_invoke;
  v7[3] = &unk_1E76E9660;
  v7[4] = self;
  v4 = [callProviderManager providersPassingTest:v7];

  v5 = [v4 _cn_map:&__block_literal_global_45];

  return v5;
}

uint64_t __59__CNTUCallProviderManager_otherThirdPartyCallProvidersImpl__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E6996570];
  v5 = [v3 bundleIdentifier];
  LODWORD(v4) = (*(v4 + 16))(v4, v5);

  if (v4)
  {
    v6 = [*(a1 + 32) defaultCallingAppsBundleIdentifiersCache];
    v7 = [v3 bundleIdentifier];
    if ([v6 containsObject:v7])
    {
      v8 = 0;
    }

    else
    {
      v8 = [*(a1 + 32) isFirstPartyCallProvider:v3] ^ 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

CNTUCallProvider *__59__CNTUCallProviderManager_otherThirdPartyCallProvidersImpl__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNTUCallProvider alloc] initWithCallProvider:v2];

  return v3;
}

- (void)createDefaultCallingAppsBundleIdentifierScorer:(id)scorer
{
  v4 = MEMORY[0x1E695DF90];
  scorerCopy = scorer;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(scorerCopy, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CNTUCallProviderManager_createDefaultCallingAppsBundleIdentifierScorer___block_invoke;
  v8[3] = &unk_1E76E9688;
  v9 = v6;
  v7 = v6;
  [scorerCopy enumerateObjectsUsingBlock:v8];

  [(CNTUCallProviderManager *)self setDefaultCallingAppsBundleIdentifierScorerCache:v7];
}

void __74__CNTUCallProviderManager_createDefaultCallingAppsBundleIdentifierScorer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3 + 1];
  [v4 setObject:v7 forKey:v6];
}

- (NSDictionary)defaultVideoAppsBundleIdentifierScorer
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __65__CNTUCallProviderManager_defaultVideoAppsBundleIdentifierScorer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (!v3)
  {
    v4 = [v2 defaultVideoAppsBundleIdentifierScorerImpl];
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v3 = *(*(a1 + 32) + 56);
  }

  return v3;
}

- (id)defaultVideoAppsBundleIdentifierScorerImpl
{
  callProviderManager = [(CNTUCallProviderManager *)self callProviderManager];
  defaultAppProvider = [callProviderManager defaultAppProvider];

  defaultCallingAppsBundleIdentifierScorer = [(CNTUCallProviderManager *)self defaultCallingAppsBundleIdentifierScorer];
  if (([defaultAppProvider supportsAudioAndVideo] & 1) == 0)
  {

    defaultCallingAppsBundleIdentifierScorer2 = [(CNTUCallProviderManager *)self defaultCallingAppsBundleIdentifierScorer];
    defaultCallingAppsBundleIdentifierScorer = [defaultCallingAppsBundleIdentifierScorer2 mutableCopy];

    [defaultCallingAppsBundleIdentifierScorer setObject:&unk_1F1645D48 forKeyedSubscript:*MEMORY[0x1E695C118]];
  }

  return defaultCallingAppsBundleIdentifierScorer;
}

- (BOOL)hasDefaultCallProvider
{
  v2 = cn_objectResultWithObjectLock();
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

id __49__CNTUCallProviderManager_hasDefaultCallProvider__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (!v3)
  {
    v4 = [v2 hasDefaultCallProviderImpl];
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;

    v3 = *(*(a1 + 32) + 64);
  }

  return v3;
}

- (id)hasDefaultCallProviderImpl
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1A31E6000, v3, OS_LOG_TYPE_INFO, "CNTUCallProviderManager will fetch default calling app", &v10, 2u);
  }

  v4 = MEMORY[0x1E696AD98];
  launchServices = [(CNTUCallProviderManager *)self launchServices];
  v6 = [launchServices defaultApplicationForDefaultAppCategory:1];
  v7 = [v4 numberWithInt:v6 != 0];

  v8 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_1A31E6000, v8, OS_LOG_TYPE_INFO, "CNTUCallProviderManager did fetch default calling app, has default = %@", &v10, 0xCu);
  }

  return v7;
}

- (id)providerManagerQueue
{
  if (providerManagerQueue_cn_once_token_3 != -1)
  {
    [CNTUCallProviderManager providerManagerQueue];
  }

  v3 = providerManagerQueue_cn_once_object_3;

  return v3;
}

uint64_t __47__CNTUCallProviderManager_providerManagerQueue__block_invoke()
{
  providerManagerQueue_cn_once_object_3 = dispatch_queue_create("com.apple.contacts.ContactsUICore.CNTUCallProviderManagerQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

- (id)observableForCallProvidersChangedWithSchedulerProvider:(id)provider
{
  providerCopy = provider;
  v5 = MEMORY[0x1E6996798];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__CNTUCallProviderManager_observableForCallProvidersChangedWithSchedulerProvider___block_invoke;
  v9[3] = &unk_1E76E96D8;
  v10 = providerCopy;
  selfCopy = self;
  v6 = providerCopy;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

CNCallProvidersChangedCancelationToken *__82__CNTUCallProviderManager_observableForCallProvidersChangedWithSchedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CNCallProvidersChangedCancelationToken);
  v5 = [CNTUCallProviderManagerDelegate alloc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__CNTUCallProviderManager_observableForCallProvidersChangedWithSchedulerProvider___block_invoke_2;
  v14[3] = &unk_1E76E96B0;
  v15 = *(a1 + 32);
  v16 = v3;
  v6 = v3;
  v7 = [(CNTUCallProviderManagerDelegate *)v5 initWithBlock:v14];
  v8 = [*(a1 + 40) callProviderManager];
  v9 = [*(a1 + 40) providerManagerQueue];
  [v8 addDelegate:v7 queue:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__CNTUCallProviderManager_observableForCallProvidersChangedWithSchedulerProvider___block_invoke_4;
  v12[3] = &unk_1E76E7F60;
  v12[4] = *(a1 + 40);
  v13 = v7;
  v10 = v7;
  [(CNCancelationToken *)v4 addCancelationBlock:v12];

  return v4;
}

void __82__CNTUCallProviderManager_observableForCallProvidersChangedWithSchedulerProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) backgroundScheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__CNTUCallProviderManager_observableForCallProvidersChangedWithSchedulerProvider___block_invoke_3;
  v6[3] = &unk_1E76E7F60;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 performBlock:v6];
}

void __82__CNTUCallProviderManager_observableForCallProvidersChangedWithSchedulerProvider___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) callProviderManager];
  [v2 removeDelegate:*(a1 + 40)];
}

- (id)thirdPartyCallProvidersForActionType:(id)type
{
  v18[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  thirdPartyDefaultAppCallProviders = [(CNTUCallProviderManager *)self thirdPartyDefaultAppCallProviders];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__CNTUCallProviderManager_thirdPartyCallProvidersForActionType___block_invoke;
  v16[3] = &unk_1E76E9700;
  v16[4] = self;
  v6 = typeCopy;
  v17 = v6;
  v7 = [thirdPartyDefaultAppCallProviders _cn_filter:v16];

  otherThirdPartyCallProviders = [(CNTUCallProviderManager *)self otherThirdPartyCallProviders];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__CNTUCallProviderManager_thirdPartyCallProvidersForActionType___block_invoke_2;
  v14[3] = &unk_1E76E9700;
  v14[4] = self;
  v15 = v6;
  v9 = v6;
  v10 = [otherThirdPartyCallProviders _cn_filter:v14];

  v18[0] = v7;
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  _cn_flatten = [v11 _cn_flatten];

  return _cn_flatten;
}

uint64_t __64__CNTUCallProviderManager_thirdPartyCallProvidersForActionType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 callProvider];
  v5 = [v2 isActionType:v3 supportedByProvider:v4];

  return v5;
}

uint64_t __64__CNTUCallProviderManager_thirdPartyCallProvidersForActionType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 callProvider];
  v5 = [v2 isActionType:v3 supportedByProvider:v4];

  return v5;
}

- (id)thirdPartyCallProviderWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  thirdPartyDefaultAppCallProviders = [(CNTUCallProviderManager *)self thirdPartyDefaultAppCallProviders];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__CNTUCallProviderManager_thirdPartyCallProviderWithBundleIdentifier___block_invoke;
  v14[3] = &unk_1E76E9728;
  v6 = identifierCopy;
  v15 = v6;
  v7 = [thirdPartyDefaultAppCallProviders _cn_firstObjectPassingTest:v14];

  v8 = v7;
  v9 = v8;
  if (!v8)
  {
    otherThirdPartyCallProviders = [(CNTUCallProviderManager *)self otherThirdPartyCallProviders];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__CNTUCallProviderManager_thirdPartyCallProviderWithBundleIdentifier___block_invoke_2;
    v12[3] = &unk_1E76E9728;
    v13 = v6;
    v9 = [otherThirdPartyCallProviders _cn_firstObjectPassingTest:v12];
  }

  return v9;
}

uint64_t __70__CNTUCallProviderManager_thirdPartyCallProviderWithBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __70__CNTUCallProviderManager_thirdPartyCallProviderWithBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)isFirstPartyCallProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy isTelephonyProvider] & 1) != 0 || (objc_msgSend(providerCopy, "isFaceTimeProvider"))
  {
    v4 = 1;
  }

  else
  {
    identifier = [providerCopy identifier];
    if ([identifier isEqualToString:@"com.apple.telephonyutilities.callservicesd.TinCan"])
    {
      v4 = 1;
    }

    else
    {
      identifier2 = [providerCopy identifier];
      v4 = [identifier2 isEqualToString:@"com.apple.internal.suiuntool"];
    }
  }

  return v4;
}

- (BOOL)isActionType:(id)type supportedByProvider:(id)provider
{
  typeCopy = type;
  providerCopy = provider;
  if ([typeCopy isEqualToString:*MEMORY[0x1E695C150]] && (objc_msgSend(providerCopy, "supportsAudioOnly") & 1) != 0)
  {
    supportsAudioAndVideo = 1;
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    supportsAudioAndVideo = [providerCopy supportsAudioAndVideo];
  }

  else
  {
    supportsAudioAndVideo = 0;
  }

  return supportsAudioAndVideo;
}

- (void)emptyDefaultAppsCaches
{
  cn_runWithObjectLock();
  cn_runWithObjectLock();
  cn_runWithObjectLock();
  [(CNTUCallProviderManager *)self setDefaultCallingAppsBundleIdentifierScorerCache:0];
  [(CNTUCallProviderManager *)self setDefaultCallingAppsBundleIdentifiersCache:0];
  [(CNTUCallProviderManager *)self setHasDefaultCallProviderCache:0];
}

void __49__CNTUCallProviderManager_emptyDefaultAppsCaches__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

void __49__CNTUCallProviderManager_emptyDefaultAppsCaches__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

void __49__CNTUCallProviderManager_emptyDefaultAppsCaches__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  *(v1 + 56) = 0;
}

@end