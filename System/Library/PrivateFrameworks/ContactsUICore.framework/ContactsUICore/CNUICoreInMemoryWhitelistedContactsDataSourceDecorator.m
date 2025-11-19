@interface CNUICoreInMemoryWhitelistedContactsDataSourceDecorator
+ (id)modelBuilderForAddedContacts:(id)a3 withContactTypeAssessor:(id)a4;
+ (id)modelBuilderForContacts:(id)a3 withContactTypeAssessor:(id)a4;
- (BOOL)familyMemberContainerIsEmpty;
- (CNUICoreFamilyMemberContactsObserver)observer;
- (CNUICoreInMemoryWhitelistedContactsDataSourceDecorator)initWithDataSource:(id)a3 familyInfoRetriever:(id)a4 schedulerProvider:(id)a5;
- (CNUICoreInMemoryWhitelistedContactsDataSourceDecorator)initWithDataSource:(id)a3 schedulerProvider:(id)a4;
- (NSArray)familyMemberContactItems;
- (id)contactRepresentingItem:(id)a3;
- (id)contactTypeAssesor;
- (id)familyMemberContactItemsFromDataSource;
- (id)familyMemberContactItemsFromDataSourceAugmentedWithInMemoryEdits;
- (int64_t)fetchStatus;
- (void)dealloc;
- (void)executeBlockIfEditingSessionNotInProgress:(id)a3;
- (void)familyMemberContactItemsDidChange;
- (void)finishPersistenceOfInMemoryContactsWhitelistState;
- (void)flushEditingSession;
- (void)notifyObserverContactItemsChange;
- (void)persistInMemoryContactsWhitelistState;
- (void)startEditingSessionIfNecessaryWithSnapshotOfItems:(id)a3;
- (void)startImplicitEditngSessionForAnyItemsNotPersistedInItems:(id)a3;
- (void)updateWhitelistByAddingContacts:(id)a3;
- (void)updateWhitelistByRemovingContacts:(id)a3;
- (void)updateWhitelistByUpdatingContacts:(id)a3;
@end

@implementation CNUICoreInMemoryWhitelistedContactsDataSourceDecorator

- (CNUICoreInMemoryWhitelistedContactsDataSourceDecorator)initWithDataSource:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CNUICoreContactStoreProductionFacade alloc];
  v9 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v10 = [(CNUICoreContactStoreProductionFacade *)v8 initWithContactStore:v9];

  v11 = [[CNUICoreFamilyInfoRetriever alloc] initWithMainContactStoreFacade:v10 matchFamilyMembersWithContacts:1 schedulerProvider:v6];
  v12 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self initWithDataSource:v7 familyInfoRetriever:v11 schedulerProvider:v6];

  return v12;
}

- (CNUICoreInMemoryWhitelistedContactsDataSourceDecorator)initWithDataSource:(id)a3 familyInfoRetriever:(id)a4 schedulerProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_1 != -1)
  {
    [CNUICoreInMemoryWhitelistedContactsDataSourceDecorator initWithDataSource:familyInfoRetriever:schedulerProvider:];
  }

  v12 = CNGuardOSLog_cn_once_object_0_1;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_1, OS_LOG_TYPE_FAULT))
  {
    [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)v12 initWithDataSource:v13 familyInfoRetriever:v14 schedulerProvider:v15, v16, v17, v18, v19];
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v10)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_1 != -1)
  {
    [CNUICoreInMemoryWhitelistedContactsDataSourceDecorator initWithDataSource:familyInfoRetriever:schedulerProvider:];
  }

  v20 = CNGuardOSLog_cn_once_object_0_1;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_1, OS_LOG_TYPE_FAULT))
  {
    [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)v20 initWithDataSource:v21 familyInfoRetriever:v22 schedulerProvider:v23, v24, v25, v26, v27];
  }

LABEL_10:
  if (!v11)
  {
    if (CNGuardOSLog_cn_once_token_0_1 != -1)
    {
      [CNUICoreInMemoryWhitelistedContactsDataSourceDecorator initWithDataSource:familyInfoRetriever:schedulerProvider:];
    }

    v28 = CNGuardOSLog_cn_once_object_0_1;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_1, OS_LOG_TYPE_FAULT))
    {
      [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)v28 initWithDataSource:v29 familyInfoRetriever:v30 schedulerProvider:v31, v32, v33, v34, v35];
    }
  }

  v42.receiver = self;
  v42.super_class = CNUICoreInMemoryWhitelistedContactsDataSourceDecorator;
  v36 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)&v42 init];
  v37 = v36;
  if (v36)
  {
    objc_storeStrong(&v36->_dataSource, a3);
    [(CNUICoreFamilyMemberWhitelistedContactsDataSource *)v37->_dataSource setObserver:v37];
    objc_storeStrong(&v37->_familyInfoRetriever, a4);
    objc_storeStrong(&v37->_schedulerProvider, a5);
    v38 = objc_alloc_init(CNUICoreContactEditingSession);
    editingSession = v37->_editingSession;
    v37->_editingSession = v38;

    v40 = v37;
  }

  return v37;
}

- (void)dealloc
{
  v3 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self endEditingNotificationToken];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = CNUICoreInMemoryWhitelistedContactsDataSourceDecorator;
  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)&v4 dealloc];
}

- (id)contactTypeAssesor
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __76__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_contactTypeAssesor__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = [CNUICoreContactTypeAssessor alloc];
    v4 = [*(a1 + 32) familyInfoRetriever];
    v5 = [v4 familyInfo];
    v6 = [(CNUICoreContactTypeAssessor *)v3 initWithFamilyInfoFuture:v5];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;

    v2 = *(*(a1 + 32) + 48);
  }

  return v2;
}

- (void)familyMemberContactItemsDidChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __91__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_familyMemberContactItemsDidChange__block_invoke;
  v2[3] = &unk_1E76E7D10;
  v2[4] = self;
  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self executeBlockIfEditingSessionNotInProgress:v2];
}

- (void)notifyObserverContactItemsChange
{
  v2 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self observer];
  [v2 familyMemberContactItemsDidChange];
}

- (void)executeBlockIfEditingSessionNotInProgress:(id)a3
{
  v7 = a3;
  v4 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  v5 = [v4 inProgress];

  v6 = v7;
  if (v7 && (v5 & 1) == 0)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)startEditingSessionIfNecessaryWithSnapshotOfItems:(id)a3
{
  v6 = a3;
  v4 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self familyMemberContactItemsSnapshot];

  if (!v4)
  {
    if (v6)
    {
      [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self setFamilyMemberContactItemsSnapshot:v6];
    }

    else
    {
      v5 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self familyMemberContactItemsFromDataSource];
      [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self setFamilyMemberContactItemsSnapshot:v5];
    }
  }
}

- (void)flushEditingSession
{
  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self setFamilyMemberContactItemsSnapshot:0];
  v3 = objc_alloc_init(CNUICoreContactEditingSession);
  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self setEditingSession:v3];
}

- (BOOL)familyMemberContainerIsEmpty
{
  v2 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self dataSource];
  v3 = [v2 familyMemberContainerIsEmpty];

  return v3;
}

- (int64_t)fetchStatus
{
  v2 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self dataSource];
  v3 = [v2 fetchStatus];

  return v3;
}

- (NSArray)familyMemberContactItems
{
  v3 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  v4 = [v3 inProgress];

  if (v4)
  {
    [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self familyMemberContactItemsFromDataSourceAugmentedWithInMemoryEdits];
  }

  else
  {
    [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self familyMemberContactItemsFromDataSource];
  }
  v5 = ;

  return v5;
}

- (id)familyMemberContactItemsFromDataSourceAugmentedWithInMemoryEdits
{
  v3 = objc_opt_class();
  v4 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  v5 = [v4 addedContacts];
  v6 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self contactTypeAssesor];
  v7 = [v3 modelBuilderForAddedContacts:v5 withContactTypeAssessor:v6];
  v8 = [v7 build];

  v9 = objc_opt_class();
  v10 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  v11 = [v10 updatedContacts];
  v12 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self contactTypeAssesor];
  v13 = [v9 modelBuilderForContacts:v11 withContactTypeAssessor:v12];
  v14 = [v13 build];

  v15 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  v16 = [v15 removedContacts];
  v17 = [v16 _cn_map:&__block_literal_global_10];

  v18 = [v14 items];
  v19 = [v18 _cn_indexBy:&__block_literal_global_17_0];

  v20 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self familyMemberContactItemsSnapshot];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __122__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_familyMemberContactItemsFromDataSourceAugmentedWithInMemoryEdits__block_invoke;
  v34[3] = &unk_1E76E8208;
  v35 = v17;
  v21 = v17;
  v22 = [v20 _cn_filter:v34];

  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __122__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_familyMemberContactItemsFromDataSourceAugmentedWithInMemoryEdits__block_invoke_2;
  v32 = &unk_1E76E8230;
  v33 = v19;
  v23 = v19;
  v24 = [v22 _cn_map:&v29];
  v25 = [v8 items];
  v26 = [v24 arrayByAddingObjectsFromArray:v25];

  v27 = [CNUICoreFamilyMemberContactsModelBuilder itemsBySortingItems:v26];

  return v27;
}

uint64_t __122__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_familyMemberContactItemsFromDataSourceAugmentedWithInMemoryEdits__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 contactIdentifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

id __122__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_familyMemberContactItemsFromDataSourceAugmentedWithInMemoryEdits__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 contactIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v3 contactIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

- (id)familyMemberContactItemsFromDataSource
{
  v3 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self dataSource];
  v4 = [v3 familyMemberContactItems];

  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self startImplicitEditngSessionForAnyItemsNotPersistedInItems:v4];

  return v4;
}

- (void)startImplicitEditngSessionForAnyItemsNotPersistedInItems:(id)a3
{
  v4 = a3;
  v5 = [v4 _cn_filter:&__block_literal_global_19];
  v6 = [v4 _cn_filter:&__block_literal_global_21];
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __115__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_startImplicitEditngSessionForAnyItemsNotPersistedInItems___block_invoke;
    v10[3] = &unk_1E76E8258;
    v10[4] = self;
    v7 = [v4 _cn_map:v10];
    v8 = [v7 _cn_filter:*MEMORY[0x1E6996550]];

    [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self startEditingSessionIfNecessaryWithSnapshotOfItems:v6];
    v9 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
    [v9 addContacts:v8];
  }
}

id __115__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_startImplicitEditngSessionForAnyItemsNotPersistedInItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dataSource];
  v5 = [v4 contactRepresentingItem:v3];

  return v5;
}

- (void)updateWhitelistByAddingContacts:(id)a3
{
  v4 = a3;
  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self startEditingSessionIfNecessary];
  v5 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  [v5 addContacts:v4];

  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self notifyObserverContactItemsChange];
}

- (void)updateWhitelistByUpdatingContacts:(id)a3
{
  v4 = a3;
  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self startEditingSessionIfNecessary];
  v5 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  [v5 updateContacts:v4];

  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self notifyObserverContactItemsChange];
}

- (void)updateWhitelistByRemovingContacts:(id)a3
{
  v4 = a3;
  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self startEditingSessionIfNecessary];
  v5 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  [v5 removeContacts:v4];

  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self notifyObserverContactItemsChange];
}

- (id)contactRepresentingItem:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  v6 = [v5 addedContacts];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_contactRepresentingItem___block_invoke;
  v22[3] = &unk_1E76E81C0;
  v7 = v4;
  v23 = v7;
  v8 = [v6 _cn_firstObjectPassingTest:v22];

  v9 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  v10 = [v9 updatedContacts];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __82__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_contactRepresentingItem___block_invoke_2;
  v20 = &unk_1E76E81C0;
  v11 = v7;
  v21 = v11;
  v12 = [v10 _cn_firstObjectPassingTest:&v17];

  if (v8)
  {
    v13 = v8;
LABEL_5:
    v14 = v13;
    goto LABEL_6;
  }

  if (v12)
  {
    v13 = v12;
    goto LABEL_5;
  }

  v16 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self dataSource:v17];
  v14 = [v16 contactRepresentingItem:v11];

LABEL_6:

  return v14;
}

uint64_t __82__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_contactRepresentingItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) contactIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __82__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_contactRepresentingItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) contactIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)persistInMemoryContactsWhitelistState
{
  v16 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  if ([v16 inProgress])
  {
    v3 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self endEditingNotificationToken];

    if (!v3)
    {
      v4 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self dataSource];
      v5 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
      v6 = [v5 addedContacts];
      [v4 updateWhitelistByAddingContacts:v6];

      v7 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self dataSource];
      v8 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
      v9 = [v8 updatedContacts];
      [v7 updateWhitelistByUpdatingContacts:v9];

      v10 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self dataSource];
      v11 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
      v12 = [v11 removedContacts];
      [v10 updateWhitelistByRemovingContacts:v12];

      objc_initWeak(&location, self);
      v13 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self schedulerProvider];
      v14 = [v13 mainThreadScheduler];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __95__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_persistInMemoryContactsWhitelistState__block_invoke;
      v17[3] = &unk_1E76E8280;
      objc_copyWeak(&v18, &location);
      v15 = [v14 afterDelay:v17 performBlock:2.5];
      [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self setEndEditingNotificationToken:v15];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __95__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_persistInMemoryContactsWhitelistState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_autoreleasePoolPush();
  [WeakRetained finishPersistenceOfInMemoryContactsWhitelistState];
  objc_autoreleasePoolPop(v1);
}

- (void)finishPersistenceOfInMemoryContactsWhitelistState
{
  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self flushEditingSession];
  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self notifyObserverContactItemsChange];

  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self setEndEditingNotificationToken:0];
}

+ (id)modelBuilderForAddedContacts:(id)a3 withContactTypeAssessor:(id)a4
{
  v4 = [a1 modelBuilderForContacts:a3 withContactTypeAssessor:a4];
  [v4 setMarkItemsAsPersisted:0];

  return v4;
}

+ (id)modelBuilderForContacts:(id)a3 withContactTypeAssessor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(CNUICoreFamilyMemberContactsModelBuilder);
  [(CNUICoreFamilyMemberContactsModelBuilder *)v7 setContacts:v6];

  [(CNUICoreFamilyMemberContactsModelBuilder *)v7 setContactTypeAssessor:v5];
  [(CNUICoreFamilyMemberContactsModelBuilder *)v7 setContactFormatterStyle:+[CNUICoreFamilyMemberContactsModelRetriever contactFormatterStyle]];
  [(CNUICoreFamilyMemberContactsModelBuilder *)v7 setSortItemsByName:1];

  return v7;
}

- (CNUICoreFamilyMemberContactsObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end