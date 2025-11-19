@interface CNUICoreProposedContactsFetchingDecorator
+ (id)modelWithProposedContactsFromFamilyInfo:(id)a3;
+ (id)proposedContactsFromFamilyInfo:(id)a3;
- (CNUICoreProposedContactsFetchingDecorator)initWithModelFetcher:(id)a3 familyInfoFetcher:(id)a4 schedulerProvider:(id)a5;
- (CNUICoreProposedContactsFetchingDecorator)initWithModelFetcher:(id)a3 familyMember:(id)a4 schedulerProvider:(id)a5;
- (id)allContactsModel;
- (id)whitelistedContactsModel;
@end

@implementation CNUICoreProposedContactsFetchingDecorator

- (CNUICoreProposedContactsFetchingDecorator)initWithModelFetcher:(id)a3 familyMember:(id)a4 schedulerProvider:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [CNUICoreContactStoreProductionFacade alloc];
  v10 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v11 = [(CNUICoreContactStoreProductionFacade *)v9 initWithContactStore:v10];

  v12 = [[CNUICoreFamilyInfoRetriever alloc] initWithMainContactStoreFacade:v11 matchFamilyMembersWithContacts:1 schedulerProvider:v7];
  v13 = [(CNUICoreProposedContactsFetchingDecorator *)self initWithModelFetcher:v8 familyInfoFetcher:v12 schedulerProvider:v7];

  return v13;
}

- (CNUICoreProposedContactsFetchingDecorator)initWithModelFetcher:(id)a3 familyInfoFetcher:(id)a4 schedulerProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_23 != -1)
  {
    [CNUICoreProposedContactsFetchingDecorator initWithModelFetcher:familyInfoFetcher:schedulerProvider:];
  }

  v12 = CNGuardOSLog_cn_once_object_0_23;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_23, OS_LOG_TYPE_FAULT))
  {
    [(CNUICoreProposedContactsFetchingDecorator *)v12 initWithModelFetcher:v13 familyInfoFetcher:v14 schedulerProvider:v15, v16, v17, v18, v19];
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

  if (CNGuardOSLog_cn_once_token_0_23 != -1)
  {
    [CNUICoreProposedContactsFetchingDecorator initWithModelFetcher:familyInfoFetcher:schedulerProvider:];
  }

  v20 = CNGuardOSLog_cn_once_object_0_23;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_23, OS_LOG_TYPE_FAULT))
  {
    [(CNUICoreFamilyMemberContactsModelRetriever *)v20 initWithContactStoreFacade:v21 familyInfoFetcher:v22 downtimeContainerFetcher:v23 schedulerProvider:v24, v25, v26, v27];
  }

LABEL_10:
  if (!v11)
  {
    if (CNGuardOSLog_cn_once_token_0_23 != -1)
    {
      [CNUICoreProposedContactsFetchingDecorator initWithModelFetcher:familyInfoFetcher:schedulerProvider:];
    }

    v28 = CNGuardOSLog_cn_once_object_0_23;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_23, OS_LOG_TYPE_FAULT))
    {
      [(CNUICoreFamilyMemberContactsModelRetriever *)v28 initWithContactStoreFacade:v29 familyInfoFetcher:v30 downtimeContainerFetcher:v31 schedulerProvider:v32, v33, v34, v35];
    }
  }

  v40.receiver = self;
  v40.super_class = CNUICoreProposedContactsFetchingDecorator;
  v36 = [(CNUICoreProposedContactsFetchingDecorator *)&v40 init];
  v37 = v36;
  if (v36)
  {
    objc_storeStrong(&v36->_modelFetcher, a3);
    objc_storeStrong(&v37->_familyInfoFetcher, a4);
    objc_storeStrong(&v37->_schedulerProvider, a5);
    v38 = v37;
  }

  return v37;
}

- (id)allContactsModel
{
  v2 = [(CNUICoreProposedContactsFetchingDecorator *)self modelFetcher];
  v3 = [v2 allContactsModel];

  return v3;
}

- (id)whitelistedContactsModel
{
  v3 = [(CNUICoreProposedContactsFetchingDecorator *)self modelFetcher];
  v4 = [v3 whitelistedContactsModel];

  v5 = [(CNUICoreProposedContactsFetchingDecorator *)self familyInfoFetcher];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__CNUICoreProposedContactsFetchingDecorator_whitelistedContactsModel__block_invoke;
  v10[3] = &unk_1E76EA468;
  v11 = v5;
  v6 = v5;
  v7 = [(CNUICoreProposedContactsFetchingDecorator *)self schedulerProvider];
  v8 = [v4 flatMap:v10 schedulerProvider:v7];

  return v8;
}

id __69__CNUICoreProposedContactsFetchingDecorator_whitelistedContactsModel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E6996530];
  v5 = [v3 items];
  LOBYTE(v4) = (*(v4 + 16))(v4, v5);

  if (v4)
  {
    v6 = [*(a1 + 32) familyInfo];
    v7 = [v6 result:0];

    v8 = [CNUICoreProposedContactsFetchingDecorator modelWithProposedContactsFromFamilyInfo:v7];
    v9 = [v3 items];
    v10 = [v8 items];
    v11 = [v9 arrayByAddingObjectsFromArray:v10];

    v12 = MEMORY[0x1E6996720];
    v13 = [[CNUICoreFamilyMemberContactsModel alloc] initWithItems:v11];
    v14 = [v12 futureWithResult:v13];
  }

  else
  {
    v14 = [MEMORY[0x1E6996720] futureWithResult:v3];
  }

  return v14;
}

+ (id)modelWithProposedContactsFromFamilyInfo:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNUICoreFamilyMemberContactsModelBuilder);
  v6 = [a1 proposedContactsFromFamilyInfo:v4];
  [(CNUICoreFamilyMemberContactsModelBuilder *)v5 setContacts:v6];

  v7 = [[CNUICoreContactTypeAssessor alloc] initWithFamilyInfo:v4];
  [(CNUICoreFamilyMemberContactsModelBuilder *)v5 setContactTypeAssessor:v7];

  [(CNUICoreFamilyMemberContactsModelBuilder *)v5 setContactFormatterStyle:+[CNUICoreFamilyMemberContactsModelRetriever contactFormatterStyle]];
  [(CNUICoreFamilyMemberContactsModelBuilder *)v5 setSortItemsByName:1];
  [(CNUICoreFamilyMemberContactsModelBuilder *)v5 setMarkItemsAsProposed:1];
  [(CNUICoreFamilyMemberContactsModelBuilder *)v5 setMarkItemsAsPersisted:0];
  v8 = [(CNUICoreFamilyMemberContactsModelBuilder *)v5 build];

  return v8;
}

+ (id)proposedContactsFromFamilyInfo:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 meContact];

  if (v5)
  {
    v6 = [v3 meContact];
    [v4 addObject:v6];
  }

  v7 = *MEMORY[0x1E6996530];
  v8 = [v3 elements];
  LOBYTE(v7) = (*(v7 + 16))(v7, v8);

  if ((v7 & 1) == 0)
  {
    v9 = [v3 elements];
    v10 = [v9 _cn_filter:&__block_literal_global_13_1];
    v11 = [v10 _cn_compactMap:&__block_literal_global_79];
    [v4 addObjectsFromArray:v11];
  }

  return v4;
}

@end