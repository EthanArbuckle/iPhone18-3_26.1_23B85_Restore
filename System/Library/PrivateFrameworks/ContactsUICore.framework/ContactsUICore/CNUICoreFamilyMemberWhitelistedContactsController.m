@interface CNUICoreFamilyMemberWhitelistedContactsController
+ (id)contactByRemovingSensitiveDataFromContact:(id)a3;
+ (id)controllerWithFamilyMember:(id)a3 options:(id)a4 schedulerProvider:(id)a5;
- (BOOL)familyMemberContainerIsEmpty;
- (CNUICoreFamilyMemberContactsObserver)observer;
- (CNUICoreFamilyMemberWhitelistedContactsController)init;
- (CNUICoreFamilyMemberWhitelistedContactsController)initWithFamilyMember:(id)a3 options:(id)a4 schedulerProvider:(id)a5;
- (CNUICoreFamilyMemberWhitelistedContactsController)initWithModelFetcher:(id)a3 familyMemberContactsUpdator:(id)a4 familyMemberScopedContactStoreFacade:(id)a5 mainContactStoreFacade:(id)a6 schedulerProvider:(id)a7;
- (NSArray)familyMemberContactItems;
- (id)contactItemFutureFromFetcher;
- (id)contactRepresentingItem:(id)a3;
- (int64_t)fetchStatus;
- (void)cancelContactItemsFetch;
- (void)dealloc;
- (void)setFamilyMemberContactItems:(id)a3;
- (void)setupChangeNotificationResponse;
- (void)triggerContactItemsFetch;
- (void)updateWhitelistByAddingContacts:(id)a3;
- (void)updateWhitelistByRemovingContacts:(id)a3;
- (void)updateWhitelistByUpdatingContacts:(id)a3;
@end

@implementation CNUICoreFamilyMemberWhitelistedContactsController

+ (id)contactByRemovingSensitiveDataFromContact:(id)a3
{
  v3 = [a3 mutableCopy];
  v4 = +[CNUICoreContactPropertyFilterBuilder whitelistedContactsFilterBuilder];
  v5 = [v4 build];

  [v5 filterPropertyValuesFromContact:v3];

  return v3;
}

+ (id)controllerWithFamilyMember:(id)a3 options:(id)a4 schedulerProvider:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithFamilyMember:v10 options:v9 schedulerProvider:v8];

  LODWORD(v10) = [v9 shouldRequireConfirmationOfChanges];
  if (v10)
  {
    v12 = [[CNUICoreInMemoryWhitelistedContactsDataSourceDecorator alloc] initWithDataSource:v11 schedulerProvider:v8];

    v11 = v12;
  }

  return v11;
}

- (CNUICoreFamilyMemberWhitelistedContactsController)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreFamilyMemberWhitelistedContactsController)initWithFamilyMember:(id)a3 options:(id)a4 schedulerProvider:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [[CNUICoreFamilyMemberContactsModelRetriever alloc] initWithFamilyMember:v8 schedulerProvider:v9];
  v12 = [[CNUICoreFamilyMemberContactsStore alloc] initWithFamilyMember:v8 schedulerProvider:v9];
  v13 = [CNUICoreContactStoreProductionFacade alloc];
  v14 = [MEMORY[0x1E695CE18] storeForFamilyMember:v8];
  v15 = [(CNUICoreContactStoreProductionFacade *)v13 initWithContactStore:v14];

  v16 = [CNUICoreContactStoreProductionFacade alloc];
  v17 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v18 = [(CNUICoreContactStoreProductionFacade *)v16 initWithContactStore:v17];

  LODWORD(v17) = [v10 shouldPrepopulateEmptyWhitelist];
  if (v17)
  {
    v19 = [[CNUICoreProposedContactsFetchingDecorator alloc] initWithModelFetcher:v11 familyMember:v8 schedulerProvider:v9];

    v11 = v19;
  }

  v20 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self initWithModelFetcher:v11 familyMemberContactsUpdator:v12 familyMemberScopedContactStoreFacade:v15 mainContactStoreFacade:v18 schedulerProvider:v9];

  return v20;
}

- (CNUICoreFamilyMemberWhitelistedContactsController)initWithModelFetcher:(id)a3 familyMemberContactsUpdator:(id)a4 familyMemberScopedContactStoreFacade:(id)a5 mainContactStoreFacade:(id)a6 schedulerProvider:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
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
    if (v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v13)
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

  if (v14)
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
    if (v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_14:
    if (v15)
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
  if (!v16)
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
    objc_storeStrong(&v17->_modelFetcher, a3);
    objc_storeStrong(&v18->_familyMemberContactsUpdator, a4);
    objc_storeStrong(&v18->_familyMemberScopedContactStore, a5);
    objc_storeStrong(&v18->_mainContactStoreFacade, a6);
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
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [v3 observableOnNotificationCenter:v4 withName:*MEMORY[0x1E695C3D8] object:0];

  v6 = [(CNSchedulerProvider *)self->_schedulerProvider mainThreadScheduler];
  v7 = [v5 observeOn:v6];

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
  v3 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];
  v5 = [v4 isFinished];

  if (!v5)
  {
    return 2;
  }

  v6 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];
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

- (NSArray)familyMemberContactItems
{
  v3 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];

  if (!v3)
  {
    [(CNUICoreFamilyMemberWhitelistedContactsController *)self triggerContactItemsFetch];
  }

  familyMemberContactItems = self->_familyMemberContactItems;

  return familyMemberContactItems;
}

- (BOOL)familyMemberContainerIsEmpty
{
  v2 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self modelFetcher];
  v3 = [v2 allContactsModel];
  v4 = [v3 result:0];
  v5 = [v4 items];
  v6 = [v5 count] == 0;

  return v6;
}

- (void)setFamilyMemberContactItems:(id)a3
{
  objc_storeStrong(&self->_familyMemberContactItems, a3);
  v4 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self observer];
  [v4 familyMemberContactItemsDidChange];
}

- (void)triggerContactItemsFetch
{
  [(CNUICoreFamilyMemberWhitelistedContactsController *)self cancelContactItemsFetch];
  v3 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self contactItemFutureFromFetcher];
  [(CNUICoreFamilyMemberWhitelistedContactsController *)self setFamilyMemberContactItemsFuture:v3];

  objc_initWeak(&location, self);
  v4 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__CNUICoreFamilyMemberWhitelistedContactsController_triggerContactItemsFetch__block_invoke;
  v12[3] = &unk_1E76E8FF0;
  objc_copyWeak(&v13, &location);
  v5 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self schedulerProvider];
  v6 = [v5 mainThreadScheduler];
  [v4 addSuccessBlock:v12 scheduler:v6];

  v7 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__CNUICoreFamilyMemberWhitelistedContactsController_triggerContactItemsFetch__block_invoke_2;
  v10[3] = &unk_1E76E9018;
  objc_copyWeak(&v11, &location);
  v8 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self schedulerProvider];
  v9 = [v8 mainThreadScheduler];
  [v7 addFailureBlock:v10 scheduler:v9];

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
  v3 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactItemsFuture];
  [v3 cancel];

  [(CNUICoreFamilyMemberWhitelistedContactsController *)self setFamilyMemberContactItemsFuture:0];
}

- (id)contactItemFutureFromFetcher
{
  v3 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self modelFetcher];
  v4 = [v3 whitelistedContactsModel];
  v5 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self schedulerProvider];
  v6 = [v4 flatMap:&__block_literal_global_35 schedulerProvider:v5];

  return v6;
}

id __81__CNUICoreFamilyMemberWhitelistedContactsController_contactItemFutureFromFetcher__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6996720];
  v3 = [a2 items];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (void)updateWhitelistByAddingContacts:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self addContactsToWhitelistFuture];
  [v5 cancel];

  v7 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactsUpdator];
  v6 = [v7 updateContactWhitelistByAddingContacts:v4];

  [(CNUICoreFamilyMemberWhitelistedContactsController *)self setAddContactsToWhitelistFuture:v6];
}

- (void)updateWhitelistByUpdatingContacts:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self updateContactsInWhitelistFuture];
  [v5 cancel];

  v7 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactsUpdator];
  v6 = [v7 updateContactListByUpdatingContacts:v4];

  [(CNUICoreFamilyMemberWhitelistedContactsController *)self setUpdateContactsInWhitelistFuture:v6];
}

- (void)updateWhitelistByRemovingContacts:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self deleteContactsFromWhitelistFuture];
  [v5 cancel];

  v7 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberContactsUpdator];
  v6 = [v7 updateContactWhitelistByRemovingContacts:v4];

  [(CNUICoreFamilyMemberWhitelistedContactsController *)self setDeleteContactsFromWhitelistFuture:v6];
}

- (id)contactRepresentingItem:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CD78];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x1E695CDB8] keyVectorWithAllKeys];
  v24[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v9 = [v6 initWithKeysToFetch:v8];

  v10 = MEMORY[0x1E695CD58];
  v11 = [v5 contactIdentifier];

  v23 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v13 = [v10 predicateForContactsWithIdentifiers:v12];
  [v9 setPredicate:v13];

  [v9 setUnifyResults:0];
  v14 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self familyMemberScopedContactStore];
  v15 = [CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:v9 fromStore:v14];

  if ([v15 isSuccess] && (v16 = *MEMORY[0x1E6996530], objc_msgSend(v15, "value"), v17 = objc_claimAutoreleasedReturnValue(), LOBYTE(v16) = (*(v16 + 16))(v16, v17), v17, (v16 & 1) == 0))
  {
    v19 = [v15 value];
    v21 = [v19 firstObject];
  }

  else
  {
    v18 = [(CNUICoreFamilyMemberWhitelistedContactsController *)self mainContactStoreFacade];
    v19 = [CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:v9 fromStore:v18];

    if ([v19 isSuccess])
    {
      v20 = [v19 value];
      v21 = [v20 firstObject];
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (CNUICoreFamilyMemberContactsObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end