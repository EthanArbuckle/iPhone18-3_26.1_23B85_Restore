@interface CNUICoreMainWhitelistedContactsController
+ (id)controllerWithOptions:(id)a3 schedulerProvider:(id)a4;
- (BOOL)hasDowntimeWhitelistContainer;
- (CNScheduler)backgroundOrImmediateScheduler;
- (CNUICoreFamilyMemberContactsObserver)observer;
- (CNUICoreMainWhitelistedContactsController)init;
- (CNUICoreMainWhitelistedContactsController)initWithModelFetcher:(id)a3 mainContactStoreFacade:(id)a4 downtimeContainerFetcher:(id)a5 schedulerProvider:(id)a6;
- (CNUICoreMainWhitelistedContactsController)initWiththOptions:(id)a3 mainContactStoreFacade:(id)a4 schedulerProvider:(id)a5;
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

@implementation CNUICoreMainWhitelistedContactsController

+ (id)controllerWithOptions:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CNUICoreContactStoreProductionFacade alloc];
  v9 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v10 = [(CNUICoreContactStoreProductionFacade *)v8 initWithContactStore:v9];

  v11 = [[a1 alloc] initWiththOptions:v7 mainContactStoreFacade:v10 schedulerProvider:v6];
  LODWORD(v9) = [v7 shouldRequireConfirmationOfChanges];

  if (v9)
  {
    v12 = [[CNUICoreInMemoryWhitelistedContactsDataSourceDecorator alloc] initWithDataSource:v11 schedulerProvider:v6];

    v11 = v12;
  }

  return v11;
}

- (CNUICoreMainWhitelistedContactsController)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreMainWhitelistedContactsController)initWiththOptions:(id)a3 mainContactStoreFacade:(id)a4 schedulerProvider:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695CE78];
  v11 = a3;
  v12 = objc_alloc_init(v10);
  v13 = [[CNUICoreFamilyMemberContactsModelRetriever alloc] initWithDowntimeContainerFetcher:v12 schedulerProvider:v9];
  v14 = [v11 shouldPrepopulateEmptyWhitelist];

  if (v14)
  {
    v15 = [[CNUICoreFamilyInfoRetriever alloc] initWithMainContactStoreFacade:v8 matchFamilyMembersWithContacts:1 schedulerProvider:v9];
    v16 = [[CNUICoreProposedContactsFetchingDecorator alloc] initWithModelFetcher:v13 familyInfoFetcher:v15 schedulerProvider:v9];

    v13 = v16;
  }

  v17 = [(CNUICoreMainWhitelistedContactsController *)self initWithModelFetcher:v13 mainContactStoreFacade:v8 downtimeContainerFetcher:v12 schedulerProvider:v9];

  return v17;
}

- (CNUICoreMainWhitelistedContactsController)initWithModelFetcher:(id)a3 mainContactStoreFacade:(id)a4 downtimeContainerFetcher:(id)a5 schedulerProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
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

  if (CNGuardOSLog_cn_once_token_0_19 != -1)
  {
    [CNUICoreMainWhitelistedContactsController initWithModelFetcher:mainContactStoreFacade:downtimeContainerFetcher:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_19, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreMainWhitelistedContactsController initWithModelFetcher:mainContactStoreFacade:downtimeContainerFetcher:schedulerProvider:];
  }

  if (v13)
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
    objc_storeStrong(&v15->_modelFetcher, a3);
    objc_storeStrong(&v16->_mainContactStoreFacade, a4);
    objc_storeStrong(&v16->_downtimeContainerFetcher, a5);
    objc_storeStrong(&v16->_schedulerProvider, a6);
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
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [v3 observableOnNotificationCenter:v4 withName:*MEMORY[0x1E695C3D8] object:0];

  v6 = [(CNSchedulerProvider *)self->_schedulerProvider mainThreadScheduler];
  v7 = [v5 observeOn:v6];

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
  v3 = [MEMORY[0x1E696AF00] isMainThread];
  v4 = [(CNUICoreMainWhitelistedContactsController *)self schedulerProvider];
  v5 = v4;
  if (v3)
  {
    [v4 backgroundScheduler];
  }

  else
  {
    [v4 immediateScheduler];
  }
  v6 = ;

  return v6;
}

- (int64_t)fetchStatus
{
  v3 = [(CNUICoreMainWhitelistedContactsController *)self familyMemberContactItemsFuture];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CNUICoreMainWhitelistedContactsController *)self familyMemberContactItemsFuture];
  v5 = [v4 isFinished];

  if (!v5)
  {
    return 2;
  }

  v6 = [(CNUICoreMainWhitelistedContactsController *)self downtimeContainerFetcher];
  v7 = [v6 downtimeWhitelistContainer];

  if (v7)
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
  v3 = [(CNUICoreMainWhitelistedContactsController *)self familyMemberContactItemsFuture];

  if (!v3)
  {
    [(CNUICoreMainWhitelistedContactsController *)self triggerContactItemsFetch];
  }

  familyMemberContactItems = self->_familyMemberContactItems;

  return familyMemberContactItems;
}

- (BOOL)hasDowntimeWhitelistContainer
{
  v2 = [(CNUICoreMainWhitelistedContactsController *)self downtimeContainerFetcher];
  v3 = [v2 downtimeWhitelistContainer];
  v4 = v3 != 0;

  return v4;
}

- (void)setFamilyMemberContactItems:(id)a3
{
  objc_storeStrong(&self->_familyMemberContactItems, a3);
  v4 = [(CNUICoreMainWhitelistedContactsController *)self observer];
  [v4 familyMemberContactItemsDidChange];
}

- (void)triggerContactItemsFetch
{
  [(CNUICoreMainWhitelistedContactsController *)self cancelContactItemsFetch];
  v3 = [(CNUICoreMainWhitelistedContactsController *)self contactItemFutureFromFetcher];
  [(CNUICoreMainWhitelistedContactsController *)self setFamilyMemberContactItemsFuture:v3];

  objc_initWeak(&location, self);
  v4 = [(CNUICoreMainWhitelistedContactsController *)self familyMemberContactItemsFuture];
  v7 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v8, &location);
  v5 = [(CNUICoreMainWhitelistedContactsController *)self schedulerProvider:v7];
  v6 = [v5 mainThreadScheduler];
  [v4 addSuccessBlock:&v7 scheduler:v6];

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
  v3 = [(CNUICoreMainWhitelistedContactsController *)self familyMemberContactItemsFuture];
  [v3 cancel];

  [(CNUICoreMainWhitelistedContactsController *)self setFamilyMemberContactItemsFuture:0];
}

- (id)contactItemFutureFromFetcher
{
  v3 = [(CNUICoreMainWhitelistedContactsController *)self modelFetcher];
  v4 = [v3 whitelistedContactsModel];
  v5 = [(CNUICoreMainWhitelistedContactsController *)self schedulerProvider];
  v6 = [v4 flatMap:&__block_literal_global_71 schedulerProvider:v5];

  return v6;
}

id __73__CNUICoreMainWhitelistedContactsController_contactItemFutureFromFetcher__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6996720];
  v3 = [a2 items];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (void)updateWhitelistByAddingContacts:(id)a3
{
  v4 = a3;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v5 = [(CNUICoreMainWhitelistedContactsController *)self addContactsToWhitelistFuture];
    [v5 cancel];

    v6 = MEMORY[0x1E6996720];
    v9 = MEMORY[0x1E69E9820];
    v10 = v4;
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

- (void)updateWhitelistByUpdatingContacts:(id)a3
{
  v4 = a3;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v5 = [(CNUICoreMainWhitelistedContactsController *)self updateContactsInWhitelistFuture];
    [v5 cancel];

    v6 = MEMORY[0x1E6996720];
    v9 = MEMORY[0x1E69E9820];
    v10 = v4;
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

- (void)updateWhitelistByRemovingContacts:(id)a3
{
  v4 = a3;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v5 = [(CNUICoreMainWhitelistedContactsController *)self deleteContactsFromWhitelistFuture];
    [v5 cancel];

    v6 = MEMORY[0x1E6996720];
    v9 = MEMORY[0x1E69E9820];
    v10 = v4;
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

- (id)contactRepresentingItem:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CD78];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x1E695CDB8] keyVectorWithAllKeys];
  v20[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v9 = [v6 initWithKeysToFetch:v8];

  v10 = MEMORY[0x1E695CD58];
  v11 = [v5 contactIdentifier];

  v19 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v13 = [v10 predicateForContactsWithIdentifiers:v12];
  [v9 setPredicate:v13];

  [v9 setUnifyResults:0];
  v14 = [(CNUICoreMainWhitelistedContactsController *)self mainContactStoreFacade];
  v15 = [CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:v9 fromStore:v14];

  if ([v15 isSuccess])
  {
    v16 = [v15 value];
    v17 = [v16 firstObject];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (CNUICoreFamilyMemberContactsObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end