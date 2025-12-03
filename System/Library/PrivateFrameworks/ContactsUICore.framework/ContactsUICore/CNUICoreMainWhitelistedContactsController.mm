@interface CNUICoreMainWhitelistedContactsController
+ (id)controllerWithOptions:(id)options schedulerProvider:(id)provider;
- (BOOL)hasDowntimeWhitelistContainer;
- (CNScheduler)backgroundOrImmediateScheduler;
- (CNUICoreFamilyMemberContactsObserver)observer;
- (CNUICoreMainWhitelistedContactsController)init;
- (CNUICoreMainWhitelistedContactsController)initWithModelFetcher:(id)fetcher mainContactStoreFacade:(id)facade downtimeContainerFetcher:(id)containerFetcher schedulerProvider:(id)provider;
- (CNUICoreMainWhitelistedContactsController)initWiththOptions:(id)options mainContactStoreFacade:(id)facade schedulerProvider:(id)provider;
- (NSArray)familyMemberContactItems;
- (id)contactItemFutureFromFetcher;
- (id)contactRepresentingItem:(id)item;
- (int64_t)fetchStatus;
- (void)cancelContactItemsFetch;
- (void)dealloc;
- (void)setFamilyMemberContactItems:(id)items;
- (void)setupChangeNotificationResponse;
- (void)triggerContactItemsFetch;
- (void)updateWhitelistByAddingContacts:(id)contacts;
- (void)updateWhitelistByRemovingContacts:(id)contacts;
- (void)updateWhitelistByUpdatingContacts:(id)contacts;
@end

@implementation CNUICoreMainWhitelistedContactsController

+ (id)controllerWithOptions:(id)options schedulerProvider:(id)provider
{
  providerCopy = provider;
  optionsCopy = options;
  v8 = [CNUICoreContactStoreProductionFacade alloc];
  v9 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v10 = [(CNUICoreContactStoreProductionFacade *)v8 initWithContactStore:v9];

  v11 = [[self alloc] initWiththOptions:optionsCopy mainContactStoreFacade:v10 schedulerProvider:providerCopy];
  LODWORD(v9) = [optionsCopy shouldRequireConfirmationOfChanges];

  if (v9)
  {
    v12 = [[CNUICoreInMemoryWhitelistedContactsDataSourceDecorator alloc] initWithDataSource:v11 schedulerProvider:providerCopy];

    v11 = v12;
  }

  return v11;
}

- (CNUICoreMainWhitelistedContactsController)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreMainWhitelistedContactsController)initWiththOptions:(id)options mainContactStoreFacade:(id)facade schedulerProvider:(id)provider
{
  facadeCopy = facade;
  providerCopy = provider;
  v10 = MEMORY[0x1E695CE78];
  optionsCopy = options;
  v12 = objc_alloc_init(v10);
  v13 = [[CNUICoreFamilyMemberContactsModelRetriever alloc] initWithDowntimeContainerFetcher:v12 schedulerProvider:providerCopy];
  shouldPrepopulateEmptyWhitelist = [optionsCopy shouldPrepopulateEmptyWhitelist];

  if (shouldPrepopulateEmptyWhitelist)
  {
    v15 = [[CNUICoreFamilyInfoRetriever alloc] initWithMainContactStoreFacade:facadeCopy matchFamilyMembersWithContacts:1 schedulerProvider:providerCopy];
    v16 = [[CNUICoreProposedContactsFetchingDecorator alloc] initWithModelFetcher:v13 familyInfoFetcher:v15 schedulerProvider:providerCopy];

    v13 = v16;
  }

  v17 = [(CNUICoreMainWhitelistedContactsController *)self initWithModelFetcher:v13 mainContactStoreFacade:facadeCopy downtimeContainerFetcher:v12 schedulerProvider:providerCopy];

  return v17;
}

- (CNUICoreMainWhitelistedContactsController)initWithModelFetcher:(id)fetcher mainContactStoreFacade:(id)facade downtimeContainerFetcher:(id)containerFetcher schedulerProvider:(id)provider
{
  fetcherCopy = fetcher;
  facadeCopy = facade;
  containerFetcherCopy = containerFetcher;
  providerCopy = provider;
  if (fetcherCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_19 != -1)
  {
    [CNUICoreMainWhitelistedContactsController initWithModelFetcher:mainContactStoreFacade:downtimeContainerFetcher:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_19, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
    if (facadeCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (facadeCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_19 != -1)
  {
    [CNUICoreMainWhitelistedContactsController initWithModelFetcher:mainContactStoreFacade:downtimeContainerFetcher:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_19, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreMainWhitelistedContactsController initWithModelFetcher:mainContactStoreFacade:downtimeContainerFetcher:schedulerProvider:];
  }

  if (containerFetcherCopy)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (CNGuardOSLog_cn_once_token_0_19 != -1)
  {
    [CNUICoreMainWhitelistedContactsController initWithModelFetcher:mainContactStoreFacade:downtimeContainerFetcher:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_19, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreMainWhitelistedContactsController initWithModelFetcher:mainContactStoreFacade:downtimeContainerFetcher:schedulerProvider:];
    if (providerCopy)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_14:
    if (providerCopy)
    {
      goto LABEL_19;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_19 != -1)
  {
    [CNUICoreMainWhitelistedContactsController initWithModelFetcher:mainContactStoreFacade:downtimeContainerFetcher:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_19, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
  }

LABEL_19:
  v20.receiver = self;
  v20.super_class = CNUICoreMainWhitelistedContactsController;
  v15 = [(CNUICoreMainWhitelistedContactsController *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_modelFetcher, fetcher);
    objc_storeStrong(&v16->_mainContactStoreFacade, facade);
    objc_storeStrong(&v16->_downtimeContainerFetcher, containerFetcher);
    objc_storeStrong(&v16->_schedulerProvider, provider);
    familyMemberContactItems = v16->_familyMemberContactItems;
    v16->_familyMemberContactItems = MEMORY[0x1E695E0F0];

    [(CNUICoreMainWhitelistedContactsController *)v16 setupChangeNotificationResponse];
    v18 = v16;
  }

  return v16;
}

- (void)setupChangeNotificationResponse
{
  v3 = MEMORY[0x1E6996798];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [v3 observableOnNotificationCenter:defaultCenter withName:*MEMORY[0x1E695C3D8] object:0];

  mainThreadScheduler = [(CNSchedulerProvider *)self->_schedulerProvider mainThreadScheduler];
  v7 = [v5 observeOn:mainThreadScheduler];

  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69967A0];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __76__CNUICoreMainWhitelistedContactsController_setupChangeNotificationResponse__block_invoke;
  v15 = &unk_1E76E8FC8;
  objc_copyWeak(&v16, &location);
  v9 = [v8 observerWithResultBlock:&v12];
  v10 = [v7 subscribe:{v9, v12, v13, v14, v15}];
  contactStoreDidChangeToken = self->_contactStoreDidChangeToken;
  self->_contactStoreDidChangeToken = v10;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __76__CNUICoreMainWhitelistedContactsController_setupChangeNotificationResponse__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerContactItemsFetch];
}

- (void)dealloc
{
  [(CNUICoreMainWhitelistedContactsController *)self cancelContactItemsFetch];
  [(CNCancelable *)self->_contactStoreDidChangeToken cancel];
  [(CNFuture *)self->_addContactsToWhitelistFuture cancel];
  [(CNFuture *)self->_updateContactsInWhitelistFuture cancel];
  [(CNFuture *)self->_deleteContactsFromWhitelistFuture cancel];
  v3.receiver = self;
  v3.super_class = CNUICoreMainWhitelistedContactsController;
  [(CNUICoreMainWhitelistedContactsController *)&v3 dealloc];
}

- (CNScheduler)backgroundOrImmediateScheduler
{
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  schedulerProvider = [(CNUICoreMainWhitelistedContactsController *)self schedulerProvider];
  v5 = schedulerProvider;
  if (isMainThread)
  {
    [schedulerProvider backgroundScheduler];
  }

  else
  {
    [schedulerProvider immediateScheduler];
  }
  v6 = ;

  return v6;
}

- (int64_t)fetchStatus
{
  familyMemberContactItemsFuture = [(CNUICoreMainWhitelistedContactsController *)self familyMemberContactItemsFuture];

  if (!familyMemberContactItemsFuture)
  {
    return 0;
  }

  familyMemberContactItemsFuture2 = [(CNUICoreMainWhitelistedContactsController *)self familyMemberContactItemsFuture];
  isFinished = [familyMemberContactItemsFuture2 isFinished];

  if (!isFinished)
  {
    return 2;
  }

  downtimeContainerFetcher = [(CNUICoreMainWhitelistedContactsController *)self downtimeContainerFetcher];
  downtimeWhitelistContainer = [downtimeContainerFetcher downtimeWhitelistContainer];

  if (downtimeWhitelistContainer)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (NSArray)familyMemberContactItems
{
  familyMemberContactItemsFuture = [(CNUICoreMainWhitelistedContactsController *)self familyMemberContactItemsFuture];

  if (!familyMemberContactItemsFuture)
  {
    [(CNUICoreMainWhitelistedContactsController *)self triggerContactItemsFetch];
  }

  familyMemberContactItems = self->_familyMemberContactItems;

  return familyMemberContactItems;
}

- (BOOL)hasDowntimeWhitelistContainer
{
  downtimeContainerFetcher = [(CNUICoreMainWhitelistedContactsController *)self downtimeContainerFetcher];
  downtimeWhitelistContainer = [downtimeContainerFetcher downtimeWhitelistContainer];
  v4 = downtimeWhitelistContainer != 0;

  return v4;
}

- (void)setFamilyMemberContactItems:(id)items
{
  objc_storeStrong(&self->_familyMemberContactItems, items);
  observer = [(CNUICoreMainWhitelistedContactsController *)self observer];
  [observer familyMemberContactItemsDidChange];
}

- (void)triggerContactItemsFetch
{
  [(CNUICoreMainWhitelistedContactsController *)self cancelContactItemsFetch];
  contactItemFutureFromFetcher = [(CNUICoreMainWhitelistedContactsController *)self contactItemFutureFromFetcher];
  [(CNUICoreMainWhitelistedContactsController *)self setFamilyMemberContactItemsFuture:contactItemFutureFromFetcher];

  objc_initWeak(&location, self);
  familyMemberContactItemsFuture = [(CNUICoreMainWhitelistedContactsController *)self familyMemberContactItemsFuture];
  v7 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v8, &location);
  v5 = [(CNUICoreMainWhitelistedContactsController *)self schedulerProvider:v7];
  mainThreadScheduler = [v5 mainThreadScheduler];
  [familyMemberContactItemsFuture addSuccessBlock:&v7 scheduler:mainThreadScheduler];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __69__CNUICoreMainWhitelistedContactsController_triggerContactItemsFetch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFamilyMemberContactItems:v3];
}

- (void)cancelContactItemsFetch
{
  familyMemberContactItemsFuture = [(CNUICoreMainWhitelistedContactsController *)self familyMemberContactItemsFuture];
  [familyMemberContactItemsFuture cancel];

  [(CNUICoreMainWhitelistedContactsController *)self setFamilyMemberContactItemsFuture:0];
}

- (id)contactItemFutureFromFetcher
{
  modelFetcher = [(CNUICoreMainWhitelistedContactsController *)self modelFetcher];
  whitelistedContactsModel = [modelFetcher whitelistedContactsModel];
  schedulerProvider = [(CNUICoreMainWhitelistedContactsController *)self schedulerProvider];
  v6 = [whitelistedContactsModel flatMap:&__block_literal_global_71 schedulerProvider:schedulerProvider];

  return v6;
}

id __73__CNUICoreMainWhitelistedContactsController_contactItemFutureFromFetcher__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6996720];
  v3 = [a2 items];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (void)updateWhitelistByAddingContacts:(id)contacts
{
  contactsCopy = contacts;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    addContactsToWhitelistFuture = [(CNUICoreMainWhitelistedContactsController *)self addContactsToWhitelistFuture];
    [addContactsToWhitelistFuture cancel];

    v6 = MEMORY[0x1E6996720];
    v9 = MEMORY[0x1E69E9820];
    v10 = contactsCopy;
    v7 = [(CNUICoreMainWhitelistedContactsController *)self backgroundOrImmediateScheduler:v9];
    v8 = [v6 futureWithBlock:&v9 scheduler:v7];
    [(CNUICoreMainWhitelistedContactsController *)self setAddContactsToWhitelistFuture:v8];
  }
}

id __77__CNUICoreMainWhitelistedContactsController_updateWhitelistByAddingContacts___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) downtimeContainerFetcher];
  v5 = [v4 downtimeWhitelistContainer];

  v6 = [*(a1 + 40) _cn_filter:&__block_literal_global_27_0];
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    if (!v5)
    {
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695C448] code:1008 userInfo:0];
      if (a2)
      {
        v19 = v19;
        *a2 = v19;
      }

      goto LABEL_17;
    }

    v9 = [CNUICoreFamilyMemberSaveRequestFactory saveRequestToUpdateContactListByAddingContacts:v6 toContainer:v5];
    v10 = [*(a1 + 32) mainContactStoreFacade];
    v22 = 0;
    v8 = [v10 executeSaveRequest:v9 error:&v22];
    v7 = v22;
  }

  v11 = [*(a1 + 32) mainContactStoreFacade];
  v12 = [CNUICoreFamilyMemberSaveRequestFactory saveRequestToupdateContactWhitelistByAddingContacts:*(a1 + 40)];
  v21 = v7;
  v13 = [v11 executeSaveRequest:v12 error:&v21];
  v14 = v21;

  if (!v13 || !v8)
  {
    if (a2)
    {
      v18 = v14;
      *a2 = v14;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v15 = *(a1 + 40);
  v16 = v15;
  if (a2 && !v15)
  {
    v17 = v14;
    *a2 = v14;
  }

LABEL_18:

  return v16;
}

- (void)updateWhitelistByUpdatingContacts:(id)contacts
{
  contactsCopy = contacts;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    updateContactsInWhitelistFuture = [(CNUICoreMainWhitelistedContactsController *)self updateContactsInWhitelistFuture];
    [updateContactsInWhitelistFuture cancel];

    v6 = MEMORY[0x1E6996720];
    v9 = MEMORY[0x1E69E9820];
    v10 = contactsCopy;
    v7 = [(CNUICoreMainWhitelistedContactsController *)self backgroundOrImmediateScheduler:v9];
    v8 = [v6 futureWithBlock:&v9 scheduler:v7];
    [(CNUICoreMainWhitelistedContactsController *)self setUpdateContactsInWhitelistFuture:v8];
  }
}

id __79__CNUICoreMainWhitelistedContactsController_updateWhitelistByUpdatingContacts___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) mainContactStoreFacade];
  v5 = [CNUICoreFamilyMemberSaveRequestFactory saveRequestToUpdateContactListByUpdatingContacts:*(a1 + 40)];
  v12 = 0;
  v6 = [v4 executeSaveRequest:v5 error:&v12];
  v7 = v12;

  if (!v6)
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = *(a1 + 40);
  v9 = v8;
  if (a2 && !v8)
  {
LABEL_6:
    v10 = v7;
    *a2 = v7;
  }

LABEL_7:

  return v9;
}

- (void)updateWhitelistByRemovingContacts:(id)contacts
{
  contactsCopy = contacts;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    deleteContactsFromWhitelistFuture = [(CNUICoreMainWhitelistedContactsController *)self deleteContactsFromWhitelistFuture];
    [deleteContactsFromWhitelistFuture cancel];

    v6 = MEMORY[0x1E6996720];
    v9 = MEMORY[0x1E69E9820];
    v10 = contactsCopy;
    v7 = [(CNUICoreMainWhitelistedContactsController *)self backgroundOrImmediateScheduler:v9];
    v8 = [v6 futureWithBlock:&v9 scheduler:v7];
    [(CNUICoreMainWhitelistedContactsController *)self setDeleteContactsFromWhitelistFuture:v8];
  }
}

id __79__CNUICoreMainWhitelistedContactsController_updateWhitelistByRemovingContacts___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) mainContactStoreFacade];
  v5 = [CNUICoreFamilyMemberSaveRequestFactory saveRequestToUpdateContactWhitelistByRemovingContacts:*(a1 + 40)];
  v12 = 0;
  v6 = [v4 executeSaveRequest:v5 error:&v12];
  v7 = v12;

  if (!v6)
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = *(a1 + 40);
  v9 = v8;
  if (a2 && !v8)
  {
LABEL_6:
    v10 = v7;
    *a2 = v7;
  }

LABEL_7:

  return v9;
}

- (id)contactRepresentingItem:(id)item
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CD78];
  itemCopy = item;
  v6 = [v4 alloc];
  keyVectorWithAllKeys = [MEMORY[0x1E695CDB8] keyVectorWithAllKeys];
  v20[0] = keyVectorWithAllKeys;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v9 = [v6 initWithKeysToFetch:v8];

  v10 = MEMORY[0x1E695CD58];
  contactIdentifier = [itemCopy contactIdentifier];

  v19 = contactIdentifier;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v13 = [v10 predicateForContactsWithIdentifiers:v12];
  [v9 setPredicate:v13];

  [v9 setUnifyResults:0];
  mainContactStoreFacade = [(CNUICoreMainWhitelistedContactsController *)self mainContactStoreFacade];
  v15 = [CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:v9 fromStore:mainContactStoreFacade];

  if ([v15 isSuccess])
  {
    value = [v15 value];
    firstObject = [value firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (CNUICoreFamilyMemberContactsObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end