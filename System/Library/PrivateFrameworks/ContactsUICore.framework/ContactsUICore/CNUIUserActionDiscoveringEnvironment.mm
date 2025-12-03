@interface CNUIUserActionDiscoveringEnvironment
- (CNContactStore)contactStore;
- (CNUIUserActionDiscoveringEnvironment)init;
- (CNUIUserActionDiscoveringEnvironment)initWithApplicationWorkspace:(id)workspace callProviderManager:(id)manager idsContactPropertyResolver:(id)resolver profileConnection:(id)connection contactStore:(id)store schedulerProvider:(id)provider highLatencySchedulerProvider:(id)schedulerProvider capabilities:(id)self0 defaultUserActionFetcher:(id)self1 ttyUtilities:(id)self2;
- (CNUIUserActionDiscoveringEnvironment)initWithIDSAvailabilityProvider:(id)provider schedulerProvider:(id)schedulerProvider capabilities:(id)capabilities defaultUserActionFetcher:(id)fetcher applicationWorkspace:(id)workspace;
- (id)copyWithContactStore:(id)store schedulerProvider:(id)provider;
- (id)nts_lazyContactStore;
@end

@implementation CNUIUserActionDiscoveringEnvironment

- (CNUIUserActionDiscoveringEnvironment)init
{
  v3 = objc_alloc_init(CNUIIDSAvailabilityProvider);
  defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
  v5 = objc_alloc_init(CNCapabilities);
  v6 = objc_alloc_init(CNUIDefaultUserActionFetcher);
  v7 = objc_alloc_init(CNLSApplicationWorkspace);
  v8 = [(CNUIUserActionDiscoveringEnvironment *)self initWithIDSAvailabilityProvider:v3 schedulerProvider:defaultProvider capabilities:v5 defaultUserActionFetcher:v6 applicationWorkspace:v7];

  return v8;
}

- (CNUIUserActionDiscoveringEnvironment)initWithIDSAvailabilityProvider:(id)provider schedulerProvider:(id)schedulerProvider capabilities:(id)capabilities defaultUserActionFetcher:(id)fetcher applicationWorkspace:(id)workspace
{
  schedulerProviderCopy = schedulerProvider;
  workspaceCopy = workspace;
  fetcherCopy = fetcher;
  capabilitiesCopy = capabilities;
  providerCopy = provider;
  v27 = [schedulerProviderCopy newSerialSchedulerWithName:@"com.apple.contacts.ContactsUICore.CNUIUserActionDiscoveringHighLatencyScheduler"];
  v16 = objc_alloc(MEMORY[0x1E6996820]);
  mainThreadScheduler = [schedulerProviderCopy mainThreadScheduler];
  immediateScheduler = [schedulerProviderCopy immediateScheduler];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __149__CNUIUserActionDiscoveringEnvironment_initWithIDSAvailabilityProvider_schedulerProvider_capabilities_defaultUserActionFetcher_applicationWorkspace___block_invoke;
  v33[3] = &unk_1E76E89B0;
  v34 = schedulerProviderCopy;
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
  v20 = [v16 initWithBackgroundScheduler:v27 mainThreadScheduler:mainThreadScheduler immediateScheduler:immediateScheduler serialSchedulerProvider:v33 synchronousSerialSchedulerProvider:v31 readerWriterSchedulerProvider:v29];

  v21 = objc_alloc_init(CNTUCallProviderManager);
  v22 = [[CNUIIDSContactPropertyResolver alloc] initWithIDSAvailabilityProvider:providerCopy];

  v23 = objc_alloc_init(CNMCProfileConnection);
  v24 = +[CNUIRTTUtilities defaultUtilities];
  v25 = [(CNUIUserActionDiscoveringEnvironment *)self initWithApplicationWorkspace:workspaceCopy callProviderManager:v21 idsContactPropertyResolver:v22 profileConnection:v23 contactStore:0 schedulerProvider:v19 highLatencySchedulerProvider:v20 capabilities:capabilitiesCopy defaultUserActionFetcher:fetcherCopy ttyUtilities:v24];

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

- (CNUIUserActionDiscoveringEnvironment)initWithApplicationWorkspace:(id)workspace callProviderManager:(id)manager idsContactPropertyResolver:(id)resolver profileConnection:(id)connection contactStore:(id)store schedulerProvider:(id)provider highLatencySchedulerProvider:(id)schedulerProvider capabilities:(id)self0 defaultUserActionFetcher:(id)self1 ttyUtilities:(id)self2
{
  workspaceCopy = workspace;
  obj = manager;
  managerCopy = manager;
  resolverCopy = resolver;
  connectionCopy = connection;
  storeCopy = store;
  providerCopy = provider;
  providerCopy2 = provider;
  schedulerProviderCopy = schedulerProvider;
  capabilitiesCopy = capabilities;
  fetcherCopy = fetcher;
  utilitiesCopy = utilities;
  v37.receiver = self;
  v37.super_class = CNUIUserActionDiscoveringEnvironment;
  v21 = [(CNUIUserActionDiscoveringEnvironment *)&v37 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_applicationWorkspace, workspace);
    objc_storeStrong(&v22->_callProviderManager, obj);
    objc_storeStrong(&v22->_idsContactPropertyResolver, resolver);
    objc_storeStrong(&v22->_profileConnection, connection);
    objc_storeStrong(&v22->_contactStore, store);
    objc_storeStrong(&v22->_capabilities, capabilities);
    objc_storeStrong(&v22->_schedulerProvider, providerCopy);
    objc_storeStrong(&v22->_highLatencySchedulerProvider, schedulerProvider);
    objc_storeStrong(&v22->_defaultUserActionFetcher, fetcher);
    objc_storeStrong(&v22->_ttyUtilities, utilities);
    v23 = [[CNUIUserActionTargetDiscovering alloc] initWithApplicationWorkspace:workspaceCopy callProviderManager:managerCopy profileConnection:connectionCopy schedulerProvider:providerCopy2 highLatencySchedulerProvider:schedulerProviderCopy capabilities:capabilitiesCopy];
    targetDiscoveringHelper = v22->_targetDiscoveringHelper;
    v22->_targetDiscoveringHelper = v23;

    v25 = v22;
  }

  return v22;
}

- (id)copyWithContactStore:(id)store schedulerProvider:(id)provider
{
  providerCopy = provider;
  storeCopy = store;
  v18 = [CNUIUserActionDiscoveringEnvironment alloc];
  applicationWorkspace = [(CNUIUserActionDiscoveringEnvironment *)self applicationWorkspace];
  callProviderManager = [(CNUIUserActionDiscoveringEnvironment *)self callProviderManager];
  idsContactPropertyResolver = [(CNUIUserActionDiscoveringEnvironment *)self idsContactPropertyResolver];
  profileConnection = [(CNUIUserActionDiscoveringEnvironment *)self profileConnection];
  highLatencySchedulerProvider = [(CNUIUserActionDiscoveringEnvironment *)self highLatencySchedulerProvider];
  capabilities = [(CNUIUserActionDiscoveringEnvironment *)self capabilities];
  defaultUserActionFetcher = [(CNUIUserActionDiscoveringEnvironment *)self defaultUserActionFetcher];
  ttyUtilities = [(CNUIUserActionDiscoveringEnvironment *)self ttyUtilities];
  v15 = [(CNUIUserActionDiscoveringEnvironment *)v18 initWithApplicationWorkspace:applicationWorkspace callProviderManager:callProviderManager idsContactPropertyResolver:idsContactPropertyResolver profileConnection:profileConnection contactStore:storeCopy schedulerProvider:providerCopy highLatencySchedulerProvider:highLatencySchedulerProvider capabilities:capabilities defaultUserActionFetcher:defaultUserActionFetcher ttyUtilities:ttyUtilities];

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