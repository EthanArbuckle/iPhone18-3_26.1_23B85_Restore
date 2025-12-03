@interface CNUICoreFamilyInfoRetriever
+ (id)contactsMatchingFamilyMember:(id)member inContactStore:(id)store;
+ (id)familyCircleFromRequest:(id)request schedulerProvider:(id)provider;
+ (id)familyInfoWithFamilyMembers:(id)members meContact:(id)contact;
+ (id)familyInfoWithFamilyMembers:(id)members meContact:(id)contact matchedWithContactsInContactStore:(id)store;
+ (id)meContactFromStore:(id)store schedulerProvider:(id)provider;
- (CNUICoreFamilyInfoRetriever)init;
- (CNUICoreFamilyInfoRetriever)initWithMainContactStoreFacade:(id)facade fetchFamilyCircleRequest:(id)request matchFamilyMembersWithContacts:(BOOL)contacts schedulerProvider:(id)provider;
- (CNUICoreFamilyInfoRetriever)initWithMainContactStoreFacade:(id)facade matchFamilyMembersWithContacts:(BOOL)contacts schedulerProvider:(id)provider;
- (id)createFamilyFuture;
- (id)familyInfo;
@end

@implementation CNUICoreFamilyInfoRetriever

- (CNUICoreFamilyInfoRetriever)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreFamilyInfoRetriever)initWithMainContactStoreFacade:(id)facade matchFamilyMembersWithContacts:(BOOL)contacts schedulerProvider:(id)provider
{
  contactsCopy = contacts;
  v8 = MEMORY[0x1E699C070];
  providerCopy = provider;
  facadeCopy = facade;
  v11 = objc_alloc_init(v8);
  [v11 setPromptUserToResolveAuthenticatonFailure:0];
  v12 = [(CNUICoreFamilyInfoRetriever *)self initWithMainContactStoreFacade:facadeCopy fetchFamilyCircleRequest:v11 matchFamilyMembersWithContacts:contactsCopy schedulerProvider:providerCopy];

  return v12;
}

- (CNUICoreFamilyInfoRetriever)initWithMainContactStoreFacade:(id)facade fetchFamilyCircleRequest:(id)request matchFamilyMembersWithContacts:(BOOL)contacts schedulerProvider:(id)provider
{
  facadeCopy = facade;
  requestCopy = request;
  providerCopy = provider;
  if (facadeCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_12 != -1)
  {
    [CNUICoreFamilyInfoRetriever initWithMainContactStoreFacade:fetchFamilyCircleRequest:matchFamilyMembersWithContacts:schedulerProvider:];
  }

  v14 = CNGuardOSLog_cn_once_object_0_12;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_12, OS_LOG_TYPE_FAULT))
  {
    [(CNUICoreFamilyInfoRetriever *)v14 initWithMainContactStoreFacade:v15 fetchFamilyCircleRequest:v16 matchFamilyMembersWithContacts:v17 schedulerProvider:v18, v19, v20, v21];
    if (requestCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (requestCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_12 != -1)
  {
    [CNUICoreFamilyInfoRetriever initWithMainContactStoreFacade:fetchFamilyCircleRequest:matchFamilyMembersWithContacts:schedulerProvider:];
  }

  v22 = CNGuardOSLog_cn_once_object_0_12;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_12, OS_LOG_TYPE_FAULT))
  {
    [(CNUICoreFamilyInfoRetriever *)v22 initWithMainContactStoreFacade:v23 fetchFamilyCircleRequest:v24 matchFamilyMembersWithContacts:v25 schedulerProvider:v26, v27, v28, v29];
  }

LABEL_10:
  if (!providerCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_12 != -1)
    {
      [CNUICoreFamilyInfoRetriever initWithMainContactStoreFacade:fetchFamilyCircleRequest:matchFamilyMembersWithContacts:schedulerProvider:];
    }

    v30 = CNGuardOSLog_cn_once_object_0_12;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_12, OS_LOG_TYPE_FAULT))
    {
      [(CNUICoreFamilyMemberContactsModelRetriever *)v30 initWithContactStoreFacade:v31 familyInfoFetcher:v32 downtimeContainerFetcher:v33 schedulerProvider:v34, v35, v36, v37];
    }
  }

  v42.receiver = self;
  v42.super_class = CNUICoreFamilyInfoRetriever;
  v38 = [(CNUICoreFamilyInfoRetriever *)&v42 init];
  v39 = v38;
  if (v38)
  {
    objc_storeStrong(&v38->_mainContactStore, facade);
    objc_storeStrong(&v39->_fetchFamilyCircleRequest, request);
    v39->_matchFamilyMembersWithContacts = contacts;
    objc_storeStrong(&v39->_schedulerProvider, provider);
    v40 = v39;
  }

  return v39;
}

- (id)familyInfo
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __41__CNUICoreFamilyInfoRetriever_familyInfo__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[5];
  if (!v3)
  {
    v4 = [v2 createFamilyFuture];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(*(a1 + 32) + 40);
  }

  return v3;
}

- (id)createFamilyFuture
{
  v18[2] = *MEMORY[0x1E69E9840];
  matchFamilyMembersWithContacts = [(CNUICoreFamilyInfoRetriever *)self matchFamilyMembersWithContacts];
  schedulerProvider = [(CNUICoreFamilyInfoRetriever *)self schedulerProvider];
  mainContactStore = [(CNUICoreFamilyInfoRetriever *)self mainContactStore];
  v6 = [objc_opt_class() meContactFromStore:mainContactStore schedulerProvider:schedulerProvider];
  v18[0] = v6;
  v7 = objc_opt_class();
  fetchFamilyCircleRequest = [(CNUICoreFamilyInfoRetriever *)self fetchFamilyCircleRequest];
  v9 = [v7 familyCircleFromRequest:fetchFamilyCircleRequest schedulerProvider:schedulerProvider];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v11 = [MEMORY[0x1E6996720] join:v10];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__CNUICoreFamilyInfoRetriever_createFamilyFuture__block_invoke;
  v15[3] = &unk_1E76E94A0;
  v17 = matchFamilyMembersWithContacts;
  v16 = mainContactStore;
  v12 = mainContactStore;
  v13 = [v11 flatMap:v15 schedulerProvider:schedulerProvider];

  return v13;
}

id __49__CNUICoreFamilyInfoRetriever_createFamilyFuture__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 firstObject];
  v5 = [v3 lastObject];

  v6 = [v5 members];
  v7 = [MEMORY[0x1E695DFB0] null];

  if (v4 == v7)
  {

    v4 = 0;
  }

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {

    v6 = MEMORY[0x1E695E0F0];
  }

  v8 = MEMORY[0x1E6996720];
  if (*(a1 + 40) == 1)
  {
    [CNUICoreFamilyInfoRetriever familyInfoWithFamilyMembers:v6 meContact:v4 matchedWithContactsInContactStore:*(a1 + 32)];
  }

  else
  {
    [CNUICoreFamilyInfoRetriever familyInfoWithFamilyMembers:v6 meContact:v4];
  }
  v9 = ;
  v10 = [v8 futureWithResult:v9];

  return v10;
}

+ (id)meContactFromStore:(id)store schedulerProvider:(id)provider
{
  storeCopy = store;
  providerCopy = provider;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [providerCopy backgroundScheduler];
  }

  else
  {
    [providerCopy immediateScheduler];
  }
  v7 = ;
  v8 = MEMORY[0x1E6996720];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__CNUICoreFamilyInfoRetriever_meContactFromStore_schedulerProvider___block_invoke;
  v13[3] = &unk_1E76E94C8;
  v14 = storeCopy;
  v9 = storeCopy;
  v10 = [v8 futureWithBlock:v13 scheduler:v7 schedulerProvider:providerCopy];
  v11 = [v10 recover:&__block_literal_global_45 schedulerProvider:providerCopy];

  return v11;
}

id __68__CNUICoreFamilyInfoRetriever_meContactFromStore_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = +[CNUICoreFamilyInfoRetriever keysToFetch];
  v11 = 0;
  v5 = [v3 _crossPlatformUnifiedMeContactWithKeysToFetch:v4 error:&v11];
  v6 = v11;

  v7 = (*(*MEMORY[0x1E6996588] + 16))();
  v8 = v7;
  if (a2 && !v7)
  {
    v9 = v6;
    *a2 = v6;
  }

  return v8;
}

id __68__CNUICoreFamilyInfoRetriever_meContactFromStore_schedulerProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUIDowntimeLogger sharedLogger];
  [v3 logFetchingMeError:v2];

  v4 = MEMORY[0x1E6996720];
  v5 = [MEMORY[0x1E695DFB0] null];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

+ (id)familyCircleFromRequest:(id)request schedulerProvider:(id)provider
{
  v5 = MEMORY[0x1E69967D0];
  providerCopy = provider;
  requestCopy = request;
  v8 = [[v5 alloc] initWithSchedulerProvider:providerCopy];
  completionHandlerAdapter = [v8 completionHandlerAdapter];
  [requestCopy startRequestWithCompletionHandler:completionHandlerAdapter];

  future = [v8 future];
  v11 = [future recover:&__block_literal_global_31 schedulerProvider:providerCopy];

  return v11;
}

id __73__CNUICoreFamilyInfoRetriever_familyCircleFromRequest_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUIDowntimeLogger sharedLogger];
  [v3 logFetchingFamilyCircleError:v2];

  v4 = MEMORY[0x1E6996720];
  v5 = objc_alloc_init(MEMORY[0x1E699C050]);
  v6 = [v4 futureWithResult:v5];

  return v6;
}

+ (id)familyInfoWithFamilyMembers:(id)members meContact:(id)contact
{
  contactCopy = contact;
  v6 = [members _cn_map:&__block_literal_global_35_2];
  v7 = [[CNUICoreFamilyInfo alloc] initWithMeContact:contactCopy elements:v6];

  return v7;
}

CNUICoreFamilyElement *__69__CNUICoreFamilyInfoRetriever_familyInfoWithFamilyMembers_meContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CNUICoreFamilyElement alloc];
  v4 = [(CNUICoreFamilyElement *)v3 initWithFamilyMember:v2 matchingContacts:MEMORY[0x1E695E0F0]];

  return v4;
}

+ (id)familyInfoWithFamilyMembers:(id)members meContact:(id)contact matchedWithContactsInContactStore:(id)store
{
  storeCopy = store;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __103__CNUICoreFamilyInfoRetriever_familyInfoWithFamilyMembers_meContact_matchedWithContactsInContactStore___block_invoke;
  v18 = &unk_1E76E9530;
  v19 = storeCopy;
  selfCopy = self;
  v9 = storeCopy;
  contactCopy = contact;
  v11 = [members _cn_map:&v15];
  v12 = [CNUICoreFamilyInfo alloc];
  v13 = [(CNUICoreFamilyInfo *)v12 initWithMeContact:contactCopy elements:v11, v15, v16, v17, v18];

  return v13;
}

CNUICoreFamilyElement *__103__CNUICoreFamilyInfoRetriever_familyInfoWithFamilyMembers_meContact_matchedWithContactsInContactStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNUICoreFamilyElement alloc];
  v5 = [*(a1 + 40) contactsMatchingFamilyMember:v3 inContactStore:*(a1 + 32)];
  v6 = [(CNUICoreFamilyElement *)v4 initWithFamilyMember:v3 matchingContacts:v5];

  return v6;
}

+ (id)contactsMatchingFamilyMember:(id)member inContactStore:(id)store
{
  v5 = MEMORY[0x1E695CD78];
  storeCopy = store;
  memberCopy = member;
  v8 = [v5 alloc];
  v9 = +[CNUICoreFamilyInfoRetriever keysToFetch];
  v10 = [v8 initWithKeysToFetch:v9];

  [v10 setUnifyResults:0];
  v11 = MEMORY[0x1E695CD58];
  v12 = [CNUICoreContactMatcher nameFromFammilyMember:memberCopy];

  v13 = [v11 predicateForContactsMatchingName:v12];
  [v10 setPredicate:v13];

  v14 = [CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:v10 fromStore:storeCopy];

  if ([v14 isSuccess])
  {
    value = [v14 value];
  }

  else
  {
    value = MEMORY[0x1E695E0F0];
  }

  return value;
}

@end