@interface CNUIUserActionDiscoveringEnvironment
- (CNContactStore)contactStore;
- (CNUIUserActionDiscoveringEnvironment)init;
- (CNUIUserActionDiscoveringEnvironment)initWithApplicationWorkspace:(id)a3 callProviderManager:(id)a4 idsContactPropertyResolver:(id)a5 profileConnection:(id)a6 contactStore:(id)a7 schedulerProvider:(id)a8 highLatencySchedulerProvider:(id)a9 capabilities:(id)a10 defaultUserActionFetcher:(id)a11 ttyUtilities:(id)a12;
- (CNUIUserActionDiscoveringEnvironment)initWithIDSAvailabilityProvider:(id)a3 schedulerProvider:(id)a4 capabilities:(id)a5 defaultUserActionFetcher:(id)a6 applicationWorkspace:(id)a7;
- (id)copyWithContactStore:(id)a3 schedulerProvider:(id)a4;
- (id)nts_lazyContactStore;
@end

@implementation CNUIUserActionDiscoveringEnvironment

- (CNUIUserActionDiscoveringEnvironment)init
{
  v3 = objc_alloc_init(CNUIIDSAvailabilityProvider);
  v4 = [MEMORY[0x1E6996820] defaultProvider];
  v5 = objc_alloc_init(CNCapabilities);
  v6 = objc_alloc_init(CNUIDefaultUserActionFetcher);
  v7 = objc_alloc_init(CNLSApplicationWorkspace);
  v8 = [(CNUIUserActionDiscoveringEnvironment *)self initWithIDSAvailabilityProvider:v3 schedulerProvider:v4 capabilities:v5 defaultUserActionFetcher:v6 applicationWorkspace:v7];

  return v8;
}

- (CNUIUserActionDiscoveringEnvironment)initWithIDSAvailabilityProvider:(id)a3 schedulerProvider:(id)a4 capabilities:(id)a5 defaultUserActionFetcher:(id)a6 applicationWorkspace:(id)a7
{
  v11 = a4;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v27 = [v11 newSerialSchedulerWithName:@"com.apple.contacts.ContactsUICore.CNUIUserActionDiscoveringHighLatencyScheduler"];
  v16 = objc_alloc(MEMORY[0x1E6996820]);
  v17 = [v11 mainThreadScheduler];
  v18 = [v11 immediateScheduler];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __149__CNUIUserActionDiscoveringEnvironment_initWithIDSAvailabilityProvider_schedulerProvider_capabilities_defaultUserActionFetcher_applicationWorkspace___block_invoke;
  v33[3] = &unk_1E76E89B0;
  v34 = v11;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __149__CNUIUserActionDiscoveringEnvironment_initWithIDSAvailabilityProvider_schedulerProvider_capabilities_defaultUserActionFetcher_applicationWorkspace___block_invoke_2;
  v31[3] = &unk_1E76E89B0;
  v32 = v34;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __149__CNUIUserActionDiscoveringEnvironment_initWithIDSAvailabilityProvider_schedulerProvider_capabilities_defaultUserActionFetcher_applicationWorkspace___block_invoke_3;
  v29[3] = &unk_1E76E92A0;
  v30 = v32;
  v19 = v32;
  v20 = [v16 initWithBackgroundScheduler:v27 mainThreadScheduler:v17 immediateScheduler:v18 serialSchedulerProvider:v33 synchronousSerialSchedulerProvider:v31 readerWriterSchedulerProvider:v29];

  v21 = objc_alloc_init(CNTUCallProviderManager);
  v22 = [[CNUIIDSContactPropertyResolver alloc] initWithIDSAvailabilityProvider:v15];

  v23 = objc_alloc_init(CNMCProfileConnection);
  v24 = +[CNUIRTTUtilities defaultUtilities];
  v25 = [(CNUIUserActionDiscoveringEnvironment *)self initWithApplicationWorkspace:v12 callProviderManager:v21 idsContactPropertyResolver:v22 profileConnection:v23 contactStore:0 schedulerProvider:v19 highLatencySchedulerProvider:v20 capabilities:v14 defaultUserActionFetcher:v13 ttyUtilities:v24];

  return v25;
}

id __149__CNUIUserActionDiscoveringEnvironment_initWithIDSAvailabilityProvider_schedulerProvider_capabilities_defaultUserActionFetcher_applicationWorkspace___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newSerialSchedulerWithName:a2];

  return v2;
}

id __149__CNUIUserActionDiscoveringEnvironment_initWithIDSAvailabilityProvider_schedulerProvider_capabilities_defaultUserActionFetcher_applicationWorkspace___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newSynchronousSerialSchedulerWithName:a2];

  return v2;
}

id __149__CNUIUserActionDiscoveringEnvironment_initWithIDSAvailabilityProvider_schedulerProvider_capabilities_defaultUserActionFetcher_applicationWorkspace___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newReaderWriterSchedulerWithName:a2];

  return v2;
}

- (CNUIUserActionDiscoveringEnvironment)initWithApplicationWorkspace:(id)a3 callProviderManager:(id)a4 idsContactPropertyResolver:(id)a5 profileConnection:(id)a6 contactStore:(id)a7 schedulerProvider:(id)a8 highLatencySchedulerProvider:(id)a9 capabilities:(id)a10 defaultUserActionFetcher:(id)a11 ttyUtilities:(id)a12
{
  v36 = a3;
  obj = a4;
  v35 = a4;
  v31 = a5;
  v34 = a6;
  v30 = a7;
  v28 = a8;
  v33 = a8;
  v32 = a9;
  v18 = a10;
  v19 = a11;
  v20 = a12;
  v37.receiver = self;
  v37.super_class = CNUIUserActionDiscoveringEnvironment;
  v21 = [(CNUIUserActionDiscoveringEnvironment *)&v37 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_applicationWorkspace, a3);
    objc_storeStrong(&v22->_callProviderManager, obj);
    objc_storeStrong(&v22->_idsContactPropertyResolver, a5);
    objc_storeStrong(&v22->_profileConnection, a6);
    objc_storeStrong(&v22->_contactStore, a7);
    objc_storeStrong(&v22->_capabilities, a10);
    objc_storeStrong(&v22->_schedulerProvider, v28);
    objc_storeStrong(&v22->_highLatencySchedulerProvider, a9);
    objc_storeStrong(&v22->_defaultUserActionFetcher, a11);
    objc_storeStrong(&v22->_ttyUtilities, a12);
    v23 = [[CNUIUserActionTargetDiscovering alloc] initWithApplicationWorkspace:v36 callProviderManager:v35 profileConnection:v34 schedulerProvider:v33 highLatencySchedulerProvider:v32 capabilities:v18];
    targetDiscoveringHelper = v22->_targetDiscoveringHelper;
    v22->_targetDiscoveringHelper = v23;

    v25 = v22;
  }

  return v22;
}

- (id)copyWithContactStore:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v18 = [CNUIUserActionDiscoveringEnvironment alloc];
  v17 = [(CNUIUserActionDiscoveringEnvironment *)self applicationWorkspace];
  v8 = [(CNUIUserActionDiscoveringEnvironment *)self callProviderManager];
  v9 = [(CNUIUserActionDiscoveringEnvironment *)self idsContactPropertyResolver];
  v10 = [(CNUIUserActionDiscoveringEnvironment *)self profileConnection];
  v11 = [(CNUIUserActionDiscoveringEnvironment *)self highLatencySchedulerProvider];
  v12 = [(CNUIUserActionDiscoveringEnvironment *)self capabilities];
  v13 = [(CNUIUserActionDiscoveringEnvironment *)self defaultUserActionFetcher];
  v14 = [(CNUIUserActionDiscoveringEnvironment *)self ttyUtilities];
  v15 = [(CNUIUserActionDiscoveringEnvironment *)v18 initWithApplicationWorkspace:v17 callProviderManager:v8 idsContactPropertyResolver:v9 profileConnection:v10 contactStore:v7 schedulerProvider:v6 highLatencySchedulerProvider:v11 capabilities:v12 defaultUserActionFetcher:v13 ttyUtilities:v14];

  return v15;
}

- (CNContactStore)contactStore
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyContactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

@end