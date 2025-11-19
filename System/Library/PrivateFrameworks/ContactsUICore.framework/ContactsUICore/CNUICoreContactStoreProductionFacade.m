@interface CNUICoreContactStoreProductionFacade
- (BOOL)enumerateContactsWithFetchRequest:(id)a3 error:(id *)a4 usingBlock:(id)a5;
- (BOOL)executeSaveRequest:(id)a3 error:(id *)a4;
- (CNUICoreContactStoreProductionFacade)init;
- (CNUICoreContactStoreProductionFacade)initWithContactStore:(id)a3;
- (id)_crossPlatformUnifiedMeContactWithKeysToFetch:(id)a3 error:(id *)a4;
- (id)containerForContact:(id)a3;
@end

@implementation CNUICoreContactStoreProductionFacade

- (CNUICoreContactStoreProductionFacade)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreContactStoreProductionFacade)initWithContactStore:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    if (CNGuardOSLog_cn_once_token_0_14 != -1)
    {
      [CNUICoreContactStoreTestFacade initWithContacts:];
    }

    v6 = CNGuardOSLog_cn_once_object_0_14;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_14, OS_LOG_TYPE_FAULT))
    {
      [(CNUICoreContactRefetcher *)v6 initWithContactStore:v7 contactsToRefetch:v8 keysToFetch:v9, v10, v11, v12, v13];
    }
  }

  v18.receiver = self;
  v18.super_class = CNUICoreContactStoreProductionFacade;
  v14 = [(CNUICoreContactStoreProductionFacade *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_contactStore, a3);
    v16 = v15;
  }

  return v15;
}

- (id)_crossPlatformUnifiedMeContactWithKeysToFetch:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNUICoreContactStoreProductionFacade *)self contactStore];
  v8 = [v7 _crossPlatformUnifiedMeContactWithKeysToFetch:v6 error:a4];

  return v8;
}

- (BOOL)enumerateContactsWithFetchRequest:(id)a3 error:(id *)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(CNUICoreContactStoreProductionFacade *)self contactStore];
  LOBYTE(a4) = [v10 enumerateContactsWithFetchRequest:v9 error:a4 usingBlock:v8];

  return a4;
}

- (BOOL)executeSaveRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNUICoreContactStoreProductionFacade *)self contactStore];
  LOBYTE(a4) = [v7 executeSaveRequest:v6 error:a4];

  return a4;
}

- (id)containerForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreContactStoreProductionFacade *)self contactStore];
  v6 = MEMORY[0x1E695CE48];
  v7 = [v4 identifier];

  v8 = [v6 predicateForContainerOfContactWithIdentifier:v7];
  v9 = [v5 containersMatchingPredicate:v8 error:0];
  v10 = [v9 firstObject];

  return v10;
}

@end