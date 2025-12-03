@interface CNUICoreInMemoryWhitelistedContactsDataSourceDecorator
+ (id)modelBuilderForAddedContacts:(id)contacts withContactTypeAssessor:(id)assessor;
+ (id)modelBuilderForContacts:(id)contacts withContactTypeAssessor:(id)assessor;
- (BOOL)familyMemberContainerIsEmpty;
- (CNUICoreFamilyMemberContactsObserver)observer;
- (CNUICoreInMemoryWhitelistedContactsDataSourceDecorator)initWithDataSource:(id)source familyInfoRetriever:(id)retriever schedulerProvider:(id)provider;
- (CNUICoreInMemoryWhitelistedContactsDataSourceDecorator)initWithDataSource:(id)source schedulerProvider:(id)provider;
- (NSArray)familyMemberContactItems;
- (id)contactRepresentingItem:(id)item;
- (id)contactTypeAssesor;
- (id)familyMemberContactItemsFromDataSource;
- (id)familyMemberContactItemsFromDataSourceAugmentedWithInMemoryEdits;
- (int64_t)fetchStatus;
- (void)dealloc;
- (void)executeBlockIfEditingSessionNotInProgress:(id)progress;
- (void)familyMemberContactItemsDidChange;
- (void)finishPersistenceOfInMemoryContactsWhitelistState;
- (void)flushEditingSession;
- (void)notifyObserverContactItemsChange;
- (void)persistInMemoryContactsWhitelistState;
- (void)startEditingSessionIfNecessaryWithSnapshotOfItems:(id)items;
- (void)startImplicitEditngSessionForAnyItemsNotPersistedInItems:(id)items;
- (void)updateWhitelistByAddingContacts:(id)contacts;
- (void)updateWhitelistByRemovingContacts:(id)contacts;
- (void)updateWhitelistByUpdatingContacts:(id)contacts;
@end

@implementation CNUICoreInMemoryWhitelistedContactsDataSourceDecorator

- (CNUICoreInMemoryWhitelistedContactsDataSourceDecorator)initWithDataSource:(id)source schedulerProvider:(id)provider
{
  providerCopy = provider;
  sourceCopy = source;
  v8 = [CNUICoreContactStoreProductionFacade alloc];
  v9 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v10 = [(CNUICoreContactStoreProductionFacade *)v8 initWithContactStore:v9];

  v11 = [[CNUICoreFamilyInfoRetriever alloc] initWithMainContactStoreFacade:v10 matchFamilyMembersWithContacts:1 schedulerProvider:providerCopy];
  v12 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self initWithDataSource:sourceCopy familyInfoRetriever:v11 schedulerProvider:providerCopy];

  return v12;
}

- (CNUICoreInMemoryWhitelistedContactsDataSourceDecorator)initWithDataSource:(id)source familyInfoRetriever:(id)retriever schedulerProvider:(id)provider
{
  sourceCopy = source;
  retrieverCopy = retriever;
  providerCopy = provider;
  if (sourceCopy)
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
    if (retrieverCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (retrieverCopy)
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
  if (!providerCopy)
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
    objc_storeStrong(&v36->_dataSource, source);
    [(CNUICoreFamilyMemberWhitelistedContactsDataSource *)v37->_dataSource setObserver:v37];
    objc_storeStrong(&v37->_familyInfoRetriever, retriever);
    objc_storeStrong(&v37->_schedulerProvider, provider);
    v38 = objc_alloc_init(CNUICoreContactEditingSession);
    editingSession = v37->_editingSession;
    v37->_editingSession = v38;

    v40 = v37;
  }

  return v37;
}

- (void)dealloc
{
  endEditingNotificationToken = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self endEditingNotificationToken];
  [endEditingNotificationToken cancel];

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
  observer = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self observer];
  [observer familyMemberContactItemsDidChange];
}

- (void)executeBlockIfEditingSessionNotInProgress:(id)progress
{
  progressCopy = progress;
  editingSession = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  inProgress = [editingSession inProgress];

  v6 = progressCopy;
  if (progressCopy && (inProgress & 1) == 0)
  {
    (*(progressCopy + 2))(progressCopy);
    v6 = progressCopy;
  }
}

- (void)startEditingSessionIfNecessaryWithSnapshotOfItems:(id)items
{
  itemsCopy = items;
  familyMemberContactItemsSnapshot = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self familyMemberContactItemsSnapshot];

  if (!familyMemberContactItemsSnapshot)
  {
    if (itemsCopy)
    {
      [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self setFamilyMemberContactItemsSnapshot:itemsCopy];
    }

    else
    {
      familyMemberContactItemsFromDataSource = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self familyMemberContactItemsFromDataSource];
      [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self setFamilyMemberContactItemsSnapshot:familyMemberContactItemsFromDataSource];
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
  dataSource = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self dataSource];
  familyMemberContainerIsEmpty = [dataSource familyMemberContainerIsEmpty];

  return familyMemberContainerIsEmpty;
}

- (int64_t)fetchStatus
{
  dataSource = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self dataSource];
  fetchStatus = [dataSource fetchStatus];

  return fetchStatus;
}

- (NSArray)familyMemberContactItems
{
  editingSession = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  inProgress = [editingSession inProgress];

  if (inProgress)
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
  editingSession = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  addedContacts = [editingSession addedContacts];
  contactTypeAssesor = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self contactTypeAssesor];
  v7 = [v3 modelBuilderForAddedContacts:addedContacts withContactTypeAssessor:contactTypeAssesor];
  build = [v7 build];

  v9 = objc_opt_class();
  editingSession2 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  updatedContacts = [editingSession2 updatedContacts];
  contactTypeAssesor2 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self contactTypeAssesor];
  v13 = [v9 modelBuilderForContacts:updatedContacts withContactTypeAssessor:contactTypeAssesor2];
  build2 = [v13 build];

  editingSession3 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  removedContacts = [editingSession3 removedContacts];
  v17 = [removedContacts _cn_map:&__block_literal_global_10];

  items = [build2 items];
  v19 = [items _cn_indexBy:&__block_literal_global_17_0];

  familyMemberContactItemsSnapshot = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self familyMemberContactItemsSnapshot];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __122__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_familyMemberContactItemsFromDataSourceAugmentedWithInMemoryEdits__block_invoke;
  v34[3] = &unk_1E76E8208;
  v35 = v17;
  v21 = v17;
  v22 = [familyMemberContactItemsSnapshot _cn_filter:v34];

  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __122__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_familyMemberContactItemsFromDataSourceAugmentedWithInMemoryEdits__block_invoke_2;
  v32 = &unk_1E76E8230;
  v33 = v19;
  v23 = v19;
  v24 = [v22 _cn_map:&v29];
  items2 = [build items];
  v26 = [v24 arrayByAddingObjectsFromArray:items2];

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
  dataSource = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self dataSource];
  familyMemberContactItems = [dataSource familyMemberContactItems];

  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self startImplicitEditngSessionForAnyItemsNotPersistedInItems:familyMemberContactItems];

  return familyMemberContactItems;
}

- (void)startImplicitEditngSessionForAnyItemsNotPersistedInItems:(id)items
{
  itemsCopy = items;
  v5 = [itemsCopy _cn_filter:&__block_literal_global_19];
  v6 = [itemsCopy _cn_filter:&__block_literal_global_21];
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __115__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_startImplicitEditngSessionForAnyItemsNotPersistedInItems___block_invoke;
    v10[3] = &unk_1E76E8258;
    v10[4] = self;
    v7 = [itemsCopy _cn_map:v10];
    v8 = [v7 _cn_filter:*MEMORY[0x1E6996550]];

    [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self startEditingSessionIfNecessaryWithSnapshotOfItems:v6];
    editingSession = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
    [editingSession addContacts:v8];
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

- (void)updateWhitelistByAddingContacts:(id)contacts
{
  contactsCopy = contacts;
  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self startEditingSessionIfNecessary];
  editingSession = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  [editingSession addContacts:contactsCopy];

  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self notifyObserverContactItemsChange];
}

- (void)updateWhitelistByUpdatingContacts:(id)contacts
{
  contactsCopy = contacts;
  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self startEditingSessionIfNecessary];
  editingSession = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  [editingSession updateContacts:contactsCopy];

  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self notifyObserverContactItemsChange];
}

- (void)updateWhitelistByRemovingContacts:(id)contacts
{
  contactsCopy = contacts;
  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self startEditingSessionIfNecessary];
  editingSession = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  [editingSession removeContacts:contactsCopy];

  [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self notifyObserverContactItemsChange];
}

- (id)contactRepresentingItem:(id)item
{
  itemCopy = item;
  editingSession = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  addedContacts = [editingSession addedContacts];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_contactRepresentingItem___block_invoke;
  v22[3] = &unk_1E76E81C0;
  v7 = itemCopy;
  v23 = v7;
  v8 = [addedContacts _cn_firstObjectPassingTest:v22];

  editingSession2 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  updatedContacts = [editingSession2 updatedContacts];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __82__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_contactRepresentingItem___block_invoke_2;
  v20 = &unk_1E76E81C0;
  v11 = v7;
  v21 = v11;
  v12 = [updatedContacts _cn_firstObjectPassingTest:&v17];

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
  editingSession = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
  if ([editingSession inProgress])
  {
    endEditingNotificationToken = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self endEditingNotificationToken];

    if (!endEditingNotificationToken)
    {
      dataSource = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self dataSource];
      editingSession2 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
      addedContacts = [editingSession2 addedContacts];
      [dataSource updateWhitelistByAddingContacts:addedContacts];

      dataSource2 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self dataSource];
      editingSession3 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
      updatedContacts = [editingSession3 updatedContacts];
      [dataSource2 updateWhitelistByUpdatingContacts:updatedContacts];

      dataSource3 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self dataSource];
      editingSession4 = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self editingSession];
      removedContacts = [editingSession4 removedContacts];
      [dataSource3 updateWhitelistByRemovingContacts:removedContacts];

      objc_initWeak(&location, self);
      schedulerProvider = [(CNUICoreInMemoryWhitelistedContactsDataSourceDecorator *)self schedulerProvider];
      mainThreadScheduler = [schedulerProvider mainThreadScheduler];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __95__CNUICoreInMemoryWhitelistedContactsDataSourceDecorator_persistInMemoryContactsWhitelistState__block_invoke;
      v17[3] = &unk_1E76E8280;
      objc_copyWeak(&v18, &location);
      v15 = [mainThreadScheduler afterDelay:v17 performBlock:2.5];
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

+ (id)modelBuilderForAddedContacts:(id)contacts withContactTypeAssessor:(id)assessor
{
  v4 = [self modelBuilderForContacts:contacts withContactTypeAssessor:assessor];
  [v4 setMarkItemsAsPersisted:0];

  return v4;
}

+ (id)modelBuilderForContacts:(id)contacts withContactTypeAssessor:(id)assessor
{
  assessorCopy = assessor;
  contactsCopy = contacts;
  v7 = objc_alloc_init(CNUICoreFamilyMemberContactsModelBuilder);
  [(CNUICoreFamilyMemberContactsModelBuilder *)v7 setContacts:contactsCopy];

  [(CNUICoreFamilyMemberContactsModelBuilder *)v7 setContactTypeAssessor:assessorCopy];
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