@interface CNUICoreFamilyInfoRetriever
+ (id)contactsMatchingFamilyMember:(id)a3 inContactStore:(id)a4;
+ (id)familyCircleFromRequest:(id)a3 schedulerProvider:(id)a4;
+ (id)familyInfoWithFamilyMembers:(id)a3 meContact:(id)a4;
+ (id)familyInfoWithFamilyMembers:(id)a3 meContact:(id)a4 matchedWithContactsInContactStore:(id)a5;
+ (id)meContactFromStore:(id)a3 schedulerProvider:(id)a4;
- (CNUICoreFamilyInfoRetriever)init;
- (CNUICoreFamilyInfoRetriever)initWithMainContactStoreFacade:(id)a3 fetchFamilyCircleRequest:(id)a4 matchFamilyMembersWithContacts:(BOOL)a5 schedulerProvider:(id)a6;
- (CNUICoreFamilyInfoRetriever)initWithMainContactStoreFacade:(id)a3 matchFamilyMembersWithContacts:(BOOL)a4 schedulerProvider:(id)a5;
- (id)createFamilyFuture;
- (id)familyInfo;
@end

@implementation CNUICoreFamilyInfoRetriever

- (CNUICoreFamilyInfoRetriever)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreFamilyInfoRetriever)initWithMainContactStoreFacade:(id)a3 matchFamilyMembersWithContacts:(BOOL)a4 schedulerProvider:(id)a5
{
  v5 = a4;
  v8 = MEMORY[0x1E699C070];
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  [v11 setPromptUserToResolveAuthenticatonFailure:0];
  v12 = [(CNUICoreFamilyInfoRetriever *)self initWithMainContactStoreFacade:v10 fetchFamilyCircleRequest:v11 matchFamilyMembersWithContacts:v5 schedulerProvider:v9];

  return v12;
}

- (CNUICoreFamilyInfoRetriever)initWithMainContactStoreFacade:(id)a3 fetchFamilyCircleRequest:(id)a4 matchFamilyMembersWithContacts:(BOOL)a5 schedulerProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
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
  if (!v13)
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
    objc_storeStrong(&v38->_mainContactStore, a3);
    objc_storeStrong(&v39->_fetchFamilyCircleRequest, a4);
    v39->_matchFamilyMembersWithContacts = a5;
    objc_storeStrong(&v39->_schedulerProvider, a6);
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
  v3 = [(CNUICoreFamilyInfoRetriever *)self matchFamilyMembersWithContacts];
  v4 = [(CNUICoreFamilyInfoRetriever *)self schedulerProvider];
  v5 = [(CNUICoreFamilyInfoRetriever *)self mainContactStore];
  v6 = [objc_opt_class() meContactFromStore:v5 schedulerProvider:v4];
  v18[0] = v6;
  v7 = objc_opt_class();
  v8 = [(CNUICoreFamilyInfoRetriever *)self fetchFamilyCircleRequest];
  v9 = [v7 familyCircleFromRequest:v8 schedulerProvider:v4];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v11 = [MEMORY[0x1E6996720] join:v10];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__CNUICoreFamilyInfoRetriever_createFamilyFuture__block_invoke;
  v15[3] = &unk_1E76E94A0;
  v17 = v3;
  v16 = v5;
  v12 = v5;
  v13 = [v11 flatMap:v15 schedulerProvider:v4];

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

+ (id)meContactFromStore:(id)a3 schedulerProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [v6 backgroundScheduler];
  }

  else
  {
    [v6 immediateScheduler];
  }
  v7 = ;
  v8 = MEMORY[0x1E6996720];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__CNUICoreFamilyInfoRetriever_meContactFromStore_schedulerProvider___block_invoke;
  v13[3] = &unk_1E76E94C8;
  v14 = v5;
  v9 = v5;
  v10 = [v8 futureWithBlock:v13 scheduler:v7 schedulerProvider:v6];
  v11 = [v10 recover:&__block_literal_global_45 schedulerProvider:v6];

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

+ (id)familyCircleFromRequest:(id)a3 schedulerProvider:(id)a4
{
  v5 = MEMORY[0x1E69967D0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithSchedulerProvider:v6];
  v9 = [v8 completionHandlerAdapter];
  [v7 startRequestWithCompletionHandler:v9];

  v10 = [v8 future];
  v11 = [v10 recover:&__block_literal_global_31 schedulerProvider:v6];

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

+ (id)familyInfoWithFamilyMembers:(id)a3 meContact:(id)a4
{
  v5 = a4;
  v6 = [a3 _cn_map:&__block_literal_global_35_2];
  v7 = [[CNUICoreFamilyInfo alloc] initWithMeContact:v5 elements:v6];

  return v7;
}

CNUICoreFamilyElement *__69__CNUICoreFamilyInfoRetriever_familyInfoWithFamilyMembers_meContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CNUICoreFamilyElement alloc];
  v4 = [(CNUICoreFamilyElement *)v3 initWithFamilyMember:v2 matchingContacts:MEMORY[0x1E695E0F0]];

  return v4;
}

+ (id)familyInfoWithFamilyMembers:(id)a3 meContact:(id)a4 matchedWithContactsInContactStore:(id)a5
{
  v8 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __103__CNUICoreFamilyInfoRetriever_familyInfoWithFamilyMembers_meContact_matchedWithContactsInContactStore___block_invoke;
  v18 = &unk_1E76E9530;
  v19 = v8;
  v20 = a1;
  v9 = v8;
  v10 = a4;
  v11 = [a3 _cn_map:&v15];
  v12 = [CNUICoreFamilyInfo alloc];
  v13 = [(CNUICoreFamilyInfo *)v12 initWithMeContact:v10 elements:v11, v15, v16, v17, v18];

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

+ (id)contactsMatchingFamilyMember:(id)a3 inContactStore:(id)a4
{
  v5 = MEMORY[0x1E695CD78];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = +[CNUICoreFamilyInfoRetriever keysToFetch];
  v10 = [v8 initWithKeysToFetch:v9];

  [v10 setUnifyResults:0];
  v11 = MEMORY[0x1E695CD58];
  v12 = [CNUICoreContactMatcher nameFromFammilyMember:v7];

  v13 = [v11 predicateForContactsMatchingName:v12];
  [v10 setPredicate:v13];

  v14 = [CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:v10 fromStore:v6];

  if ([v14 isSuccess])
  {
    v15 = [v14 value];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

@end