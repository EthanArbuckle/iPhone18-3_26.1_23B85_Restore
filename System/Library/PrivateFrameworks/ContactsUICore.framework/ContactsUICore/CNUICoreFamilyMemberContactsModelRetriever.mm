@interface CNUICoreFamilyMemberContactsModelRetriever
+ (NSArray)keysToFetch;
- (CNScheduler)backgroundOrImmediateScheduler;
- (CNUICoreFamilyMemberContactsModelRetriever)init;
- (CNUICoreFamilyMemberContactsModelRetriever)initWithContactStoreFacade:(id)facade familyInfoFetcher:(id)fetcher downtimeContainerFetcher:(id)containerFetcher schedulerProvider:(id)provider;
- (CNUICoreFamilyMemberContactsModelRetriever)initWithDowntimeContainerFetcher:(id)fetcher schedulerProvider:(id)provider;
- (CNUICoreFamilyMemberContactsModelRetriever)initWithFamilyMember:(id)member schedulerProvider:(id)provider;
- (id)allContacts;
- (id)allContactsModel;
- (id)modelBuilderForContacts:(id)contacts familyInfo:(id)info;
- (id)modelBuilderForWhitelistedContacts:(id)contacts familyInfo:(id)info;
- (id)whitelistedContactsModel;
@end

@implementation CNUICoreFamilyMemberContactsModelRetriever

+ (NSArray)keysToFetch
{
  v11[9] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:{objc_msgSend(self, "contactFormatterStyle")}];
  v3 = +[CNUICoreFamilyInfoRetriever keysToFetch];
  v4 = *MEMORY[0x1E695C278];
  v11[1] = v3;
  v11[2] = v4;
  v5 = *MEMORY[0x1E695C1E8];
  v11[3] = *MEMORY[0x1E695C400];
  v11[4] = v5;
  v6 = *MEMORY[0x1E695C330];
  v11[5] = *MEMORY[0x1E695C270];
  v11[6] = v6;
  v7 = *MEMORY[0x1E695C200];
  v11[7] = *MEMORY[0x1E695C208];
  v11[8] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:9];
  _cn_flatten = [v8 _cn_flatten];

  return _cn_flatten;
}

- (CNUICoreFamilyMemberContactsModelRetriever)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreFamilyMemberContactsModelRetriever)initWithDowntimeContainerFetcher:(id)fetcher schedulerProvider:(id)provider
{
  providerCopy = provider;
  fetcherCopy = fetcher;
  v8 = [CNUICoreContactStoreProductionFacade alloc];
  v9 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v10 = [(CNUICoreContactStoreProductionFacade *)v8 initWithContactStore:v9];

  v11 = [[CNUICoreFamilyInfoRetriever alloc] initWithMainContactStoreFacade:v10 matchFamilyMembersWithContacts:0 schedulerProvider:providerCopy];
  v12 = [(CNUICoreFamilyMemberContactsModelRetriever *)self initWithContactStoreFacade:v10 familyInfoFetcher:v11 downtimeContainerFetcher:fetcherCopy schedulerProvider:providerCopy];

  return v12;
}

- (CNUICoreFamilyMemberContactsModelRetriever)initWithFamilyMember:(id)member schedulerProvider:(id)provider
{
  providerCopy = provider;
  memberCopy = member;
  v8 = [CNUICoreContactStoreProductionFacade alloc];
  v9 = [MEMORY[0x1E695CE18] storeForFamilyMember:memberCopy];

  v10 = [(CNUICoreContactStoreProductionFacade *)v8 initWithContactStore:v9];
  v11 = [CNUICoreContactStoreProductionFacade alloc];
  v12 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v13 = [(CNUICoreContactStoreProductionFacade *)v11 initWithContactStore:v12];

  v14 = [[CNUICoreFamilyInfoRetriever alloc] initWithMainContactStoreFacade:v13 matchFamilyMembersWithContacts:0 schedulerProvider:providerCopy];
  v15 = [(CNUICoreFamilyMemberContactsModelRetriever *)self initWithContactStoreFacade:v10 familyInfoFetcher:v14 downtimeContainerFetcher:0 schedulerProvider:providerCopy];

  return v15;
}

- (CNUICoreFamilyMemberContactsModelRetriever)initWithContactStoreFacade:(id)facade familyInfoFetcher:(id)fetcher downtimeContainerFetcher:(id)containerFetcher schedulerProvider:(id)provider
{
  facadeCopy = facade;
  fetcherCopy = fetcher;
  containerFetcherCopy = containerFetcher;
  providerCopy = provider;
  if (facadeCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_3 != -1)
  {
    [CNUICoreFamilyMemberContactsModelRetriever initWithContactStoreFacade:familyInfoFetcher:downtimeContainerFetcher:schedulerProvider:];
  }

  v15 = CNGuardOSLog_cn_once_object_0_3;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
  {
    [(CNUICoreContactRefetcher *)v15 initWithContactStore:v16 contactsToRefetch:v17 keysToFetch:v18, v19, v20, v21, v22];
    if (fetcherCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (fetcherCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_3 != -1)
  {
    [CNUICoreFamilyMemberContactsModelRetriever initWithContactStoreFacade:familyInfoFetcher:downtimeContainerFetcher:schedulerProvider:];
  }

  v23 = CNGuardOSLog_cn_once_object_0_3;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
  {
    [(CNUICoreFamilyMemberContactsModelRetriever *)v23 initWithContactStoreFacade:v24 familyInfoFetcher:v25 downtimeContainerFetcher:v26 schedulerProvider:v27, v28, v29, v30];
  }

LABEL_10:
  if (!providerCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_3 != -1)
    {
      [CNUICoreFamilyMemberContactsModelRetriever initWithContactStoreFacade:familyInfoFetcher:downtimeContainerFetcher:schedulerProvider:];
    }

    v31 = CNGuardOSLog_cn_once_object_0_3;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
    {
      [(CNUICoreFamilyMemberContactsModelRetriever *)v31 initWithContactStoreFacade:v32 familyInfoFetcher:v33 downtimeContainerFetcher:v34 schedulerProvider:v35, v36, v37, v38];
    }
  }

  v43.receiver = self;
  v43.super_class = CNUICoreFamilyMemberContactsModelRetriever;
  v39 = [(CNUICoreFamilyMemberContactsModelRetriever *)&v43 init];
  v40 = v39;
  if (v39)
  {
    objc_storeStrong(&v39->_contactStore, facade);
    objc_storeStrong(&v40->_familyInfoFetcher, fetcher);
    objc_storeStrong(&v40->_downtimeContainerFetcher, containerFetcher);
    objc_storeStrong(&v40->_schedulerProvider, provider);
    v41 = v40;
  }

  return v40;
}

- (CNScheduler)backgroundOrImmediateScheduler
{
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  schedulerProvider = [(CNUICoreFamilyMemberContactsModelRetriever *)self schedulerProvider];
  v5 = schedulerProvider;
  if (isMainThread)
  {
    [schedulerProvider backgroundScheduler];
  }

  else
  {
    [schedulerProvider immediateScheduler];
  }
  v6 = ;

  return v6;
}

- (id)whitelistedContactsModel
{
  familyInfoFetcher = [(CNUICoreFamilyMemberContactsModelRetriever *)self familyInfoFetcher];
  allContacts = [(CNUICoreFamilyMemberContactsModelRetriever *)self allContacts];
  v9 = MEMORY[0x1E69E9820];
  v10 = familyInfoFetcher;
  v5 = familyInfoFetcher;
  v6 = [(CNUICoreFamilyMemberContactsModelRetriever *)self schedulerProvider:v9];
  v7 = [allContacts flatMap:&v9 schedulerProvider:v6];

  return v7;
}

id __70__CNUICoreFamilyMemberContactsModelRetriever_whitelistedContactsModel__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 familyInfo];
  v6 = [v2 modelBuilderForWhitelistedContacts:v4 familyInfo:v5];

  v7 = [v6 build];
  v8 = [MEMORY[0x1E6996720] futureWithResult:v7];

  return v8;
}

- (id)allContacts
{
  contactStore = [(CNUICoreFamilyMemberContactsModelRetriever *)self contactStore];
  v4 = MEMORY[0x1E6996720];
  v10 = MEMORY[0x1E69E9820];
  v11 = contactStore;
  v5 = contactStore;
  v6 = [(CNUICoreFamilyMemberContactsModelRetriever *)self backgroundOrImmediateScheduler:v10];
  schedulerProvider = [(CNUICoreFamilyMemberContactsModelRetriever *)self schedulerProvider];
  v8 = [v4 futureWithBlock:&v10 scheduler:v6 schedulerProvider:schedulerProvider];

  return v8;
}

id __57__CNUICoreFamilyMemberContactsModelRetriever_allContacts__block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_alloc(MEMORY[0x1E695CD78]);
  v5 = [objc_opt_class() keysToFetch];
  v6 = [v4 initWithKeysToFetch:v5];

  [v6 setUnifyResults:0];
  v7 = [*(a1 + 32) downtimeContainerFetcher];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [*(a1 + 32) downtimeContainerFetcher];
  v9 = [v8 downtimeWhitelistContainer];

  if (v9)
  {
    v10 = MEMORY[0x1E695CD58];
    v11 = [v9 identifier];
    v12 = [v10 predicateForContactsInContainerWithIdentifier:v11];
    [v6 setPredicate:v12];

LABEL_4:
    v13 = [CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:v6 fromStore:*(a1 + 40)];
    v14 = [v13 value];

    if (v14)
    {
      v15 = [v13 value];
      goto LABEL_12;
    }

    v16 = [v13 error];
    if (a2)
    {
      v16 = v16;
      *a2 = v16;
    }

    goto LABEL_11;
  }

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695C448] code:1008 userInfo:0];
  v13 = v17;
  if (a2)
  {
    v18 = v17;
    v15 = 0;
    *a2 = v13;
    goto LABEL_12;
  }

LABEL_11:
  v15 = 0;
LABEL_12:

  return v15;
}

- (id)modelBuilderForWhitelistedContacts:(id)contacts familyInfo:(id)info
{
  v4 = [(CNUICoreFamilyMemberContactsModelRetriever *)self modelBuilderForContacts:contacts familyInfo:info];
  [v4 setIncludeWhitelistedContactsOnly:1];

  return v4;
}

- (id)modelBuilderForContacts:(id)contacts familyInfo:(id)info
{
  infoCopy = info;
  contactsCopy = contacts;
  v7 = objc_alloc_init(CNUICoreFamilyMemberContactsModelBuilder);
  [(CNUICoreFamilyMemberContactsModelBuilder *)v7 setContacts:contactsCopy];

  v8 = [[CNUICoreContactTypeAssessor alloc] initWithFamilyInfoFuture:infoCopy];
  [(CNUICoreFamilyMemberContactsModelBuilder *)v7 setContactTypeAssessor:v8];

  [(CNUICoreFamilyMemberContactsModelBuilder *)v7 setContactFormatterStyle:+[CNUICoreFamilyMemberContactsModelRetriever contactFormatterStyle]];
  [(CNUICoreFamilyMemberContactsModelBuilder *)v7 setSortItemsByName:1];

  return v7;
}

- (id)allContactsModel
{
  familyInfoFetcher = [(CNUICoreFamilyMemberContactsModelRetriever *)self familyInfoFetcher];
  allContacts = [(CNUICoreFamilyMemberContactsModelRetriever *)self allContacts];
  v9 = MEMORY[0x1E69E9820];
  v10 = familyInfoFetcher;
  v5 = familyInfoFetcher;
  v6 = [(CNUICoreFamilyMemberContactsModelRetriever *)self schedulerProvider:v9];
  v7 = [allContacts flatMap:&v9 schedulerProvider:v6];

  return v7;
}

id __62__CNUICoreFamilyMemberContactsModelRetriever_allContactsModel__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 familyInfo];
  v6 = [v2 modelBuilderForContacts:v4 familyInfo:v5];

  v7 = [v6 build];
  v8 = [MEMORY[0x1E6996720] futureWithResult:v7];

  return v8;
}

@end