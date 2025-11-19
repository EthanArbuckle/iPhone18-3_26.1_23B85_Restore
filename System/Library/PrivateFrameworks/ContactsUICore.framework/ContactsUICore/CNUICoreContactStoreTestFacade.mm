@interface CNUICoreContactStoreTestFacade
+ (id)contactsBySimulatingExecutionOfSaveRequest:(id)a3 onContacts:(id)a4;
- (BOOL)enumerateContactsWithFetchRequest:(id)a3 error:(id *)a4 usingBlock:(id)a5;
- (BOOL)executeSaveRequest:(id)a3 error:(id *)a4;
- (CNUICoreContactStoreTestFacade)init;
- (CNUICoreContactStoreTestFacade)initWithContacts:(id)a3;
- (CNUICoreContactStoreTestFacade)initWithMeContact:(id)a3 contacts:(id)a4;
- (CNUICoreContactStoreTestFacade)initWithSaveError:(id)a3 fetchError:(id)a4;
- (id)_crossPlatformUnifiedMeContactWithKeysToFetch:(id)a3 error:(id *)a4;
- (void)commonInitWithMeContact:(id)a3 contacts:(id)a4 saveError:(id)a5 fetchError:(id)a6;
@end

@implementation CNUICoreContactStoreTestFacade

- (CNUICoreContactStoreTestFacade)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreContactStoreTestFacade)initWithSaveError:(id)a3 fetchError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CNUICoreContactStoreTestFacade;
  v8 = [(CNUICoreContactStoreTestFacade *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(CNUICoreContactStoreTestFacade *)v8 commonInitWithMeContact:0 contacts:0 saveError:v6 fetchError:v7];
    v10 = v9;
  }

  return v9;
}

- (CNUICoreContactStoreTestFacade)initWithContacts:(id)a3
{
  v4 = a3;
  if (!v4)
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
    [(CNUICoreContactStoreTestFacade *)v13 commonInitWithMeContact:0 contacts:v4 saveError:0 fetchError:0];
    v15 = v14;
  }

  return v14;
}

- (CNUICoreContactStoreTestFacade)initWithMeContact:(id)a3 contacts:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
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
    [(CNUICoreContactStoreTestFacade *)v16 commonInitWithMeContact:v6 contacts:v7 saveError:0 fetchError:0];
    v18 = v17;
  }

  return v17;
}

- (void)commonInitWithMeContact:(id)a3 contacts:(id)a4 saveError:(id)a5 fetchError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  meContact = self->_meContact;
  self->_meContact = v10;
  v25 = v10;

  contacts = self->_contacts;
  self->_contacts = v11;
  v16 = v11;

  saveError = self->_saveError;
  self->_saveError = v12;
  v18 = v12;

  fetchError = self->_fetchError;
  self->_fetchError = v13;
  v20 = v13;

  v21 = [MEMORY[0x1E695DEC8] array];
  executedSaveRequests = self->_executedSaveRequests;
  self->_executedSaveRequests = v21;

  v23 = [MEMORY[0x1E695DEC8] array];
  executedFetchRequests = self->_executedFetchRequests;
  self->_executedFetchRequests = v23;
}

- (id)_crossPlatformUnifiedMeContactWithKeysToFetch:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNUICoreContactStoreTestFacade *)self meContact];

  if (v7)
  {
    v8 = [(CNUICoreContactStoreTestFacade *)self meContact];
    v9 = [v8 copyWithPropertyKeys:v6];
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6996478] code:1 userInfo:MEMORY[0x1E695E0F8]];
    v8 = v10;
    if (a4)
    {
      v11 = v10;
      v9 = 0;
      *a4 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)enumerateContactsWithFetchRequest:(id)a3 error:(id *)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(CNUICoreContactStoreTestFacade *)v10 fetchError];

  if (v11)
  {
    v12 = [(CNUICoreContactStoreTestFacade *)v10 fetchError];
    if (a4)
    {
      v12 = v12;
      *a4 = v12;
    }
  }

  else
  {
    v13 = [(CNUICoreContactStoreTestFacade *)v10 executedFetchRequests];
    v14 = [v13 arrayByAddingObject:v8];
    [(CNUICoreContactStoreTestFacade *)v10 setExecutedFetchRequests:v14];

    v15 = [(CNUICoreContactStoreTestFacade *)v10 contacts];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __85__CNUICoreContactStoreTestFacade_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke;
    v17[3] = &unk_1E76E9598;
    v18 = v9;
    [v15 _cn_each:v17];
  }

  objc_sync_exit(v10);

  return v11 == 0;
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

- (BOOL)executeSaveRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(CNUICoreContactStoreTestFacade *)v7 saveError];

  if (v8)
  {
    v9 = [(CNUICoreContactStoreTestFacade *)v7 saveError];
    v10 = v9;
    if (a4)
    {
      v11 = v9;
      *a4 = v10;
    }
  }

  else
  {
    v12 = [(CNUICoreContactStoreTestFacade *)v7 executedSaveRequests];
    v13 = [v12 arrayByAddingObject:v6];
    [(CNUICoreContactStoreTestFacade *)v7 setExecutedSaveRequests:v13];

    v14 = objc_opt_class();
    v10 = [(CNUICoreContactStoreTestFacade *)v7 contacts];
    v15 = [v14 contactsBySimulatingExecutionOfSaveRequest:v6 onContacts:v10];
    [(CNUICoreContactStoreTestFacade *)v7 setContacts:v15];
  }

  objc_sync_exit(v7);
  return v8 == 0;
}

+ (id)contactsBySimulatingExecutionOfSaveRequest:(id)a3 onContacts:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 deletedContacts];
  v8 = [v7 _cn_indexBy:&__block_literal_global_48];

  v9 = [v6 updatedContacts];
  v10 = [v9 _cn_indexBy:&__block_literal_global_48];

  v11 = [v6 addedContactsByContainerIdentifier];

  v12 = [v11 allValues];
  v13 = [v12 _cn_flatten];
  v14 = [v13 _cn_indexBy:&__block_literal_global_48];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __88__CNUICoreContactStoreTestFacade_contactsBySimulatingExecutionOfSaveRequest_onContacts___block_invoke_2;
  v27[3] = &unk_1E76E81C0;
  v28 = v8;
  v15 = v8;
  v16 = [v5 _cn_filter:v27];

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __88__CNUICoreContactStoreTestFacade_contactsBySimulatingExecutionOfSaveRequest_onContacts___block_invoke_3;
  v25 = &unk_1E76E8198;
  v26 = v10;
  v17 = v10;
  v18 = [v16 _cn_map:&v22];
  v19 = [v14 allValues];
  v20 = [v18 arrayByAddingObjectsFromArray:v19];

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