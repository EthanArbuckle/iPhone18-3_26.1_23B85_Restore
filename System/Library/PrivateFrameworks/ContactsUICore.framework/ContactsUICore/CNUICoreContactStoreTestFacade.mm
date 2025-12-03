@interface CNUICoreContactStoreTestFacade
+ (id)contactsBySimulatingExecutionOfSaveRequest:(id)request onContacts:(id)contacts;
- (BOOL)enumerateContactsWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block;
- (BOOL)executeSaveRequest:(id)request error:(id *)error;
- (CNUICoreContactStoreTestFacade)init;
- (CNUICoreContactStoreTestFacade)initWithContacts:(id)contacts;
- (CNUICoreContactStoreTestFacade)initWithMeContact:(id)contact contacts:(id)contacts;
- (CNUICoreContactStoreTestFacade)initWithSaveError:(id)error fetchError:(id)fetchError;
- (id)_crossPlatformUnifiedMeContactWithKeysToFetch:(id)fetch error:(id *)error;
- (void)commonInitWithMeContact:(id)contact contacts:(id)contacts saveError:(id)error fetchError:(id)fetchError;
@end

@implementation CNUICoreContactStoreTestFacade

- (CNUICoreContactStoreTestFacade)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreContactStoreTestFacade)initWithSaveError:(id)error fetchError:(id)fetchError
{
  errorCopy = error;
  fetchErrorCopy = fetchError;
  v12.receiver = self;
  v12.super_class = CNUICoreContactStoreTestFacade;
  v8 = [(CNUICoreContactStoreTestFacade *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(CNUICoreContactStoreTestFacade *)v8 commonInitWithMeContact:0 contacts:0 saveError:errorCopy fetchError:fetchErrorCopy];
    v10 = v9;
  }

  return v9;
}

- (CNUICoreContactStoreTestFacade)initWithContacts:(id)contacts
{
  contactsCopy = contacts;
  if (!contactsCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_14 != -1)
    {
      [CNUICoreContactStoreTestFacade initWithContacts:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_14;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_14, OS_LOG_TYPE_FAULT))
    {
      [(CNUICoreContactStoreTestFacade *)v5 initWithContacts:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v17.receiver = self;
  v17.super_class = CNUICoreContactStoreTestFacade;
  v13 = [(CNUICoreContactStoreTestFacade *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(CNUICoreContactStoreTestFacade *)v13 commonInitWithMeContact:0 contacts:contactsCopy saveError:0 fetchError:0];
    v15 = v14;
  }

  return v14;
}

- (CNUICoreContactStoreTestFacade)initWithMeContact:(id)contact contacts:(id)contacts
{
  contactCopy = contact;
  contactsCopy = contacts;
  if (!contactCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_14 != -1)
    {
      [CNUICoreContactStoreTestFacade initWithContacts:];
    }

    v8 = CNGuardOSLog_cn_once_object_0_14;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_14, OS_LOG_TYPE_FAULT))
    {
      [(CNUICoreContactStoreTestFacade *)v8 initWithMeContact:v9 contacts:v10, v11, v12, v13, v14, v15];
    }
  }

  v20.receiver = self;
  v20.super_class = CNUICoreContactStoreTestFacade;
  v16 = [(CNUICoreContactStoreTestFacade *)&v20 init];
  v17 = v16;
  if (v16)
  {
    [(CNUICoreContactStoreTestFacade *)v16 commonInitWithMeContact:contactCopy contacts:contactsCopy saveError:0 fetchError:0];
    v18 = v17;
  }

  return v17;
}

- (void)commonInitWithMeContact:(id)contact contacts:(id)contacts saveError:(id)error fetchError:(id)fetchError
{
  contactCopy = contact;
  contactsCopy = contacts;
  errorCopy = error;
  fetchErrorCopy = fetchError;
  meContact = self->_meContact;
  self->_meContact = contactCopy;
  v25 = contactCopy;

  contacts = self->_contacts;
  self->_contacts = contactsCopy;
  v16 = contactsCopy;

  saveError = self->_saveError;
  self->_saveError = errorCopy;
  v18 = errorCopy;

  fetchError = self->_fetchError;
  self->_fetchError = fetchErrorCopy;
  v20 = fetchErrorCopy;

  array = [MEMORY[0x1E695DEC8] array];
  executedSaveRequests = self->_executedSaveRequests;
  self->_executedSaveRequests = array;

  array2 = [MEMORY[0x1E695DEC8] array];
  executedFetchRequests = self->_executedFetchRequests;
  self->_executedFetchRequests = array2;
}

- (id)_crossPlatformUnifiedMeContactWithKeysToFetch:(id)fetch error:(id *)error
{
  fetchCopy = fetch;
  meContact = [(CNUICoreContactStoreTestFacade *)self meContact];

  if (meContact)
  {
    meContact2 = [(CNUICoreContactStoreTestFacade *)self meContact];
    v9 = [meContact2 copyWithPropertyKeys:fetchCopy];
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6996478] code:1 userInfo:MEMORY[0x1E695E0F8]];
    meContact2 = v10;
    if (error)
    {
      v11 = v10;
      v9 = 0;
      *error = meContact2;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)enumerateContactsWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fetchError = [(CNUICoreContactStoreTestFacade *)selfCopy fetchError];

  if (fetchError)
  {
    fetchError2 = [(CNUICoreContactStoreTestFacade *)selfCopy fetchError];
    if (error)
    {
      fetchError2 = fetchError2;
      *error = fetchError2;
    }
  }

  else
  {
    executedFetchRequests = [(CNUICoreContactStoreTestFacade *)selfCopy executedFetchRequests];
    v14 = [executedFetchRequests arrayByAddingObject:requestCopy];
    [(CNUICoreContactStoreTestFacade *)selfCopy setExecutedFetchRequests:v14];

    contacts = [(CNUICoreContactStoreTestFacade *)selfCopy contacts];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __85__CNUICoreContactStoreTestFacade_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke;
    v17[3] = &unk_1E76E9598;
    v18 = blockCopy;
    [contacts _cn_each:v17];
  }

  objc_sync_exit(selfCopy);

  return fetchError == 0;
}

uint64_t __85__CNUICoreContactStoreTestFacade_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, &v3);
  }

  return result;
}

- (BOOL)executeSaveRequest:(id)request error:(id *)error
{
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  saveError = [(CNUICoreContactStoreTestFacade *)selfCopy saveError];

  if (saveError)
  {
    saveError2 = [(CNUICoreContactStoreTestFacade *)selfCopy saveError];
    contacts = saveError2;
    if (error)
    {
      v11 = saveError2;
      *error = contacts;
    }
  }

  else
  {
    executedSaveRequests = [(CNUICoreContactStoreTestFacade *)selfCopy executedSaveRequests];
    v13 = [executedSaveRequests arrayByAddingObject:requestCopy];
    [(CNUICoreContactStoreTestFacade *)selfCopy setExecutedSaveRequests:v13];

    v14 = objc_opt_class();
    contacts = [(CNUICoreContactStoreTestFacade *)selfCopy contacts];
    v15 = [v14 contactsBySimulatingExecutionOfSaveRequest:requestCopy onContacts:contacts];
    [(CNUICoreContactStoreTestFacade *)selfCopy setContacts:v15];
  }

  objc_sync_exit(selfCopy);
  return saveError == 0;
}

+ (id)contactsBySimulatingExecutionOfSaveRequest:(id)request onContacts:(id)contacts
{
  contactsCopy = contacts;
  requestCopy = request;
  deletedContacts = [requestCopy deletedContacts];
  v8 = [deletedContacts _cn_indexBy:&__block_literal_global_48];

  updatedContacts = [requestCopy updatedContacts];
  v10 = [updatedContacts _cn_indexBy:&__block_literal_global_48];

  addedContactsByContainerIdentifier = [requestCopy addedContactsByContainerIdentifier];

  allValues = [addedContactsByContainerIdentifier allValues];
  _cn_flatten = [allValues _cn_flatten];
  v14 = [_cn_flatten _cn_indexBy:&__block_literal_global_48];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __88__CNUICoreContactStoreTestFacade_contactsBySimulatingExecutionOfSaveRequest_onContacts___block_invoke_2;
  v27[3] = &unk_1E76E81C0;
  v28 = v8;
  v15 = v8;
  v16 = [contactsCopy _cn_filter:v27];

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __88__CNUICoreContactStoreTestFacade_contactsBySimulatingExecutionOfSaveRequest_onContacts___block_invoke_3;
  v25 = &unk_1E76E8198;
  v26 = v10;
  v17 = v10;
  v18 = [v16 _cn_map:&v22];
  allValues2 = [v14 allValues];
  v20 = [v18 arrayByAddingObjectsFromArray:allValues2];

  return v20;
}

BOOL __88__CNUICoreContactStoreTestFacade_contactsBySimulatingExecutionOfSaveRequest_onContacts___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 == 0;

  return v5;
}

void *__88__CNUICoreContactStoreTestFacade_contactsBySimulatingExecutionOfSaveRequest_onContacts___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

@end