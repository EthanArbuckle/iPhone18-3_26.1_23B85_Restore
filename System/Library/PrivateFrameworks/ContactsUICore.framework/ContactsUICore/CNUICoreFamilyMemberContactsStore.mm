@interface CNUICoreFamilyMemberContactsStore
- (CNScheduler)backgroundOrImmediateScheduler;
- (CNUICoreFamilyMemberContactsStore)init;
- (CNUICoreFamilyMemberContactsStore)initWithFamilyMember:(id)a3 schedulerProvider:(id)a4;
- (CNUICoreFamilyMemberContactsStore)initWithFamilyMemberScopedContactStoreFacade:(id)a3 familyMember:(id)a4 contactsSyncTrigger:(id)a5 schedulerProvider:(id)a6;
- (id)contactsFoundAndNotFoundInFamilyMemberContainerFuture:(id)a3;
- (id)contactsInsertedIntoFamilyMemberContainerIfMissingFuture:(id)a3 preserveEditsToProvidedContactsOverContactsFoundInFamilyMemberStore:(BOOL)a4;
- (id)updateContactListByAddingContacts:(id)a3;
- (id)updateContactListByRemovingContacts:(id)a3;
- (id)updateContactListByUpdatingContacts:(id)a3;
- (id)updateContactWhitelistByAddingContacts:(id)a3;
- (id)updateContactWhitelistByRemovingContacts:(id)a3;
- (void)triggerContactsSyncRequest;
@end

@implementation CNUICoreFamilyMemberContactsStore

- (CNUICoreFamilyMemberContactsStore)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreFamilyMemberContactsStore)initWithFamilyMember:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CNUICoreContactStoreProductionFacade alloc];
  v9 = [MEMORY[0x1E695CE18] storeForFamilyMember:v7];
  v10 = [(CNUICoreContactStoreProductionFacade *)v8 initWithContactStore:v9];

  v11 = objc_alloc_init(CNUICoreContactsSyncProductionTrigger);
  v12 = [(CNUICoreFamilyMemberContactsStore *)self initWithFamilyMemberScopedContactStoreFacade:v10 familyMember:v7 contactsSyncTrigger:v11 schedulerProvider:v6];

  return v12;
}

- (CNUICoreFamilyMemberContactsStore)initWithFamilyMemberScopedContactStoreFacade:(id)a3 familyMember:(id)a4 contactsSyncTrigger:(id)a5 schedulerProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_9 != -1)
  {
    [CNUICoreFamilyMemberContactsStore initWithFamilyMemberScopedContactStoreFacade:familyMember:contactsSyncTrigger:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
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

  if (CNGuardOSLog_cn_once_token_0_9 != -1)
  {
    [CNUICoreFamilyMemberContactsStore initWithFamilyMemberScopedContactStoreFacade:familyMember:contactsSyncTrigger:schedulerProvider:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyMemberContactsStore initWithFamilyMemberScopedContactStoreFacade:familyMember:contactsSyncTrigger:schedulerProvider:];
  }

LABEL_10:
  if (!v14)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNUICoreFamilyMemberContactsStore initWithFamilyMemberScopedContactStoreFacade:familyMember:contactsSyncTrigger:schedulerProvider:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreFamilyMemberWhitelistedContactsController initWithModelFetcher:familyMemberContactsUpdator:familyMemberScopedContactStoreFacade:mainContactStoreFacade:schedulerProvider:];
    }
  }

  v19.receiver = self;
  v19.super_class = CNUICoreFamilyMemberContactsStore;
  v15 = [(CNUICoreFamilyMemberContactsStore *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_familyMemberScopedContactStore, a3);
    objc_storeStrong(&v16->_familyMember, a4);
    objc_storeStrong(&v16->_contactsSyncTrigger, a5);
    objc_storeStrong(&v16->_schedulerProvider, a6);
    v17 = v16;
  }

  return v16;
}

- (CNScheduler)backgroundOrImmediateScheduler
{
  v3 = [MEMORY[0x1E696AF00] isMainThread];
  v4 = [(CNUICoreFamilyMemberContactsStore *)self schedulerProvider];
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

- (id)updateContactListByAddingContacts:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNUICoreFamilyMemberContactsStore initWithFamilyMemberScopedContactStoreFacade:familyMember:contactsSyncTrigger:schedulerProvider:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreContactScratchpad scratchpadByAddingContacts:];
    }
  }

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v5 = [MEMORY[0x1E6996720] futureWithResult:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v6 = [(CNUICoreFamilyMemberContactsStore *)self familyMember];
    v7 = [(CNUICoreFamilyMemberContactsStore *)self familyMemberScopedContactStore];
    v8 = MEMORY[0x1E6996720];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__CNUICoreFamilyMemberContactsStore_updateContactListByAddingContacts___block_invoke;
    v20[3] = &unk_1E76E9120;
    v21 = v4;
    v9 = [(CNUICoreFamilyMemberContactsStore *)self backgroundOrImmediateScheduler];
    v10 = [(CNUICoreFamilyMemberContactsStore *)self schedulerProvider];
    v11 = [v8 futureWithBlock:v20 scheduler:v9 schedulerProvider:v10];

    v16 = MEMORY[0x1E69E9820];
    v17 = v7;
    v18 = self;
    v19 = v6;
    v12 = v6;
    v13 = v7;
    v14 = [(CNUICoreFamilyMemberContactsStore *)self schedulerProvider:v16];
    v5 = [v11 flatMap:&v16 schedulerProvider:v14];
  }

  return v5;
}

id __71__CNUICoreFamilyMemberContactsStore_updateContactListByAddingContacts___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [CNUICoreFamilyMemberSaveRequestFactory distinctCopiesOfContacts:a2];
  v4 = *(a1 + 32);
  v5 = [CNUICoreFamilyMemberSaveRequestFactory saveRequestToUpdateContactListByAddingContacts:v3];
  v12 = 0;
  v6 = [v4 executeSaveRequest:v5 error:&v12];
  v7 = v12;

  if (v6)
  {
    [*(a1 + 40) triggerContactsSyncRequest];
    v8 = +[CNUIDowntimeLogger sharedLogger];
    [v8 logSuccessUpdatingContactListByAddingContacts:v3 ofFamilyMember:*(a1 + 48)];

    v9 = [MEMORY[0x1E6996720] futureWithResult:v3];
  }

  else
  {
    v10 = +[CNUIDowntimeLogger sharedLogger];
    [v10 logFailure:v7 updatingContactListByAddingContacts:v3 ofFamilyMember:*(a1 + 48)];

    v9 = [MEMORY[0x1E6996720] futureWithError:v7];
  }

  return v9;
}

- (id)updateContactListByUpdatingContacts:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreFamilyMemberContactsStore *)self familyMemberScopedContactStore];
  v6 = MEMORY[0x1E6996720];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__CNUICoreFamilyMemberContactsStore_updateContactListByUpdatingContacts___block_invoke;
  v13[3] = &unk_1E76E9170;
  v14 = v5;
  v15 = v4;
  v16 = self;
  v7 = v4;
  v8 = v5;
  v9 = [(CNUICoreFamilyMemberContactsStore *)self backgroundOrImmediateScheduler];
  v10 = [(CNUICoreFamilyMemberContactsStore *)self schedulerProvider];
  v11 = [v6 futureWithBlock:v13 scheduler:v9 schedulerProvider:v10];

  return v11;
}

id __73__CNUICoreFamilyMemberContactsStore_updateContactListByUpdatingContacts___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
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

  [*(a1 + 48) triggerContactsSyncRequest];
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

- (id)updateContactListByRemovingContacts:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNUICoreFamilyMemberContactsStore initWithFamilyMemberScopedContactStoreFacade:familyMember:contactsSyncTrigger:schedulerProvider:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreContactScratchpad scratchpadByRemovingContacts:];
    }
  }

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v5 = [MEMORY[0x1E6996720] futureWithResult:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v6 = [(CNUICoreFamilyMemberContactsStore *)self familyMember];
    v7 = [(CNUICoreFamilyMemberContactsStore *)self familyMemberScopedContactStore];
    v8 = MEMORY[0x1E6996720];
    v14 = MEMORY[0x1E69E9820];
    v15 = v7;
    v16 = v4;
    v17 = self;
    v18 = v6;
    v9 = v6;
    v10 = v7;
    v11 = [(CNUICoreFamilyMemberContactsStore *)self backgroundOrImmediateScheduler:v14];
    v12 = [(CNUICoreFamilyMemberContactsStore *)self schedulerProvider];
    v5 = [v8 futureWithBlock:&v14 scheduler:v11 schedulerProvider:v12];
  }

  return v5;
}

id __73__CNUICoreFamilyMemberContactsStore_updateContactListByRemovingContacts___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [CNUICoreFamilyMemberSaveRequestFactory saveRequestToUpdateContactListByRemovingContacts:*(a1 + 40)];
  v14 = 0;
  v6 = [v4 executeSaveRequest:v5 error:&v14];
  v7 = v14;

  if (!v6)
  {
    v11 = +[CNUIDowntimeLogger sharedLogger];
    [v11 logFailure:v7 updatingContactListByRemovingContacts:*(a1 + 40) ofFamilyMember:*(a1 + 56)];

    v10 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [*(a1 + 48) triggerContactsSyncRequest];
  v8 = +[CNUIDowntimeLogger sharedLogger];
  [v8 logSuccessUpdatingContactListByRemovingContacts:*(a1 + 40) ofFamilyMember:*(a1 + 56)];

  v9 = *(a1 + 40);
  v10 = v9;
  if (a2 && !v9)
  {
LABEL_6:
    v12 = v7;
    *a2 = v7;
  }

LABEL_7:

  return v10;
}

- (id)updateContactWhitelistByAddingContacts:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNUICoreFamilyMemberContactsStore initWithFamilyMemberScopedContactStoreFacade:familyMember:contactsSyncTrigger:schedulerProvider:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreFamilyMemberContactsStore updateContactWhitelistByAddingContacts:];
    }
  }

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v5 = [MEMORY[0x1E6996720] futureWithResult:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v6 = [(CNUICoreFamilyMemberContactsStore *)self familyMember];
    v7 = [(CNUICoreFamilyMemberContactsStore *)self familyMemberScopedContactStore];
    v8 = [(CNUICoreFamilyMemberContactsStore *)self contactsInsertedIntoFamilyMemberContainerIfMissingFuture:v4 preserveEditsToProvidedContactsOverContactsFoundInFamilyMemberStore:1];
    v13 = MEMORY[0x1E69E9820];
    v14 = v7;
    v15 = self;
    v16 = v4;
    v17 = v6;
    v9 = v6;
    v10 = v7;
    v11 = [(CNUICoreFamilyMemberContactsStore *)self schedulerProvider:v13];
    v5 = [v8 flatMap:&v13 schedulerProvider:v11];
  }

  return v5;
}

id __76__CNUICoreFamilyMemberContactsStore_updateContactWhitelistByAddingContacts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E6996720];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__CNUICoreFamilyMemberContactsStore_updateContactWhitelistByAddingContacts___block_invoke_2;
  v9[3] = &unk_1E76E91C0;
  v10 = *(a1 + 32);
  v11 = v3;
  v5 = *(a1 + 48);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 56);
  v6 = v3;
  v7 = [v4 futureWithBlock:v9];

  return v7;
}

id __76__CNUICoreFamilyMemberContactsStore_updateContactWhitelistByAddingContacts___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [CNUICoreFamilyMemberSaveRequestFactory saveRequestToupdateContactWhitelistByAddingContacts:*(a1 + 40)];
  v14 = 0;
  v6 = [v4 executeSaveRequest:v5 error:&v14];
  v7 = v14;

  if (!v6)
  {
    v11 = +[CNUIDowntimeLogger sharedLogger];
    [v11 logFailure:v7 updatingContactWhitelistByAddingContacts:*(a1 + 56) ofFamilyMember:*(a1 + 64)];

    v10 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [*(a1 + 48) triggerContactsSyncRequest];
  v8 = +[CNUIDowntimeLogger sharedLogger];
  [v8 logSuccessUpdatingContactWhitelistByAddingContacts:*(a1 + 56) ofFamilyMember:*(a1 + 64)];

  v9 = *(a1 + 40);
  v10 = v9;
  if (a2 && !v9)
  {
LABEL_6:
    v12 = v7;
    *a2 = v7;
  }

LABEL_7:

  return v10;
}

- (void)triggerContactsSyncRequest
{
  v2 = [(CNUICoreFamilyMemberContactsStore *)self contactsSyncTrigger];
  [v2 fireSyncRequest];
}

- (id)contactsInsertedIntoFamilyMemberContainerIfMissingFuture:(id)a3 preserveEditsToProvidedContactsOverContactsFoundInFamilyMemberStore:(BOOL)a4
{
  v6 = a3;
  v7 = [(CNUICoreFamilyMemberContactsStore *)self schedulerProvider];
  objc_initWeak(&location, self);
  v8 = [(CNUICoreFamilyMemberContactsStore *)self contactsFoundAndNotFoundInFamilyMemberContainerFuture:v6];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __162__CNUICoreFamilyMemberContactsStore_contactsInsertedIntoFamilyMemberContainerIfMissingFuture_preserveEditsToProvidedContactsOverContactsFoundInFamilyMemberStore___block_invoke;
  v13[3] = &unk_1E76E9238;
  objc_copyWeak(&v16, &location);
  v17 = a4;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v11 = [v8 flatMap:v13 schedulerProvider:v10];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

id __162__CNUICoreFamilyMemberContactsStore_contactsInsertedIntoFamilyMemberContainerIfMissingFuture_preserveEditsToProvidedContactsOverContactsFoundInFamilyMemberStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [v3 first];
  v6 = [v3 second];

  if (*(a1 + 56) == 1)
  {
    v7 = [*(a1 + 32) _cn_indexBy:&__block_literal_global_38];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __162__CNUICoreFamilyMemberContactsStore_contactsInsertedIntoFamilyMemberContainerIfMissingFuture_preserveEditsToProvidedContactsOverContactsFoundInFamilyMemberStore___block_invoke_2;
    v17[3] = &unk_1E76E8198;
    v18 = v7;
    v8 = v7;
    v9 = [v5 _cn_map:v17];

    v5 = v9;
  }

  v10 = [WeakRetained updateContactListByAddingContacts:v6];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __162__CNUICoreFamilyMemberContactsStore_contactsInsertedIntoFamilyMemberContainerIfMissingFuture_preserveEditsToProvidedContactsOverContactsFoundInFamilyMemberStore___block_invoke_3;
  v15[3] = &unk_1E76E9210;
  v16 = v5;
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = [v10 flatMap:v15 schedulerProvider:v11];

  return v13;
}

id __162__CNUICoreFamilyMemberContactsStore_contactsInsertedIntoFamilyMemberContainerIfMissingFuture_preserveEditsToProvidedContactsOverContactsFoundInFamilyMemberStore___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

id __162__CNUICoreFamilyMemberContactsStore_contactsInsertedIntoFamilyMemberContainerIfMissingFuture_preserveEditsToProvidedContactsOverContactsFoundInFamilyMemberStore___block_invoke_3(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6996720];
  v3 = *(a1 + 32);
  v10[0] = a2;
  v10[1] = v3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:v10 count:2];
  v7 = [v6 _cn_flatten];
  v8 = [v2 futureWithResult:v7];

  return v8;
}

- (id)contactsFoundAndNotFoundInFamilyMemberContainerFuture:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreFamilyMemberContactsStore *)self familyMember];
  v6 = [(CNUICoreFamilyMemberContactsStore *)self familyMemberScopedContactStore];
  v7 = MEMORY[0x1E6996720];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__CNUICoreFamilyMemberContactsStore_contactsFoundAndNotFoundInFamilyMemberContainerFuture___block_invoke;
  v15[3] = &unk_1E76E9260;
  v16 = v6;
  v17 = v4;
  v18 = v5;
  v8 = v5;
  v9 = v4;
  v10 = v6;
  v11 = [(CNUICoreFamilyMemberContactsStore *)self backgroundOrImmediateScheduler];
  v12 = [(CNUICoreFamilyMemberContactsStore *)self schedulerProvider];
  v13 = [v7 futureWithBlock:v15 scheduler:v11 schedulerProvider:v12];

  return v13;
}

id __91__CNUICoreFamilyMemberContactsStore_contactsFoundAndNotFoundInFamilyMemberContainerFuture___block_invoke(void *a1, void *a2)
{
  v4 = [[CNUICoreContactRefetcher alloc] initWithContactStore:a1[4] contactsToRefetch:a1[5]];
  v5 = [(CNUICoreContactRefetcher *)v4 contactsFoundAndNotFound];
  if ([v5 isSuccess])
  {
    v6 = [v5 value];
  }

  else
  {
    v7 = +[CNUIDowntimeLogger sharedLogger];
    v8 = MEMORY[0x1E6996810];
    v9 = [v5 error];
    v10 = [v8 resultWithValue:0 orError:v9];
    [v7 logResultOfFetchingContacts:v10 ofFamilyMember:a1[6]];

    v11 = [v5 error];
    if (a2)
    {
      v11 = v11;
      *a2 = v11;
    }

    v6 = 0;
  }

  return v6;
}

- (id)updateContactWhitelistByRemovingContacts:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNUICoreFamilyMemberContactsStore initWithFamilyMemberScopedContactStoreFacade:familyMember:contactsSyncTrigger:schedulerProvider:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreFamilyMemberContactsStore updateContactWhitelistByRemovingContacts:];
    }
  }

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v5 = [MEMORY[0x1E6996720] futureWithResult:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v6 = [(CNUICoreFamilyMemberContactsStore *)self familyMember];
    v7 = [(CNUICoreFamilyMemberContactsStore *)self familyMemberScopedContactStore];
    v8 = MEMORY[0x1E6996720];
    v14 = MEMORY[0x1E69E9820];
    v15 = v7;
    v16 = v4;
    v17 = self;
    v18 = v6;
    v9 = v6;
    v10 = v7;
    v11 = [(CNUICoreFamilyMemberContactsStore *)self backgroundOrImmediateScheduler:v14];
    v12 = [(CNUICoreFamilyMemberContactsStore *)self schedulerProvider];
    v5 = [v8 futureWithBlock:&v14 scheduler:v11 schedulerProvider:v12];
  }

  return v5;
}

id __78__CNUICoreFamilyMemberContactsStore_updateContactWhitelistByRemovingContacts___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [CNUICoreFamilyMemberSaveRequestFactory saveRequestToUpdateContactWhitelistByRemovingContacts:*(a1 + 40)];
  v14 = 0;
  v6 = [v4 executeSaveRequest:v5 error:&v14];
  v7 = v14;

  if (!v6)
  {
    v11 = +[CNUIDowntimeLogger sharedLogger];
    [v11 logFailure:v7 updatingContactWhitelistByRemovingContacts:*(a1 + 40) ofFamilyMember:*(a1 + 56)];

    v10 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [*(a1 + 48) triggerContactsSyncRequest];
  v8 = +[CNUIDowntimeLogger sharedLogger];
  [v8 logSuccessUpdatingContactWhitelistByRemovingContacts:*(a1 + 40) ofFamilyMember:*(a1 + 56)];

  v9 = *(a1 + 40);
  v10 = v9;
  if (a2 && !v9)
  {
LABEL_6:
    v12 = v7;
    *a2 = v7;
  }

LABEL_7:

  return v10;
}

@end