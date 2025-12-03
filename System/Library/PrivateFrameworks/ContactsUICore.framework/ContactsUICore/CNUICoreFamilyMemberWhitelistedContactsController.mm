@interface CNUICoreFamilyMemberWhitelistedContactsController
+ (id)contactByRemovingSensitiveDataFromContact:(id)contact;
+ (id)controllerWithFamilyMember:(id)member options:(id)options schedulerProvider:(id)provider;
- (BOOL)familyMemberContainerIsEmpty;
- (CNUICoreFamilyMemberContactsObserver)observer;
- (CNUICoreFamilyMemberWhitelistedContactsController)init;
- (CNUICoreFamilyMemberWhitelistedContactsController)initWithFamilyMember:(id)member options:(id)options schedulerProvider:(id)provider;
- (CNUICoreFamilyMemberWhitelistedContactsController)initWithModelFetcher:(id)fetcher familyMemberContactsUpdator:(id)updator familyMemberScopedContactStoreFacade:(id)facade mainContactStoreFacade:(id)storeFacade schedulerProvider:(id)provider;
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

@implementation CNUICoreFamilyMemberWhitelistedContactsController

+ (id)contactByRemovingSensitiveDataFromContact:(id)contact
{
  v3 = [contact mutableCopy];
  v4 = +[CNUICoreContactPropertyFilterBuilder whitelistedContactsFilterBuilder];
  build = [v4 build];

  [build filterPropertyValuesFromContact:v3];

  return v3;
}

+ (id)controllerWithFamilyMember:(id)member options:(id)options schedulerProvider:(id)provider
{
  providerCopy = provider;
  optionsCopy = options;
  memberCopy = member;
  v11 = [[self alloc] initWithFamilyMember:memberCopy options:optionsCopy schedulerProvider:providerCopy];

  LODWORD(memberCopy) = [optionsCopy shouldRequireConfirmationOfChanges];
  if (memberCopy)
  {
    v12 = [[CNUICoreInMemoryWhitelistedContactsDataSourceDecorator alloc] initWithDataSource:v11 schedulerProvider:providerCopy];

    v11 = v12;
  }

  return v11;
}

- (CNUICoreFamilyMemberWhitelistedContactsController)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreFamilyMemberWhitelistedContactsController)initWithFamilyMember:(id)member options:(id)options schedulerProvider:(id)provider
{
  memberCopy = member;
  providerCopy = provider;
  optionsCopy = options;
  v11 = [[CNUICoreFamilyMemberContactsModelRetriever alloc] initWithFamilyMember:memberCopy schedulerProvider:providerCopy];
  v12 = [[CNUICoreFamilyMemberContactsStore alloc] initWithFamilyMember:memberCopy schedulerProvider:providerCopy];
  v13 = [CNUICoreContactStoreProductionFacade alloc];
  v14 = [MEMORY[0x1E695CE18] storeForFamilyMember:memberCopy];
  v15 = [(CNUICoreContactStoreProductionFacade *)v13 initWithContactStore:v14];

  v16 = [CNUICoreContactStoreProductionFacade alloc];
  v17 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v18 = [(CNUICoreContactStoreProductionFacade *)v16 initWithContactStore:v17];

  LODWORD(v17) = [optionsCopy shouldPrepopulateEmptyWhitelist];
  if (v17)
  {
    v19 = [[CNUICoreProposedContactsFetchingDecorator alloc] initWithModelFetcher:v11 familyMember:memberCopy schedulerProvider:providerCopy];

    v11 = v19;
  }

  v20 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self initWithModelFetcher:v11 familyMemberContactsUpdator:v12 familyMemberScopedContactStoreFacade:v15 mainContactStoreFacade:v18 schedulerProvider:providerCopy];

  return v20;
}

- (CNUICoreFamilyMemberWhitelistedContactsController)initWithModelFetcher:(id)fetcher familyMemberContactsUpdator:(id)updator familyMemberScopedContactStoreFacade:(id)facade mainContactStoreFacade:(id)storeFacade schedulerProvider:(id)provider
{
  fetcherCopy = fetcher;
  updatorCopy = updator;
  facadeCopy = facade;
  storeFacadeCopy = storeFacade;
  providerCopy = provider;
  if (fetcherCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_8 != -1)
  {
    [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_8, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
    if (updatorCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (updatorCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_8 != -1)
  {
    [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_8, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
  }

  if (facadeCopy)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (CNGuardOSLog_cn_once_token_0_8 != -1)
  {
    [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_8, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
    if (storeFacadeCopy)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_14:
    if (storeFacadeCopy)
    {
      goto LABEL_19;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_8 != -1)
  {
    [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_8, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
  }

LABEL_19:
  if (!providerCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_8 != -1)
    {
      [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_8, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
    }
  }

  v24.receiver = self;
  v24.super_class = CNUICoreFamilyMemberWhitelistedContactsController;
  v17 = [(CNUICoreFamilyMemberWhitelistedContactsController *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_modelFetcher, fetcher);
    objc_storeStrong(&v18->_familyMemberContactsUpdator, updator);
    objc_storeStrong(&v18->_familyMemberScopedContactStore, facade);
    objc_storeStrong(&v18->_mainContactStoreFacade, storeFacade);
    objc_storeStrong(&v18->_schedulerProvider, obj);
    familyMemberContactItems = v18->_familyMemberContactItems;
    v18->_familyMemberContactItems = MEMORY[0x1E695E0F0];

    [(CNUICoreFamilyMemberWhitelistedContactsController *)v18 setupChangeNotificationResponse];
    v20 = v18;
  }

  return v18;
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
  v14 = __84__CNUICoreFamilyMemberWhitelistedContactsController_setupChangeNotificationResponse__block_invoke;
  v15 = &unk_1E76E8FC8;
  objc_copyWeak(&v16, &location);
  v9 = [v8 observerWithResultBlock:&v12];
  v10 = [v7 subscribe:{v9, v12, v13, v14, v15}];
  contactStoreDidChangeToken = self->_contactStoreDidChangeToken;
  self->_contactStoreDidChangeToken = v10;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __84__CNUICoreFamilyMemberWhitelistedContactsController_setupChangeNotificationResponse__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerContactItemsFetch];
}

- (void)dealloc
{
  [(CNUICoreFamilyMemberWhitelistedContactsController *)self cancelContactItemsFetch];
  [(CNCancelable *)self->_contactStoreDidChangeToken cancel];
  [(CNFuture *)self->_addContactsToWhitelistFuture cancel];
  [(CNFuture *)self->_updateContactsInWhitelistFuture cancel];
  [(CNFuture *)self->_deleteContactsFromWhitelistFuture cancel];
  v3.receiver = self;
  v3.super_class = CNUICoreFamilyMemberWhitelistedContactsController;
  [(CNUICoreFamilyMemberWhitelistedContactsController *)&v3 dealloc];
}

- (int64_t)fetchStatus
{
  familyMemberContactItemsFuture = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];

  if (!familyMemberContactItemsFuture)
  {
    return 0;
  }

  familyMemberContactItemsFuture2 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];
  isFinished = [familyMemberContactItemsFuture2 isFinished];

  if (!isFinished)
  {
    return 2;
  }

  familyMemberContactItemsFuture3 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];
  v11 = 0;
  v7 = [familyMemberContactItemsFuture3 result:&v11];
  v8 = v11;

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  return v9;
}

- (NSArray)familyMemberContactItems
{
  familyMemberContactItemsFuture = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];

  if (!familyMemberContactItemsFuture)
  {
    [(CNUICoreFamilyMemberWhitelistedContactsController *)self triggerContactItemsFetch];
  }

  familyMemberContactItems = self->_familyMemberContactItems;

  return familyMemberContactItems;
}

- (BOOL)familyMemberContainerIsEmpty
{
  modelFetcher = [(CNUICoreFamilyMemberWhitelistedContactsController *)self modelFetcher];
  allContactsModel = [modelFetcher allContactsModel];
  v4 = [allContactsModel result:0];
  items = [v4 items];
  v6 = [items count] == 0;

  return v6;
}

- (void)setFamilyMemberContactItems:(id)items
{
  objc_storeStrong(&self->_familyMemberContactItems, items);
  observer = [(CNUICoreFamilyMemberWhitelistedContactsController *)self observer];
  [observer familyMemberContactItemsDidChange];
}

- (void)triggerContactItemsFetch
{
  [(CNUICoreFamilyMemberWhitelistedContactsController *)self cancelContactItemsFetch];
  contactItemFutureFromFetcher = [(CNUICoreFamilyMemberWhitelistedContactsController *)self contactItemFutureFromFetcher];
  [(CNUICoreFamilyMemberWhitelistedContactsController *)self setFamilyMemberContactItemsFuture:contactItemFutureFromFetcher];

  objc_initWeak(&location, self);
  familyMemberContactItemsFuture = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__CNUICoreFamilyMemberWhitelistedContactsController_triggerContactItemsFetch__block_invoke;
  v12[3] = &unk_1E76E8FF0;
  objc_copyWeak(&v13, &location);
  schedulerProvider = [(CNUICoreFamilyMemberWhitelistedContactsController *)self schedulerProvider];
  mainThreadScheduler = [schedulerProvider mainThreadScheduler];
  [familyMemberContactItemsFuture addSuccessBlock:v12 scheduler:mainThreadScheduler];

  familyMemberContactItemsFuture2 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__CNUICoreFamilyMemberWhitelistedContactsController_triggerContactItemsFetch__block_invoke_2;
  v10[3] = &unk_1E76E9018;
  objc_copyWeak(&v11, &location);
  schedulerProvider2 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self schedulerProvider];
  mainThreadScheduler2 = [schedulerProvider2 mainThreadScheduler];
  [familyMemberContactItemsFuture2 addFailureBlock:v10 scheduler:mainThreadScheduler2];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __77__CNUICoreFamilyMemberWhitelistedContactsController_triggerContactItemsFetch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFamilyMemberContactItems:v3];
}

void __77__CNUICoreFamilyMemberWhitelistedContactsController_triggerContactItemsFetch__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v3;
  if (!v7)
  {
    goto LABEL_6;
  }

  v5 = [v7 domain];
  if (([v5 isEqualToString:*MEMORY[0x1E695C448]] & 1) == 0)
  {

    goto LABEL_6;
  }

  v6 = [v7 code];

  if (v6 != 1007)
  {
LABEL_6:
    [WeakRetained setFamilyMemberContactItemsFuture:0];
  }
}

- (void)cancelContactItemsFetch
{
  familyMemberContactItemsFuture = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];
  [familyMemberContactItemsFuture cancel];

  [(CNUICoreFamilyMemberWhitelistedContactsController *)self setFamilyMemberContactItemsFuture:0];
}

- (id)contactItemFutureFromFetcher
{
  modelFetcher = [(CNUICoreFamilyMemberWhitelistedContactsController *)self modelFetcher];
  whitelistedContactsModel = [modelFetcher whitelistedContactsModel];
  schedulerProvider = [(CNUICoreFamilyMemberWhitelistedContactsController *)self schedulerProvider];
  v6 = [whitelistedContactsModel flatMap:&__block_literal_global_35 schedulerProvider:schedulerProvider];

  return v6;
}

id __81__CNUICoreFamilyMemberWhitelistedContactsController_contactItemFutureFromFetcher__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6996720];
  v3 = [a2 items];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (void)updateWhitelistByAddingContacts:(id)contacts
{
  contactsCopy = contacts;
  addContactsToWhitelistFuture = [(CNUICoreFamilyMemberWhitelistedContactsController *)self addContactsToWhitelistFuture];
  [addContactsToWhitelistFuture cancel];

  familyMemberContactsUpdator = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactsUpdator];
  v6 = [familyMemberContactsUpdator updateContactWhitelistByAddingContacts:contactsCopy];

  [(CNUICoreFamilyMemberWhitelistedContactsController *)self setAddContactsToWhitelistFuture:v6];
}

- (void)updateWhitelistByUpdatingContacts:(id)contacts
{
  contactsCopy = contacts;
  updateContactsInWhitelistFuture = [(CNUICoreFamilyMemberWhitelistedContactsController *)self updateContactsInWhitelistFuture];
  [updateContactsInWhitelistFuture cancel];

  familyMemberContactsUpdator = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactsUpdator];
  v6 = [familyMemberContactsUpdator updateContactListByUpdatingContacts:contactsCopy];

  [(CNUICoreFamilyMemberWhitelistedContactsController *)self setUpdateContactsInWhitelistFuture:v6];
}

- (void)updateWhitelistByRemovingContacts:(id)contacts
{
  contactsCopy = contacts;
  deleteContactsFromWhitelistFuture = [(CNUICoreFamilyMemberWhitelistedContactsController *)self deleteContactsFromWhitelistFuture];
  [deleteContactsFromWhitelistFuture cancel];

  familyMemberContactsUpdator = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactsUpdator];
  v6 = [familyMemberContactsUpdator updateContactWhitelistByRemovingContacts:contactsCopy];

  [(CNUICoreFamilyMemberWhitelistedContactsController *)self setDeleteContactsFromWhitelistFuture:v6];
}

- (id)contactRepresentingItem:(id)item
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CD78];
  itemCopy = item;
  v6 = [v4 alloc];
  keyVectorWithAllKeys = [MEMORY[0x1E695CDB8] keyVectorWithAllKeys];
  v24[0] = keyVectorWithAllKeys;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v9 = [v6 initWithKeysToFetch:v8];

  v10 = MEMORY[0x1E695CD58];
  contactIdentifier = [itemCopy contactIdentifier];

  v23 = contactIdentifier;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v13 = [v10 predicateForContactsWithIdentifiers:v12];
  [v9 setPredicate:v13];

  [v9 setUnifyResults:0];
  familyMemberScopedContactStore = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberScopedContactStore];
  v15 = [CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:v9 fromStore:familyMemberScopedContactStore];

  if ([v15 isSuccess] && (v16 = *MEMORY[0x1E6996530], objc_msgSend(v15, "value"), v17 = objc_claimAutoreleasedReturnValue(), LOBYTE(v16) = (*(v16 + 16))(v16, v17), v17, (v16 & 1) == 0))
  {
    value = [v15 value];
    firstObject = [value firstObject];
  }

  else
  {
    mainContactStoreFacade = [(CNUICoreFamilyMemberWhitelistedContactsController *)self mainContactStoreFacade];
    value = [CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:v9 fromStore:mainContactStoreFacade];

    if ([value isSuccess])
    {
      v19Value = [value value];
      firstObject = [v19Value firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

- (CNUICoreFamilyMemberContactsObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end