@interface CNUICoreFamilyMemberContactsController
+ (NSArray)propertyKeysContainingSenstiveData;
+ (id)contactByRemovingSensitiveDataFromContact:(id)contact;
- (CNUICoreFamilyMemberContactsController)init;
- (CNUICoreFamilyMemberContactsController)initWithFamilyMember:(id)member modelFetcher:(id)fetcher familyMemberContactsUpdator:(id)updator schedulerProvider:(id)provider;
- (CNUICoreFamilyMemberContactsController)initWithFamilyMember:(id)member schedulerProvider:(id)provider;
- (CNUICoreFamilyMemberContactsObserver)observer;
- (NSNumber)countOfFamilyMemberContacts;
- (id)countOfFamilyMemberContactsFutureFromFetcher;
- (int64_t)fetchStatus;
- (void)cancelCountOfFamilyMemberContactsFetch;
- (void)dealloc;
- (void)setCountOfFamilyMemberContacts:(id)contacts;
- (void)setupChangeNotificationResponse;
- (void)triggerCountOfFamilyMemberContactsFetch;
- (void)updateListByAddingContacts:(id)contacts;
- (void)updateListByRemovingContacts:(id)contacts;
@end

@implementation CNUICoreFamilyMemberContactsController

+ (NSArray)propertyKeysContainingSenstiveData
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695C278];
  v6[0] = *MEMORY[0x1E695C310];
  v6[1] = v2;
  v3 = *MEMORY[0x1E695C3A8];
  v6[2] = *MEMORY[0x1E695C400];
  v6[3] = v3;
  v6[4] = *MEMORY[0x1E695C320];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];

  return v4;
}

+ (id)contactByRemovingSensitiveDataFromContact:(id)contact
{
  v3 = [contact mutableCopy];
  v4 = +[CNUICoreContactPropertyFilterBuilder managedContactsFilterBuilder];
  build = [v4 build];

  [build filterPropertyValuesFromContact:v3];

  return v3;
}

- (CNUICoreFamilyMemberContactsController)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreFamilyMemberContactsController)initWithFamilyMember:(id)member schedulerProvider:(id)provider
{
  providerCopy = provider;
  memberCopy = member;
  v8 = [[CNUICoreFamilyMemberContactsModelRetriever alloc] initWithFamilyMember:memberCopy schedulerProvider:providerCopy];
  v9 = [[CNUICoreFamilyMemberContactsStore alloc] initWithFamilyMember:memberCopy schedulerProvider:providerCopy];
  v10 = [(CNUICoreFamilyMemberContactsController *)self initWithFamilyMember:memberCopy modelFetcher:v8 familyMemberContactsUpdator:v9 schedulerProvider:providerCopy];

  return v10;
}

- (CNUICoreFamilyMemberContactsController)initWithFamilyMember:(id)member modelFetcher:(id)fetcher familyMemberContactsUpdator:(id)updator schedulerProvider:(id)provider
{
  memberCopy = member;
  fetcherCopy = fetcher;
  updatorCopy = updator;
  providerCopy = provider;
  if (memberCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_16 != -1)
  {
    [CNUICoreFamilyMemberContactsController initWithFamilyMember:modelFetcher:familyMemberContactsUpdator:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_16, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyMemberContactsStore initWithFamilyMemberScopedContactStoreFacade:familyMember:contactsSyncTrigger:schedulerProvider:];
    if (fetcherCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (fetcherCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_16 != -1)
  {
    [CNUICoreFamilyMemberContactsController initWithFamilyMember:modelFetcher:familyMemberContactsUpdator:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_16, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
  }

  if (updatorCopy)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (CNGuardOSLog_cn_once_token_0_16 != -1)
  {
    [CNUICoreFamilyMemberContactsController initWithFamilyMember:modelFetcher:familyMemberContactsUpdator:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_16, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
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

  if (CNGuardOSLog_cn_once_token_0_16 != -1)
  {
    [CNUICoreFamilyMemberContactsController initWithFamilyMember:modelFetcher:familyMemberContactsUpdator:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_16, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
  }

LABEL_19:
  v19.receiver = self;
  v19.super_class = CNUICoreFamilyMemberContactsController;
  v15 = [(CNUICoreFamilyMemberContactsController *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_familyMember, member);
    objc_storeStrong(&v16->_modelFetcher, fetcher);
    objc_storeStrong(&v16->_familyMemberContactsUpdator, updator);
    objc_storeStrong(&v16->_schedulerProvider, provider);
    [(CNUICoreFamilyMemberContactsController *)v16 setupChangeNotificationResponse];
    v17 = v16;
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
  v14 = __73__CNUICoreFamilyMemberContactsController_setupChangeNotificationResponse__block_invoke;
  v15 = &unk_1E76E8FC8;
  objc_copyWeak(&v16, &location);
  v9 = [v8 observerWithResultBlock:&v12];
  v10 = [v7 subscribe:{v9, v12, v13, v14, v15}];
  contactStoreDidChangeToken = self->_contactStoreDidChangeToken;
  self->_contactStoreDidChangeToken = v10;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __73__CNUICoreFamilyMemberContactsController_setupChangeNotificationResponse__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerCountOfFamilyMemberContactsFetch];
}

- (void)dealloc
{
  [(CNUICoreFamilyMemberContactsController *)self cancelCountOfFamilyMemberContactsFetch];
  [(CNCancelable *)self->_contactStoreDidChangeToken cancel];
  [(CNFuture *)self->_countOfFamilyMemberContactsFuture cancel];
  [(CNFuture *)self->_updateContactListByAddingContactsFuture cancel];
  [(CNFuture *)self->_updateContactListByRemovingContactsFuture cancel];
  v3.receiver = self;
  v3.super_class = CNUICoreFamilyMemberContactsController;
  [(CNUICoreFamilyMemberContactsController *)&v3 dealloc];
}

- (int64_t)fetchStatus
{
  countOfFamilyMemberContactsFuture = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];

  if (!countOfFamilyMemberContactsFuture)
  {
    return 0;
  }

  countOfFamilyMemberContactsFuture2 = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];
  isFinished = [countOfFamilyMemberContactsFuture2 isFinished];

  if (!isFinished)
  {
    return 2;
  }

  countOfFamilyMemberContactsFuture3 = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];
  v11 = 0;
  v7 = [countOfFamilyMemberContactsFuture3 result:&v11];
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

- (NSNumber)countOfFamilyMemberContacts
{
  countOfFamilyMemberContactsFuture = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];

  if (!countOfFamilyMemberContactsFuture)
  {
    [(CNUICoreFamilyMemberContactsController *)self triggerCountOfFamilyMemberContactsFetch];
  }

  countOfFamilyMemberContacts = self->_countOfFamilyMemberContacts;

  return countOfFamilyMemberContacts;
}

- (void)setCountOfFamilyMemberContacts:(id)contacts
{
  objc_storeStrong(&self->_countOfFamilyMemberContacts, contacts);
  observer = [(CNUICoreFamilyMemberContactsController *)self observer];
  [observer familyMemberContactItemsDidChange];
}

- (void)triggerCountOfFamilyMemberContactsFetch
{
  [(CNUICoreFamilyMemberContactsController *)self cancelCountOfFamilyMemberContactsFetch];
  countOfFamilyMemberContactsFutureFromFetcher = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFutureFromFetcher];
  [(CNUICoreFamilyMemberContactsController *)self setCountOfFamilyMemberContactsFuture:countOfFamilyMemberContactsFutureFromFetcher];

  objc_initWeak(&location, self);
  countOfFamilyMemberContactsFuture = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__CNUICoreFamilyMemberContactsController_triggerCountOfFamilyMemberContactsFetch__block_invoke;
  v12[3] = &unk_1E76E9C18;
  objc_copyWeak(&v13, &location);
  schedulerProvider = [(CNUICoreFamilyMemberContactsController *)self schedulerProvider];
  mainThreadScheduler = [schedulerProvider mainThreadScheduler];
  [countOfFamilyMemberContactsFuture addSuccessBlock:v12 scheduler:mainThreadScheduler];

  countOfFamilyMemberContactsFuture2 = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__CNUICoreFamilyMemberContactsController_triggerCountOfFamilyMemberContactsFetch__block_invoke_2;
  v10[3] = &unk_1E76E9018;
  objc_copyWeak(&v11, &location);
  schedulerProvider2 = [(CNUICoreFamilyMemberContactsController *)self schedulerProvider];
  mainThreadScheduler2 = [schedulerProvider2 mainThreadScheduler];
  [countOfFamilyMemberContactsFuture2 addFailureBlock:v10 scheduler:mainThreadScheduler2];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __81__CNUICoreFamilyMemberContactsController_triggerCountOfFamilyMemberContactsFetch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCountOfFamilyMemberContacts:v3];
}

void __81__CNUICoreFamilyMemberContactsController_triggerCountOfFamilyMemberContactsFetch__block_invoke_2(uint64_t a1, void *a2)
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
    [WeakRetained setCountOfFamilyMemberContactsFuture:0];
  }
}

- (void)cancelCountOfFamilyMemberContactsFetch
{
  countOfFamilyMemberContactsFuture = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];
  [countOfFamilyMemberContactsFuture cancel];

  [(CNUICoreFamilyMemberContactsController *)self setCountOfFamilyMemberContactsFuture:0];
}

- (id)countOfFamilyMemberContactsFutureFromFetcher
{
  modelFetcher = [(CNUICoreFamilyMemberContactsController *)self modelFetcher];
  allContactsModel = [modelFetcher allContactsModel];
  schedulerProvider = [(CNUICoreFamilyMemberContactsController *)self schedulerProvider];
  v6 = [allContactsModel flatMap:&__block_literal_global_59 schedulerProvider:schedulerProvider];

  return v6;
}

id __86__CNUICoreFamilyMemberContactsController_countOfFamilyMemberContactsFutureFromFetcher__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6996720];
  v3 = MEMORY[0x1E696AD98];
  v4 = [a2 items];
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  v6 = [v2 futureWithResult:v5];

  return v6;
}

- (void)updateListByAddingContacts:(id)contacts
{
  contactsCopy = contacts;
  updateContactListByAddingContactsFuture = [(CNUICoreFamilyMemberContactsController *)self updateContactListByAddingContactsFuture];
  [updateContactListByAddingContactsFuture cancel];

  familyMemberContactsUpdator = [(CNUICoreFamilyMemberContactsController *)self familyMemberContactsUpdator];
  v6 = [familyMemberContactsUpdator updateContactListByAddingContacts:contactsCopy];

  [(CNUICoreFamilyMemberContactsController *)self setUpdateContactListByAddingContactsFuture:v6];
}

- (void)updateListByRemovingContacts:(id)contacts
{
  contactsCopy = contacts;
  updateContactListByRemovingContactsFuture = [(CNUICoreFamilyMemberContactsController *)self updateContactListByRemovingContactsFuture];
  [updateContactListByRemovingContactsFuture cancel];

  familyMemberContactsUpdator = [(CNUICoreFamilyMemberContactsController *)self familyMemberContactsUpdator];
  v6 = [familyMemberContactsUpdator updateContactListByRemovingContacts:contactsCopy];

  [(CNUICoreFamilyMemberContactsController *)self setUpdateContactListByRemovingContactsFuture:v6];
}

- (CNUICoreFamilyMemberContactsObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end