@interface CNUICoreFamilyMemberContactsController
+ (NSArray)propertyKeysContainingSenstiveData;
+ (id)contactByRemovingSensitiveDataFromContact:(id)a3;
- (CNUICoreFamilyMemberContactsController)init;
- (CNUICoreFamilyMemberContactsController)initWithFamilyMember:(id)a3 modelFetcher:(id)a4 familyMemberContactsUpdator:(id)a5 schedulerProvider:(id)a6;
- (CNUICoreFamilyMemberContactsController)initWithFamilyMember:(id)a3 schedulerProvider:(id)a4;
- (CNUICoreFamilyMemberContactsObserver)observer;
- (NSNumber)countOfFamilyMemberContacts;
- (id)countOfFamilyMemberContactsFutureFromFetcher;
- (int64_t)fetchStatus;
- (void)cancelCountOfFamilyMemberContactsFetch;
- (void)dealloc;
- (void)setCountOfFamilyMemberContacts:(id)a3;
- (void)setupChangeNotificationResponse;
- (void)triggerCountOfFamilyMemberContactsFetch;
- (void)updateListByAddingContacts:(id)a3;
- (void)updateListByRemovingContacts:(id)a3;
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

+ (id)contactByRemovingSensitiveDataFromContact:(id)a3
{
  v3 = [a3 mutableCopy];
  v4 = +[CNUICoreContactPropertyFilterBuilder managedContactsFilterBuilder];
  v5 = [v4 build];

  [v5 filterPropertyValuesFromContact:v3];

  return v3;
}

- (CNUICoreFamilyMemberContactsController)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreFamilyMemberContactsController)initWithFamilyMember:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CNUICoreFamilyMemberContactsModelRetriever alloc] initWithFamilyMember:v7 schedulerProvider:v6];
  v9 = [[CNUICoreFamilyMemberContactsStore alloc] initWithFamilyMember:v7 schedulerProvider:v6];
  v10 = [(CNUICoreFamilyMemberContactsController *)self initWithFamilyMember:v7 modelFetcher:v8 familyMemberContactsUpdator:v9 schedulerProvider:v6];

  return v10;
}

- (CNUICoreFamilyMemberContactsController)initWithFamilyMember:(id)a3 modelFetcher:(id)a4 familyMemberContactsUpdator:(id)a5 schedulerProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
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
    if (v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v12)
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

  if (v13)
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
    if (v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_14:
    if (v14)
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
    objc_storeStrong(&v15->_familyMember, a3);
    objc_storeStrong(&v16->_modelFetcher, a4);
    objc_storeStrong(&v16->_familyMemberContactsUpdator, a5);
    objc_storeStrong(&v16->_schedulerProvider, a6);
    [(CNUICoreFamilyMemberContactsController *)v16 setupChangeNotificationResponse];
    v17 = v16;
  }

  return v16;
}

- (void)setupChangeNotificationResponse
{
  v3 = MEMORY[0x1E6996798];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [v3 observableOnNotificationCenter:v4 withName:*MEMORY[0x1E695C3D8] object:0];

  v6 = [(CNSchedulerProvider *)self->_schedulerProvider mainThreadScheduler];
  v7 = [v5 observeOn:v6];

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
  v3 = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];
  v5 = [v4 isFinished];

  if (!v5)
  {
    return 2;
  }

  v6 = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];
  v11 = 0;
  v7 = [v6 result:&v11];
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
  v3 = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];

  if (!v3)
  {
    [(CNUICoreFamilyMemberContactsController *)self triggerCountOfFamilyMemberContactsFetch];
  }

  countOfFamilyMemberContacts = self->_countOfFamilyMemberContacts;

  return countOfFamilyMemberContacts;
}

- (void)setCountOfFamilyMemberContacts:(id)a3
{
  objc_storeStrong(&self->_countOfFamilyMemberContacts, a3);
  v4 = [(CNUICoreFamilyMemberContactsController *)self observer];
  [v4 familyMemberContactItemsDidChange];
}

- (void)triggerCountOfFamilyMemberContactsFetch
{
  [(CNUICoreFamilyMemberContactsController *)self cancelCountOfFamilyMemberContactsFetch];
  v3 = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFutureFromFetcher];
  [(CNUICoreFamilyMemberContactsController *)self setCountOfFamilyMemberContactsFuture:v3];

  objc_initWeak(&location, self);
  v4 = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__CNUICoreFamilyMemberContactsController_triggerCountOfFamilyMemberContactsFetch__block_invoke;
  v12[3] = &unk_1E76E9C18;
  objc_copyWeak(&v13, &location);
  v5 = [(CNUICoreFamilyMemberContactsController *)self schedulerProvider];
  v6 = [v5 mainThreadScheduler];
  [v4 addSuccessBlock:v12 scheduler:v6];

  v7 = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__CNUICoreFamilyMemberContactsController_triggerCountOfFamilyMemberContactsFetch__block_invoke_2;
  v10[3] = &unk_1E76E9018;
  objc_copyWeak(&v11, &location);
  v8 = [(CNUICoreFamilyMemberContactsController *)self schedulerProvider];
  v9 = [v8 mainThreadScheduler];
  [v7 addFailureBlock:v10 scheduler:v9];

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
  v3 = [(CNUICoreFamilyMemberContactsController *)self countOfFamilyMemberContactsFuture];
  [v3 cancel];

  [(CNUICoreFamilyMemberContactsController *)self setCountOfFamilyMemberContactsFuture:0];
}

- (id)countOfFamilyMemberContactsFutureFromFetcher
{
  v3 = [(CNUICoreFamilyMemberContactsController *)self modelFetcher];
  v4 = [v3 allContactsModel];
  v5 = [(CNUICoreFamilyMemberContactsController *)self schedulerProvider];
  v6 = [v4 flatMap:&__block_literal_global_59 schedulerProvider:v5];

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

- (void)updateListByAddingContacts:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreFamilyMemberContactsController *)self updateContactListByAddingContactsFuture];
  [v5 cancel];

  v7 = [(CNUICoreFamilyMemberContactsController *)self familyMemberContactsUpdator];
  v6 = [v7 updateContactListByAddingContacts:v4];

  [(CNUICoreFamilyMemberContactsController *)self setUpdateContactListByAddingContactsFuture:v6];
}

- (void)updateListByRemovingContacts:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreFamilyMemberContactsController *)self updateContactListByRemovingContactsFuture];
  [v5 cancel];

  v7 = [(CNUICoreFamilyMemberContactsController *)self familyMemberContactsUpdator];
  v6 = [v7 updateContactListByRemovingContacts:v4];

  [(CNUICoreFamilyMemberContactsController *)self setUpdateContactListByRemovingContactsFuture:v6];
}

- (CNUICoreFamilyMemberContactsObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end