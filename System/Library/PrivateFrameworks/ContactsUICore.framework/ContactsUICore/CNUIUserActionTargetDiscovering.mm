@interface CNUIUserActionTargetDiscovering
+ (BOOL)isSkypeAvailableWithEnvironment:(id)environment;
+ (BOOL)shouldIgnoreApplicationProxy:(id)proxy;
+ (id)applicationProxiesForIntent:(id)intent applicationWorkspace:(id)workspace;
+ (id)os_log;
- (CNUIUserActionTargetDiscovering)initWithApplicationWorkspace:(id)workspace callProviderManager:(id)manager profileConnection:(id)connection schedulerProvider:(id)provider highLatencySchedulerProvider:(id)schedulerProvider capabilities:(id)capabilities;
- (id)_targetsForActionType:(id)type;
- (id)observableForTargetsChangedForActionType:(id)type schedulerProvider:(id)provider;
- (id)targetForTextWithMessages;
- (id)targetForTextWithSkype;
- (id)targetForVideoWithFaceTime;
- (id)targetForVideoWithSkype;
- (id)targetForVoiceWithFaceTime;
- (id)targetForVoiceWithSkype;
- (id)targetForVoiceWithTelephony;
- (id)targetsForActionType:(id)type;
- (id)targetsForDirections;
- (id)targetsForEmail;
- (id)targetsForPay;
- (id)targetsForSendMessageIntent;
- (id)targetsForStartAudioCallIntent;
- (id)targetsForStartVideoCallIntent;
- (id)targetsForText;
- (id)targetsForTextWithDefaultMessagingApps;
- (id)targetsForVideo;
- (id)targetsForVideoWithThirdPartyCallProviders;
- (id)targetsForVoice;
- (id)targetsForVoiceWithThirdPartyCallProviders;
- (id)thirdPartyTargetsForActionTypes:(id)types;
- (id)thirdPartyTargetsForBundleIdentifier:(id)identifier;
- (void)createDefaultMessagingAppsBundleIdentifierScorer:(id)scorer;
- (void)dealloc;
- (void)emptyDefaultAppsCaches;
- (void)resetTargetsForActionType:(id)type;
@end

@implementation CNUIUserActionTargetDiscovering

+ (id)os_log
{
  if (os_log_cn_once_token_1_1 != -1)
  {
    +[CNUIUserActionTargetDiscovering os_log];
  }

  v3 = os_log_cn_once_object_1_1;

  return v3;
}

uint64_t __41__CNUIUserActionTargetDiscovering_os_log__block_invoke()
{
  os_log_cn_once_object_1_1 = os_log_create("com.apple.contacts", "target-discovery");

  return MEMORY[0x1EEE66BB8]();
}

- (CNUIUserActionTargetDiscovering)initWithApplicationWorkspace:(id)workspace callProviderManager:(id)manager profileConnection:(id)connection schedulerProvider:(id)provider highLatencySchedulerProvider:(id)schedulerProvider capabilities:(id)capabilities
{
  workspaceCopy = workspace;
  managerCopy = manager;
  connectionCopy = connection;
  providerCopy = provider;
  schedulerProviderCopy = schedulerProvider;
  capabilitiesCopy = capabilities;
  v29.receiver = self;
  v29.super_class = CNUIUserActionTargetDiscovering;
  v18 = [(CNUIUserActionTargetDiscovering *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_applicationWorkspace, workspace);
    objc_storeStrong(&v19->_callProviderManager, manager);
    objc_storeStrong(&v19->_capabilities, capabilities);
    objc_storeStrong(&v19->_highLatencySchedulerProvider, schedulerProvider);
    objc_storeStrong(&v19->_profileConnection, connection);
    objc_storeStrong(&v19->_schedulerProvider, provider);
    v20 = [CNUIUserActionTargetDiscoveryCache alloc];
    v21 = [providerCopy newSynchronousSerialSchedulerWithName:@"com.apple.contacts.ContactsUICore.CNUIUserActionTargetDiscoveringResourceLock"];
    v22 = [(CNCache *)v20 initWithResourceScheduler:v21];
    cache = v19->_cache;
    v19->_cache = v22;

    v24 = v19;
  }

  return v19;
}

- (void)dealloc
{
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(CNUIUserActionTargetDiscovering *)selfCopy cache];
  allObjects = [cache allObjects];
  v7 = [allObjects _cn_map:&__block_literal_global_22_1];
  [array setArray:v7];

  cache2 = [(CNUIUserActionTargetDiscovering *)selfCopy cache];
  [cache2 removeAllObjects];

  objc_sync_exit(selfCopy);
  [array _cn_each:*MEMORY[0x1E6996470]];

  v9.receiver = selfCopy;
  v9.super_class = CNUIUserActionTargetDiscovering;
  [(CNUIUserActionTargetDiscovering *)&v9 dealloc];
}

- (id)targetsForActionType:(id)type
{
  typeCopy = type;
  schedulerProvider = [(CNUIUserActionTargetDiscovering *)self schedulerProvider];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(CNUIUserActionTargetDiscovering *)selfCopy cache];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __56__CNUIUserActionTargetDiscovering_targetsForActionType___block_invoke;
  v15 = &unk_1E76E9F88;
  v16 = selfCopy;
  v8 = schedulerProvider;
  v17 = v8;
  v9 = [cache objectForKey:typeCopy onCacheMiss:&v12];

  first = [v9 first];

  objc_sync_exit(selfCopy);

  return first;
}

id __56__CNUIUserActionTargetDiscovering_targetsForActionType___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _targetsForActionType:a2];
  v4 = [objc_alloc(MEMORY[0x1E6996808]) initWithSchedulerProvider:*(a1 + 40)];
  v5 = [v3 subscribe:v4];
  v6 = [(CNPair *)CNUIUserActionTargetDiscoveringReplaySubjectPair pairWithFirst:v4 second:v5];

  return v6;
}

- (id)observableForTargetsChangedForActionType:(id)type schedulerProvider:(id)provider
{
  v23[3] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  providerCopy = provider;
  if (typeCopy | *MEMORY[0x1E695C150] && ([typeCopy isEqual:?] & 1) == 0 && typeCopy | *MEMORY[0x1E695C1B8] && (objc_msgSend(typeCopy, "isEqual:") & 1) == 0 && typeCopy | *MEMORY[0x1E695C178] && !objc_msgSend(typeCopy, "isEqual:"))
  {
    emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
  }

  else
  {
    v8 = MEMORY[0x1E6996798];
    applicationWorkspace = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
    v10 = [applicationWorkspace observableForApplicationsChangedWithSchedulerProvider:providerCopy];
    v23[0] = v10;
    callProviderManager = [(CNUIUserActionTargetDiscovering *)self callProviderManager];
    v12 = [callProviderManager observableForCallProvidersChangedWithSchedulerProvider:providerCopy];
    v23[1] = v12;
    profileConnection = [(CNUIUserActionTargetDiscovering *)self profileConnection];
    observableForManagedConfigChanged = [profileConnection observableForManagedConfigChanged];
    v23[2] = observableForManagedConfigChanged;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    selfCopy = self;
    v16 = v15 = typeCopy;
    v17 = [v8 merge:v16 schedulerProvider:providerCopy];

    typeCopy = v15;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__CNUIUserActionTargetDiscovering_observableForTargetsChangedForActionType_schedulerProvider___block_invoke;
    v21[3] = &unk_1E76E83B8;
    v21[4] = selfCopy;
    v22 = v15;
    emptyObservable = [v17 doOnNext:v21];
  }

  return emptyObservable;
}

- (void)resetTargetsForActionType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    [(CNUIUserActionTargetDiscovering *)typeCopy resetTargetsForActionType:os_log];
  }

  cache = [(CNUIUserActionTargetDiscovering *)selfCopy cache];
  v8 = [cache objectForKeyedSubscript:typeCopy];
  second = [v8 second];

  cache2 = [(CNUIUserActionTargetDiscovering *)selfCopy cache];
  [cache2 setObject:0 forKeyedSubscript:typeCopy];

  objc_sync_exit(selfCopy);
  [second cancel];
}

- (id)_targetsForActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E695C178]])
  {
    targetsForText = [(CNUIUserActionTargetDiscovering *)self targetsForText];
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C150]])
  {
    targetsForText = [(CNUIUserActionTargetDiscovering *)self targetsForVoice];
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    targetsForText = [(CNUIUserActionTargetDiscovering *)self targetsForVideo];
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C170]])
  {
    targetsForText = [(CNUIUserActionTargetDiscovering *)self targetsForEmail];
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C188]])
  {
    targetsForText = [(CNUIUserActionTargetDiscovering *)self targetsForPay];
  }

  else
  {
    if ([typeCopy isEqualToString:*MEMORY[0x1E695C160]])
    {
      [(CNUIUserActionTargetDiscovering *)self targetsForDirections];
    }

    else
    {
      [MEMORY[0x1E6996798] emptyObservable];
    }
    targetsForText = ;
  }

  v6 = targetsForText;

  return v6;
}

- (id)targetsForEmail
{
  v2 = MEMORY[0x1E6996798];
  v3 = +[CNUIUserActionTarget targetForEmailWithMail];
  v4 = [v2 observableWithResult:v3];

  return v4;
}

- (id)targetsForPay
{
  v2 = MEMORY[0x1E6996798];
  v3 = +[CNUIUserActionTarget targetForPayWithWallet];
  v4 = [v2 observableWithResult:v3];

  return v4;
}

- (id)targetsForDirections
{
  v2 = MEMORY[0x1E6996798];
  v3 = +[CNUIUserActionTarget targetForDirections];
  v4 = [v2 observableWithResult:v3];

  return v4;
}

- (id)targetsForVoice
{
  v27[2] = *MEMORY[0x1E69E9840];
  targetForVoiceWithTelephony = [(CNUIUserActionTargetDiscovering *)self targetForVoiceWithTelephony];
  array = [MEMORY[0x1E695DF70] array];
  targetForVoiceWithFaceTime = [(CNUIUserActionTargetDiscovering *)self targetForVoiceWithFaceTime];
  [array addObject:targetForVoiceWithFaceTime];

  targetForVoiceWithSkype = [(CNUIUserActionTargetDiscovering *)self targetForVoiceWithSkype];
  [array addObject:targetForVoiceWithSkype];

  targetsForVoiceWithThirdPartyCallProviders = [(CNUIUserActionTargetDiscovering *)self targetsForVoiceWithThirdPartyCallProviders];
  [array addObject:targetsForVoiceWithThirdPartyCallProviders];

  schedulerProvider = [(CNUIUserActionTargetDiscovering *)self schedulerProvider];
  highLatencySchedulerProvider = [(CNUIUserActionTargetDiscovering *)self highLatencySchedulerProvider];
  v10 = MEMORY[0x1E6996798];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __50__CNUIUserActionTargetDiscovering_targetsForVoice__block_invoke;
  v23 = &unk_1E76E9FB0;
  v24 = highLatencySchedulerProvider;
  v25 = array;
  v26 = schedulerProvider;
  v11 = schedulerProvider;
  v12 = array;
  v13 = highLatencySchedulerProvider;
  v14 = [v10 observableWithBlock:&v20];
  v15 = MEMORY[0x1E6996798];
  v27[0] = targetForVoiceWithTelephony;
  v27[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:{2, v20, v21, v22, v23}];
  schedulerProvider2 = [(CNUIUserActionTargetDiscovering *)self schedulerProvider];
  v18 = [v15 merge:v16 schedulerProvider:schedulerProvider2];

  return v18;
}

id __50__CNUIUserActionTargetDiscovering_targetsForVoice__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] backgroundScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CNUIUserActionTargetDiscovering_targetsForVoice__block_invoke_2;
  v8[3] = &unk_1E76E7EC0;
  v9 = a1[5];
  v10 = a1[6];
  v11 = v3;
  v5 = v3;
  v6 = [v4 performCancelableBlock:v8 qualityOfService:2];

  return v6;
}

void __50__CNUIUserActionTargetDiscovering_targetsForVoice__block_invoke_2(void *a1, void *a2)
{
  v3 = MEMORY[0x1E6996798];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v7 = [v3 merge:v4 schedulerProvider:v5];
  v8 = [v7 subscribe:a1[6]];

  [v6 addCancelable:v8];
}

- (id)targetsForVideo
{
  array = [MEMORY[0x1E695DF70] array];
  targetForVideoWithFaceTime = [(CNUIUserActionTargetDiscovering *)self targetForVideoWithFaceTime];
  [array addObject:targetForVideoWithFaceTime];

  targetForVideoWithSkype = [(CNUIUserActionTargetDiscovering *)self targetForVideoWithSkype];
  [array addObject:targetForVideoWithSkype];

  targetsForVideoWithThirdPartyCallProviders = [(CNUIUserActionTargetDiscovering *)self targetsForVideoWithThirdPartyCallProviders];
  [array addObject:targetsForVideoWithThirdPartyCallProviders];

  schedulerProvider = [(CNUIUserActionTargetDiscovering *)self schedulerProvider];
  highLatencySchedulerProvider = [(CNUIUserActionTargetDiscovering *)self highLatencySchedulerProvider];
  v9 = MEMORY[0x1E6996798];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__CNUIUserActionTargetDiscovering_targetsForVideo__block_invoke;
  v15[3] = &unk_1E76E9FB0;
  v16 = highLatencySchedulerProvider;
  v17 = array;
  v18 = schedulerProvider;
  v10 = schedulerProvider;
  v11 = array;
  v12 = highLatencySchedulerProvider;
  v13 = [v9 observableWithBlock:v15];

  return v13;
}

id __50__CNUIUserActionTargetDiscovering_targetsForVideo__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] backgroundScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CNUIUserActionTargetDiscovering_targetsForVideo__block_invoke_2;
  v8[3] = &unk_1E76E7EC0;
  v9 = a1[5];
  v10 = a1[6];
  v11 = v3;
  v5 = v3;
  v6 = [v4 performCancelableBlock:v8 qualityOfService:2];

  return v6;
}

void __50__CNUIUserActionTargetDiscovering_targetsForVideo__block_invoke_2(void *a1, void *a2)
{
  v3 = MEMORY[0x1E6996798];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v7 = [v3 merge:v4 schedulerProvider:v5];
  v8 = [v7 subscribe:a1[6]];

  [v6 addCancelable:v8];
}

- (id)targetsForText
{
  v27[2] = *MEMORY[0x1E69E9840];
  targetForTextWithMessages = [(CNUIUserActionTargetDiscovering *)self targetForTextWithMessages];
  array = [MEMORY[0x1E695DF70] array];
  targetsForTextWithDefaultMessagingApps = [(CNUIUserActionTargetDiscovering *)self targetsForTextWithDefaultMessagingApps];
  [array addObject:targetsForTextWithDefaultMessagingApps];

  targetForTextWithSkype = [(CNUIUserActionTargetDiscovering *)self targetForTextWithSkype];
  [array addObject:targetForTextWithSkype];

  targetsForSendMessageIntent = [(CNUIUserActionTargetDiscovering *)self targetsForSendMessageIntent];
  [array addObject:targetsForSendMessageIntent];

  schedulerProvider = [(CNUIUserActionTargetDiscovering *)self schedulerProvider];
  highLatencySchedulerProvider = [(CNUIUserActionTargetDiscovering *)self highLatencySchedulerProvider];
  v10 = MEMORY[0x1E6996798];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __49__CNUIUserActionTargetDiscovering_targetsForText__block_invoke;
  v23 = &unk_1E76E9FB0;
  v24 = highLatencySchedulerProvider;
  v25 = array;
  v26 = schedulerProvider;
  v11 = schedulerProvider;
  v12 = array;
  v13 = highLatencySchedulerProvider;
  v14 = [v10 observableWithBlock:&v20];
  v15 = MEMORY[0x1E6996798];
  v27[0] = targetForTextWithMessages;
  v27[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:{2, v20, v21, v22, v23}];
  schedulerProvider2 = [(CNUIUserActionTargetDiscovering *)self schedulerProvider];
  v18 = [v15 merge:v16 schedulerProvider:schedulerProvider2];

  return v18;
}

id __49__CNUIUserActionTargetDiscovering_targetsForText__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] backgroundScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__CNUIUserActionTargetDiscovering_targetsForText__block_invoke_2;
  v8[3] = &unk_1E76E7EC0;
  v9 = a1[5];
  v10 = a1[6];
  v11 = v3;
  v5 = v3;
  v6 = [v4 performCancelableBlock:v8 qualityOfService:2];

  return v6;
}

void __49__CNUIUserActionTargetDiscovering_targetsForText__block_invoke_2(void *a1, void *a2)
{
  v3 = MEMORY[0x1E6996798];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v7 = [v3 merge:v4 schedulerProvider:v5];
  v8 = [v7 subscribe:a1[6]];

  [v6 addCancelable:v8];
}

- (id)targetForVoiceWithTelephony
{
  capabilities = [(CNUIUserActionTargetDiscovering *)self capabilities];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CNUIUserActionTargetDiscovering_targetForVoiceWithTelephony__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = capabilities;
  v4 = capabilities;
  v5 = [v3 observableWithBlock:v7];

  return v5;
}

CNUIUserActionTargetDiscoveringObservableCancelationToken *__62__CNUIUserActionTargetDiscovering_targetForVoiceWithTelephony__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) areTelephonyCallsSupported])
  {
    v4 = +[CNUIUserActionTarget targetForVoiceWithTelephony];
    [v3 observerDidReceiveResult:v4];
  }

  [v3 observerDidComplete];
  v5 = objc_alloc_init(CNUIUserActionTargetDiscoveringObservableCancelationToken);

  return v5;
}

- (id)targetForTextWithMessages
{
  capabilities = [(CNUIUserActionTargetDiscovering *)self capabilities];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CNUIUserActionTargetDiscovering_targetForTextWithMessages__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = capabilities;
  v4 = capabilities;
  v5 = [v3 observableWithBlock:v7];

  return v5;
}

CNUIUserActionTargetDiscoveringObservableCancelationToken *__60__CNUIUserActionTargetDiscovering_targetForTextWithMessages__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isiMessageSupported])
  {
    v4 = +[CNUIUserActionTarget targetForTextWithMessages];
    [v3 observerDidReceiveResult:v4];
  }

  [v3 observerDidComplete];
  v5 = objc_alloc_init(CNUIUserActionTargetDiscoveringObservableCancelationToken);

  return v5;
}

- (id)targetForVoiceWithFaceTime
{
  capabilities = [(CNUIUserActionTargetDiscovering *)self capabilities];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CNUIUserActionTargetDiscovering_targetForVoiceWithFaceTime__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = capabilities;
  v4 = capabilities;
  v5 = [v3 observableWithBlock:v7];

  return v5;
}

CNUIUserActionTargetDiscoveringObservableCancelationToken *__61__CNUIUserActionTargetDiscovering_targetForVoiceWithFaceTime__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isFaceTimeAudioSupported])
  {
    v4 = +[CNUIUserActionTarget targetForVoiceWithFaceTime];
    [v3 observerDidReceiveResult:v4];
  }

  [v3 observerDidComplete];
  v5 = objc_alloc_init(CNUIUserActionTargetDiscoveringObservableCancelationToken);

  return v5;
}

- (id)targetForVideoWithFaceTime
{
  capabilities = [(CNUIUserActionTargetDiscovering *)self capabilities];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CNUIUserActionTargetDiscovering_targetForVideoWithFaceTime__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = capabilities;
  v4 = capabilities;
  v5 = [v3 observableWithBlock:v7];

  return v5;
}

CNUIUserActionTargetDiscoveringObservableCancelationToken *__61__CNUIUserActionTargetDiscovering_targetForVideoWithFaceTime__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isFaceTimeVideoSupported])
  {
    v4 = +[CNUIUserActionTarget targetForVideoWithFaceTime];
    [v3 observerDidReceiveResult:v4];
  }

  [v3 observerDidComplete];
  v5 = objc_alloc_init(CNUIUserActionTargetDiscoveringObservableCancelationToken);

  return v5;
}

- (id)targetForVoiceWithSkype
{
  applicationWorkspace = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CNUIUserActionTargetDiscovering_targetForVoiceWithSkype__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = applicationWorkspace;
  v4 = applicationWorkspace;
  v5 = [v3 observableWithBlock:v7];

  return v5;
}

CNUIUserActionTargetDiscoveringObservableCancelationToken *__58__CNUIUserActionTargetDiscovering_targetForVoiceWithSkype__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([CNUIUserActionTargetDiscovering isSkypeAvailableWithEnvironment:*(a1 + 32)])
  {
    v4 = +[CNUIUserActionTarget targetForVoiceWithSkype];
    [v3 observerDidReceiveResult:v4];
  }

  [v3 observerDidComplete];
  v5 = objc_alloc_init(CNUIUserActionTargetDiscoveringObservableCancelationToken);

  return v5;
}

- (id)targetForVideoWithSkype
{
  applicationWorkspace = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CNUIUserActionTargetDiscovering_targetForVideoWithSkype__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = applicationWorkspace;
  v4 = applicationWorkspace;
  v5 = [v3 observableWithBlock:v7];

  return v5;
}

CNUIUserActionTargetDiscoveringObservableCancelationToken *__58__CNUIUserActionTargetDiscovering_targetForVideoWithSkype__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([CNUIUserActionTargetDiscovering isSkypeAvailableWithEnvironment:*(a1 + 32)])
  {
    v4 = +[CNUIUserActionTarget targetForVideoWithSkype];
    [v3 observerDidReceiveResult:v4];
  }

  [v3 observerDidComplete];
  v5 = objc_alloc_init(CNUIUserActionTargetDiscoveringObservableCancelationToken);

  return v5;
}

- (id)targetForTextWithSkype
{
  applicationWorkspace = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CNUIUserActionTargetDiscovering_targetForTextWithSkype__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = applicationWorkspace;
  v4 = applicationWorkspace;
  v5 = [v3 observableWithBlock:v7];

  return v5;
}

CNUIUserActionTargetDiscoveringObservableCancelationToken *__57__CNUIUserActionTargetDiscovering_targetForTextWithSkype__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([CNUIUserActionTargetDiscovering isSkypeAvailableWithEnvironment:*(a1 + 32)])
  {
    v4 = +[CNUIUserActionTarget targetForTextWithSkype];
    [v3 observerDidReceiveResult:v4];
  }

  [v3 observerDidComplete];
  v5 = objc_alloc_init(CNUIUserActionTargetDiscoveringObservableCancelationToken);

  return v5;
}

- (id)targetsForVoiceWithThirdPartyCallProviders
{
  callProviderManager = [(CNUIUserActionTargetDiscovering *)self callProviderManager];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__CNUIUserActionTargetDiscovering_targetsForVoiceWithThirdPartyCallProviders__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = callProviderManager;
  v4 = callProviderManager;
  v5 = [v3 observableWithBlock:v7];

  return v5;
}

CNUIUserActionTargetDiscoveringObservableCancelationToken *__77__CNUIUserActionTargetDiscovering_targetsForVoiceWithThirdPartyCallProviders__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) thirdPartyCallProvidersForActionType:*MEMORY[0x1E695C150]];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__CNUIUserActionTargetDiscovering_targetsForVoiceWithThirdPartyCallProviders__block_invoke_2;
  v8[3] = &unk_1E76EA000;
  v9 = v3;
  v5 = v3;
  [v4 _cn_each:v8];

  [v5 observerDidComplete];
  v6 = objc_alloc_init(CNUIUserActionTargetDiscoveringObservableCancelationToken);

  return v6;
}

void __77__CNUIUserActionTargetDiscovering_targetsForVoiceWithThirdPartyCallProviders__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [CNUIUserActionTarget targetForVoiceWithCallProvider:a2];
  [v2 observerDidReceiveResult:v3];
}

- (id)targetsForVideoWithThirdPartyCallProviders
{
  callProviderManager = [(CNUIUserActionTargetDiscovering *)self callProviderManager];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__CNUIUserActionTargetDiscovering_targetsForVideoWithThirdPartyCallProviders__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = callProviderManager;
  v4 = callProviderManager;
  v5 = [v3 observableWithBlock:v7];

  return v5;
}

CNUIUserActionTargetDiscoveringObservableCancelationToken *__77__CNUIUserActionTargetDiscovering_targetsForVideoWithThirdPartyCallProviders__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) thirdPartyCallProvidersForActionType:*MEMORY[0x1E695C1B8]];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__CNUIUserActionTargetDiscovering_targetsForVideoWithThirdPartyCallProviders__block_invoke_2;
  v8[3] = &unk_1E76EA000;
  v9 = v3;
  v5 = v3;
  [v4 _cn_each:v8];

  [v5 observerDidComplete];
  v6 = objc_alloc_init(CNUIUserActionTargetDiscoveringObservableCancelationToken);

  return v6;
}

void __77__CNUIUserActionTargetDiscovering_targetsForVideoWithThirdPartyCallProviders__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [CNUIUserActionTarget targetForVideoWithCallProvider:a2];
  [v2 observerDidReceiveResult:v3];
}

- (id)targetsForStartAudioCallIntent
{
  applicationWorkspace = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__CNUIUserActionTargetDiscovering_targetsForStartAudioCallIntent__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = applicationWorkspace;
  v4 = applicationWorkspace;
  v5 = [v3 observableWithBlock:v7];

  return v5;
}

CNUIUserActionTargetDiscoveringObservableCancelationToken *__65__CNUIUserActionTargetDiscovering_targetsForStartAudioCallIntent__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sIntentForActionType_block_invoke(v3, *MEMORY[0x1E695C150]);
  v5 = [CNUIUserActionTargetDiscovering applicationProxiesForIntent:v4 applicationWorkspace:*(a1 + 32)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__CNUIUserActionTargetDiscovering_targetsForStartAudioCallIntent__block_invoke_2;
  v9[3] = &unk_1E76EA028;
  v10 = v3;
  v6 = v3;
  [v5 _cn_each:v9];

  [v6 observerDidComplete];
  v7 = objc_alloc_init(CNUIUserActionTargetDiscoveringObservableCancelationToken);

  return v7;
}

void __65__CNUIUserActionTargetDiscovering_targetsForStartAudioCallIntent__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [CNUIUserActionTarget targetForStartAudioCallIntentWithAppProxy:a2];
  [v2 observerDidReceiveResult:v3];
}

- (id)targetsForStartVideoCallIntent
{
  applicationWorkspace = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__CNUIUserActionTargetDiscovering_targetsForStartVideoCallIntent__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = applicationWorkspace;
  v4 = applicationWorkspace;
  v5 = [v3 observableWithBlock:v7];

  return v5;
}

CNUIUserActionTargetDiscoveringObservableCancelationToken *__65__CNUIUserActionTargetDiscovering_targetsForStartVideoCallIntent__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sIntentForActionType_block_invoke(v3, *MEMORY[0x1E695C1B8]);
  v5 = [CNUIUserActionTargetDiscovering applicationProxiesForIntent:v4 applicationWorkspace:*(a1 + 32)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__CNUIUserActionTargetDiscovering_targetsForStartVideoCallIntent__block_invoke_2;
  v9[3] = &unk_1E76EA028;
  v10 = v3;
  v6 = v3;
  [v5 _cn_each:v9];

  [v6 observerDidComplete];
  v7 = objc_alloc_init(CNUIUserActionTargetDiscoveringObservableCancelationToken);

  return v7;
}

void __65__CNUIUserActionTargetDiscovering_targetsForStartVideoCallIntent__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [CNUIUserActionTarget targetForStartVideoCallIntentWithAppProxy:a2];
  [v2 observerDidReceiveResult:v3];
}

- (id)targetsForSendMessageIntent
{
  applicationWorkspace = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CNUIUserActionTargetDiscovering_targetsForSendMessageIntent__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = applicationWorkspace;
  v4 = applicationWorkspace;
  v5 = [v3 observableWithBlock:v7];

  return v5;
}

CNUIUserActionTargetDiscoveringObservableCancelationToken *__62__CNUIUserActionTargetDiscovering_targetsForSendMessageIntent__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sIntentForActionType_block_invoke(v3, *MEMORY[0x1E695C178]);
  v5 = [CNUIUserActionTargetDiscovering applicationProxiesForIntent:v4 applicationWorkspace:*(a1 + 32)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__CNUIUserActionTargetDiscovering_targetsForSendMessageIntent__block_invoke_2;
  v9[3] = &unk_1E76EA028;
  v10 = v3;
  v6 = v3;
  [v5 _cn_each:v9];

  [v6 observerDidComplete];
  v7 = objc_alloc_init(CNUIUserActionTargetDiscoveringObservableCancelationToken);

  return v7;
}

void __62__CNUIUserActionTargetDiscovering_targetsForSendMessageIntent__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [CNUIUserActionTarget targetForSendMessageIntentWithAppProxy:a2];
  [v2 observerDidReceiveResult:v3];
}

- (id)targetsForTextWithDefaultMessagingApps
{
  applicationWorkspace = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v4 = MEMORY[0x1E6996798];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__CNUIUserActionTargetDiscovering_targetsForTextWithDefaultMessagingApps__block_invoke;
  v8[3] = &unk_1E76E96D8;
  v9 = applicationWorkspace;
  selfCopy = self;
  v5 = applicationWorkspace;
  v6 = [v4 observableWithBlock:v8];

  return v6;
}

CNUIUserActionTargetDiscoveringObservableCancelationToken *__73__CNUIUserActionTargetDiscovering_targetsForTextWithDefaultMessagingApps__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [*(a1 + 32) applicationsAvailableForDefaultAppCategory:0];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __73__CNUIUserActionTargetDiscovering_targetsForTextWithDefaultMessagingApps__block_invoke_38;
  v11 = &unk_1E76EA050;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [v4 _cn_each:&v8];

  [*(a1 + 40) createDefaultMessagingAppsBundleIdentifierScorer:{v15[5], v8, v9, v10, v11}];
  [v5 observerDidComplete];
  v6 = objc_alloc_init(CNUIUserActionTargetDiscoveringObservableCancelationToken);

  _Block_object_dispose(&v14, 8);

  return v6;
}

void __73__CNUIUserActionTargetDiscovering_targetsForTextWithDefaultMessagingApps__block_invoke_38(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [v10 bundleIdentifier];
  [v3 addObject:v4];

  v5 = [v10 bundleIdentifier];
  LOBYTE(v4) = [v5 isEqualToString:*MEMORY[0x1E695C130]];

  if ((v4 & 1) == 0)
  {
    v6 = [v10 bundleIdentifier];
    v7 = [v6 isEqualToString:@"com.apple.smsrcsaccess.Stub"];

    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 32);
      v9 = [CNUIUserActionTarget targetForTextWithAvailableDefaultAppProxy:v10];
      [v8 observerDidReceiveResult:v9];
    }
  }
}

- (void)createDefaultMessagingAppsBundleIdentifierScorer:(id)scorer
{
  v4 = MEMORY[0x1E695DF90];
  scorerCopy = scorer;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(scorerCopy, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__CNUIUserActionTargetDiscovering_createDefaultMessagingAppsBundleIdentifierScorer___block_invoke;
  v8[3] = &unk_1E76E9688;
  v9 = v6;
  v7 = v6;
  [scorerCopy enumerateObjectsUsingBlock:v8];

  [(CNUIUserActionTargetDiscovering *)self setDefaultMessagingAppsBundleIdentifierScorerCache:v7];
}

void __84__CNUIUserActionTargetDiscovering_createDefaultMessagingAppsBundleIdentifierScorer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3 + 1];
  [v4 setObject:v7 forKey:v6];
}

- (void)emptyDefaultAppsCaches
{
  [(CNUIUserActionTargetDiscovering *)self setDefaultMessagingAppsBundleIdentifierScorerCache:0];
  [(CNUIUserActionTargetDiscovering *)self resetTargetsForActionType:*MEMORY[0x1E695C178]];
  [(CNUIUserActionTargetDiscovering *)self resetTargetsForActionType:*MEMORY[0x1E695C150]];
  v3 = *MEMORY[0x1E695C1B8];

  [(CNUIUserActionTargetDiscovering *)self resetTargetsForActionType:v3];
}

- (id)thirdPartyTargetsForActionTypes:(id)types
{
  v4 = MEMORY[0x1E695DF70];
  typesCopy = types;
  array = [v4 array];
  applicationWorkspace = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __67__CNUIUserActionTargetDiscovering_thirdPartyTargetsForActionTypes___block_invoke;
  v17 = &unk_1E76EA078;
  v18 = applicationWorkspace;
  v19 = array;
  v8 = array;
  v9 = applicationWorkspace;
  [typesCopy _cn_each:&v14];

  v10 = MEMORY[0x1E6996720];
  _cn_distinctObjects = [v8 _cn_distinctObjects];
  v12 = [v10 futureWithResult:_cn_distinctObjects];

  return v12;
}

void __67__CNUIUserActionTargetDiscovering_thirdPartyTargetsForActionTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = sIntentForActionType_block_invoke(a1, a2);
  v4 = [CNUIUserActionTargetDiscovering applicationProxiesForIntent:v3 applicationWorkspace:*(a1 + 32)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__CNUIUserActionTargetDiscovering_thirdPartyTargetsForActionTypes___block_invoke_2;
  v5[3] = &unk_1E76EA028;
  v6 = *(a1 + 40);
  [v4 _cn_each:v5];
}

void __67__CNUIUserActionTargetDiscovering_thirdPartyTargetsForActionTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CNUIUserActionTarget alloc];
  v8 = [v3 localizedName];
  v5 = [v3 bundleIdentifier];
  v6 = [v3 teamIdentifier];

  v7 = [(CNUIUserActionTarget *)v4 initWithName:v8 bundleIdentifier:v5 teamIdentifier:v6];
  [v2 addObject:v7];
}

- (id)thirdPartyTargetsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  array = [MEMORY[0x1E695DF70] array];
  if (thirdPartyTargetsForBundleIdentifier__cn_once_token_3 != -1)
  {
    [CNUIUserActionTargetDiscovering thirdPartyTargetsForBundleIdentifier:];
  }

  v6 = thirdPartyTargetsForBundleIdentifier__cn_once_object_3;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:v6];
  callProviderManager = [(CNUIUserActionTargetDiscovering *)self callProviderManager];
  v9 = [callProviderManager thirdPartyCallProviderWithBundleIdentifier:identifierCopy];

  if ([v9 supportsAudio])
  {
    v10 = [CNUIUserActionTarget targetForVoiceWithCallProvider:v9];
    [array addObject:v10];

    [v7 removeObject:*MEMORY[0x1E695C150]];
  }

  if ([v9 supportsVideo])
  {
    v11 = [CNUIUserActionTarget targetForVideoWithCallProvider:v9];
    [array addObject:v11];

    [v7 removeObject:*MEMORY[0x1E695C1B8]];
  }

  applicationWorkspace = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v13 = [applicationWorkspace applicationForBundleIdentifier:identifierCopy];

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __72__CNUIUserActionTargetDiscovering_thirdPartyTargetsForBundleIdentifier___block_invoke_2;
  v21 = &unk_1E76EA078;
  v22 = v13;
  v23 = array;
  v14 = array;
  v15 = v13;
  [v7 _cn_each:&v18];
  v16 = [MEMORY[0x1E6996720] futureWithResult:{v14, v18, v19, v20, v21}];

  return v16;
}

void __72__CNUIUserActionTargetDiscovering_thirdPartyTargetsForBundleIdentifier___block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C1B8];
  v4[0] = *MEMORY[0x1E695C150];
  v4[1] = v0;
  v4[2] = *MEMORY[0x1E695C178];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = [v1 copy];
  v3 = thirdPartyTargetsForBundleIdentifier__cn_once_object_3;
  thirdPartyTargetsForBundleIdentifier__cn_once_object_3 = v2;
}

uint64_t __72__CNUIUserActionTargetDiscovering_thirdPartyTargetsForBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) activityTypes];
  v4 = sIntentForActionType_block_invoke(v3, v10);
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    if (!(v10 | *MEMORY[0x1E695C150]) || [v10 isEqual:?])
    {
      v6 = *(a1 + 40);
      v7 = [CNUIUserActionTarget targetForStartAudioCallIntentWithAppProxy:*(a1 + 32)];
LABEL_5:
      v8 = v7;
      [v6 addObject:v7];

      goto LABEL_6;
    }

    if (!(v10 | *MEMORY[0x1E695C1B8]) || [v10 isEqual:?])
    {
      v6 = *(a1 + 40);
      v7 = [CNUIUserActionTarget targetForStartVideoCallIntentWithAppProxy:*(a1 + 32)];
      goto LABEL_5;
    }

    if (!(v10 | *MEMORY[0x1E695C178]) || [v10 isEqual:?])
    {
      v6 = *(a1 + 40);
      v7 = [CNUIUserActionTarget targetForSendMessageIntentWithAppProxy:*(a1 + 32)];
      goto LABEL_5;
    }
  }

LABEL_6:

  return MEMORY[0x1EEE66BB8]();
}

+ (id)applicationProxiesForIntent:(id)intent applicationWorkspace:(id)workspace
{
  v5 = [workspace applicationsForUserActivityType:intent];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__CNUIUserActionTargetDiscovering_applicationProxiesForIntent_applicationWorkspace___block_invoke;
  v8[3] = &__block_descriptor_40_e28_B16__0__CNApplicationProxy_8l;
  v8[4] = self;
  v6 = [v5 _cn_filter:v8];

  return v6;
}

+ (BOOL)shouldIgnoreApplicationProxy:(id)proxy
{
  bundleIdentifier = [proxy bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.internal.suiuntool"];

  return v4;
}

+ (BOOL)isSkypeAvailableWithEnvironment:(id)environment
{
  environmentCopy = environment;
  standardPreferences = [MEMORY[0x1E6996888] standardPreferences];
  v5 = [standardPreferences userHasOptedInToPreference:@"SkypeURLActions"];

  if (v5)
  {
    v6 = *MEMORY[0x1E6996530];
    v7 = [environmentCopy applicationsAvailableForHandlingURLScheme:@"skype"];
    v8 = (*(v6 + 16))(v6, v7) ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)resetTargetsForActionType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_DEBUG, "resetTargetsForActionType %{public}@", &v2, 0xCu);
}

@end