@interface CNUIUserActionTargetDiscovering
+ (BOOL)isSkypeAvailableWithEnvironment:(id)a3;
+ (BOOL)shouldIgnoreApplicationProxy:(id)a3;
+ (id)applicationProxiesForIntent:(id)a3 applicationWorkspace:(id)a4;
+ (id)os_log;
- (CNUIUserActionTargetDiscovering)initWithApplicationWorkspace:(id)a3 callProviderManager:(id)a4 profileConnection:(id)a5 schedulerProvider:(id)a6 highLatencySchedulerProvider:(id)a7 capabilities:(id)a8;
- (id)_targetsForActionType:(id)a3;
- (id)observableForTargetsChangedForActionType:(id)a3 schedulerProvider:(id)a4;
- (id)targetForTextWithMessages;
- (id)targetForTextWithSkype;
- (id)targetForVideoWithFaceTime;
- (id)targetForVideoWithSkype;
- (id)targetForVoiceWithFaceTime;
- (id)targetForVoiceWithSkype;
- (id)targetForVoiceWithTelephony;
- (id)targetsForActionType:(id)a3;
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
- (id)thirdPartyTargetsForActionTypes:(id)a3;
- (id)thirdPartyTargetsForBundleIdentifier:(id)a3;
- (void)createDefaultMessagingAppsBundleIdentifierScorer:(id)a3;
- (void)dealloc;
- (void)emptyDefaultAppsCaches;
- (void)resetTargetsForActionType:(id)a3;
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

- (CNUIUserActionTargetDiscovering)initWithApplicationWorkspace:(id)a3 callProviderManager:(id)a4 profileConnection:(id)a5 schedulerProvider:(id)a6 highLatencySchedulerProvider:(id)a7 capabilities:(id)a8
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v29.receiver = self;
  v29.super_class = CNUIUserActionTargetDiscovering;
  v18 = [(CNUIUserActionTargetDiscovering *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_applicationWorkspace, a3);
    objc_storeStrong(&v19->_callProviderManager, a4);
    objc_storeStrong(&v19->_capabilities, a8);
    objc_storeStrong(&v19->_highLatencySchedulerProvider, a7);
    objc_storeStrong(&v19->_profileConnection, a5);
    objc_storeStrong(&v19->_schedulerProvider, a6);
    v20 = [CNUIUserActionTargetDiscoveryCache alloc];
    v21 = [v15 newSynchronousSerialSchedulerWithName:@"com.apple.contacts.ContactsUICore.CNUIUserActionTargetDiscoveringResourceLock"];
    v22 = [(CNCache *)v20 initWithResourceScheduler:v21];
    cache = v19->_cache;
    v19->_cache = v22;

    v24 = v19;
  }

  return v19;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(CNUIUserActionTargetDiscovering *)v4 cache];
  v6 = [v5 allObjects];
  v7 = [v6 _cn_map:&__block_literal_global_22_1];
  [v3 setArray:v7];

  v8 = [(CNUIUserActionTargetDiscovering *)v4 cache];
  [v8 removeAllObjects];

  objc_sync_exit(v4);
  [v3 _cn_each:*MEMORY[0x1E6996470]];

  v9.receiver = v4;
  v9.super_class = CNUIUserActionTargetDiscovering;
  [(CNUIUserActionTargetDiscovering *)&v9 dealloc];
}

- (id)targetsForActionType:(id)a3
{
  v4 = a3;
  v5 = [(CNUIUserActionTargetDiscovering *)self schedulerProvider];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(CNUIUserActionTargetDiscovering *)v6 cache];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __56__CNUIUserActionTargetDiscovering_targetsForActionType___block_invoke;
  v15 = &unk_1E76E9F88;
  v16 = v6;
  v8 = v5;
  v17 = v8;
  v9 = [v7 objectForKey:v4 onCacheMiss:&v12];

  v10 = [v9 first];

  objc_sync_exit(v6);

  return v10;
}

id __56__CNUIUserActionTargetDiscovering_targetsForActionType___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _targetsForActionType:a2];
  v4 = [objc_alloc(MEMORY[0x1E6996808]) initWithSchedulerProvider:*(a1 + 40)];
  v5 = [v3 subscribe:v4];
  v6 = [(CNPair *)CNUIUserActionTargetDiscoveringReplaySubjectPair pairWithFirst:v4 second:v5];

  return v6;
}

- (id)observableForTargetsChangedForActionType:(id)a3 schedulerProvider:(id)a4
{
  v23[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 | *MEMORY[0x1E695C150] && ([v6 isEqual:?] & 1) == 0 && v6 | *MEMORY[0x1E695C1B8] && (objc_msgSend(v6, "isEqual:") & 1) == 0 && v6 | *MEMORY[0x1E695C178] && !objc_msgSend(v6, "isEqual:"))
  {
    v18 = [MEMORY[0x1E6996798] emptyObservable];
  }

  else
  {
    v8 = MEMORY[0x1E6996798];
    v9 = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
    v10 = [v9 observableForApplicationsChangedWithSchedulerProvider:v7];
    v23[0] = v10;
    v11 = [(CNUIUserActionTargetDiscovering *)self callProviderManager];
    v12 = [v11 observableForCallProvidersChangedWithSchedulerProvider:v7];
    v23[1] = v12;
    v13 = [(CNUIUserActionTargetDiscovering *)self profileConnection];
    v14 = [v13 observableForManagedConfigChanged];
    v23[2] = v14;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    v20 = self;
    v16 = v15 = v6;
    v17 = [v8 merge:v16 schedulerProvider:v7];

    v6 = v15;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__CNUIUserActionTargetDiscovering_observableForTargetsChangedForActionType_schedulerProvider___block_invoke;
    v21[3] = &unk_1E76E83B8;
    v21[4] = v20;
    v22 = v15;
    v18 = [v17 doOnNext:v21];
  }

  return v18;
}

- (void)resetTargetsForActionType:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CNUIUserActionTargetDiscovering *)v4 resetTargetsForActionType:v6];
  }

  v7 = [(CNUIUserActionTargetDiscovering *)v5 cache];
  v8 = [v7 objectForKeyedSubscript:v4];
  v9 = [v8 second];

  v10 = [(CNUIUserActionTargetDiscovering *)v5 cache];
  [v10 setObject:0 forKeyedSubscript:v4];

  objc_sync_exit(v5);
  [v9 cancel];
}

- (id)_targetsForActionType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E695C178]])
  {
    v5 = [(CNUIUserActionTargetDiscovering *)self targetsForText];
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E695C150]])
  {
    v5 = [(CNUIUserActionTargetDiscovering *)self targetsForVoice];
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    v5 = [(CNUIUserActionTargetDiscovering *)self targetsForVideo];
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E695C170]])
  {
    v5 = [(CNUIUserActionTargetDiscovering *)self targetsForEmail];
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E695C188]])
  {
    v5 = [(CNUIUserActionTargetDiscovering *)self targetsForPay];
  }

  else
  {
    if ([v4 isEqualToString:*MEMORY[0x1E695C160]])
    {
      [(CNUIUserActionTargetDiscovering *)self targetsForDirections];
    }

    else
    {
      [MEMORY[0x1E6996798] emptyObservable];
    }
    v5 = ;
  }

  v6 = v5;

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
  v3 = [(CNUIUserActionTargetDiscovering *)self targetForVoiceWithTelephony];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(CNUIUserActionTargetDiscovering *)self targetForVoiceWithFaceTime];
  [v4 addObject:v5];

  v6 = [(CNUIUserActionTargetDiscovering *)self targetForVoiceWithSkype];
  [v4 addObject:v6];

  v7 = [(CNUIUserActionTargetDiscovering *)self targetsForVoiceWithThirdPartyCallProviders];
  [v4 addObject:v7];

  v8 = [(CNUIUserActionTargetDiscovering *)self schedulerProvider];
  v9 = [(CNUIUserActionTargetDiscovering *)self highLatencySchedulerProvider];
  v10 = MEMORY[0x1E6996798];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __50__CNUIUserActionTargetDiscovering_targetsForVoice__block_invoke;
  v23 = &unk_1E76E9FB0;
  v24 = v9;
  v25 = v4;
  v26 = v8;
  v11 = v8;
  v12 = v4;
  v13 = v9;
  v14 = [v10 observableWithBlock:&v20];
  v15 = MEMORY[0x1E6996798];
  v27[0] = v3;
  v27[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:{2, v20, v21, v22, v23}];
  v17 = [(CNUIUserActionTargetDiscovering *)self schedulerProvider];
  v18 = [v15 merge:v16 schedulerProvider:v17];

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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CNUIUserActionTargetDiscovering *)self targetForVideoWithFaceTime];
  [v3 addObject:v4];

  v5 = [(CNUIUserActionTargetDiscovering *)self targetForVideoWithSkype];
  [v3 addObject:v5];

  v6 = [(CNUIUserActionTargetDiscovering *)self targetsForVideoWithThirdPartyCallProviders];
  [v3 addObject:v6];

  v7 = [(CNUIUserActionTargetDiscovering *)self schedulerProvider];
  v8 = [(CNUIUserActionTargetDiscovering *)self highLatencySchedulerProvider];
  v9 = MEMORY[0x1E6996798];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__CNUIUserActionTargetDiscovering_targetsForVideo__block_invoke;
  v15[3] = &unk_1E76E9FB0;
  v16 = v8;
  v17 = v3;
  v18 = v7;
  v10 = v7;
  v11 = v3;
  v12 = v8;
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
  v3 = [(CNUIUserActionTargetDiscovering *)self targetForTextWithMessages];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(CNUIUserActionTargetDiscovering *)self targetsForTextWithDefaultMessagingApps];
  [v4 addObject:v5];

  v6 = [(CNUIUserActionTargetDiscovering *)self targetForTextWithSkype];
  [v4 addObject:v6];

  v7 = [(CNUIUserActionTargetDiscovering *)self targetsForSendMessageIntent];
  [v4 addObject:v7];

  v8 = [(CNUIUserActionTargetDiscovering *)self schedulerProvider];
  v9 = [(CNUIUserActionTargetDiscovering *)self highLatencySchedulerProvider];
  v10 = MEMORY[0x1E6996798];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __49__CNUIUserActionTargetDiscovering_targetsForText__block_invoke;
  v23 = &unk_1E76E9FB0;
  v24 = v9;
  v25 = v4;
  v26 = v8;
  v11 = v8;
  v12 = v4;
  v13 = v9;
  v14 = [v10 observableWithBlock:&v20];
  v15 = MEMORY[0x1E6996798];
  v27[0] = v3;
  v27[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:{2, v20, v21, v22, v23}];
  v17 = [(CNUIUserActionTargetDiscovering *)self schedulerProvider];
  v18 = [v15 merge:v16 schedulerProvider:v17];

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
  v2 = [(CNUIUserActionTargetDiscovering *)self capabilities];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CNUIUserActionTargetDiscovering_targetForVoiceWithTelephony__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = v2;
  v4 = v2;
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
  v2 = [(CNUIUserActionTargetDiscovering *)self capabilities];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CNUIUserActionTargetDiscovering_targetForTextWithMessages__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = v2;
  v4 = v2;
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
  v2 = [(CNUIUserActionTargetDiscovering *)self capabilities];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CNUIUserActionTargetDiscovering_targetForVoiceWithFaceTime__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = v2;
  v4 = v2;
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
  v2 = [(CNUIUserActionTargetDiscovering *)self capabilities];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CNUIUserActionTargetDiscovering_targetForVideoWithFaceTime__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = v2;
  v4 = v2;
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
  v2 = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CNUIUserActionTargetDiscovering_targetForVoiceWithSkype__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = v2;
  v4 = v2;
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
  v2 = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CNUIUserActionTargetDiscovering_targetForVideoWithSkype__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = v2;
  v4 = v2;
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
  v2 = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CNUIUserActionTargetDiscovering_targetForTextWithSkype__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = v2;
  v4 = v2;
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
  v2 = [(CNUIUserActionTargetDiscovering *)self callProviderManager];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__CNUIUserActionTargetDiscovering_targetsForVoiceWithThirdPartyCallProviders__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = v2;
  v4 = v2;
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
  v2 = [(CNUIUserActionTargetDiscovering *)self callProviderManager];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__CNUIUserActionTargetDiscovering_targetsForVideoWithThirdPartyCallProviders__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = v2;
  v4 = v2;
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
  v2 = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__CNUIUserActionTargetDiscovering_targetsForStartAudioCallIntent__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = v2;
  v4 = v2;
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
  v2 = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__CNUIUserActionTargetDiscovering_targetsForStartVideoCallIntent__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = v2;
  v4 = v2;
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
  v2 = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v3 = MEMORY[0x1E6996798];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CNUIUserActionTargetDiscovering_targetsForSendMessageIntent__block_invoke;
  v7[3] = &unk_1E76E9FD8;
  v8 = v2;
  v4 = v2;
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
  v3 = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v4 = MEMORY[0x1E6996798];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__CNUIUserActionTargetDiscovering_targetsForTextWithDefaultMessagingApps__block_invoke;
  v8[3] = &unk_1E76E96D8;
  v9 = v3;
  v10 = self;
  v5 = v3;
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

- (void)createDefaultMessagingAppsBundleIdentifierScorer:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__CNUIUserActionTargetDiscovering_createDefaultMessagingAppsBundleIdentifierScorer___block_invoke;
  v8[3] = &unk_1E76E9688;
  v9 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

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

- (id)thirdPartyTargetsForActionTypes:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v7 = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __67__CNUIUserActionTargetDiscovering_thirdPartyTargetsForActionTypes___block_invoke;
  v17 = &unk_1E76EA078;
  v18 = v7;
  v19 = v6;
  v8 = v6;
  v9 = v7;
  [v5 _cn_each:&v14];

  v10 = MEMORY[0x1E6996720];
  v11 = [v8 _cn_distinctObjects];
  v12 = [v10 futureWithResult:v11];

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

- (id)thirdPartyTargetsForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if (thirdPartyTargetsForBundleIdentifier__cn_once_token_3 != -1)
  {
    [CNUIUserActionTargetDiscovering thirdPartyTargetsForBundleIdentifier:];
  }

  v6 = thirdPartyTargetsForBundleIdentifier__cn_once_object_3;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:v6];
  v8 = [(CNUIUserActionTargetDiscovering *)self callProviderManager];
  v9 = [v8 thirdPartyCallProviderWithBundleIdentifier:v4];

  if ([v9 supportsAudio])
  {
    v10 = [CNUIUserActionTarget targetForVoiceWithCallProvider:v9];
    [v5 addObject:v10];

    [v7 removeObject:*MEMORY[0x1E695C150]];
  }

  if ([v9 supportsVideo])
  {
    v11 = [CNUIUserActionTarget targetForVideoWithCallProvider:v9];
    [v5 addObject:v11];

    [v7 removeObject:*MEMORY[0x1E695C1B8]];
  }

  v12 = [(CNUIUserActionTargetDiscovering *)self applicationWorkspace];
  v13 = [v12 applicationForBundleIdentifier:v4];

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __72__CNUIUserActionTargetDiscovering_thirdPartyTargetsForBundleIdentifier___block_invoke_2;
  v21 = &unk_1E76EA078;
  v22 = v13;
  v23 = v5;
  v14 = v5;
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

+ (id)applicationProxiesForIntent:(id)a3 applicationWorkspace:(id)a4
{
  v5 = [a4 applicationsForUserActivityType:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__CNUIUserActionTargetDiscovering_applicationProxiesForIntent_applicationWorkspace___block_invoke;
  v8[3] = &__block_descriptor_40_e28_B16__0__CNApplicationProxy_8l;
  v8[4] = a1;
  v6 = [v5 _cn_filter:v8];

  return v6;
}

+ (BOOL)shouldIgnoreApplicationProxy:(id)a3
{
  v3 = [a3 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.internal.suiuntool"];

  return v4;
}

+ (BOOL)isSkypeAvailableWithEnvironment:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E6996888] standardPreferences];
  v5 = [v4 userHasOptedInToPreference:@"SkypeURLActions"];

  if (v5)
  {
    v6 = *MEMORY[0x1E6996530];
    v7 = [v3 applicationsAvailableForHandlingURLScheme:@"skype"];
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