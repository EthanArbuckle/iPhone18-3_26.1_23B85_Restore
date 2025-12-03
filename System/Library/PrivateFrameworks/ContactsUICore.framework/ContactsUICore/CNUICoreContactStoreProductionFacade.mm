@interface CNUICoreContactStoreProductionFacade
- (BOOL)enumerateContactsWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block;
- (BOOL)executeSaveRequest:(id)request error:(id *)error;
- (CNUICoreContactStoreProductionFacade)init;
- (CNUICoreContactStoreProductionFacade)initWithContactStore:(id)store;
- (id)_crossPlatformUnifiedMeContactWithKeysToFetch:(id)fetch error:(id *)error;
- (id)containerForContact:(id)contact;
@end

@implementation CNUICoreContactStoreProductionFacade

- (CNUICoreContactStoreProductionFacade)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreContactStoreProductionFacade)initWithContactStore:(id)store
{
  storeCopy = store;
  if (!storeCopy)
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
    objc_storeStrong(&v14->_contactStore, store);
    v16 = v15;
  }

  return v15;
}

- (id)_crossPlatformUnifiedMeContactWithKeysToFetch:(id)fetch error:(id *)error
{
  fetchCopy = fetch;
  contactStore = [(CNUICoreContactStoreProductionFacade *)self contactStore];
  v8 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:fetchCopy error:error];

  return v8;
}

- (BOOL)enumerateContactsWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  contactStore = [(CNUICoreContactStoreProductionFacade *)self contactStore];
  LOBYTE(error) = [contactStore enumerateContactsWithFetchRequest:requestCopy error:error usingBlock:blockCopy];

  return error;
}

- (BOOL)executeSaveRequest:(id)request error:(id *)error
{
  requestCopy = request;
  contactStore = [(CNUICoreContactStoreProductionFacade *)self contactStore];
  LOBYTE(error) = [contactStore executeSaveRequest:requestCopy error:error];

  return error;
}

- (id)containerForContact:(id)contact
{
  contactCopy = contact;
  contactStore = [(CNUICoreContactStoreProductionFacade *)self contactStore];
  v6 = MEMORY[0x1E695CE48];
  identifier = [contactCopy identifier];

  v8 = [v6 predicateForContainerOfContactWithIdentifier:identifier];
  v9 = [contactStore containersMatchingPredicate:v8 error:0];
  firstObject = [v9 firstObject];

  return firstObject;
}

@end